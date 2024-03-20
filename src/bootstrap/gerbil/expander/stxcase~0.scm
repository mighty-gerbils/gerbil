(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710943026)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98653 (list gx#expander::t))
            (__tmp98651
             (let ((__tmp98652
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98652 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98653
         '(id depth)
         __tmp98651
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98648_
        (apply make-instance gx#syntax-pattern::t _$args98648_)))
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
      (lambda (_self98645_ _stx98646_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98646_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx98127_)
        (letrec ((_generate98129_
                  (lambda (_e98356_)
                    (letrec ((_BUG98358_
                              (lambda (_q98520_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx98127_
                                         _e98356_
                                         _q98520_))))
                             (_local-pattern-e98359_
                              (lambda (_pat98518_)
                                (let ((__tmp98654
                                       (##structure-ref
                                        _pat98518_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98654))))
                             (_getvar98360_
                              (lambda (_q98515_ _vars98516_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98515_
                                   _vars98516_
                                   _BUG98358_))))
                             (_getarg98361_
                              (lambda (_arg98481_ _vars98482_)
                                (let* ((_arg9848398490_ _arg98481_)
                                       (_E9848598494_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9848398490_))))
                                       (_K9848698503_
                                        (lambda (_e98497_ _tag98498_)
                                          (let ((_$e98500_ _tag98498_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98500_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98360_
                                                   _e98497_
                                                   _vars98482_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98500_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98359_
                                                       _e98497_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98358_
                                                       _arg98481_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9848398490_))
                                      (let ((_hd9848798506_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9848398490_)))
                                            (_tl9848898508_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9848398490_))))
                                        (let* ((_tag98511_ _hd9848798506_)
                                               (_e98513_ _tl9848898508_))
                                          (declare (not safe))
                                          (_K9848698503_ _e98513_ _tag98511_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9848598494_)))))))
                      (let _recur98363_ ((_e98365_ _e98356_) (_vars98366_ '()))
                        (let* ((_e9836798374_ _e98365_)
                               (_E9836998378_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9836798374_))))
                               (_K9837098469_
                                (lambda (_body98381_ _tag98382_)
                                  (let ((_$e98384_ _tag98382_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98384_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98381_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98384_))
                                            (let ((_id98387_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98381_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98387_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98387_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98389_))
                                                        (let ((__tmp98682
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98381_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98682))
                (let ((__tmp98681
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98381_)))
                      (__tmp98680
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98381_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98681
                   __tmp98680
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98387_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98381_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98358_
                                                         _e98365_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98384_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98359_
                                                   _body98381_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98384_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98360_
                                                       _body98381_
                                                       _vars98366_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98384_))
                                                        (let ((__tmp98678
                                                               (let ((__tmp98679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98381_)))
                         (declare (not safe))
                         (_recur98363_ __tmp98679 _vars98366_)))
                      (__tmp98676
                       (let ((__tmp98677 (cdr _body98381_)))
                         (declare (not safe))
                         (_recur98363_ __tmp98677 _vars98366_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98678 __tmp98676))
                (if (let () (declare (not safe)) (eq? 'vector _$e98384_))
                    (let ((__tmp98675
                           (let ()
                             (declare (not safe))
                             (_recur98363_ _body98381_ _vars98366_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98675))
                    (if (let () (declare (not safe)) (eq? 'box _$e98384_))
                        (let ((__tmp98674
                               (let ()
                                 (declare (not safe))
                                 (_recur98363_ _body98381_ _vars98366_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98674))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98384_))
                            (let* ((_body9839098401_ _body98381_)
                                   (_E9839298405_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9839098401_))))
                                   (_K9839398443_
                                    (lambda (_args98408_
                                             _iv98409_
                                             _hd98410_
                                             _depth98411_)
                                      (let* ((_targets98417_
                                              (map (lambda (_g9841298414_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98361_
                                                        _g9841298414_
                                                        _vars98366_)))
                                                   _args98408_))
                                             (_fold-in98419_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98408_)))
                                             (_fold-out98421_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98423_
                                              (let ((__tmp98655
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98421_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98655
                                                        _fold-in98419_)))
                                             (_lambda-body98440_
                                              (if (fx> _depth98411_ '1)
                                                  (let ((_r-args98431_
                                                         (map (lambda (_arg98425_)
                                                                (let ((__tmp98660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98425_)))
                          (declare (not safe))
                          (cons 'ref __tmp98660)))
                      _args98408_))
                (_r-vars98432_
                 (let ((__tmp98661
                        (lambda (_arg98427_ _var98428_ _r98429_)
                          (let ((__tmp98662
                                 (let ((__tmp98663 (cdr _arg98427_)))
                                   (declare (not safe))
                                   (cons __tmp98663 _var98428_))))
                            (declare (not safe))
                            (cons __tmp98662 _r98429_)))))
                   (declare (not safe))
                   (foldr2 __tmp98661
                           _vars98366_
                           _args98408_
                           _fold-in98419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98664
                                                           (let ((__tmp98665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98669
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98411_ '1)))
                                (__tmp98666
                                 (let ((__tmp98667
                                        (let ((__tmp98668
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98421_))))
                                          (declare (not safe))
                                          (cons __tmp98668 _r-args98431_))))
                                   (declare (not safe))
                                   (cons _hd98410_ __tmp98667))))
                            (declare (not safe))
                            (cons __tmp98669 __tmp98666))))
                     (declare (not safe))
                     (cons 'splice __tmp98665))))
              (declare (not safe))
              (_recur98363_ __tmp98664 _r-vars98432_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98438_
                                                          (let ((__tmp98656
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98434_ _var98435_ _r98436_)
                           (let ((__tmp98657
                                  (let ((__tmp98658 (cdr _arg98434_)))
                                    (declare (not safe))
                                    (cons __tmp98658 _var98435_))))
                             (declare (not safe))
                             (cons __tmp98657 _r98436_)))))
                    (declare (not safe))
                    (foldr2 __tmp98656
                            _vars98366_
                            _args98408_
                            _fold-in98419_)))
                 (__tmp98659
                  (let ()
                    (declare (not safe))
                    (_recur98363_ _hd98410_ _hd-vars98438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98659
                                                     _fold-out98421_)))))
                                        (let ((__tmp98673
                                               (if (fx> (length _targets98417_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98417_))
                                                   '#!void))
                                              (__tmp98670
                                               (let ((__tmp98672
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98423_
                                                         _lambda-body98440_)))
                                                     (__tmp98671
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98363_
                                                         _iv98409_
                                                         _vars98366_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98672
                                                  __tmp98671
                                                  _targets98417_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98673
                                           __tmp98670))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9839098401_))
                                  (let ((_hd9839498446_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9839098401_)))
                                        (_tl9839598448_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9839098401_))))
                                    (let ((_depth98451_ _hd9839498446_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9839598448_))
                                          (let ((_hd9839698453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9839598448_)))
                                                (_tl9839798455_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9839598448_))))
                                            (let ((_hd98458_ _hd9839698453_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9839798455_))
                                                  (let ((_hd9839898460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9839798455_)))
                                                        (_tl9839998462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9839798455_))))
                                                    (let* ((_iv98465_
                                                            _hd9839898460_)
                                                           (_args98467_
                                                            _tl9839998462_))
                                                      (declare (not safe))
                                                      (_K9839398443_
                                                       _args98467_
                                                       _iv98465_
                                                       _hd98458_
                                                       _depth98451_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9839298405_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9839298405_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9839298405_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98384_))
                                _body98381_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98358_ _e98365_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9836798374_))
                              (let ((_hd9837198472_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9836798374_)))
                                    (_tl9837298474_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9836798374_))))
                                (let* ((_tag98477_ _hd9837198472_)
                                       (_body98479_ _tl9837298474_))
                                  (declare (not safe))
                                  (_K9837098469_ _body98479_ _tag98477_)))
                              (let ()
                                (declare (not safe))
                                (_E9836998378_))))))))
                 (_parse98130_
                  (lambda (_e98171_)
                    (letrec ((_make-cons98173_
                              (lambda (_hd98348_ _tl98349_)
                                (let ((_g98683_ _hd98348_)
                                      (_g98685_ _tl98349_))
                                  (begin
                                    (let ((_g98684_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98683_)
                                                 (##vector-length _g98683_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98684_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98684_)))
                                    (let ((_g98686_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98685_)
                                                 (##vector-length _g98685_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98686_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98686_)))
                                    (let ((_hd-e98351_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98683_ 0)))
                                          (_hd-vars98352_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98683_ 1))))
                                      (let ((_tl-e98353_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98685_ 0)))
                                            (_tl-vars98354_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98685_ 1))))
                                        (values (let ((__tmp98687
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98351_
                                                               _tl-e98353_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98687))
                                                (append _hd-vars98352_
                                                        _tl-vars98354_))))))))
                             (_make-splice98174_
                              (lambda (_where98287_
                                       _depth98288_
                                       _hd98289_
                                       _tl98290_)
                                (let ((_g98688_ _hd98289_)
                                      (_g98690_ _tl98290_))
                                  (begin
                                    (let ((_g98689_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98688_)
                                                 (##vector-length _g98688_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98689_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98689_)))
                                    (let ((_g98691_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98690_)
                                                 (##vector-length _g98690_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98691_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98691_)))
                                    (let ((_hd-e98292_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98688_ 0)))
                                          (_hd-vars98293_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98688_ 1))))
                                      (let ((_tl-e98294_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98690_ 0)))
                                            (_tl-vars98295_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98690_ 1))))
                                        (let _lp98297_ ((_rest98299_
                                                         _hd-vars98293_)
                                                        (_targets98300_ '())
                                                        (_vars98301_
                                                         _tl-vars98295_))
                                          (let* ((_rest9830298312_ _rest98299_)
                                                 (_else9830498320_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98300_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx98127_
                                                           _where98287_))
                                                        (values (let ((__tmp98692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98693
                                      (let ((__tmp98694
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e98294_
                                                     _targets98300_))))
                                        (declare (not safe))
                                        (cons _hd-e98292_ __tmp98694))))
                                 (declare (not safe))
                                 (cons _depth98288_ __tmp98693))))
                          (declare (not safe))
                          (cons 'splice __tmp98692))
                        _vars98301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9830698329_
                                                  (lambda (_rest98323_
                                                           _hd-pat98324_
                                                           _hd-depth*98325_)
                                                    (let ((_hd-depth98327_
                                                           (fx- _hd-depth*98325_
                                                                _depth98288_)))
                                                      (if (fxpositive?
                                                           _hd-depth98327_)
                                                          (let ((__tmp98699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98700
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98324_))))
                           (declare (not safe))
                           (cons __tmp98700 _targets98300_)))
                        (__tmp98697
                         (let ((__tmp98698
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98327_ _hd-pat98324_))))
                           (declare (not safe))
                           (cons __tmp98698 _vars98301_))))
                    (declare (not safe))
                    (_lp98297_ _rest98323_ __tmp98699 __tmp98697))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98327_))
                      (let ((__tmp98695
                             (let ((__tmp98696
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98324_))))
                               (declare (not safe))
                               (cons __tmp98696 _targets98300_))))
                        (declare (not safe))
                        (_lp98297_ _rest98323_ __tmp98695 _vars98301_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx98127_
                         _where98287_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9830298312_))
                                                (let ((_hd9830798332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9830298312_)))
                                                      (_tl9830898334_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9830298312_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9830798332_))
                                                      (let ((_hd9830998337_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9830798332_)))
                    (_tl9831098339_
                     (let () (declare (not safe)) (##cdr _hd9830798332_))))
                (let* ((_hd-depth*98342_ _hd9830998337_)
                       (_hd-pat98344_ _tl9831098339_)
                       (_rest98346_ _tl9830898334_))
                  (declare (not safe))
                  (_K9830698329_ _rest98346_ _hd-pat98344_ _hd-depth*98342_)))
              (let () (declare (not safe)) (_else9830498320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9830498320_)))))))))))
                             (_recur98175_
                              (lambda (_e98180_ _is-e?98181_)
                                (if (_is-e?98181_ _e98180_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx98127_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e98180_))
                                        (let* ((_pat98183_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e98180_)))
                                               (_depth98185_
                                                (##structure-ref
                                                 _pat98183_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth98185_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat98183_))
                                                      (let ((__tmp98716
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth98185_ _pat98183_))))
                (declare (not safe))
                (cons __tmp98716 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat98183_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e98180_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e98180_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e98180_))
                                                (let* ((_e9818798194_ _e98180_)
                                                       (_E9818998198_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9818798194_))))
                                                       (_E9818898277_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9818798194_))
                      (let ((_e9819098202_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9818798194_))))
                        (let ((_hd9819198205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9819098202_)))
                              (_tl9819298207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9819098202_))))
                          (let* ((_hd98210_ _hd9819198205_)
                                 (_rest98212_ _tl9819298207_))
                            (if '#t
                                (if (_is-e?98181_ _hd98210_)
                                    (let* ((_e9821398220_ _rest98212_)
                                           (_E9821598224_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx98127_
                                                 _e98180_))))
                                           (_E9821498238_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9821398220_))
                                                  (let ((_e9821698228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9821398220_))))
                                                    (let ((_hd9821798231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9821698228_)))
                                                          (_tl9821898233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9821698228_))))
                                                      (let ((_rest98236_
                                                             _hd9821798231_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9821898233_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur98175_ _rest98236_ false))
                        (let () (declare (not safe)) (_E9821598224_)))
                    (let () (declare (not safe)) (_E9821598224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9821598224_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9821498238_)))
                                    (let _lp98242_ ((_rest98244_ _rest98212_)
                                                    (_depth98245_ '0))
                                      (let* ((_e9824698253_ _rest98244_)
                                             (_E9824898257_
                                              (lambda ()
                                                (if (fxpositive? _depth98245_)
                                                    (let ((__tmp98710
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98175_
                                                              _hd98210_
                                                              _is-e?98181_)))
                                                          (__tmp98709
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98175_
                                                              _rest98244_
                                                              _is-e?98181_))))
                                                      (declare (not safe))
                                                      (_make-splice98174_
                                                       _e98180_
                                                       _depth98245_
                                                       __tmp98710
                                                       __tmp98709))
                                                    (let ((__tmp98708
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98175_
                                                              _hd98210_
                                                              _is-e?98181_)))
                                                          (__tmp98707
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98175_
                                                              _rest98244_
                                                              _is-e?98181_))))
                                                      (declare (not safe))
                                                      (_make-cons98173_
                                                       __tmp98708
                                                       __tmp98707)))))
                                             (_E9824798273_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9824698253_))
                                                    (let ((_e9824998261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9824698253_))))
                                                      (let ((_hd9825098264_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9824998261_)))
                    (_tl9825198266_
                     (let () (declare (not safe)) (##cdr _e9824998261_))))
                (let* ((_rest-hd98269_ _hd9825098264_)
                       (_rest-tl98271_ _tl9825198266_))
                  (if '#t
                      (if (_is-e?98181_ _rest-hd98269_)
                          (let ((__tmp98715
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth98245_ '1))))
                            (declare (not safe))
                            (_lp98242_ _rest-tl98271_ __tmp98715))
                          (if (fxpositive? _depth98245_)
                              (let ((__tmp98714
                                     (let ()
                                       (declare (not safe))
                                       (_recur98175_ _hd98210_ _is-e?98181_)))
                                    (__tmp98713
                                     (let ()
                                       (declare (not safe))
                                       (_recur98175_
                                        _rest98244_
                                        _is-e?98181_))))
                                (declare (not safe))
                                (_make-splice98174_
                                 _e98180_
                                 _depth98245_
                                 __tmp98714
                                 __tmp98713))
                              (let ((__tmp98712
                                     (let ()
                                       (declare (not safe))
                                       (_recur98175_ _hd98210_ _is-e?98181_)))
                                    (__tmp98711
                                     (let ()
                                       (declare (not safe))
                                       (_recur98175_
                                        _rest98244_
                                        _is-e?98181_))))
                                (declare (not safe))
                                (_make-cons98173_ __tmp98712 __tmp98711))))
                      (let () (declare (not safe)) (_E9824898257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9824898257_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9824798273_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9818998198_))))))
                      (let () (declare (not safe)) (_E9818998198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9818898277_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e98180_))
                                                    (let ((_g98704_
                                                           (let ((__tmp98706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e98180_)))))
                     (declare (not safe))
                     (_recur98175_ __tmp98706 _is-e?98181_))))
              (begin
                (let ((_g98705_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98704_)
                             (##vector-length _g98704_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98705_ 2)))
                      (error "Context expects 2 values" _g98705_)))
                (let ((_e98281_
                       (let () (declare (not safe)) (##vector-ref _g98704_ 0)))
                      (_vars98282_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98704_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e98281_))
                          _vars98282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e98180_))
                                                        (let ((_g98701_
                                                               (let ((__tmp98703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e98180_)))))
                         (declare (not safe))
                         (_recur98175_ __tmp98703 _is-e?98181_))))
                  (begin
                    (let ((_g98702_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98701_)
                                 (##vector-length _g98701_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98702_ 2)))
                          (error "Context expects 2 values" _g98702_)))
                    (let ((_e98284_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98701_ 0)))
                          (_vars98285_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98701_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e98284_))
                              _vars98285_))))
                (values (let () (declare (not safe)) (cons 'datum _e98180_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98717_
                             (let ()
                               (declare (not safe))
                               (_recur98175_ _e98171_ gx#ellipsis?))))
                        (begin
                          (let ((_g98718_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98717_)
                                       (##vector-length _g98717_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98718_ 2)))
                                (error "Context expects 2 values" _g98718_)))
                          (let ((_tree98177_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98717_ 0)))
                                (_vars98178_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98717_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars98178_))
                                _tree98177_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx98127_
                                   _vars98178_))))))))))
          (let* ((_e9813198141_ _stx98127_)
                 (_E9813398145_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx98127_))))
                 (_E9813298167_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9813198141_))
                        (let ((_e9813498149_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9813198141_))))
                          (let ((_hd9813598152_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9813498149_)))
                                (_tl9813698154_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9813498149_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9813698154_))
                                (let ((_e9813798157_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9813698154_))))
                                  (let ((_hd9813898160_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9813798157_)))
                                        (_tl9813998162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9813798157_))))
                                    (let ((_form98165_ _hd9813898160_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9813998162_))
                                          (if '#t
                                              (let ((__tmp98720
                                                     (let ((__tmp98721
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse98130_
                                                               _form98165_))))
                                                       (declare (not safe))
                                                       (_generate98129_
                                                        __tmp98721)))
                                                    (__tmp98719
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx98127_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98720
                                                 __tmp98719))
                                              (let ()
                                                (declare (not safe))
                                                (_E9813398145_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9813398145_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9813398145_)))))
                        (let () (declare (not safe)) (_E9813398145_))))))
            (let () (declare (not safe)) (_E9813298167_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97391_ _identifier=?97392_ _unwrap-e97393_ _wrap-e97394_)
        (letrec ((_generate-bindings97396_
                  (lambda (_target97991_
                           _ids97992_
                           _clauses97993_
                           _clause-ids97994_
                           _E97995_)
                    (letrec ((_generate197997_
                              (lambda (_clause98094_ _clause-id98095_ _E98096_)
                                (let ((__tmp98726
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id98095_ '())))
                                      (__tmp98722
                                       (let ((__tmp98723
                                              (let ((__tmp98725
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97991_
                                                             '())))
                                                    (__tmp98724
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97398_
                                                        _target97991_
                                                        _ids97992_
                                                        _clause98094_
                                                        _E98096_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98725
                                                 __tmp98724))))
                                         (declare (not safe))
                                         (cons __tmp98723 '()))))
                                  (declare (not safe))
                                  (cons __tmp98726 __tmp98722)))))
                      (let _lp97999_ ((_rest98001_ _clauses97993_)
                                      (_rest-ids98002_ _clause-ids97994_)
                                      (_bindings98003_ '()))
                        (let* ((_rest9800498012_ _rest98001_)
                               (_else9800698020_ (lambda () _bindings98003_))
                               (_K9800898082_
                                (lambda (_rest98023_ _clause98024_)
                                  (let* ((_rest-ids9802598032_ _rest-ids98002_)
                                         (_E9802798036_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9802598032_))))
                                         (_K9802898070_
                                          (lambda (_rest-ids98039_
                                                   _clause-id98040_)
                                            (let* ((_rest-ids9804198049_
                                                    _rest-ids98039_)
                                                   (_else9804398057_
                                                    (lambda ()
                                                      (let ((__tmp98727
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197997_
                        _clause98024_
                        _clause-id98040_
                        _E97995_))))
                (declare (not safe))
                (cons __tmp98727 _bindings98003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9804598062_
                                                    (lambda (_next-clause-id98060_)
                                                      (let ((__tmp98728
                                                             (let ((__tmp98729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197997_
                               _clause98024_
                               _clause-id98040_
                               _next-clause-id98060_))))
                       (declare (not safe))
                       (cons __tmp98729 _bindings98003_))))
                (declare (not safe))
                (_lp97999_ _rest98023_ _rest-ids98039_ __tmp98728)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9804198049_))
                                                  (let* ((_hd9804698065_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9804198049_)))
                                                         (_next-clause-id98068_
                                                          _hd9804698065_))
                                                    (declare (not safe))
                                                    (_K9804598062_
                                                     _next-clause-id98068_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9804398057_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9802598032_))
                                        (let ((_hd9802998073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9802598032_)))
                                              (_tl9803098075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9802598032_))))
                                          (let* ((_clause-id98078_
                                                  _hd9802998073_)
                                                 (_rest-ids98080_
                                                  _tl9803098075_))
                                            (declare (not safe))
                                            (_K9802898070_
                                             _rest-ids98080_
                                             _clause-id98078_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9802798036_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9800498012_))
                              (let ((_hd9800998085_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9800498012_)))
                                    (_tl9801098087_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9800498012_))))
                                (let* ((_clause98090_ _hd9800998085_)
                                       (_rest98092_ _tl9801098087_))
                                  (declare (not safe))
                                  (_K9800898082_ _rest98092_ _clause98090_)))
                              (let ()
                                (declare (not safe))
                                (_else9800698020_))))))))
                 (_generate-body97397_
                  (lambda (_bindings97951_ _body97952_)
                    (let _recur97954_ ((_rest97956_ _bindings97951_))
                      (let* ((_rest9795797965_ _rest97956_)
                             (_else9795997973_ (lambda () _body97952_))
                             (_K9796197979_
                              (lambda (_rest97976_ _hd97977_)
                                (let ((__tmp98731
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97977_ '())))
                                      (__tmp98730
                                       (let ()
                                         (declare (not safe))
                                         (_recur97954_ _rest97976_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98731
                                   __tmp98730)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9795797965_))
                            (let ((_hd9796297982_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9795797965_)))
                                  (_tl9796397984_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9795797965_))))
                              (let* ((_hd97987_ _hd9796297982_)
                                     (_rest97989_ _tl9796397984_))
                                (declare (not safe))
                                (_K9796197979_ _rest97989_ _hd97987_)))
                            (let ()
                              (declare (not safe))
                              (_else9795997973_)))))))
                 (_generate-clause97398_
                  (lambda (_target97814_ _ids97815_ _clause97816_ _E97817_)
                    (letrec ((_generate197819_
                              (lambda (_hd97906_ _fender97907_ _body97908_)
                                (let ((_g98732_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97400_
                                          _hd97906_
                                          _ids97815_))))
                                  (begin
                                    (let ((_g98733_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98732_)
                                                 (##vector-length _g98732_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98733_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98733_)))
                                    (let ((_e97910_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98732_ 0)))
                                          (_mvars97911_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98732_ 1))))
                                      (let* ((_pvars97913_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97911_))))
                                             (_E97915_
                                              (let ((__tmp98734
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97814_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97817_ __tmp98734)))
                                             (_K97948_
                                              (let ((__tmp98735
                                                     (let ((__tmp98737
                                                            (map (lambda (_mvar97917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97918_)
                           (let* ((_mvar9791997926_ _mvar97917_)
                                  (_E9792197930_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9791997926_))))
                                  (_K9792297936_
                                   (lambda (_depth97933_ _id97934_)
                                     (let ((__tmp98738
                                            (let ((__tmp98739
                                                   (let ((__tmp98741
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97934_)))
                                                         (__tmp98740
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97918_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98741
                                                      __tmp98740
                                                      _depth97933_))))
                                              (declare (not safe))
                                              (cons __tmp98739 '()))))
                                       (declare (not safe))
                                       (cons _id97934_ __tmp98738)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9791997926_))
                                 (let ((_hd9792397939_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9791997926_)))
                                       (_tl9792497941_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9791997926_))))
                                   (let* ((_id97944_ _hd9792397939_)
                                          (_depth97946_ _tl9792497941_))
                                     (declare (not safe))
                                     (_K9792297936_ _depth97946_ _id97944_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9792197930_)))))
                         _mvars97911_
                         _pvars97913_))
                   (__tmp98736
                    (if (let () (declare (not safe)) (eq? _fender97907_ '#t))
                        _body97908_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97907_
                           _body97908_
                           _E97915_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98737 __tmp98736))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97913_
                                                 __tmp98735))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97399_
                                           _hd97906_
                                           _target97814_
                                           _e97910_
                                           _mvars97911_
                                           _K97948_
                                           _E97915_)))))))))
                      (let* ((_e9782097840_ _clause97816_)
                             (_E9782997844_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9782097840_))))
                             (_E9782297878_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9782097840_))
                                    (let ((_e9783097848_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9782097840_))))
                                      (let ((_hd9783197851_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9783097848_)))
                                            (_tl9783297853_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9783097848_))))
                                        (let ((_hd97856_ _hd9783197851_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9783297853_))
                                              (let ((_e9783397858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9783297853_))))
                                                (let ((_hd9783497861_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9783397858_)))
                                                      (_tl9783597863_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9783397858_))))
                                                  (let ((_fender97866_
                                                         _hd9783497861_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9783597863_))
                                                        (let ((_e9783697868_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9783597863_))))
                  (let ((_hd9783797871_
                         (let () (declare (not safe)) (##car _e9783697868_)))
                        (_tl9783897873_
                         (let () (declare (not safe)) (##cdr _e9783697868_))))
                    (let ((_body97876_ _hd9783797871_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9783897873_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197819_
                                 _hd97856_
                                 _fender97866_
                                 _body97876_))
                              (let () (declare (not safe)) (_E9782997844_)))
                          (let () (declare (not safe)) (_E9782997844_))))))
                (let () (declare (not safe)) (_E9782997844_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9782997844_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9782997844_)))))
                             (_E9782197902_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9782097840_))
                                    (let ((_e9782397882_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9782097840_))))
                                      (let ((_hd9782497885_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9782397882_)))
                                            (_tl9782597887_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9782397882_))))
                                        (let ((_hd97890_ _hd9782497885_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9782597887_))
                                              (let ((_e9782697892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9782597887_))))
                                                (let ((_hd9782797895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9782697892_)))
                                                      (_tl9782897897_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9782697892_))))
                                                  (let ((_body97900_
                                                         _hd9782797895_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9782897897_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197819_
                                                               _hd97890_
                                                               '#t
                                                               _body97900_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9782297878_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9782297878_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9782297878_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9782297878_))))))
                        (let () (declare (not safe)) (_E9782197902_))))))
                 (_generate-match97399_
                  (lambda (_where97563_
                           _target97564_
                           _hd97565_
                           _mvars97566_
                           _K97567_
                           _E97568_)
                    (letrec ((_BUG97570_
                              (lambda (_q97812_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97391_
                                         _hd97565_
                                         _q97812_))))
                             (_recur97571_
                              (lambda (_e97662_
                                       _vars97663_
                                       _target97664_
                                       _E97665_
                                       _k97666_)
                                (let* ((_e9766797674_ _e97662_)
                                       (_E9766997678_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9766797674_))))
                                       (_K9767097800_
                                        (lambda (_body97681_ _tag97682_)
                                          (let ((_$e97684_ _tag97682_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97684_))
                                                (_k97666_ _vars97663_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97684_))
                                                    (let ((__tmp98848
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97664_)))
                                                          (__tmp98844
                                                           (let ((__tmp98846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98847
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97394_ _body97681_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97392_
                             __tmp98847
                             _target97664_)))
                         (__tmp98845 (_k97666_ _vars97663_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98846 __tmp98845 _E97665_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98848 __tmp98844 _E97665_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97684_))
                                                        (_k97666_
                                                         (let ((__tmp98843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97681_ _target97664_))))
                   (declare (not safe))
                   (cons __tmp98843 _vars97663_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97684_))
                    (let ((_$e97687_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97688_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97689_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98842
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97664_)))
                            (__tmp98823
                             (let ((__tmp98837
                                    (let ((__tmp98838
                                           (let ((__tmp98841
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97687_ '())))
                                                 (__tmp98839
                                                  (let ((__tmp98840
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97393_
                                                            _target97664_))))
                                                    (declare (not safe))
                                                    (cons __tmp98840 '()))))
                                             (declare (not safe))
                                             (cons __tmp98841 __tmp98839))))
                                      (declare (not safe))
                                      (cons __tmp98838 '())))
                                   (__tmp98824
                                    (let ((__tmp98827
                                           (let ((__tmp98833
                                                  (let ((__tmp98836
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98834
                 (let ((__tmp98835
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97687_))))
                   (declare (not safe))
                   (cons __tmp98835 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98836
                                                          __tmp98834)))
                                                 (__tmp98828
                                                  (let ((__tmp98829
                                                         (let ((__tmp98832
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97689_ '())))
                       (__tmp98830
                        (let ((__tmp98831
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97687_))))
                          (declare (not safe))
                          (cons __tmp98831 '()))))
                   (declare (not safe))
                   (cons __tmp98832 __tmp98830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98829 '()))))
                                             (declare (not safe))
                                             (cons __tmp98833 __tmp98828)))
                                          (__tmp98825
                                           (let* ((_body9769097697_
                                                   _body97681_)
                                                  (_E9769297701_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9769097697_))))
                                                  (_K9769397709_
                                                   (lambda (_tl97704_
                                                            _hd97705_)
                                                     (let ((__tmp98826
                                                            (lambda (_vars97707_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97571_
                         _tl97704_
                         _vars97707_
                         _$tl97689_
                         _E97665_
                         _k97666_)))))
               (declare (not safe))
               (_recur97571_
                _hd97705_
                _vars97663_
                _$hd97688_
                _E97665_
                __tmp98826)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9769097697_))
                                                 (let ((_hd9769497712_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9769097697_)))
                                                       (_tl9769597714_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9769097697_))))
                                                   (let* ((_hd97717_
                                                           _hd9769497712_)
                                                          (_tl97719_
                                                           _tl9769597714_))
                                                     (declare (not safe))
                                                     (_K9769397709_
                                                      _tl97719_
                                                      _hd97717_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9769297701_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98827
                                       __tmp98825))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98837
                                __tmp98824))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98842 __tmp98823 _E97665_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97684_))
                        (let* ((_body9772097727_ _body97681_)
                               (_E9772297731_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9772097727_))))
                               (_K9772397782_
                                (lambda (_tl97734_ _hd97735_)
                                  (let* ((_rlen97737_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97572_ _tl97734_)))
                                         (_$target97739_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97741_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97743_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97745_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97747_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97749_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97751_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97753_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97573_ _hd97735_)))
                                         (_lvars97755_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97753_)))
                                         (_tlvars97757_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97753_)))
                                         (_linit97761_
                                          (map (lambda (_var97759_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97755_)))
                                    (letrec ((_make-loop97764_
                                              (lambda (_vars97768_)
                                                (let ((__tmp98774
                                                       (let ((__tmp98775
                                                              (let ((__tmp98811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97745_ '())))
                            (__tmp98776
                             (let ((__tmp98777
                                    (let ((__tmp98810
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97741_ _lvars97755_)))
                                          (__tmp98778
                                           (let ((__tmp98809
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97741_)))
                                                 (__tmp98787
                                                  (let ((__tmp98804
                                                         (let ((__tmp98805
                                                                (let ((__tmp98808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97747_ '())))
                              (__tmp98806
                               (let ((__tmp98807
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97393_
                                         _$hd97741_))))
                                 (declare (not safe))
                                 (cons __tmp98807 '()))))
                          (declare (not safe))
                          (cons __tmp98808 __tmp98806))))
                   (declare (not safe))
                   (cons __tmp98805 '())))
                (__tmp98788
                 (let ((__tmp98794
                        (let ((__tmp98800
                               (let ((__tmp98803
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97749_ '())))
                                     (__tmp98801
                                      (let ((__tmp98802
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97747_))))
                                        (declare (not safe))
                                        (cons __tmp98802 '()))))
                                 (declare (not safe))
                                 (cons __tmp98803 __tmp98801)))
                              (__tmp98795
                               (let ((__tmp98796
                                      (let ((__tmp98799
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97751_ '())))
                                            (__tmp98797
                                             (let ((__tmp98798
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97747_))))
                                               (declare (not safe))
                                               (cons __tmp98798 '()))))
                                        (declare (not safe))
                                        (cons __tmp98799 __tmp98797))))
                                 (declare (not safe))
                                 (cons __tmp98796 '()))))
                          (declare (not safe))
                          (cons __tmp98800 __tmp98795)))
                       (__tmp98789
                        (let ((__tmp98790
                               (lambda (_hdvars97770_)
                                 (let ((__tmp98791
                                        (let ((__tmp98792
                                               (map (lambda (_svar97772_
                                                             _lvar97773_)
                                                      (let ((__tmp98793
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97772_ _hdvars97770_ _BUG97570_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98793 _lvar97773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97753_
                                                    _lvars97755_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97751_ __tmp98792))))
                                   (declare (not safe))
                                   (cons _$lp97745_ __tmp98791)))))
                          (declare (not safe))
                          (_recur97571_
                           _hd97735_
                           '()
                           _$lp-hd97749_
                           _E97665_
                           __tmp98790))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98794 __tmp98789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98804
                                                     __tmp98788)))
                                                 (__tmp98779
                                                  (let ((__tmp98783
                                                         (map (lambda (_lvar97775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97776_)
                        (let ((__tmp98786
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97776_ '())))
                              (__tmp98784
                               (let ((__tmp98785
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97775_))))
                                 (declare (not safe))
                                 (cons __tmp98785 '()))))
                          (declare (not safe))
                          (cons __tmp98786 __tmp98784)))
                      _lvars97755_
                      _tlvars97757_))
                (__tmp98780
                 (_k97666_
                  (let ((__tmp98781
                         (lambda (_svar97778_ _tlvar97779_ _r97780_)
                           (let ((__tmp98782
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97778_ _tlvar97779_))))
                             (declare (not safe))
                             (cons __tmp98782 _r97780_)))))
                    (declare (not safe))
                    (foldl2 __tmp98781
                            _vars97768_
                            _svars97753_
                            _tlvars97757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98783
                                                     __tmp98780))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98809
                                              __tmp98787
                                              __tmp98779))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98810
                                       __tmp98778))))
                               (declare (not safe))
                               (cons __tmp98777 '()))))
                        (declare (not safe))
                        (cons __tmp98811 __tmp98776))))
                 (declare (not safe))
                 (cons __tmp98775 '())))
              (__tmp98772
               (let ((__tmp98773
                      (let ()
                        (declare (not safe))
                        (cons _$target97739_ _linit97761_))))
                 (declare (not safe))
                 (cons _$lp97745_ __tmp98773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98774
                                                   __tmp98772)))))
                                      (let ((_body97766_
                                             (let ((__tmp98813
                                                    (let ((__tmp98814
                                                           (let ((__tmp98817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98818
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97743_ '()))))
                            (declare (not safe))
                            (cons _$target97739_ __tmp98818)))
                         (__tmp98815
                          (let ((__tmp98816
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97664_
                                    _rlen97737_))))
                            (declare (not safe))
                            (cons __tmp98816 '()))))
                     (declare (not safe))
                     (cons __tmp98817 __tmp98815))))
              (declare (not safe))
              (cons __tmp98814 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98812
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97571_
                                                       _tl97734_
                                                       _vars97663_
                                                       _$tl97743_
                                                       _E97665_
                                                       _make-loop97764_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98813
                                                __tmp98812))))
                                        (let ((__tmp98822
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97664_)))
                                              (__tmp98819
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97737_))
                                                   _body97766_
                                                   (let ((__tmp98820
                                                          (let ((__tmp98821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97664_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98821 _rlen97737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98820
                                                      _body97766_
                                                      _E97665_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98822
                                           __tmp98819
                                           _E97665_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9772097727_))
                              (let ((_hd9772497785_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9772097727_)))
                                    (_tl9772597787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9772097727_))))
                                (let* ((_hd97790_ _hd9772497785_)
                                       (_tl97792_ _tl9772597787_))
                                  (declare (not safe))
                                  (_K9772397782_ _tl97792_ _hd97790_)))
                              (let () (declare (not safe)) (_E9772297731_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97684_))
                            (let ((__tmp98771
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97664_)))
                                  (__tmp98770 (_k97666_ _vars97663_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98771
                               __tmp98770
                               _E97665_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97684_))
                                (let ((_$e97794_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98769
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97664_)))
                                        (__tmp98761
                                         (let ((__tmp98763
                                                (let ((__tmp98764
                                                       (let ((__tmp98768
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97794_ '())))
                     (__tmp98765
                      (let ((__tmp98766
                             (let ((__tmp98767
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97393_
                                       _target97664_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98767))))
                        (declare (not safe))
                        (cons __tmp98766 '()))))
                 (declare (not safe))
                 (cons __tmp98768 __tmp98765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98764 '())))
                                               (__tmp98762
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97571_
                                                   _body97681_
                                                   _vars97663_
                                                   _$e97794_
                                                   _E97665_
                                                   _k97666_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98763
                                            __tmp98762))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98769
                                     __tmp98761
                                     _E97665_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97684_))
                                    (let ((_$e97796_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98760
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97664_)))
                                            (__tmp98752
                                             (let ((__tmp98754
                                                    (let ((__tmp98755
                                                           (let ((__tmp98759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97796_ '())))
                         (__tmp98756
                          (let ((__tmp98757
                                 (let ((__tmp98758
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97393_
                                           _target97664_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98758))))
                            (declare (not safe))
                            (cons __tmp98757 '()))))
                     (declare (not safe))
                     (cons __tmp98759 __tmp98756))))
              (declare (not safe))
              (cons __tmp98755 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98753
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97571_
                                                       _body97681_
                                                       _vars97663_
                                                       _$e97796_
                                                       _E97665_
                                                       _k97666_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98754
                                                __tmp98753))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98760
                                         __tmp98752
                                         _E97665_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97684_))
                                        (let ((_$e97798_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98751
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97664_)))
                                                (__tmp98742
                                                 (let ((__tmp98746
                                                        (let ((__tmp98747
                                                               (let ((__tmp98750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97798_ '())))
                             (__tmp98748
                              (let ((__tmp98749
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97664_))))
                                (declare (not safe))
                                (cons __tmp98749 '()))))
                         (declare (not safe))
                         (cons __tmp98750 __tmp98748))))
                  (declare (not safe))
                  (cons __tmp98747 '())))
               (__tmp98743
                (let ((__tmp98745
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97798_ _body97681_)))
                      (__tmp98744 (_k97666_ _vars97663_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98745 __tmp98744 _E97665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98746
                                                    __tmp98743))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98751
                                             __tmp98742
                                             _E97665_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97570_ _e97662_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9766797674_))
                                      (let ((_hd9767197803_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9766797674_)))
                                            (_tl9767297805_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9766797674_))))
                                        (let* ((_tag97808_ _hd9767197803_)
                                               (_body97810_ _tl9767297805_))
                                          (declare (not safe))
                                          (_K9767097800_
                                           _body97810_
                                           _tag97808_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9766997678_))))))
                             (_splice-rlen97572_
                              (lambda (_e97624_)
                                (let _lp97626_ ((_e97628_ _e97624_)
                                                (_n97629_ '0))
                                  (let* ((_e9763097637_ _e97628_)
                                         (_E9763297641_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9763097637_))))
                                         (_K9763397650_
                                          (lambda (_body97644_ _tag97645_)
                                            (let ((_$e97647_ _tag97645_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97647_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97391_
                                                     _where97563_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97647_))
                                                      (let ((__tmp98850
                                                             (cdr _body97644_))
                                                            (__tmp98849
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97629_ '1))))
                (declare (not safe))
                (_lp97626_ __tmp98850 __tmp98849))
              _n97629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9763097637_))
                                        (let ((_hd9763497653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9763097637_)))
                                              (_tl9763597655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9763097637_))))
                                          (let* ((_tag97658_ _hd9763497653_)
                                                 (_body97660_ _tl9763597655_))
                                            (declare (not safe))
                                            (_K9763397650_
                                             _body97660_
                                             _tag97658_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9763297641_)))))))
                             (_splice-vars97573_
                              (lambda (_e97580_)
                                (let _recur97582_ ((_e97584_ _e97580_)
                                                   (_vars97585_ '()))
                                  (let* ((_e9758697593_ _e97584_)
                                         (_E9758897597_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9758697593_))))
                                         (_K9758997612_
                                          (lambda (_body97600_ _tag97601_)
                                            (let ((_$e97603_ _tag97601_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97603_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97600_
                                                          _vars97585_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97603_))
                  (let () (declare (not safe)) (eq? 'splice _$e97603_)))
              (let ((__tmp98853 (cdr _body97600_))
                    (__tmp98851
                     (let ((__tmp98852 (car _body97600_)))
                       (declare (not safe))
                       (_recur97582_ __tmp98852 _vars97585_))))
                (declare (not safe))
                (_recur97582_ __tmp98853 __tmp98851))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97603_))
                      (let () (declare (not safe)) (eq? 'box _$e97603_)))
                  (let ()
                    (declare (not safe))
                    (_recur97582_ _body97600_ _vars97585_))
                  _vars97585_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9758697593_))
                                        (let ((_hd9759097615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9758697593_)))
                                              (_tl9759197617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9758697593_))))
                                          (let* ((_tag97620_ _hd9759097615_)
                                                 (_body97622_ _tl9759197617_))
                                            (declare (not safe))
                                            (_K9758997612_
                                             _body97622_
                                             _tag97620_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9758897597_)))))))
                             (_make-body97574_
                              (lambda (_vars97576_)
                                (let ((__tmp98854
                                       (map (lambda (_mvar97578_)
                                              (let ((__tmp98855
                                                     (car _mvar97578_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98855
                                                 _vars97576_
                                                 _BUG97570_)))
                                            _mvars97566_)))
                                  (declare (not safe))
                                  (cons _K97567_ __tmp98854)))))
                      (let ()
                        (declare (not safe))
                        (_recur97571_
                         _hd97565_
                         '()
                         _target97564_
                         _E97568_
                         _make-body97574_)))))
                 (_parse-clause97400_
                  (lambda (_hd97469_ _ids97470_)
                    (let _recur97472_ ((_e97474_ _hd97469_)
                                       (_vars97475_ '())
                                       (_depth97476_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97474_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97474_))
                              (values '(any) _vars97475_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97474_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97391_
                                     _hd97469_))
                                  (if (let ((__tmp98871
                                             (lambda (_id97478_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97474_
                                                  _id97478_)))))
                                        (declare (not safe))
                                        (find __tmp98871 _ids97470_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97474_))
                                              _vars97475_)
                                      (if (let ((__tmp98869
                                                 (lambda (_var97480_)
                                                   (let ((__tmp98870
                                                          (car _var97480_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97474_
                                                      __tmp98870)))))
                                            (declare (not safe))
                                            (find __tmp98869 _vars97475_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97391_
                                             _e97474_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97474_))
                                                  (let ((__tmp98868
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98868
                                                          _vars97475_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97474_))
                              (let* ((_e9748197488_ _e97474_)
                                     (_E9748397492_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9748197488_))))
                                     (_E9748297553_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9748197488_))
                                            (let ((_e9748497496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9748197488_))))
                                              (let ((_hd9748597499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9748497496_)))
                                                    (_tl9748697501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9748497496_))))
                                                (let* ((_hd97504_
                                                        _hd9748597499_)
                                                       (_rest97506_
                                                        _tl9748697501_))
                                                  (if '#t
                                                      (let* ((_make-pair97521_
                                                              (lambda (_tag97508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97509_
                               _tl97510_)
                        (let* ((_hd-depth97512_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97508_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97476_ '1))
                                    _depth97476_))
                               (_g98863_
                                (let ()
                                  (declare (not safe))
                                  (_recur97472_
                                   _hd97509_
                                   _vars97475_
                                   _hd-depth97512_))))
                          (begin
                            (let ((_g98864_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98863_)
                                         (##vector-length _g98863_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98864_ 2)))
                                  (error "Context expects 2 values" _g98864_)))
                            (let ((_hd97514_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98863_ 0)))
                                  (_vars97515_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98863_ 1))))
                              (let ((_g98865_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97472_
                                        _tl97510_
                                        _vars97515_
                                        _depth97476_))))
                                (begin
                                  (let ((_g98866_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98865_)
                                               (##vector-length _g98865_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98866_ 2)))
                                        (error "Context expects 2 values"
                                               _g98866_)))
                                  (let ((_tl97517_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98865_ 0)))
                                        (_vars97518_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98865_ 1))))
                                    (let ()
                                      (values (let ((__tmp98867
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97514_
                                                             _tl97517_))))
                                                (declare (not safe))
                                                (cons _tag97508_ __tmp98867))
                                              _vars97518_))))))))))
                     (_e9752297529_ _rest97506_)
                     (_E9752497533_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97521_ 'cons _hd97504_ _rest97506_))))
                     (_E9752397549_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9752297529_))
                            (let ((_e9752597537_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9752297529_))))
                              (let ((_hd9752697540_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9752597537_)))
                                    (_tl9752797542_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9752597537_))))
                                (let* ((_rest-hd97545_ _hd9752697540_)
                                       (_rest-tl97547_ _tl9752797542_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97545_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97521_
                                             'splice
                                             _hd97504_
                                             _rest-tl97547_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97521_
                                             'cons
                                             _hd97504_
                                             _rest97506_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9752497533_))))))
                            (let () (declare (not safe)) (_E9752497533_))))))
                (let () (declare (not safe)) (_E9752397549_)))
              (let () (declare (not safe)) (_E9748397492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9748397492_))))))
                                (let () (declare (not safe)) (_E9748297553_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97474_))
                                  (values '(null) _vars97475_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97474_))
                                      (let ((_g98860_
                                             (let ((__tmp98862
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97474_)))))
                                               (declare (not safe))
                                               (_recur97472_
                                                __tmp98862
                                                _vars97475_
                                                _depth97476_))))
                                        (begin
                                          (let ((_g98861_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98860_)
                                                       (##vector-length
                                                        _g98860_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98861_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98861_)))
                                          (let ((_e97557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98860_ 0)))
                                                (_vars97558_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98860_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97557_))
                                                    _vars97558_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97474_))
                                          (let ((_g98857_
                                                 (let ((__tmp98859
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97474_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97472_
                                                    __tmp98859
                                                    _vars97475_
                                                    _depth97476_))))
                                            (begin
                                              (let ((_g98858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98857_)
                                                           (##vector-length
                                                            _g98857_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98858_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98858_)))
                                              (let ((_e97560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98857_
                                                        0)))
                                                    (_vars97561_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98857_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97560_))
                                                        _vars97561_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97474_))
                                              (values (let ((__tmp98856
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97474_))))
                (declare (not safe))
                (cons 'datum __tmp98856))
              _vars97475_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97391_
                                                 _e97474_))))))))))))
          (let* ((_e9740197414_ _stx97391_)
                 (_E9740397418_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9740197414_))))
                 (_E9740297465_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9740197414_))
                        (let ((_e9740497422_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9740197414_))))
                          (let ((_hd9740597425_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9740497422_)))
                                (_tl9740697427_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9740497422_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9740697427_))
                                (let ((_e9740797430_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9740697427_))))
                                  (let ((_hd9740897433_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9740797430_)))
                                        (_tl9740997435_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9740797430_))))
                                    (let ((_expr97438_ _hd9740897433_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9740997435_))
                                          (let ((_e9741097440_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9740997435_))))
                                            (let ((_hd9741197443_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9741097440_)))
                                                  (_tl9741297445_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9741097440_))))
                                              (let* ((_ids97448_
                                                      _hd9741197443_)
                                                     (_clauses97450_
                                                      _tl9741297445_))
                                                (if '#t
                                                    (if (let ((__tmp98889
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97448_))))
                  (declare (not safe))
                  (not __tmp98889))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97391_
                   _ids97448_))
                (if (let ((__tmp98888
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97450_))))
                      (declare (not safe))
                      (not __tmp98888))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97391_))
                    (let* ((_ids97452_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97448_)))
                           (_clauses97454_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97450_)))
                           (_clause-ids97456_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97454_)))
                           (_E97458_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97460_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97462_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97454_))
                                _E97458_
                                (car _clause-ids97456_))))
                      (let ((__tmp98873
                             (let ((__tmp98874
                                    (let ((__tmp98876
                                           (let ((__tmp98881
                                                  (let ((__tmp98882
                                                         (let ((__tmp98887
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97458_ '())))
                       (__tmp98883
                        (let ((__tmp98884
                               (let ((__tmp98886
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97460_ '())))
                                     (__tmp98885
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97460_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98886
                                  __tmp98885))))
                          (declare (not safe))
                          (cons __tmp98884 '()))))
                   (declare (not safe))
                   (cons __tmp98887 __tmp98883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98882 '())))
                                                 (__tmp98877
                                                  (let ((__tmp98880
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97396_
                                                            _target97460_
                                                            _ids97452_
                                                            _clauses97454_
                                                            _clause-ids97456_
                                                            _E97458_)))
                                                        (__tmp98878
                                                         (let ((__tmp98879
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97438_ '()))))
                   (declare (not safe))
                   (cons _first97462_ __tmp98879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97397_
                                                     __tmp98880
                                                     __tmp98878))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98881
                                              __tmp98877)))
                                          (__tmp98875
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97391_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98876
                                       __tmp98875))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98874)))
                            (__tmp98872
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97391_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98873 __tmp98872)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9740397418_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9740397418_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9740397418_)))))
                        (let () (declare (not safe)) (_E9740397418_))))))
            (let () (declare (not safe)) (_E9740297465_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx98101_)
        (let* ((_identifier=?98103_ 'free-identifier=?)
               (_unwrap-e98105_ 'syntax-e)
               (_wrap-e98107_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98101_
           _identifier=?98103_
           _unwrap-e98105_
           _wrap-e98107_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx98109_ _identifier=?98110_)
        (let* ((_unwrap-e98112_ 'syntax-e) (_wrap-e98114_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98109_
           _identifier=?98110_
           _unwrap-e98112_
           _wrap-e98114_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx98116_ _identifier=?98117_ _unwrap-e98118_)
        (let ((_wrap-e98120_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98116_
           _identifier=?98117_
           _unwrap-e98118_
           _wrap-e98120_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98891_
        (let ((_g98890_ (let () (declare (not safe)) (##length _g98891_))))
          (cond ((let () (declare (not safe)) (##fx= _g98890_ 1))
                 (apply (lambda (_stx98101_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx98101_)))
                        _g98891_))
                ((let () (declare (not safe)) (##fx= _g98890_ 2))
                 (apply (lambda (_stx98109_ _identifier=?98110_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx98109_
                             _identifier=?98110_)))
                        _g98891_))
                ((let () (declare (not safe)) (##fx= _g98890_ 3))
                 (apply (lambda (_stx98116_
                                 _identifier=?98117_
                                 _unwrap-e98118_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx98116_
                             _identifier=?98117_
                             _unwrap-e98118_)))
                        _g98891_))
                ((let () (declare (not safe)) (##fx= _g98890_ 4))
                 (apply (lambda (_stx98122_
                                 _identifier=?98123_
                                 _unwrap-e98124_
                                 _wrap-e98125_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx98122_
                             _identifier=?98123_
                             _unwrap-e98124_
                             _wrap-e98125_)))
                        _g98891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98891_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97388_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97388_))
            (let ((__tmp98892
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97388_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98892 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97346_ . _rest97347_)
        (let ((_len97349_ (length _hd97346_)))
          (let _lp97351_ ((_rest97353_ _rest97347_))
            (let* ((_rest9735497362_ _rest97353_)
                   (_else9735697370_ (lambda () '#!void))
                   (_K9735897376_
                    (lambda (_rest97373_ _hd97374_)
                      (if (fx= _len97349_ (length _hd97374_))
                          (let () (declare (not safe)) (_lp97351_ _rest97373_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97374_))))))
              (if (let () (declare (not safe)) (##pair? _rest9735497362_))
                  (let ((_hd9735997379_
                         (let ()
                           (declare (not safe))
                           (##car _rest9735497362_)))
                        (_tl9736097381_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9735497362_))))
                    (let* ((_hd97384_ _hd9735997379_)
                           (_rest97386_ _tl9736097381_))
                      (declare (not safe))
                      (_K9735897376_ _rest97386_ _hd97384_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97304_ _n97305_)
        (let _lp97307_ ((_rest97309_ _stx97304_) (_r97310_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97309_))
              (let* ((_g9731197318_
                      (let () (declare (not safe)) (gx#syntax-e _rest97309_)))
                     (_E9731397322_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9731197318_))))
                     (_K9731497328_
                      (lambda (_rest97325_ _hd97326_)
                        (let ((__tmp98897
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97326_ _r97310_))))
                          (declare (not safe))
                          (_lp97307_ _rest97325_ __tmp98897)))))
                (if (let () (declare (not safe)) (##pair? _g9731197318_))
                    (let ((_hd9731597331_
                           (let () (declare (not safe)) (##car _g9731197318_)))
                          (_tl9731697333_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9731197318_))))
                      (let* ((_hd97336_ _hd9731597331_)
                             (_rest97338_ _tl9731697333_))
                        (declare (not safe))
                        (_K9731497328_ _rest97338_ _hd97336_)))
                    (let () (declare (not safe)) (_E9731397322_))))
              (let _lp97340_ ((_n97342_ _n97305_)
                              (_l97343_ _r97310_)
                              (_r97344_ _rest97309_))
                (if (let () (declare (not safe)) (null? _l97343_))
                    (values _l97343_ _r97344_)
                    (if (fxpositive? _n97342_)
                        (let ((__tmp98896
                               (let () (declare (not safe)) (fx- _n97342_ '1)))
                              (__tmp98895 (cdr _l97343_))
                              (__tmp98893
                               (let ((__tmp98894 (car _l97343_)))
                                 (declare (not safe))
                                 (cons __tmp98894 _r97344_))))
                          (declare (not safe))
                          (_lp97340_ __tmp98896 __tmp98895 __tmp98893))
                        (values (reverse _l97343_) _r97344_))))))))))
