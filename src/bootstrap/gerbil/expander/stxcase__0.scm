(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707346617)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp176484
             (let ((__tmp176485
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp176485 '()))))
        (declare (not safe))
        (make-struct-type*
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp176484
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args172287_
        (apply make-struct-instance gx#syntax-pattern::t _$args172287_)))
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
      (lambda (_self172284_ _stx172285_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx172285_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx171766_)
        (letrec ((_generate171768_
                  (lambda (_e171995_)
                    (letrec ((_BUG171997_
                              (lambda (_q172159_)
                                (error '"BUG: syntax; generate"
                                       _stx171766_
                                       _e171995_
                                       _q172159_)))
                             (_local-pattern-e171998_
                              (lambda (_pat172157_)
                                (let ((__tmp176486
                                       (##structure-ref
                                        _pat172157_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp176486))))
                             (_getvar171999_
                              (lambda (_q172154_ _vars172155_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q172154_
                                           _vars172155_
                                           _BUG171997_))))
                             (_getarg172000_
                              (lambda (_arg172120_ _vars172121_)
                                (let* ((_arg172122172129_ _arg172120_)
                                       (_E172124172133_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg172122172129_)))
                                       (_K172125172142_
                                        (lambda (_e172136_ _tag172137_)
                                          (let ((_$e172139_ _tag172137_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e172139_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar171999_
                                                   _e172136_
                                                   _vars172121_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e172139_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e171998_
                                                       _e172136_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG171997_
                                                       _arg172120_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg172122172129_))
                                      (let ((_hd172126172145_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg172122172129_)))
                                            (_tl172127172147_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg172122172129_))))
                                        (let* ((_tag172150_ _hd172126172145_)
                                               (_e172152_ _tl172127172147_))
                                          (declare (not safe))
                                          (_K172125172142_
                                           _e172152_
                                           _tag172150_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E172124172133_)))))))
                      (let _recur172002_ ((_e172004_ _e171995_)
                                          (_vars172005_ '()))
                        (let* ((_e172006172013_ _e172004_)
                               (_E172008172017_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e172006172013_)))
                               (_K172009172108_
                                (lambda (_body172020_ _tag172021_)
                                  (let ((_$e172023_ _tag172021_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e172023_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body172020_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e172023_))
                                            (let ((_id172026_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body172020_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id172026_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks172028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id172026_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks172028_))
                                                        (let ((__tmp176514
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body172020_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp176514))
                (let ((__tmp176513
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body172020_)))
                      (__tmp176512
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body172020_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp176513
                   __tmp176512
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id172026_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body172020_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG171997_
                                                         _e172004_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e172023_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e171998_
                                                   _body172020_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e172023_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar171999_
                                                       _body172020_
                                                       _vars172005_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e172023_))
                                                        (let ((__tmp176510
                                                               (let ((__tmp176511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body172020_)))
                         (declare (not safe))
                         (_recur172002_ __tmp176511 _vars172005_)))
                      (__tmp176508
                       (let ((__tmp176509 (cdr _body172020_)))
                         (declare (not safe))
                         (_recur172002_ __tmp176509 _vars172005_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp176510 __tmp176508))
                (if (let () (declare (not safe)) (eq? 'vector _$e172023_))
                    (let ((__tmp176507
                           (let ()
                             (declare (not safe))
                             (_recur172002_ _body172020_ _vars172005_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp176507))
                    (if (let () (declare (not safe)) (eq? 'box _$e172023_))
                        (let ((__tmp176506
                               (let ()
                                 (declare (not safe))
                                 (_recur172002_ _body172020_ _vars172005_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp176506))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e172023_))
                            (let* ((_body172029172040_ _body172020_)
                                   (_E172031172044_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body172029172040_)))
                                   (_K172032172082_
                                    (lambda (_args172047_
                                             _iv172048_
                                             _hd172049_
                                             _depth172050_)
                                      (let* ((_targets172056_
                                              (map (lambda (_g172051172053_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg172000_
                                                        _g172051172053_
                                                        _vars172005_)))
                                                   _args172047_))
                                             (_fold-in172058_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args172047_)))
                                             (_fold-out172060_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args172062_
                                              (let ((__tmp176487
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out172060_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp176487
                                                        _fold-in172058_)))
                                             (_lambda-body172079_
                                              (if (fx> _depth172050_ '1)
                                                  (let ((_r-args172070_
                                                         (map (lambda (_arg172064_)
                                                                (let ((__tmp176492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg172064_)))
                          (declare (not safe))
                          (cons 'ref __tmp176492)))
                      _args172047_))
                (_r-vars172071_
                 (let ((__tmp176493
                        (lambda (_arg172066_ _var172067_ _r172068_)
                          (let ((__tmp176494
                                 (let ((__tmp176495 (cdr _arg172066_)))
                                   (declare (not safe))
                                   (cons __tmp176495 _var172067_))))
                            (declare (not safe))
                            (cons __tmp176494 _r172068_)))))
                   (declare (not safe))
                   (foldr2 __tmp176493
                           _vars172005_
                           _args172047_
                           _fold-in172058_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp176496
                                                           (let ((__tmp176497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176501
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth172050_ '1)))
                                (__tmp176498
                                 (let ((__tmp176499
                                        (let ((__tmp176500
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out172060_))))
                                          (declare (not safe))
                                          (cons __tmp176500 _r-args172070_))))
                                   (declare (not safe))
                                   (cons _hd172049_ __tmp176499))))
                            (declare (not safe))
                            (cons __tmp176501 __tmp176498))))
                     (declare (not safe))
                     (cons 'splice __tmp176497))))
              (declare (not safe))
              (_recur172002_ __tmp176496 _r-vars172071_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars172077_
                                                          (let ((__tmp176488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg172073_ _var172074_ _r172075_)
                           (let ((__tmp176489
                                  (let ((__tmp176490 (cdr _arg172073_)))
                                    (declare (not safe))
                                    (cons __tmp176490 _var172074_))))
                             (declare (not safe))
                             (cons __tmp176489 _r172075_)))))
                    (declare (not safe))
                    (foldr2 __tmp176488
                            _vars172005_
                            _args172047_
                            _fold-in172058_)))
                 (__tmp176491
                  (let ()
                    (declare (not safe))
                    (_recur172002_ _hd172049_ _hd-vars172077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp176491
                                                     _fold-out172060_)))))
                                        (let ((__tmp176505
                                               (if (fx> (length _targets172056_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets172056_))
                                                   '#!void))
                                              (__tmp176502
                                               (let ((__tmp176504
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args172062_
                                                         _lambda-body172079_)))
                                                     (__tmp176503
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur172002_
                                                         _iv172048_
                                                         _vars172005_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp176504
                                                  __tmp176503
                                                  _targets172056_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp176505
                                           __tmp176502))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body172029172040_))
                                  (let ((_hd172033172085_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body172029172040_)))
                                        (_tl172034172087_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body172029172040_))))
                                    (let ((_depth172090_ _hd172033172085_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl172034172087_))
                                          (let ((_hd172035172092_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl172034172087_)))
                                                (_tl172036172094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl172034172087_))))
                                            (let ((_hd172097_
                                                   _hd172035172092_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl172036172094_))
                                                  (let ((_hd172037172099_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl172036172094_)))
                                                        (_tl172038172101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl172036172094_))))
                                                    (let* ((_iv172104_
                                                            _hd172037172099_)
                                                           (_args172106_
                                                            _tl172038172101_))
                                                      (declare (not safe))
                                                      (_K172032172082_
                                                       _args172106_
                                                       _iv172104_
                                                       _hd172097_
                                                       _depth172090_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E172031172044_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E172031172044_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E172031172044_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e172023_))
                                _body172020_
                                (let ()
                                  (declare (not safe))
                                  (_BUG171997_ _e172004_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e172006172013_))
                              (let ((_hd172010172111_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e172006172013_)))
                                    (_tl172011172113_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e172006172013_))))
                                (let* ((_tag172116_ _hd172010172111_)
                                       (_body172118_ _tl172011172113_))
                                  (declare (not safe))
                                  (_K172009172108_ _body172118_ _tag172116_)))
                              (let ()
                                (declare (not safe))
                                (_E172008172017_))))))))
                 (_parse171769_
                  (lambda (_e171810_)
                    (letrec ((_make-cons171812_
                              (lambda (_hd171987_ _tl171988_)
                                (let ((_g176515_ _hd171987_)
                                      (_g176517_ _tl171988_))
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
                                    (let ((_g176518_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176517_)
                                                 (##vector-length _g176517_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176518_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176518_)))
                                    (let ((_hd-e171990_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176515_ 0)))
                                          (_hd-vars171991_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176515_ 1))))
                                      (let ((_tl-e171992_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176517_ 0)))
                                            (_tl-vars171993_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176517_ 1))))
                                        (values (let ((__tmp176519
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e171990_
                                                               _tl-e171992_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp176519))
                                                (append _hd-vars171991_
                                                        _tl-vars171993_))))))))
                             (_make-splice171813_
                              (lambda (_where171926_
                                       _depth171927_
                                       _hd171928_
                                       _tl171929_)
                                (let ((_g176520_ _hd171928_)
                                      (_g176522_ _tl171929_))
                                  (begin
                                    (let ((_g176521_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176520_)
                                                 (##vector-length _g176520_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176521_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176521_)))
                                    (let ((_g176523_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176522_)
                                                 (##vector-length _g176522_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176523_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176523_)))
                                    (let ((_hd-e171931_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176520_ 0)))
                                          (_hd-vars171932_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176520_ 1))))
                                      (let ((_tl-e171933_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176522_ 0)))
                                            (_tl-vars171934_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g176522_ 1))))
                                        (let _lp171936_ ((_rest171938_
                                                          _hd-vars171932_)
                                                         (_targets171939_ '())
                                                         (_vars171940_
                                                          _tl-vars171934_))
                                          (let* ((_rest171941171951_
                                                  _rest171938_)
                                                 (_else171943171959_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets171939_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx171766_
                                                           _where171926_))
                                                        (values (let ((__tmp176524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp176525
                                      (let ((__tmp176526
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e171933_
                                                     _targets171939_))))
                                        (declare (not safe))
                                        (cons _hd-e171931_ __tmp176526))))
                                 (declare (not safe))
                                 (cons _depth171927_ __tmp176525))))
                          (declare (not safe))
                          (cons 'splice __tmp176524))
                        _vars171940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K171945171968_
                                                  (lambda (_rest171962_
                                                           _hd-pat171963_
                                                           _hd-depth*171964_)
                                                    (let ((_hd-depth171966_
                                                           (fx- _hd-depth*171964_
                                                                _depth171927_)))
                                                      (if (fxpositive?
                                                           _hd-depth171966_)
                                                          (let ((__tmp176531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp176532
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat171963_))))
                           (declare (not safe))
                           (cons __tmp176532 _targets171939_)))
                        (__tmp176529
                         (let ((__tmp176530
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth171966_ _hd-pat171963_))))
                           (declare (not safe))
                           (cons __tmp176530 _vars171940_))))
                    (declare (not safe))
                    (_lp171936_ _rest171962_ __tmp176531 __tmp176529))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth171966_))
                      (let ((__tmp176527
                             (let ((__tmp176528
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat171963_))))
                               (declare (not safe))
                               (cons __tmp176528 _targets171939_))))
                        (declare (not safe))
                        (_lp171936_ _rest171962_ __tmp176527 _vars171940_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx171766_
                         _where171926_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest171941171951_))
                                                (let ((_hd171946171971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest171941171951_)))
                                                      (_tl171947171973_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest171941171951_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd171946171971_))
                                                      (let ((_hd171948171976_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd171946171971_)))
                    (_tl171949171978_
                     (let () (declare (not safe)) (##cdr _hd171946171971_))))
                (let* ((_hd-depth*171981_ _hd171948171976_)
                       (_hd-pat171983_ _tl171949171978_)
                       (_rest171985_ _tl171947171973_))
                  (declare (not safe))
                  (_K171945171968_
                   _rest171985_
                   _hd-pat171983_
                   _hd-depth*171981_)))
              (let () (declare (not safe)) (_else171943171959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else171943171959_)))))))))))
                             (_recur171814_
                              (lambda (_e171819_ _is-e?171820_)
                                (if (_is-e?171820_ _e171819_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx171766_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e171819_))
                                        (let* ((_pat171822_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e171819_)))
                                               (_depth171824_
                                                (##structure-ref
                                                 _pat171822_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth171824_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat171822_))
                                                      (let ((__tmp176548
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth171824_ _pat171822_))))
                (declare (not safe))
                (cons __tmp176548 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat171822_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e171819_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e171819_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e171819_))
                                                (let* ((_e171826171833_
                                                        _e171819_)
                                                       (_E171828171837_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e171826171833_))))
                                                       (_E171827171916_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e171826171833_))
                      (let ((_e171829171841_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e171826171833_))))
                        (let ((_hd171830171844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e171829171841_)))
                              (_tl171831171846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e171829171841_))))
                          (let* ((_hd171849_ _hd171830171844_)
                                 (_rest171851_ _tl171831171846_))
                            (if '#t
                                (if (_is-e?171820_ _hd171849_)
                                    (let* ((_e171852171859_ _rest171851_)
                                           (_E171854171863_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx171766_
                                                 _e171819_))))
                                           (_E171853171877_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e171852171859_))
                                                  (let ((_e171855171867_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e171852171859_))))
                                                    (let ((_hd171856171870_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e171855171867_)))
                                                          (_tl171857171872_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e171855171867_))))
                                                      (let ((_rest171875_
                                                             _hd171856171870_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl171857171872_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur171814_ _rest171875_ false))
                        (let () (declare (not safe)) (_E171854171863_)))
                    (let () (declare (not safe)) (_E171854171863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171854171863_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E171853171877_)))
                                    (let _lp171881_ ((_rest171883_
                                                      _rest171851_)
                                                     (_depth171884_ '0))
                                      (let* ((_e171885171892_ _rest171883_)
                                             (_E171887171896_
                                              (lambda ()
                                                (if (fxpositive? _depth171884_)
                                                    (let ((__tmp176542
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171814_
                                                              _hd171849_
                                                              _is-e?171820_)))
                                                          (__tmp176541
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171814_
                                                              _rest171883_
                                                              _is-e?171820_))))
                                                      (declare (not safe))
                                                      (_make-splice171813_
                                                       _e171819_
                                                       _depth171884_
                                                       __tmp176542
                                                       __tmp176541))
                                                    (let ((__tmp176540
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171814_
                                                              _hd171849_
                                                              _is-e?171820_)))
                                                          (__tmp176539
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur171814_
                                                              _rest171883_
                                                              _is-e?171820_))))
                                                      (declare (not safe))
                                                      (_make-cons171812_
                                                       __tmp176540
                                                       __tmp176539)))))
                                             (_E171886171912_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e171885171892_))
                                                    (let ((_e171888171900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e171885171892_))))
                                                      (let ((_hd171889171903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e171888171900_)))
                    (_tl171890171905_
                     (let () (declare (not safe)) (##cdr _e171888171900_))))
                (let* ((_rest-hd171908_ _hd171889171903_)
                       (_rest-tl171910_ _tl171890171905_))
                  (if '#t
                      (if (_is-e?171820_ _rest-hd171908_)
                          (let ((__tmp176547
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth171884_ '1))))
                            (declare (not safe))
                            (_lp171881_ _rest-tl171910_ __tmp176547))
                          (if (fxpositive? _depth171884_)
                              (let ((__tmp176546
                                     (let ()
                                       (declare (not safe))
                                       (_recur171814_
                                        _hd171849_
                                        _is-e?171820_)))
                                    (__tmp176545
                                     (let ()
                                       (declare (not safe))
                                       (_recur171814_
                                        _rest171883_
                                        _is-e?171820_))))
                                (declare (not safe))
                                (_make-splice171813_
                                 _e171819_
                                 _depth171884_
                                 __tmp176546
                                 __tmp176545))
                              (let ((__tmp176544
                                     (let ()
                                       (declare (not safe))
                                       (_recur171814_
                                        _hd171849_
                                        _is-e?171820_)))
                                    (__tmp176543
                                     (let ()
                                       (declare (not safe))
                                       (_recur171814_
                                        _rest171883_
                                        _is-e?171820_))))
                                (declare (not safe))
                                (_make-cons171812_ __tmp176544 __tmp176543))))
                      (let () (declare (not safe)) (_E171887171896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171887171896_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E171886171912_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E171828171837_))))))
                      (let () (declare (not safe)) (_E171828171837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E171827171916_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e171819_))
                                                    (let ((_g176536_
                                                           (let ((__tmp176538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e171819_)))))
                     (declare (not safe))
                     (_recur171814_ __tmp176538 _is-e?171820_))))
              (begin
                (let ((_g176537_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g176536_)
                             (##vector-length _g176536_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g176537_ 2)))
                      (error "Context expects 2 values" _g176537_)))
                (let ((_e171920_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176536_ 0)))
                      (_vars171921_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g176536_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e171920_))
                          _vars171921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e171819_))
                                                        (let ((_g176533_
                                                               (let ((__tmp176535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e171819_)))))
                         (declare (not safe))
                         (_recur171814_ __tmp176535 _is-e?171820_))))
                  (begin
                    (let ((_g176534_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g176533_)
                                 (##vector-length _g176533_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g176534_ 2)))
                          (error "Context expects 2 values" _g176534_)))
                    (let ((_e171923_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176533_ 0)))
                          (_vars171924_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g176533_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e171923_))
                              _vars171924_))))
                (values (let () (declare (not safe)) (cons 'datum _e171819_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g176549_
                             (let ()
                               (declare (not safe))
                               (_recur171814_ _e171810_ gx#ellipsis?))))
                        (begin
                          (let ((_g176550_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g176549_)
                                       (##vector-length _g176549_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g176550_ 2)))
                                (error "Context expects 2 values" _g176550_)))
                          (let ((_tree171816_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176549_ 0)))
                                (_vars171817_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g176549_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars171817_))
                                _tree171816_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx171766_
                                   _vars171817_))))))))))
          (let* ((_e171770171780_ _stx171766_)
                 (_E171772171784_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx171766_))))
                 (_E171771171806_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171770171780_))
                        (let ((_e171773171788_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171770171780_))))
                          (let ((_hd171774171791_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171773171788_)))
                                (_tl171775171793_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171773171788_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171775171793_))
                                (let ((_e171776171796_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171775171793_))))
                                  (let ((_hd171777171799_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171776171796_)))
                                        (_tl171778171801_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171776171796_))))
                                    (let ((_form171804_ _hd171777171799_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl171778171801_))
                                          (if '#t
                                              (let ((__tmp176552
                                                     (let ((__tmp176553
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse171769_
                                                               _form171804_))))
                                                       (declare (not safe))
                                                       (_generate171768_
                                                        __tmp176553)))
                                                    (__tmp176551
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx171766_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp176552
                                                 __tmp176551))
                                              (let ()
                                                (declare (not safe))
                                                (_E171772171784_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E171772171784_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171772171784_)))))
                        (let () (declare (not safe)) (_E171772171784_))))))
            (let () (declare (not safe)) (_E171771171806_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx171030_
               _identifier=?171031_
               _unwrap-e171032_
               _wrap-e171033_)
        (letrec ((_generate-bindings171035_
                  (lambda (_target171630_
                           _ids171631_
                           _clauses171632_
                           _clause-ids171633_
                           _E171634_)
                    (letrec ((_generate1171636_
                              (lambda (_clause171733_
                                       _clause-id171734_
                                       _E171735_)
                                (let ((__tmp176558
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id171734_ '())))
                                      (__tmp176554
                                       (let ((__tmp176555
                                              (let ((__tmp176557
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171630_
                                                             '())))
                                                    (__tmp176556
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause171037_
                                                        _target171630_
                                                        _ids171631_
                                                        _clause171733_
                                                        _E171735_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp176557
                                                 __tmp176556))))
                                         (declare (not safe))
                                         (cons __tmp176555 '()))))
                                  (declare (not safe))
                                  (cons __tmp176558 __tmp176554)))))
                      (let _lp171638_ ((_rest171640_ _clauses171632_)
                                       (_rest-ids171641_ _clause-ids171633_)
                                       (_bindings171642_ '()))
                        (let* ((_rest171643171651_ _rest171640_)
                               (_else171645171659_
                                (lambda () _bindings171642_))
                               (_K171647171721_
                                (lambda (_rest171662_ _clause171663_)
                                  (let* ((_rest-ids171664171671_
                                          _rest-ids171641_)
                                         (_E171666171675_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids171664171671_)))
                                         (_K171667171709_
                                          (lambda (_rest-ids171678_
                                                   _clause-id171679_)
                                            (let* ((_rest-ids171680171688_
                                                    _rest-ids171678_)
                                                   (_else171682171696_
                                                    (lambda ()
                                                      (let ((__tmp176559
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1171636_
                        _clause171663_
                        _clause-id171679_
                        _E171634_))))
                (declare (not safe))
                (cons __tmp176559 _bindings171642_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K171684171701_
                                                    (lambda (_next-clause-id171699_)
                                                      (let ((__tmp176560
                                                             (let ((__tmp176561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1171636_
                               _clause171663_
                               _clause-id171679_
                               _next-clause-id171699_))))
                       (declare (not safe))
                       (cons __tmp176561 _bindings171642_))))
                (declare (not safe))
                (_lp171638_ _rest171662_ _rest-ids171678_ __tmp176560)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids171680171688_))
                                                  (let* ((_hd171685171704_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids171680171688_)))
                                                         (_next-clause-id171707_
                                                          _hd171685171704_))
                                                    (declare (not safe))
                                                    (_K171684171701_
                                                     _next-clause-id171707_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else171682171696_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids171664171671_))
                                        (let ((_hd171668171712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids171664171671_)))
                                              (_tl171669171714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids171664171671_))))
                                          (let* ((_clause-id171717_
                                                  _hd171668171712_)
                                                 (_rest-ids171719_
                                                  _tl171669171714_))
                                            (declare (not safe))
                                            (_K171667171709_
                                             _rest-ids171719_
                                             _clause-id171717_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171666171675_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest171643171651_))
                              (let ((_hd171648171724_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest171643171651_)))
                                    (_tl171649171726_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest171643171651_))))
                                (let* ((_clause171729_ _hd171648171724_)
                                       (_rest171731_ _tl171649171726_))
                                  (declare (not safe))
                                  (_K171647171721_
                                   _rest171731_
                                   _clause171729_)))
                              (let ()
                                (declare (not safe))
                                (_else171645171659_))))))))
                 (_generate-body171036_
                  (lambda (_bindings171590_ _body171591_)
                    (let _recur171593_ ((_rest171595_ _bindings171590_))
                      (let* ((_rest171596171604_ _rest171595_)
                             (_else171598171612_ (lambda () _body171591_))
                             (_K171600171618_
                              (lambda (_rest171615_ _hd171616_)
                                (let ((__tmp176563
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd171616_ '())))
                                      (__tmp176562
                                       (let ()
                                         (declare (not safe))
                                         (_recur171593_ _rest171615_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp176563
                                   __tmp176562)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest171596171604_))
                            (let ((_hd171601171621_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest171596171604_)))
                                  (_tl171602171623_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest171596171604_))))
                              (let* ((_hd171626_ _hd171601171621_)
                                     (_rest171628_ _tl171602171623_))
                                (declare (not safe))
                                (_K171600171618_ _rest171628_ _hd171626_)))
                            (let ()
                              (declare (not safe))
                              (_else171598171612_)))))))
                 (_generate-clause171037_
                  (lambda (_target171453_ _ids171454_ _clause171455_ _E171456_)
                    (letrec ((_generate1171458_
                              (lambda (_hd171545_ _fender171546_ _body171547_)
                                (let ((_g176564_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause171039_
                                          _hd171545_
                                          _ids171454_))))
                                  (begin
                                    (let ((_g176565_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g176564_)
                                                 (##vector-length _g176564_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g176565_ 2)))
                                          (error "Context expects 2 values"
                                                 _g176565_)))
                                    (let ((_e171549_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176564_ 0)))
                                          (_mvars171550_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g176564_ 1))))
                                      (let* ((_pvars171552_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars171550_))))
                                             (_E171554_
                                              (let ((__tmp176566
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target171453_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E171456_ __tmp176566)))
                                             (_K171587_
                                              (let ((__tmp176567
                                                     (let ((__tmp176569
                                                            (map (lambda (_mvar171556_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar171557_)
                           (let* ((_mvar171558171565_ _mvar171556_)
                                  (_E171560171569_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar171558171565_)))
                                  (_K171561171575_
                                   (lambda (_depth171572_ _id171573_)
                                     (let ((__tmp176570
                                            (let ((__tmp176571
                                                   (let ((__tmp176573
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id171573_)))
                                                         (__tmp176572
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar171557_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp176573
                                                      __tmp176572
                                                      _depth171572_))))
                                              (declare (not safe))
                                              (cons __tmp176571 '()))))
                                       (declare (not safe))
                                       (cons _id171573_ __tmp176570)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar171558171565_))
                                 (let ((_hd171562171578_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar171558171565_)))
                                       (_tl171563171580_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar171558171565_))))
                                   (let* ((_id171583_ _hd171562171578_)
                                          (_depth171585_ _tl171563171580_))
                                     (declare (not safe))
                                     (_K171561171575_
                                      _depth171585_
                                      _id171583_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E171560171569_)))))
                         _mvars171550_
                         _pvars171552_))
                   (__tmp176568
                    (if (let () (declare (not safe)) (eq? _fender171546_ '#t))
                        _body171547_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender171546_
                           _body171547_
                           _E171554_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp176569 __tmp176568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars171552_
                                                 __tmp176567))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match171038_
                                           _hd171545_
                                           _target171453_
                                           _e171549_
                                           _mvars171550_
                                           _K171587_
                                           _E171554_)))))))))
                      (let* ((_e171459171479_ _clause171455_)
                             (_E171468171483_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e171459171479_))))
                             (_E171461171517_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171459171479_))
                                    (let ((_e171469171487_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171459171479_))))
                                      (let ((_hd171470171490_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171469171487_)))
                                            (_tl171471171492_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171469171487_))))
                                        (let ((_hd171495_ _hd171470171490_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171471171492_))
                                              (let ((_e171472171497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171471171492_))))
                                                (let ((_hd171473171500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171472171497_)))
                                                      (_tl171474171502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171472171497_))))
                                                  (let ((_fender171505_
                                                         _hd171473171500_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl171474171502_))
                                                        (let ((_e171475171507_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl171474171502_))))
                  (let ((_hd171476171510_
                         (let () (declare (not safe)) (##car _e171475171507_)))
                        (_tl171477171512_
                         (let ()
                           (declare (not safe))
                           (##cdr _e171475171507_))))
                    (let ((_body171515_ _hd171476171510_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl171477171512_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1171458_
                                 _hd171495_
                                 _fender171505_
                                 _body171515_))
                              (let () (declare (not safe)) (_E171468171483_)))
                          (let () (declare (not safe)) (_E171468171483_))))))
                (let () (declare (not safe)) (_E171468171483_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E171468171483_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171468171483_)))))
                             (_E171460171541_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e171459171479_))
                                    (let ((_e171462171521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e171459171479_))))
                                      (let ((_hd171463171524_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171462171521_)))
                                            (_tl171464171526_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171462171521_))))
                                        (let ((_hd171529_ _hd171463171524_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl171464171526_))
                                              (let ((_e171465171531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl171464171526_))))
                                                (let ((_hd171466171534_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e171465171531_)))
                                                      (_tl171467171536_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e171465171531_))))
                                                  (let ((_body171539_
                                                         _hd171466171534_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl171467171536_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1171458_
                                                               _hd171529_
                                                               '#t
                                                               _body171539_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E171461171517_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E171461171517_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E171461171517_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E171461171517_))))))
                        (let () (declare (not safe)) (_E171460171541_))))))
                 (_generate-match171038_
                  (lambda (_where171202_
                           _target171203_
                           _hd171204_
                           _mvars171205_
                           _K171206_
                           _E171207_)
                    (letrec ((_BUG171209_
                              (lambda (_q171451_)
                                (error '"BUG: syntax-case; generate"
                                       _stx171030_
                                       _hd171204_
                                       _q171451_)))
                             (_recur171210_
                              (lambda (_e171301_
                                       _vars171302_
                                       _target171303_
                                       _E171304_
                                       _k171305_)
                                (let* ((_e171306171313_ _e171301_)
                                       (_E171308171317_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e171306171313_)))
                                       (_K171309171439_
                                        (lambda (_body171320_ _tag171321_)
                                          (let ((_$e171323_ _tag171321_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e171323_))
                                                (_k171305_ _vars171302_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e171323_))
                                                    (let ((__tmp176680
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target171303_)))
                                                          (__tmp176676
                                                           (let ((__tmp176678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176679
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e171033_
                                    _body171320_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?171031_
                             __tmp176679
                             _target171303_)))
                         (__tmp176677 (_k171305_ _vars171302_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp176678 __tmp176677 _E171304_))))
              (declare (not safe))
              (gx#core-list 'if __tmp176680 __tmp176676 _E171304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e171323_))
                                                        (_k171305_
                                                         (let ((__tmp176675
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body171320_ _target171303_))))
                   (declare (not safe))
                   (cons __tmp176675 _vars171302_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e171323_))
                    (let ((_$e171326_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd171327_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl171328_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp176674
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target171303_)))
                            (__tmp176655
                             (let ((__tmp176669
                                    (let ((__tmp176670
                                           (let ((__tmp176673
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e171326_ '())))
                                                 (__tmp176671
                                                  (let ((__tmp176672
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e171032_
                                                            _target171303_))))
                                                    (declare (not safe))
                                                    (cons __tmp176672 '()))))
                                             (declare (not safe))
                                             (cons __tmp176673 __tmp176671))))
                                      (declare (not safe))
                                      (cons __tmp176670 '())))
                                   (__tmp176656
                                    (let ((__tmp176659
                                           (let ((__tmp176665
                                                  (let ((__tmp176668
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd171327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp176666
                 (let ((__tmp176667
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e171326_))))
                   (declare (not safe))
                   (cons __tmp176667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176668
                                                          __tmp176666)))
                                                 (__tmp176660
                                                  (let ((__tmp176661
                                                         (let ((__tmp176664
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl171328_ '())))
                       (__tmp176662
                        (let ((__tmp176663
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e171326_))))
                          (declare (not safe))
                          (cons __tmp176663 '()))))
                   (declare (not safe))
                   (cons __tmp176664 __tmp176662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176661 '()))))
                                             (declare (not safe))
                                             (cons __tmp176665 __tmp176660)))
                                          (__tmp176657
                                           (let* ((_body171329171336_
                                                   _body171320_)
                                                  (_E171331171340_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body171329171336_)))
                                                  (_K171332171348_
                                                   (lambda (_tl171343_
                                                            _hd171344_)
                                                     (let ((__tmp176658
                                                            (lambda (_vars171346_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur171210_
                         _tl171343_
                         _vars171346_
                         _$tl171328_
                         _E171304_
                         _k171305_)))))
               (declare (not safe))
               (_recur171210_
                _hd171344_
                _vars171302_
                _$hd171327_
                _E171304_
                __tmp176658)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body171329171336_))
                                                 (let ((_hd171333171351_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body171329171336_)))
                                                       (_tl171334171353_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body171329171336_))))
                                                   (let* ((_hd171356_
                                                           _hd171333171351_)
                                                          (_tl171358_
                                                           _tl171334171353_))
                                                     (declare (not safe))
                                                     (_K171332171348_
                                                      _tl171358_
                                                      _hd171356_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E171331171340_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp176659
                                       __tmp176657))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp176669
                                __tmp176656))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp176674 __tmp176655 _E171304_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e171323_))
                        (let* ((_body171359171366_ _body171320_)
                               (_E171361171370_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body171359171366_)))
                               (_K171362171421_
                                (lambda (_tl171373_ _hd171374_)
                                  (let* ((_rlen171376_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen171211_ _tl171373_)))
                                         (_$target171378_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd171380_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl171382_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp171384_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e171386_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd171388_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl171390_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars171392_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars171212_ _hd171374_)))
                                         (_lvars171394_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171392_)))
                                         (_tlvars171396_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars171392_)))
                                         (_linit171400_
                                          (map (lambda (_var171398_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars171394_)))
                                    (letrec ((_make-loop171403_
                                              (lambda (_vars171407_)
                                                (let ((__tmp176606
                                                       (let ((__tmp176607
                                                              (let ((__tmp176643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp171384_ '())))
                            (__tmp176608
                             (let ((__tmp176609
                                    (let ((__tmp176642
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd171380_ _lvars171394_)))
                                          (__tmp176610
                                           (let ((__tmp176641
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd171380_)))
                                                 (__tmp176619
                                                  (let ((__tmp176636
                                                         (let ((__tmp176637
                                                                (let ((__tmp176640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e171386_ '())))
                              (__tmp176638
                               (let ((__tmp176639
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e171032_
                                         _$hd171380_))))
                                 (declare (not safe))
                                 (cons __tmp176639 '()))))
                          (declare (not safe))
                          (cons __tmp176640 __tmp176638))))
                   (declare (not safe))
                   (cons __tmp176637 '())))
                (__tmp176620
                 (let ((__tmp176626
                        (let ((__tmp176632
                               (let ((__tmp176635
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd171388_ '())))
                                     (__tmp176633
                                      (let ((__tmp176634
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e171386_))))
                                        (declare (not safe))
                                        (cons __tmp176634 '()))))
                                 (declare (not safe))
                                 (cons __tmp176635 __tmp176633)))
                              (__tmp176627
                               (let ((__tmp176628
                                      (let ((__tmp176631
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl171390_ '())))
                                            (__tmp176629
                                             (let ((__tmp176630
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e171386_))))
                                               (declare (not safe))
                                               (cons __tmp176630 '()))))
                                        (declare (not safe))
                                        (cons __tmp176631 __tmp176629))))
                                 (declare (not safe))
                                 (cons __tmp176628 '()))))
                          (declare (not safe))
                          (cons __tmp176632 __tmp176627)))
                       (__tmp176621
                        (let ((__tmp176622
                               (lambda (_hdvars171409_)
                                 (let ((__tmp176623
                                        (let ((__tmp176624
                                               (map (lambda (_svar171411_
                                                             _lvar171412_)
                                                      (let ((__tmp176625
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar171411_ _hdvars171409_ _BUG171209_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp176625 _lvar171412_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars171392_
                                                    _lvars171394_)))
                                          (declare (not safe))
                                          (cons _$lp-tl171390_ __tmp176624))))
                                   (declare (not safe))
                                   (cons _$lp171384_ __tmp176623)))))
                          (declare (not safe))
                          (_recur171210_
                           _hd171374_
                           '()
                           _$lp-hd171388_
                           _E171304_
                           __tmp176622))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp176626 __tmp176621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176636
                                                     __tmp176620)))
                                                 (__tmp176611
                                                  (let ((__tmp176615
                                                         (map (lambda (_lvar171414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar171415_)
                        (let ((__tmp176618
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar171415_ '())))
                              (__tmp176616
                               (let ((__tmp176617
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar171414_))))
                                 (declare (not safe))
                                 (cons __tmp176617 '()))))
                          (declare (not safe))
                          (cons __tmp176618 __tmp176616)))
                      _lvars171394_
                      _tlvars171396_))
                (__tmp176612
                 (_k171305_
                  (let ((__tmp176613
                         (lambda (_svar171417_ _tlvar171418_ _r171419_)
                           (let ((__tmp176614
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar171417_ _tlvar171418_))))
                             (declare (not safe))
                             (cons __tmp176614 _r171419_)))))
                    (declare (not safe))
                    (foldl2 __tmp176613
                            _vars171407_
                            _svars171392_
                            _tlvars171396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp176615
                                                     __tmp176612))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp176641
                                              __tmp176619
                                              __tmp176611))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp176642
                                       __tmp176610))))
                               (declare (not safe))
                               (cons __tmp176609 '()))))
                        (declare (not safe))
                        (cons __tmp176643 __tmp176608))))
                 (declare (not safe))
                 (cons __tmp176607 '())))
              (__tmp176604
               (let ((__tmp176605
                      (let ()
                        (declare (not safe))
                        (cons _$target171378_ _linit171400_))))
                 (declare (not safe))
                 (cons _$lp171384_ __tmp176605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp176606
                                                   __tmp176604)))))
                                      (let ((_body171405_
                                             (let ((__tmp176645
                                                    (let ((__tmp176646
                                                           (let ((__tmp176649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp176650
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl171382_ '()))))
                            (declare (not safe))
                            (cons _$target171378_ __tmp176650)))
                         (__tmp176647
                          (let ((__tmp176648
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target171303_
                                    _rlen171376_))))
                            (declare (not safe))
                            (cons __tmp176648 '()))))
                     (declare (not safe))
                     (cons __tmp176649 __tmp176647))))
              (declare (not safe))
              (cons __tmp176646 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176644
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171210_
                                                       _tl171373_
                                                       _vars171302_
                                                       _$tl171382_
                                                       _E171304_
                                                       _make-loop171403_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176645
                                                __tmp176644))))
                                        (let ((__tmp176654
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target171303_)))
                                              (__tmp176651
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen171376_))
                                                   _body171405_
                                                   (let ((__tmp176652
                                                          (let ((__tmp176653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target171303_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp176653 _rlen171376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp176652
                                                      _body171405_
                                                      _E171304_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp176654
                                           __tmp176651
                                           _E171304_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body171359171366_))
                              (let ((_hd171363171424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body171359171366_)))
                                    (_tl171364171426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body171359171366_))))
                                (let* ((_hd171429_ _hd171363171424_)
                                       (_tl171431_ _tl171364171426_))
                                  (declare (not safe))
                                  (_K171362171421_ _tl171431_ _hd171429_)))
                              (let () (declare (not safe)) (_E171361171370_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e171323_))
                            (let ((__tmp176603
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target171303_)))
                                  (__tmp176602 (_k171305_ _vars171302_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp176603
                               __tmp176602
                               _E171304_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e171323_))
                                (let ((_$e171433_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp176601
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target171303_)))
                                        (__tmp176593
                                         (let ((__tmp176595
                                                (let ((__tmp176596
                                                       (let ((__tmp176600
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e171433_ '())))
                     (__tmp176597
                      (let ((__tmp176598
                             (let ((__tmp176599
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e171032_
                                       _target171303_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp176599))))
                        (declare (not safe))
                        (cons __tmp176598 '()))))
                 (declare (not safe))
                 (cons __tmp176600 __tmp176597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp176596 '())))
                                               (__tmp176594
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur171210_
                                                   _body171320_
                                                   _vars171302_
                                                   _$e171433_
                                                   _E171304_
                                                   _k171305_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp176595
                                            __tmp176594))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp176601
                                     __tmp176593
                                     _E171304_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e171323_))
                                    (let ((_$e171435_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp176592
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target171303_)))
                                            (__tmp176584
                                             (let ((__tmp176586
                                                    (let ((__tmp176587
                                                           (let ((__tmp176591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e171435_ '())))
                         (__tmp176588
                          (let ((__tmp176589
                                 (let ((__tmp176590
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e171032_
                                           _target171303_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp176590))))
                            (declare (not safe))
                            (cons __tmp176589 '()))))
                     (declare (not safe))
                     (cons __tmp176591 __tmp176588))))
              (declare (not safe))
              (cons __tmp176587 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp176585
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur171210_
                                                       _body171320_
                                                       _vars171302_
                                                       _$e171435_
                                                       _E171304_
                                                       _k171305_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp176586
                                                __tmp176585))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp176592
                                         __tmp176584
                                         _E171304_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e171323_))
                                        (let ((_$e171437_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp176583
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target171303_)))
                                                (__tmp176574
                                                 (let ((__tmp176578
                                                        (let ((__tmp176579
                                                               (let ((__tmp176582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e171437_ '())))
                             (__tmp176580
                              (let ((__tmp176581
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target171303_))))
                                (declare (not safe))
                                (cons __tmp176581 '()))))
                         (declare (not safe))
                         (cons __tmp176582 __tmp176580))))
                  (declare (not safe))
                  (cons __tmp176579 '())))
               (__tmp176575
                (let ((__tmp176577
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e171437_ _body171320_)))
                      (__tmp176576 (_k171305_ _vars171302_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp176577 __tmp176576 _E171304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp176578
                                                    __tmp176575))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp176583
                                             __tmp176574
                                             _E171304_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG171209_ _e171301_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e171306171313_))
                                      (let ((_hd171310171442_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e171306171313_)))
                                            (_tl171311171444_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e171306171313_))))
                                        (let* ((_tag171447_ _hd171310171442_)
                                               (_body171449_ _tl171311171444_))
                                          (declare (not safe))
                                          (_K171309171439_
                                           _body171449_
                                           _tag171447_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171308171317_))))))
                             (_splice-rlen171211_
                              (lambda (_e171263_)
                                (let _lp171265_ ((_e171267_ _e171263_)
                                                 (_n171268_ '0))
                                  (let* ((_e171269171276_ _e171267_)
                                         (_E171271171280_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171269171276_)))
                                         (_K171272171289_
                                          (lambda (_body171283_ _tag171284_)
                                            (let ((_$e171286_ _tag171284_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e171286_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx171030_
                                                     _where171202_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e171286_))
                                                      (let ((__tmp176682
                                                             (cdr _body171283_))
                                                            (__tmp176681
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n171268_ '1))))
                (declare (not safe))
                (_lp171265_ __tmp176682 __tmp176681))
              _n171268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171269171276_))
                                        (let ((_hd171273171292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171269171276_)))
                                              (_tl171274171294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171269171276_))))
                                          (let* ((_tag171297_ _hd171273171292_)
                                                 (_body171299_
                                                  _tl171274171294_))
                                            (declare (not safe))
                                            (_K171272171289_
                                             _body171299_
                                             _tag171297_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171271171280_)))))))
                             (_splice-vars171212_
                              (lambda (_e171219_)
                                (let _recur171221_ ((_e171223_ _e171219_)
                                                    (_vars171224_ '()))
                                  (let* ((_e171225171232_ _e171223_)
                                         (_E171227171236_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e171225171232_)))
                                         (_K171228171251_
                                          (lambda (_body171239_ _tag171240_)
                                            (let ((_$e171242_ _tag171240_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e171242_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body171239_
                                                          _vars171224_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e171242_))
                  (let () (declare (not safe)) (eq? 'splice _$e171242_)))
              (let ((__tmp176685 (cdr _body171239_))
                    (__tmp176683
                     (let ((__tmp176684 (car _body171239_)))
                       (declare (not safe))
                       (_recur171221_ __tmp176684 _vars171224_))))
                (declare (not safe))
                (_recur171221_ __tmp176685 __tmp176683))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e171242_))
                      (let () (declare (not safe)) (eq? 'box _$e171242_)))
                  (let ()
                    (declare (not safe))
                    (_recur171221_ _body171239_ _vars171224_))
                  _vars171224_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e171225171232_))
                                        (let ((_hd171229171254_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e171225171232_)))
                                              (_tl171230171256_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e171225171232_))))
                                          (let* ((_tag171259_ _hd171229171254_)
                                                 (_body171261_
                                                  _tl171230171256_))
                                            (declare (not safe))
                                            (_K171228171251_
                                             _body171261_
                                             _tag171259_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E171227171236_)))))))
                             (_make-body171213_
                              (lambda (_vars171215_)
                                (let ((__tmp176686
                                       (map (lambda (_mvar171217_)
                                              (let ((__tmp176687
                                                     (car _mvar171217_)))
                                                (declare (not safe))
                                                (assgetq __tmp176687
                                                         _vars171215_
                                                         _BUG171209_)))
                                            _mvars171205_)))
                                  (declare (not safe))
                                  (cons _K171206_ __tmp176686)))))
                      (let ()
                        (declare (not safe))
                        (_recur171210_
                         _hd171204_
                         '()
                         _target171203_
                         _E171207_
                         _make-body171213_)))))
                 (_parse-clause171039_
                  (lambda (_hd171108_ _ids171109_)
                    (let _recur171111_ ((_e171113_ _hd171108_)
                                        (_vars171114_ '())
                                        (_depth171115_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e171113_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e171113_))
                              (values '(any) _vars171114_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e171113_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx171030_
                                     _hd171108_))
                                  (if (let ((__tmp176703
                                             (lambda (_id171117_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e171113_
                                                  _id171117_)))))
                                        (declare (not safe))
                                        (find __tmp176703 _ids171109_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e171113_))
                                              _vars171114_)
                                      (if (let ((__tmp176701
                                                 (lambda (_var171119_)
                                                   (let ((__tmp176702
                                                          (car _var171119_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e171113_
                                                      __tmp176702)))))
                                            (declare (not safe))
                                            (find __tmp176701 _vars171114_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx171030_
                                             _e171113_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e171113_))
                                                  (let ((__tmp176700
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e171113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth171115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176700
                                                          _vars171114_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e171113_))
                              (let* ((_e171120171127_ _e171113_)
                                     (_E171122171131_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e171120171127_))))
                                     (_E171121171192_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e171120171127_))
                                            (let ((_e171123171135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e171120171127_))))
                                              (let ((_hd171124171138_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e171123171135_)))
                                                    (_tl171125171140_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e171123171135_))))
                                                (let* ((_hd171143_
                                                        _hd171124171138_)
                                                       (_rest171145_
                                                        _tl171125171140_))
                                                  (if '#t
                                                      (let* ((_make-pair171160_
                                                              (lambda (_tag171147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd171148_
                               _tl171149_)
                        (let* ((_hd-depth171151_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag171147_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth171115_ '1))
                                    _depth171115_))
                               (_g176695_
                                (let ()
                                  (declare (not safe))
                                  (_recur171111_
                                   _hd171148_
                                   _vars171114_
                                   _hd-depth171151_))))
                          (begin
                            (let ((_g176696_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g176695_)
                                         (##vector-length _g176695_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g176696_ 2)))
                                  (error "Context expects 2 values"
                                         _g176696_)))
                            (let ((_hd171153_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176695_ 0)))
                                  (_vars171154_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g176695_ 1))))
                              (let ((_g176697_
                                     (let ()
                                       (declare (not safe))
                                       (_recur171111_
                                        _tl171149_
                                        _vars171154_
                                        _depth171115_))))
                                (begin
                                  (let ((_g176698_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g176697_)
                                               (##vector-length _g176697_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g176698_ 2)))
                                        (error "Context expects 2 values"
                                               _g176698_)))
                                  (let ((_tl171156_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176697_ 0)))
                                        (_vars171157_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g176697_ 1))))
                                    (let ()
                                      (values (let ((__tmp176699
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd171153_
                                                             _tl171156_))))
                                                (declare (not safe))
                                                (cons _tag171147_ __tmp176699))
                                              _vars171157_))))))))))
                     (_e171161171168_ _rest171145_)
                     (_E171163171172_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair171160_ 'cons _hd171143_ _rest171145_))))
                     (_E171162171188_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e171161171168_))
                            (let ((_e171164171176_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e171161171168_))))
                              (let ((_hd171165171179_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e171164171176_)))
                                    (_tl171166171181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e171164171176_))))
                                (let* ((_rest-hd171184_ _hd171165171179_)
                                       (_rest-tl171186_ _tl171166171181_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd171184_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171160_
                                             'splice
                                             _hd171143_
                                             _rest-tl171186_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair171160_
                                             'cons
                                             _hd171143_
                                             _rest171145_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E171163171172_))))))
                            (let () (declare (not safe)) (_E171163171172_))))))
                (let () (declare (not safe)) (_E171162171188_)))
              (let () (declare (not safe)) (_E171122171131_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E171122171131_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171121171192_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e171113_))
                                  (values '(null) _vars171114_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e171113_))
                                      (let ((_g176692_
                                             (let ((__tmp176694
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e171113_)))))
                                               (declare (not safe))
                                               (_recur171111_
                                                __tmp176694
                                                _vars171114_
                                                _depth171115_))))
                                        (begin
                                          (let ((_g176693_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g176692_)
                                                       (##vector-length
                                                        _g176692_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g176693_ 2)))
                                                (error "Context expects 2 values"
                                                       _g176693_)))
                                          (let ((_e171196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g176692_ 0)))
                                                (_vars171197_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g176692_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e171196_))
                                                    _vars171197_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e171113_))
                                          (let ((_g176689_
                                                 (let ((__tmp176691
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e171113_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur171111_
                                                    __tmp176691
                                                    _vars171114_
                                                    _depth171115_))))
                                            (begin
                                              (let ((_g176690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g176689_)
                                                           (##vector-length
                                                            _g176689_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g176690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g176690_)))
                                              (let ((_e171199_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176689_
                                                        0)))
                                                    (_vars171200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g176689_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e171199_))
                                                        _vars171200_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e171113_))
                                              (values (let ((__tmp176688
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e171113_))))
                (declare (not safe))
                (cons 'datum __tmp176688))
              _vars171114_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx171030_
                                                 _e171113_))))))))))))
          (let* ((_e171040171053_ _stx171030_)
                 (_E171042171057_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e171040171053_))))
                 (_E171041171104_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e171040171053_))
                        (let ((_e171043171061_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e171040171053_))))
                          (let ((_hd171044171064_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e171043171061_)))
                                (_tl171045171066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e171043171061_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl171045171066_))
                                (let ((_e171046171069_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl171045171066_))))
                                  (let ((_hd171047171072_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e171046171069_)))
                                        (_tl171048171074_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e171046171069_))))
                                    (let ((_expr171077_ _hd171047171072_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl171048171074_))
                                          (let ((_e171049171079_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl171048171074_))))
                                            (let ((_hd171050171082_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e171049171079_)))
                                                  (_tl171051171084_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e171049171079_))))
                                              (let* ((_ids171087_
                                                      _hd171050171082_)
                                                     (_clauses171089_
                                                      _tl171051171084_))
                                                (if '#t
                                                    (if (let ((__tmp176721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids171087_))))
                  (declare (not safe))
                  (not __tmp176721))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx171030_
                   _ids171087_))
                (if (let ((__tmp176720
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses171089_))))
                      (declare (not safe))
                      (not __tmp176720))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx171030_))
                    (let* ((_ids171091_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids171087_)))
                           (_clauses171093_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses171089_)))
                           (_clause-ids171095_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses171093_)))
                           (_E171097_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target171099_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first171101_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses171093_))
                                _E171097_
                                (car _clause-ids171095_))))
                      (let ((__tmp176705
                             (let ((__tmp176706
                                    (let ((__tmp176708
                                           (let ((__tmp176713
                                                  (let ((__tmp176714
                                                         (let ((__tmp176719
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E171097_ '())))
                       (__tmp176715
                        (let ((__tmp176716
                               (let ((__tmp176718
                                      (let ()
                                        (declare (not safe))
                                        (cons _target171099_ '())))
                                     (__tmp176717
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target171099_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp176718
                                  __tmp176717))))
                          (declare (not safe))
                          (cons __tmp176716 '()))))
                   (declare (not safe))
                   (cons __tmp176719 __tmp176715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp176714 '())))
                                                 (__tmp176709
                                                  (let ((__tmp176712
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings171035_
                                                            _target171099_
                                                            _ids171091_
                                                            _clauses171093_
                                                            _clause-ids171095_
                                                            _E171097_)))
                                                        (__tmp176710
                                                         (let ((__tmp176711
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr171077_ '()))))
                   (declare (not safe))
                   (cons _first171101_ __tmp176711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body171036_
                                                     __tmp176712
                                                     __tmp176710))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp176713
                                              __tmp176709)))
                                          (__tmp176707
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx171030_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp176708
                                       __tmp176707))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp176706)))
                            (__tmp176704
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx171030_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp176705 __tmp176704)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E171042171057_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E171042171057_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E171042171057_)))))
                        (let () (declare (not safe)) (_E171042171057_))))))
            (let () (declare (not safe)) (_E171041171104_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx171740_)
        (let* ((_identifier=?171742_ 'free-identifier=?)
               (_unwrap-e171744_ 'syntax-e)
               (_wrap-e171746_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171740_
           _identifier=?171742_
           _unwrap-e171744_
           _wrap-e171746_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx171748_ _identifier=?171749_)
        (let* ((_unwrap-e171751_ 'syntax-e) (_wrap-e171753_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171748_
           _identifier=?171749_
           _unwrap-e171751_
           _wrap-e171753_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx171755_ _identifier=?171756_ _unwrap-e171757_)
        (let ((_wrap-e171759_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx171755_
           _identifier=?171756_
           _unwrap-e171757_
           _wrap-e171759_))))
    (define gx#macro-expand-syntax-case
      (lambda _g176723_
        (let ((_g176722_ (let () (declare (not safe)) (##length _g176723_))))
          (cond ((let () (declare (not safe)) (##fx= _g176722_ 1))
                 (apply (lambda (_stx171740_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx171740_)))
                        _g176723_))
                ((let () (declare (not safe)) (##fx= _g176722_ 2))
                 (apply (lambda (_stx171748_ _identifier=?171749_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx171748_
                             _identifier=?171749_)))
                        _g176723_))
                ((let () (declare (not safe)) (##fx= _g176722_ 3))
                 (apply (lambda (_stx171755_
                                 _identifier=?171756_
                                 _unwrap-e171757_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx171755_
                             _identifier=?171756_
                             _unwrap-e171757_)))
                        _g176723_))
                ((let () (declare (not safe)) (##fx= _g176722_ 4))
                 (apply (lambda (_stx171761_
                                 _identifier=?171762_
                                 _unwrap-e171763_
                                 _wrap-e171764_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx171761_
                             _identifier=?171762_
                             _unwrap-e171763_
                             _wrap-e171764_)))
                        _g176723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g176723_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx171027_)
        (if (let () (declare (not safe)) (gx#identifier? _stx171027_))
            (let ((__tmp176724
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx171027_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp176724 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd170985_ . _rest170986_)
        (let ((_len170988_ (length _hd170985_)))
          (let _lp170990_ ((_rest170992_ _rest170986_))
            (let* ((_rest170993171001_ _rest170992_)
                   (_else170995171009_ (lambda () '#!void))
                   (_K170997171015_
                    (lambda (_rest171012_ _hd171013_)
                      (if (fx= _len170988_ (length _hd171013_))
                          (let ()
                            (declare (not safe))
                            (_lp170990_ _rest171012_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd171013_))))))
              (if (let () (declare (not safe)) (##pair? _rest170993171001_))
                  (let ((_hd170998171018_
                         (let ()
                           (declare (not safe))
                           (##car _rest170993171001_)))
                        (_tl170999171020_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest170993171001_))))
                    (let* ((_hd171023_ _hd170998171018_)
                           (_rest171025_ _tl170999171020_))
                      (declare (not safe))
                      (_K170997171015_ _rest171025_ _hd171023_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx170943_ _n170944_)
        (let _lp170946_ ((_rest170948_ _stx170943_) (_r170949_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest170948_))
              (let* ((_g170950170957_
                      (let () (declare (not safe)) (gx#syntax-e _rest170948_)))
                     (_E170952170961_
                      (lambda ()
                        (error '"No clause matching" _g170950170957_)))
                     (_K170953170967_
                      (lambda (_rest170964_ _hd170965_)
                        (let ((__tmp176729
                               (let ()
                                 (declare (not safe))
                                 (cons _hd170965_ _r170949_))))
                          (declare (not safe))
                          (_lp170946_ _rest170964_ __tmp176729)))))
                (if (let () (declare (not safe)) (##pair? _g170950170957_))
                    (let ((_hd170954170970_
                           (let ()
                             (declare (not safe))
                             (##car _g170950170957_)))
                          (_tl170955170972_
                           (let ()
                             (declare (not safe))
                             (##cdr _g170950170957_))))
                      (let* ((_hd170975_ _hd170954170970_)
                             (_rest170977_ _tl170955170972_))
                        (declare (not safe))
                        (_K170953170967_ _rest170977_ _hd170975_)))
                    (let () (declare (not safe)) (_E170952170961_))))
              (let _lp170979_ ((_n170981_ _n170944_)
                               (_l170982_ _r170949_)
                               (_r170983_ _rest170948_))
                (if (let () (declare (not safe)) (null? _l170982_))
                    (values _l170982_ _r170983_)
                    (if (fxpositive? _n170981_)
                        (let ((__tmp176728
                               (let ()
                                 (declare (not safe))
                                 (fx- _n170981_ '1)))
                              (__tmp176727 (cdr _l170982_))
                              (__tmp176725
                               (let ((__tmp176726 (car _l170982_)))
                                 (declare (not safe))
                                 (cons __tmp176726 _r170983_))))
                          (declare (not safe))
                          (_lp170979_ __tmp176728 __tmp176727 __tmp176725))
                        (values (reverse _l170982_) _r170983_))))))))))
