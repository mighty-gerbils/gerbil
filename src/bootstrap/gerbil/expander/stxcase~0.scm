(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710833424)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98652 (list gx#expander::t))
            (__tmp98650
             (let ((__tmp98651
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98651 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98652
         '(id depth)
         __tmp98650
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98647_
        (apply make-instance gx#syntax-pattern::t _$args98647_)))
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
      (lambda (_self98644_ _stx98645_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98645_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx98126_)
        (letrec ((_generate98128_
                  (lambda (_e98355_)
                    (letrec ((_BUG98357_
                              (lambda (_q98519_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx98126_
                                         _e98355_
                                         _q98519_))))
                             (_local-pattern-e98358_
                              (lambda (_pat98517_)
                                (let ((__tmp98653
                                       (##structure-ref
                                        _pat98517_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98653))))
                             (_getvar98359_
                              (lambda (_q98514_ _vars98515_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98514_
                                   _vars98515_
                                   _BUG98357_))))
                             (_getarg98360_
                              (lambda (_arg98480_ _vars98481_)
                                (let* ((_arg9848298489_ _arg98480_)
                                       (_E9848498493_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9848298489_))))
                                       (_K9848598502_
                                        (lambda (_e98496_ _tag98497_)
                                          (let ((_$e98499_ _tag98497_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98499_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98359_
                                                   _e98496_
                                                   _vars98481_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98499_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98358_
                                                       _e98496_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98357_
                                                       _arg98480_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9848298489_))
                                      (let ((_hd9848698505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9848298489_)))
                                            (_tl9848798507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9848298489_))))
                                        (let* ((_tag98510_ _hd9848698505_)
                                               (_e98512_ _tl9848798507_))
                                          (declare (not safe))
                                          (_K9848598502_ _e98512_ _tag98510_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9848498493_)))))))
                      (let _recur98362_ ((_e98364_ _e98355_) (_vars98365_ '()))
                        (let* ((_e9836698373_ _e98364_)
                               (_E9836898377_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9836698373_))))
                               (_K9836998468_
                                (lambda (_body98380_ _tag98381_)
                                  (let ((_$e98383_ _tag98381_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98383_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98380_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98383_))
                                            (let ((_id98386_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98380_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98386_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98386_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98388_))
                                                        (let ((__tmp98681
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98380_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98681))
                (let ((__tmp98680
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98380_)))
                      (__tmp98679
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98380_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98680
                   __tmp98679
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98386_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98380_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98357_
                                                         _e98364_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98383_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98358_
                                                   _body98380_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98383_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98359_
                                                       _body98380_
                                                       _vars98365_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98383_))
                                                        (let ((__tmp98677
                                                               (let ((__tmp98678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98380_)))
                         (declare (not safe))
                         (_recur98362_ __tmp98678 _vars98365_)))
                      (__tmp98675
                       (let ((__tmp98676 (cdr _body98380_)))
                         (declare (not safe))
                         (_recur98362_ __tmp98676 _vars98365_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98677 __tmp98675))
                (if (let () (declare (not safe)) (eq? 'vector _$e98383_))
                    (let ((__tmp98674
                           (let ()
                             (declare (not safe))
                             (_recur98362_ _body98380_ _vars98365_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98674))
                    (if (let () (declare (not safe)) (eq? 'box _$e98383_))
                        (let ((__tmp98673
                               (let ()
                                 (declare (not safe))
                                 (_recur98362_ _body98380_ _vars98365_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98673))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98383_))
                            (let* ((_body9838998400_ _body98380_)
                                   (_E9839198404_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9838998400_))))
                                   (_K9839298442_
                                    (lambda (_args98407_
                                             _iv98408_
                                             _hd98409_
                                             _depth98410_)
                                      (let* ((_targets98416_
                                              (map (lambda (_g9841198413_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98360_
                                                        _g9841198413_
                                                        _vars98365_)))
                                                   _args98407_))
                                             (_fold-in98418_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98407_)))
                                             (_fold-out98420_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98422_
                                              (let ((__tmp98654
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98420_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98654
                                                        _fold-in98418_)))
                                             (_lambda-body98439_
                                              (if (fx> _depth98410_ '1)
                                                  (let ((_r-args98430_
                                                         (map (lambda (_arg98424_)
                                                                (let ((__tmp98659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98424_)))
                          (declare (not safe))
                          (cons 'ref __tmp98659)))
                      _args98407_))
                (_r-vars98431_
                 (let ((__tmp98660
                        (lambda (_arg98426_ _var98427_ _r98428_)
                          (let ((__tmp98661
                                 (let ((__tmp98662 (cdr _arg98426_)))
                                   (declare (not safe))
                                   (cons __tmp98662 _var98427_))))
                            (declare (not safe))
                            (cons __tmp98661 _r98428_)))))
                   (declare (not safe))
                   (foldr2 __tmp98660
                           _vars98365_
                           _args98407_
                           _fold-in98418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98663
                                                           (let ((__tmp98664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98668
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98410_ '1)))
                                (__tmp98665
                                 (let ((__tmp98666
                                        (let ((__tmp98667
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98420_))))
                                          (declare (not safe))
                                          (cons __tmp98667 _r-args98430_))))
                                   (declare (not safe))
                                   (cons _hd98409_ __tmp98666))))
                            (declare (not safe))
                            (cons __tmp98668 __tmp98665))))
                     (declare (not safe))
                     (cons 'splice __tmp98664))))
              (declare (not safe))
              (_recur98362_ __tmp98663 _r-vars98431_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98437_
                                                          (let ((__tmp98655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98433_ _var98434_ _r98435_)
                           (let ((__tmp98656
                                  (let ((__tmp98657 (cdr _arg98433_)))
                                    (declare (not safe))
                                    (cons __tmp98657 _var98434_))))
                             (declare (not safe))
                             (cons __tmp98656 _r98435_)))))
                    (declare (not safe))
                    (foldr2 __tmp98655
                            _vars98365_
                            _args98407_
                            _fold-in98418_)))
                 (__tmp98658
                  (let ()
                    (declare (not safe))
                    (_recur98362_ _hd98409_ _hd-vars98437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98658
                                                     _fold-out98420_)))))
                                        (let ((__tmp98672
                                               (if (fx> (length _targets98416_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98416_))
                                                   '#!void))
                                              (__tmp98669
                                               (let ((__tmp98671
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98422_
                                                         _lambda-body98439_)))
                                                     (__tmp98670
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98362_
                                                         _iv98408_
                                                         _vars98365_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98671
                                                  __tmp98670
                                                  _targets98416_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98672
                                           __tmp98669))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9838998400_))
                                  (let ((_hd9839398445_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9838998400_)))
                                        (_tl9839498447_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9838998400_))))
                                    (let ((_depth98450_ _hd9839398445_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9839498447_))
                                          (let ((_hd9839598452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9839498447_)))
                                                (_tl9839698454_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9839498447_))))
                                            (let ((_hd98457_ _hd9839598452_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9839698454_))
                                                  (let ((_hd9839798459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9839698454_)))
                                                        (_tl9839898461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9839698454_))))
                                                    (let* ((_iv98464_
                                                            _hd9839798459_)
                                                           (_args98466_
                                                            _tl9839898461_))
                                                      (declare (not safe))
                                                      (_K9839298442_
                                                       _args98466_
                                                       _iv98464_
                                                       _hd98457_
                                                       _depth98450_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9839198404_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9839198404_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9839198404_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98383_))
                                _body98380_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98357_ _e98364_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9836698373_))
                              (let ((_hd9837098471_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9836698373_)))
                                    (_tl9837198473_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9836698373_))))
                                (let* ((_tag98476_ _hd9837098471_)
                                       (_body98478_ _tl9837198473_))
                                  (declare (not safe))
                                  (_K9836998468_ _body98478_ _tag98476_)))
                              (let ()
                                (declare (not safe))
                                (_E9836898377_))))))))
                 (_parse98129_
                  (lambda (_e98170_)
                    (letrec ((_make-cons98172_
                              (lambda (_hd98347_ _tl98348_)
                                (let ((_g98682_ _hd98347_)
                                      (_g98684_ _tl98348_))
                                  (begin
                                    (let ((_g98683_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98682_)
                                                 (##vector-length _g98682_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98683_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98683_)))
                                    (let ((_g98685_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98684_)
                                                 (##vector-length _g98684_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98685_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98685_)))
                                    (let ((_hd-e98350_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98682_ 0)))
                                          (_hd-vars98351_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98682_ 1))))
                                      (let ((_tl-e98352_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98684_ 0)))
                                            (_tl-vars98353_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98684_ 1))))
                                        (values (let ((__tmp98686
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98350_
                                                               _tl-e98352_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98686))
                                                (append _hd-vars98351_
                                                        _tl-vars98353_))))))))
                             (_make-splice98173_
                              (lambda (_where98286_
                                       _depth98287_
                                       _hd98288_
                                       _tl98289_)
                                (let ((_g98687_ _hd98288_)
                                      (_g98689_ _tl98289_))
                                  (begin
                                    (let ((_g98688_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98687_)
                                                 (##vector-length _g98687_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98688_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98688_)))
                                    (let ((_g98690_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98689_)
                                                 (##vector-length _g98689_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98690_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98690_)))
                                    (let ((_hd-e98291_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98687_ 0)))
                                          (_hd-vars98292_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98687_ 1))))
                                      (let ((_tl-e98293_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98689_ 0)))
                                            (_tl-vars98294_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98689_ 1))))
                                        (let _lp98296_ ((_rest98298_
                                                         _hd-vars98292_)
                                                        (_targets98299_ '())
                                                        (_vars98300_
                                                         _tl-vars98294_))
                                          (let* ((_rest9830198311_ _rest98298_)
                                                 (_else9830398319_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98299_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx98126_
                                                           _where98286_))
                                                        (values (let ((__tmp98691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98692
                                      (let ((__tmp98693
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e98293_
                                                     _targets98299_))))
                                        (declare (not safe))
                                        (cons _hd-e98291_ __tmp98693))))
                                 (declare (not safe))
                                 (cons _depth98287_ __tmp98692))))
                          (declare (not safe))
                          (cons 'splice __tmp98691))
                        _vars98300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9830598328_
                                                  (lambda (_rest98322_
                                                           _hd-pat98323_
                                                           _hd-depth*98324_)
                                                    (let ((_hd-depth98326_
                                                           (fx- _hd-depth*98324_
                                                                _depth98287_)))
                                                      (if (fxpositive?
                                                           _hd-depth98326_)
                                                          (let ((__tmp98698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98699
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98323_))))
                           (declare (not safe))
                           (cons __tmp98699 _targets98299_)))
                        (__tmp98696
                         (let ((__tmp98697
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98326_ _hd-pat98323_))))
                           (declare (not safe))
                           (cons __tmp98697 _vars98300_))))
                    (declare (not safe))
                    (_lp98296_ _rest98322_ __tmp98698 __tmp98696))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98326_))
                      (let ((__tmp98694
                             (let ((__tmp98695
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98323_))))
                               (declare (not safe))
                               (cons __tmp98695 _targets98299_))))
                        (declare (not safe))
                        (_lp98296_ _rest98322_ __tmp98694 _vars98300_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx98126_
                         _where98286_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9830198311_))
                                                (let ((_hd9830698331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9830198311_)))
                                                      (_tl9830798333_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9830198311_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9830698331_))
                                                      (let ((_hd9830898336_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9830698331_)))
                    (_tl9830998338_
                     (let () (declare (not safe)) (##cdr _hd9830698331_))))
                (let* ((_hd-depth*98341_ _hd9830898336_)
                       (_hd-pat98343_ _tl9830998338_)
                       (_rest98345_ _tl9830798333_))
                  (declare (not safe))
                  (_K9830598328_ _rest98345_ _hd-pat98343_ _hd-depth*98341_)))
              (let () (declare (not safe)) (_else9830398319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9830398319_)))))))))))
                             (_recur98174_
                              (lambda (_e98179_ _is-e?98180_)
                                (if (_is-e?98180_ _e98179_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx98126_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e98179_))
                                        (let* ((_pat98182_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e98179_)))
                                               (_depth98184_
                                                (##structure-ref
                                                 _pat98182_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth98184_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat98182_))
                                                      (let ((__tmp98715
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth98184_ _pat98182_))))
                (declare (not safe))
                (cons __tmp98715 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat98182_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e98179_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e98179_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e98179_))
                                                (let* ((_e9818698193_ _e98179_)
                                                       (_E9818898197_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9818698193_))))
                                                       (_E9818798276_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9818698193_))
                      (let ((_e9818998201_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9818698193_))))
                        (let ((_hd9819098204_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9818998201_)))
                              (_tl9819198206_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9818998201_))))
                          (let* ((_hd98209_ _hd9819098204_)
                                 (_rest98211_ _tl9819198206_))
                            (if '#t
                                (if (_is-e?98180_ _hd98209_)
                                    (let* ((_e9821298219_ _rest98211_)
                                           (_E9821498223_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx98126_
                                                 _e98179_))))
                                           (_E9821398237_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9821298219_))
                                                  (let ((_e9821598227_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9821298219_))))
                                                    (let ((_hd9821698230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9821598227_)))
                                                          (_tl9821798232_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9821598227_))))
                                                      (let ((_rest98235_
                                                             _hd9821698230_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9821798232_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur98174_ _rest98235_ false))
                        (let () (declare (not safe)) (_E9821498223_)))
                    (let () (declare (not safe)) (_E9821498223_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9821498223_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9821398237_)))
                                    (let _lp98241_ ((_rest98243_ _rest98211_)
                                                    (_depth98244_ '0))
                                      (let* ((_e9824598252_ _rest98243_)
                                             (_E9824798256_
                                              (lambda ()
                                                (if (fxpositive? _depth98244_)
                                                    (let ((__tmp98709
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98174_
                                                              _hd98209_
                                                              _is-e?98180_)))
                                                          (__tmp98708
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98174_
                                                              _rest98243_
                                                              _is-e?98180_))))
                                                      (declare (not safe))
                                                      (_make-splice98173_
                                                       _e98179_
                                                       _depth98244_
                                                       __tmp98709
                                                       __tmp98708))
                                                    (let ((__tmp98707
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98174_
                                                              _hd98209_
                                                              _is-e?98180_)))
                                                          (__tmp98706
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98174_
                                                              _rest98243_
                                                              _is-e?98180_))))
                                                      (declare (not safe))
                                                      (_make-cons98172_
                                                       __tmp98707
                                                       __tmp98706)))))
                                             (_E9824698272_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9824598252_))
                                                    (let ((_e9824898260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9824598252_))))
                                                      (let ((_hd9824998263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9824898260_)))
                    (_tl9825098265_
                     (let () (declare (not safe)) (##cdr _e9824898260_))))
                (let* ((_rest-hd98268_ _hd9824998263_)
                       (_rest-tl98270_ _tl9825098265_))
                  (if '#t
                      (if (_is-e?98180_ _rest-hd98268_)
                          (let ((__tmp98714
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth98244_ '1))))
                            (declare (not safe))
                            (_lp98241_ _rest-tl98270_ __tmp98714))
                          (if (fxpositive? _depth98244_)
                              (let ((__tmp98713
                                     (let ()
                                       (declare (not safe))
                                       (_recur98174_ _hd98209_ _is-e?98180_)))
                                    (__tmp98712
                                     (let ()
                                       (declare (not safe))
                                       (_recur98174_
                                        _rest98243_
                                        _is-e?98180_))))
                                (declare (not safe))
                                (_make-splice98173_
                                 _e98179_
                                 _depth98244_
                                 __tmp98713
                                 __tmp98712))
                              (let ((__tmp98711
                                     (let ()
                                       (declare (not safe))
                                       (_recur98174_ _hd98209_ _is-e?98180_)))
                                    (__tmp98710
                                     (let ()
                                       (declare (not safe))
                                       (_recur98174_
                                        _rest98243_
                                        _is-e?98180_))))
                                (declare (not safe))
                                (_make-cons98172_ __tmp98711 __tmp98710))))
                      (let () (declare (not safe)) (_E9824798256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9824798256_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9824698272_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9818898197_))))))
                      (let () (declare (not safe)) (_E9818898197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9818798276_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e98179_))
                                                    (let ((_g98703_
                                                           (let ((__tmp98705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e98179_)))))
                     (declare (not safe))
                     (_recur98174_ __tmp98705 _is-e?98180_))))
              (begin
                (let ((_g98704_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98703_)
                             (##vector-length _g98703_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98704_ 2)))
                      (error "Context expects 2 values" _g98704_)))
                (let ((_e98280_
                       (let () (declare (not safe)) (##vector-ref _g98703_ 0)))
                      (_vars98281_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98703_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e98280_))
                          _vars98281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e98179_))
                                                        (let ((_g98700_
                                                               (let ((__tmp98702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e98179_)))))
                         (declare (not safe))
                         (_recur98174_ __tmp98702 _is-e?98180_))))
                  (begin
                    (let ((_g98701_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98700_)
                                 (##vector-length _g98700_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98701_ 2)))
                          (error "Context expects 2 values" _g98701_)))
                    (let ((_e98283_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98700_ 0)))
                          (_vars98284_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98700_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e98283_))
                              _vars98284_))))
                (values (let () (declare (not safe)) (cons 'datum _e98179_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98716_
                             (let ()
                               (declare (not safe))
                               (_recur98174_ _e98170_ gx#ellipsis?))))
                        (begin
                          (let ((_g98717_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98716_)
                                       (##vector-length _g98716_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98717_ 2)))
                                (error "Context expects 2 values" _g98717_)))
                          (let ((_tree98176_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98716_ 0)))
                                (_vars98177_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98716_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars98177_))
                                _tree98176_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx98126_
                                   _vars98177_))))))))))
          (let* ((_e9813098140_ _stx98126_)
                 (_E9813298144_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx98126_))))
                 (_E9813198166_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9813098140_))
                        (let ((_e9813398148_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9813098140_))))
                          (let ((_hd9813498151_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9813398148_)))
                                (_tl9813598153_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9813398148_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9813598153_))
                                (let ((_e9813698156_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9813598153_))))
                                  (let ((_hd9813798159_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9813698156_)))
                                        (_tl9813898161_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9813698156_))))
                                    (let ((_form98164_ _hd9813798159_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9813898161_))
                                          (if '#t
                                              (let ((__tmp98719
                                                     (let ((__tmp98720
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse98129_
                                                               _form98164_))))
                                                       (declare (not safe))
                                                       (_generate98128_
                                                        __tmp98720)))
                                                    (__tmp98718
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx98126_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98719
                                                 __tmp98718))
                                              (let ()
                                                (declare (not safe))
                                                (_E9813298144_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9813298144_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9813298144_)))))
                        (let () (declare (not safe)) (_E9813298144_))))))
            (let () (declare (not safe)) (_E9813198166_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97390_ _identifier=?97391_ _unwrap-e97392_ _wrap-e97393_)
        (letrec ((_generate-bindings97395_
                  (lambda (_target97990_
                           _ids97991_
                           _clauses97992_
                           _clause-ids97993_
                           _E97994_)
                    (letrec ((_generate197996_
                              (lambda (_clause98093_ _clause-id98094_ _E98095_)
                                (let ((__tmp98725
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id98094_ '())))
                                      (__tmp98721
                                       (let ((__tmp98722
                                              (let ((__tmp98724
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97990_
                                                             '())))
                                                    (__tmp98723
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97397_
                                                        _target97990_
                                                        _ids97991_
                                                        _clause98093_
                                                        _E98095_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98724
                                                 __tmp98723))))
                                         (declare (not safe))
                                         (cons __tmp98722 '()))))
                                  (declare (not safe))
                                  (cons __tmp98725 __tmp98721)))))
                      (let _lp97998_ ((_rest98000_ _clauses97992_)
                                      (_rest-ids98001_ _clause-ids97993_)
                                      (_bindings98002_ '()))
                        (let* ((_rest9800398011_ _rest98000_)
                               (_else9800598019_ (lambda () _bindings98002_))
                               (_K9800798081_
                                (lambda (_rest98022_ _clause98023_)
                                  (let* ((_rest-ids9802498031_ _rest-ids98001_)
                                         (_E9802698035_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9802498031_))))
                                         (_K9802798069_
                                          (lambda (_rest-ids98038_
                                                   _clause-id98039_)
                                            (let* ((_rest-ids9804098048_
                                                    _rest-ids98038_)
                                                   (_else9804298056_
                                                    (lambda ()
                                                      (let ((__tmp98726
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197996_
                        _clause98023_
                        _clause-id98039_
                        _E97994_))))
                (declare (not safe))
                (cons __tmp98726 _bindings98002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9804498061_
                                                    (lambda (_next-clause-id98059_)
                                                      (let ((__tmp98727
                                                             (let ((__tmp98728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197996_
                               _clause98023_
                               _clause-id98039_
                               _next-clause-id98059_))))
                       (declare (not safe))
                       (cons __tmp98728 _bindings98002_))))
                (declare (not safe))
                (_lp97998_ _rest98022_ _rest-ids98038_ __tmp98727)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9804098048_))
                                                  (let* ((_hd9804598064_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9804098048_)))
                                                         (_next-clause-id98067_
                                                          _hd9804598064_))
                                                    (declare (not safe))
                                                    (_K9804498061_
                                                     _next-clause-id98067_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9804298056_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9802498031_))
                                        (let ((_hd9802898072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9802498031_)))
                                              (_tl9802998074_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9802498031_))))
                                          (let* ((_clause-id98077_
                                                  _hd9802898072_)
                                                 (_rest-ids98079_
                                                  _tl9802998074_))
                                            (declare (not safe))
                                            (_K9802798069_
                                             _rest-ids98079_
                                             _clause-id98077_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9802698035_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9800398011_))
                              (let ((_hd9800898084_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9800398011_)))
                                    (_tl9800998086_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9800398011_))))
                                (let* ((_clause98089_ _hd9800898084_)
                                       (_rest98091_ _tl9800998086_))
                                  (declare (not safe))
                                  (_K9800798081_ _rest98091_ _clause98089_)))
                              (let ()
                                (declare (not safe))
                                (_else9800598019_))))))))
                 (_generate-body97396_
                  (lambda (_bindings97950_ _body97951_)
                    (let _recur97953_ ((_rest97955_ _bindings97950_))
                      (let* ((_rest9795697964_ _rest97955_)
                             (_else9795897972_ (lambda () _body97951_))
                             (_K9796097978_
                              (lambda (_rest97975_ _hd97976_)
                                (let ((__tmp98730
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97976_ '())))
                                      (__tmp98729
                                       (let ()
                                         (declare (not safe))
                                         (_recur97953_ _rest97975_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98730
                                   __tmp98729)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9795697964_))
                            (let ((_hd9796197981_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9795697964_)))
                                  (_tl9796297983_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9795697964_))))
                              (let* ((_hd97986_ _hd9796197981_)
                                     (_rest97988_ _tl9796297983_))
                                (declare (not safe))
                                (_K9796097978_ _rest97988_ _hd97986_)))
                            (let ()
                              (declare (not safe))
                              (_else9795897972_)))))))
                 (_generate-clause97397_
                  (lambda (_target97813_ _ids97814_ _clause97815_ _E97816_)
                    (letrec ((_generate197818_
                              (lambda (_hd97905_ _fender97906_ _body97907_)
                                (let ((_g98731_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97399_
                                          _hd97905_
                                          _ids97814_))))
                                  (begin
                                    (let ((_g98732_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98731_)
                                                 (##vector-length _g98731_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98732_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98732_)))
                                    (let ((_e97909_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98731_ 0)))
                                          (_mvars97910_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98731_ 1))))
                                      (let* ((_pvars97912_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97910_))))
                                             (_E97914_
                                              (let ((__tmp98733
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97813_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97816_ __tmp98733)))
                                             (_K97947_
                                              (let ((__tmp98734
                                                     (let ((__tmp98736
                                                            (map (lambda (_mvar97916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97917_)
                           (let* ((_mvar9791897925_ _mvar97916_)
                                  (_E9792097929_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9791897925_))))
                                  (_K9792197935_
                                   (lambda (_depth97932_ _id97933_)
                                     (let ((__tmp98737
                                            (let ((__tmp98738
                                                   (let ((__tmp98740
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97933_)))
                                                         (__tmp98739
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97917_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98740
                                                      __tmp98739
                                                      _depth97932_))))
                                              (declare (not safe))
                                              (cons __tmp98738 '()))))
                                       (declare (not safe))
                                       (cons _id97933_ __tmp98737)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9791897925_))
                                 (let ((_hd9792297938_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9791897925_)))
                                       (_tl9792397940_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9791897925_))))
                                   (let* ((_id97943_ _hd9792297938_)
                                          (_depth97945_ _tl9792397940_))
                                     (declare (not safe))
                                     (_K9792197935_ _depth97945_ _id97943_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9792097929_)))))
                         _mvars97910_
                         _pvars97912_))
                   (__tmp98735
                    (if (let () (declare (not safe)) (eq? _fender97906_ '#t))
                        _body97907_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97906_
                           _body97907_
                           _E97914_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98736 __tmp98735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97912_
                                                 __tmp98734))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97398_
                                           _hd97905_
                                           _target97813_
                                           _e97909_
                                           _mvars97910_
                                           _K97947_
                                           _E97914_)))))))))
                      (let* ((_e9781997839_ _clause97815_)
                             (_E9782897843_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9781997839_))))
                             (_E9782197877_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9781997839_))
                                    (let ((_e9782997847_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9781997839_))))
                                      (let ((_hd9783097850_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9782997847_)))
                                            (_tl9783197852_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9782997847_))))
                                        (let ((_hd97855_ _hd9783097850_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9783197852_))
                                              (let ((_e9783297857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9783197852_))))
                                                (let ((_hd9783397860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9783297857_)))
                                                      (_tl9783497862_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9783297857_))))
                                                  (let ((_fender97865_
                                                         _hd9783397860_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9783497862_))
                                                        (let ((_e9783597867_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9783497862_))))
                  (let ((_hd9783697870_
                         (let () (declare (not safe)) (##car _e9783597867_)))
                        (_tl9783797872_
                         (let () (declare (not safe)) (##cdr _e9783597867_))))
                    (let ((_body97875_ _hd9783697870_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9783797872_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197818_
                                 _hd97855_
                                 _fender97865_
                                 _body97875_))
                              (let () (declare (not safe)) (_E9782897843_)))
                          (let () (declare (not safe)) (_E9782897843_))))))
                (let () (declare (not safe)) (_E9782897843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9782897843_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9782897843_)))))
                             (_E9782097901_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9781997839_))
                                    (let ((_e9782297881_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9781997839_))))
                                      (let ((_hd9782397884_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9782297881_)))
                                            (_tl9782497886_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9782297881_))))
                                        (let ((_hd97889_ _hd9782397884_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9782497886_))
                                              (let ((_e9782597891_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9782497886_))))
                                                (let ((_hd9782697894_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9782597891_)))
                                                      (_tl9782797896_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9782597891_))))
                                                  (let ((_body97899_
                                                         _hd9782697894_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9782797896_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197818_
                                                               _hd97889_
                                                               '#t
                                                               _body97899_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9782197877_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9782197877_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9782197877_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9782197877_))))))
                        (let () (declare (not safe)) (_E9782097901_))))))
                 (_generate-match97398_
                  (lambda (_where97562_
                           _target97563_
                           _hd97564_
                           _mvars97565_
                           _K97566_
                           _E97567_)
                    (letrec ((_BUG97569_
                              (lambda (_q97811_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97390_
                                         _hd97564_
                                         _q97811_))))
                             (_recur97570_
                              (lambda (_e97661_
                                       _vars97662_
                                       _target97663_
                                       _E97664_
                                       _k97665_)
                                (let* ((_e9766697673_ _e97661_)
                                       (_E9766897677_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9766697673_))))
                                       (_K9766997799_
                                        (lambda (_body97680_ _tag97681_)
                                          (let ((_$e97683_ _tag97681_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97683_))
                                                (_k97665_ _vars97662_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97683_))
                                                    (let ((__tmp98847
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97663_)))
                                                          (__tmp98843
                                                           (let ((__tmp98845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98846
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97393_ _body97680_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97391_
                             __tmp98846
                             _target97663_)))
                         (__tmp98844 (_k97665_ _vars97662_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98845 __tmp98844 _E97664_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98847 __tmp98843 _E97664_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97683_))
                                                        (_k97665_
                                                         (let ((__tmp98842
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97680_ _target97663_))))
                   (declare (not safe))
                   (cons __tmp98842 _vars97662_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97683_))
                    (let ((_$e97686_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97687_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97688_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98841
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97663_)))
                            (__tmp98822
                             (let ((__tmp98836
                                    (let ((__tmp98837
                                           (let ((__tmp98840
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97686_ '())))
                                                 (__tmp98838
                                                  (let ((__tmp98839
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97392_
                                                            _target97663_))))
                                                    (declare (not safe))
                                                    (cons __tmp98839 '()))))
                                             (declare (not safe))
                                             (cons __tmp98840 __tmp98838))))
                                      (declare (not safe))
                                      (cons __tmp98837 '())))
                                   (__tmp98823
                                    (let ((__tmp98826
                                           (let ((__tmp98832
                                                  (let ((__tmp98835
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98833
                 (let ((__tmp98834
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97686_))))
                   (declare (not safe))
                   (cons __tmp98834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98835
                                                          __tmp98833)))
                                                 (__tmp98827
                                                  (let ((__tmp98828
                                                         (let ((__tmp98831
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97688_ '())))
                       (__tmp98829
                        (let ((__tmp98830
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97686_))))
                          (declare (not safe))
                          (cons __tmp98830 '()))))
                   (declare (not safe))
                   (cons __tmp98831 __tmp98829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98828 '()))))
                                             (declare (not safe))
                                             (cons __tmp98832 __tmp98827)))
                                          (__tmp98824
                                           (let* ((_body9768997696_
                                                   _body97680_)
                                                  (_E9769197700_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9768997696_))))
                                                  (_K9769297708_
                                                   (lambda (_tl97703_
                                                            _hd97704_)
                                                     (let ((__tmp98825
                                                            (lambda (_vars97706_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97570_
                         _tl97703_
                         _vars97706_
                         _$tl97688_
                         _E97664_
                         _k97665_)))))
               (declare (not safe))
               (_recur97570_
                _hd97704_
                _vars97662_
                _$hd97687_
                _E97664_
                __tmp98825)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9768997696_))
                                                 (let ((_hd9769397711_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9768997696_)))
                                                       (_tl9769497713_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9768997696_))))
                                                   (let* ((_hd97716_
                                                           _hd9769397711_)
                                                          (_tl97718_
                                                           _tl9769497713_))
                                                     (declare (not safe))
                                                     (_K9769297708_
                                                      _tl97718_
                                                      _hd97716_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9769197700_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98826
                                       __tmp98824))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98836
                                __tmp98823))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98841 __tmp98822 _E97664_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97683_))
                        (let* ((_body9771997726_ _body97680_)
                               (_E9772197730_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9771997726_))))
                               (_K9772297781_
                                (lambda (_tl97733_ _hd97734_)
                                  (let* ((_rlen97736_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97571_ _tl97733_)))
                                         (_$target97738_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97740_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97742_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97744_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97746_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97748_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97750_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97752_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97572_ _hd97734_)))
                                         (_lvars97754_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97752_)))
                                         (_tlvars97756_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97752_)))
                                         (_linit97760_
                                          (map (lambda (_var97758_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97754_)))
                                    (letrec ((_make-loop97763_
                                              (lambda (_vars97767_)
                                                (let ((__tmp98773
                                                       (let ((__tmp98774
                                                              (let ((__tmp98810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97744_ '())))
                            (__tmp98775
                             (let ((__tmp98776
                                    (let ((__tmp98809
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97740_ _lvars97754_)))
                                          (__tmp98777
                                           (let ((__tmp98808
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97740_)))
                                                 (__tmp98786
                                                  (let ((__tmp98803
                                                         (let ((__tmp98804
                                                                (let ((__tmp98807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97746_ '())))
                              (__tmp98805
                               (let ((__tmp98806
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97392_
                                         _$hd97740_))))
                                 (declare (not safe))
                                 (cons __tmp98806 '()))))
                          (declare (not safe))
                          (cons __tmp98807 __tmp98805))))
                   (declare (not safe))
                   (cons __tmp98804 '())))
                (__tmp98787
                 (let ((__tmp98793
                        (let ((__tmp98799
                               (let ((__tmp98802
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97748_ '())))
                                     (__tmp98800
                                      (let ((__tmp98801
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97746_))))
                                        (declare (not safe))
                                        (cons __tmp98801 '()))))
                                 (declare (not safe))
                                 (cons __tmp98802 __tmp98800)))
                              (__tmp98794
                               (let ((__tmp98795
                                      (let ((__tmp98798
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97750_ '())))
                                            (__tmp98796
                                             (let ((__tmp98797
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97746_))))
                                               (declare (not safe))
                                               (cons __tmp98797 '()))))
                                        (declare (not safe))
                                        (cons __tmp98798 __tmp98796))))
                                 (declare (not safe))
                                 (cons __tmp98795 '()))))
                          (declare (not safe))
                          (cons __tmp98799 __tmp98794)))
                       (__tmp98788
                        (let ((__tmp98789
                               (lambda (_hdvars97769_)
                                 (let ((__tmp98790
                                        (let ((__tmp98791
                                               (map (lambda (_svar97771_
                                                             _lvar97772_)
                                                      (let ((__tmp98792
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97771_ _hdvars97769_ _BUG97569_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98792 _lvar97772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97752_
                                                    _lvars97754_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97750_ __tmp98791))))
                                   (declare (not safe))
                                   (cons _$lp97744_ __tmp98790)))))
                          (declare (not safe))
                          (_recur97570_
                           _hd97734_
                           '()
                           _$lp-hd97748_
                           _E97664_
                           __tmp98789))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98793 __tmp98788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98803
                                                     __tmp98787)))
                                                 (__tmp98778
                                                  (let ((__tmp98782
                                                         (map (lambda (_lvar97774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97775_)
                        (let ((__tmp98785
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97775_ '())))
                              (__tmp98783
                               (let ((__tmp98784
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97774_))))
                                 (declare (not safe))
                                 (cons __tmp98784 '()))))
                          (declare (not safe))
                          (cons __tmp98785 __tmp98783)))
                      _lvars97754_
                      _tlvars97756_))
                (__tmp98779
                 (_k97665_
                  (let ((__tmp98780
                         (lambda (_svar97777_ _tlvar97778_ _r97779_)
                           (let ((__tmp98781
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97777_ _tlvar97778_))))
                             (declare (not safe))
                             (cons __tmp98781 _r97779_)))))
                    (declare (not safe))
                    (foldl2 __tmp98780
                            _vars97767_
                            _svars97752_
                            _tlvars97756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98782
                                                     __tmp98779))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98808
                                              __tmp98786
                                              __tmp98778))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98809
                                       __tmp98777))))
                               (declare (not safe))
                               (cons __tmp98776 '()))))
                        (declare (not safe))
                        (cons __tmp98810 __tmp98775))))
                 (declare (not safe))
                 (cons __tmp98774 '())))
              (__tmp98771
               (let ((__tmp98772
                      (let ()
                        (declare (not safe))
                        (cons _$target97738_ _linit97760_))))
                 (declare (not safe))
                 (cons _$lp97744_ __tmp98772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98773
                                                   __tmp98771)))))
                                      (let ((_body97765_
                                             (let ((__tmp98812
                                                    (let ((__tmp98813
                                                           (let ((__tmp98816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98817
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97742_ '()))))
                            (declare (not safe))
                            (cons _$target97738_ __tmp98817)))
                         (__tmp98814
                          (let ((__tmp98815
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97663_
                                    _rlen97736_))))
                            (declare (not safe))
                            (cons __tmp98815 '()))))
                     (declare (not safe))
                     (cons __tmp98816 __tmp98814))))
              (declare (not safe))
              (cons __tmp98813 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98811
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97570_
                                                       _tl97733_
                                                       _vars97662_
                                                       _$tl97742_
                                                       _E97664_
                                                       _make-loop97763_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98812
                                                __tmp98811))))
                                        (let ((__tmp98821
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97663_)))
                                              (__tmp98818
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97736_))
                                                   _body97765_
                                                   (let ((__tmp98819
                                                          (let ((__tmp98820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97663_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98820 _rlen97736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98819
                                                      _body97765_
                                                      _E97664_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98821
                                           __tmp98818
                                           _E97664_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9771997726_))
                              (let ((_hd9772397784_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9771997726_)))
                                    (_tl9772497786_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9771997726_))))
                                (let* ((_hd97789_ _hd9772397784_)
                                       (_tl97791_ _tl9772497786_))
                                  (declare (not safe))
                                  (_K9772297781_ _tl97791_ _hd97789_)))
                              (let () (declare (not safe)) (_E9772197730_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97683_))
                            (let ((__tmp98770
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97663_)))
                                  (__tmp98769 (_k97665_ _vars97662_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98770
                               __tmp98769
                               _E97664_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97683_))
                                (let ((_$e97793_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98768
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97663_)))
                                        (__tmp98760
                                         (let ((__tmp98762
                                                (let ((__tmp98763
                                                       (let ((__tmp98767
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97793_ '())))
                     (__tmp98764
                      (let ((__tmp98765
                             (let ((__tmp98766
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97392_
                                       _target97663_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98766))))
                        (declare (not safe))
                        (cons __tmp98765 '()))))
                 (declare (not safe))
                 (cons __tmp98767 __tmp98764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98763 '())))
                                               (__tmp98761
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97570_
                                                   _body97680_
                                                   _vars97662_
                                                   _$e97793_
                                                   _E97664_
                                                   _k97665_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98762
                                            __tmp98761))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98768
                                     __tmp98760
                                     _E97664_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97683_))
                                    (let ((_$e97795_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98759
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97663_)))
                                            (__tmp98751
                                             (let ((__tmp98753
                                                    (let ((__tmp98754
                                                           (let ((__tmp98758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97795_ '())))
                         (__tmp98755
                          (let ((__tmp98756
                                 (let ((__tmp98757
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97392_
                                           _target97663_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98757))))
                            (declare (not safe))
                            (cons __tmp98756 '()))))
                     (declare (not safe))
                     (cons __tmp98758 __tmp98755))))
              (declare (not safe))
              (cons __tmp98754 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98752
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97570_
                                                       _body97680_
                                                       _vars97662_
                                                       _$e97795_
                                                       _E97664_
                                                       _k97665_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98753
                                                __tmp98752))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98759
                                         __tmp98751
                                         _E97664_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97683_))
                                        (let ((_$e97797_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98750
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97663_)))
                                                (__tmp98741
                                                 (let ((__tmp98745
                                                        (let ((__tmp98746
                                                               (let ((__tmp98749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97797_ '())))
                             (__tmp98747
                              (let ((__tmp98748
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97663_))))
                                (declare (not safe))
                                (cons __tmp98748 '()))))
                         (declare (not safe))
                         (cons __tmp98749 __tmp98747))))
                  (declare (not safe))
                  (cons __tmp98746 '())))
               (__tmp98742
                (let ((__tmp98744
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97797_ _body97680_)))
                      (__tmp98743 (_k97665_ _vars97662_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98744 __tmp98743 _E97664_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98745
                                                    __tmp98742))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98750
                                             __tmp98741
                                             _E97664_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97569_ _e97661_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9766697673_))
                                      (let ((_hd9767097802_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9766697673_)))
                                            (_tl9767197804_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9766697673_))))
                                        (let* ((_tag97807_ _hd9767097802_)
                                               (_body97809_ _tl9767197804_))
                                          (declare (not safe))
                                          (_K9766997799_
                                           _body97809_
                                           _tag97807_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9766897677_))))))
                             (_splice-rlen97571_
                              (lambda (_e97623_)
                                (let _lp97625_ ((_e97627_ _e97623_)
                                                (_n97628_ '0))
                                  (let* ((_e9762997636_ _e97627_)
                                         (_E9763197640_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9762997636_))))
                                         (_K9763297649_
                                          (lambda (_body97643_ _tag97644_)
                                            (let ((_$e97646_ _tag97644_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97646_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97390_
                                                     _where97562_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97646_))
                                                      (let ((__tmp98849
                                                             (cdr _body97643_))
                                                            (__tmp98848
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97628_ '1))))
                (declare (not safe))
                (_lp97625_ __tmp98849 __tmp98848))
              _n97628_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9762997636_))
                                        (let ((_hd9763397652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9762997636_)))
                                              (_tl9763497654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9762997636_))))
                                          (let* ((_tag97657_ _hd9763397652_)
                                                 (_body97659_ _tl9763497654_))
                                            (declare (not safe))
                                            (_K9763297649_
                                             _body97659_
                                             _tag97657_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9763197640_)))))))
                             (_splice-vars97572_
                              (lambda (_e97579_)
                                (let _recur97581_ ((_e97583_ _e97579_)
                                                   (_vars97584_ '()))
                                  (let* ((_e9758597592_ _e97583_)
                                         (_E9758797596_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9758597592_))))
                                         (_K9758897611_
                                          (lambda (_body97599_ _tag97600_)
                                            (let ((_$e97602_ _tag97600_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97602_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97599_
                                                          _vars97584_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97602_))
                  (let () (declare (not safe)) (eq? 'splice _$e97602_)))
              (let ((__tmp98852 (cdr _body97599_))
                    (__tmp98850
                     (let ((__tmp98851 (car _body97599_)))
                       (declare (not safe))
                       (_recur97581_ __tmp98851 _vars97584_))))
                (declare (not safe))
                (_recur97581_ __tmp98852 __tmp98850))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97602_))
                      (let () (declare (not safe)) (eq? 'box _$e97602_)))
                  (let ()
                    (declare (not safe))
                    (_recur97581_ _body97599_ _vars97584_))
                  _vars97584_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9758597592_))
                                        (let ((_hd9758997614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9758597592_)))
                                              (_tl9759097616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9758597592_))))
                                          (let* ((_tag97619_ _hd9758997614_)
                                                 (_body97621_ _tl9759097616_))
                                            (declare (not safe))
                                            (_K9758897611_
                                             _body97621_
                                             _tag97619_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9758797596_)))))))
                             (_make-body97573_
                              (lambda (_vars97575_)
                                (let ((__tmp98853
                                       (map (lambda (_mvar97577_)
                                              (let ((__tmp98854
                                                     (car _mvar97577_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98854
                                                 _vars97575_
                                                 _BUG97569_)))
                                            _mvars97565_)))
                                  (declare (not safe))
                                  (cons _K97566_ __tmp98853)))))
                      (let ()
                        (declare (not safe))
                        (_recur97570_
                         _hd97564_
                         '()
                         _target97563_
                         _E97567_
                         _make-body97573_)))))
                 (_parse-clause97399_
                  (lambda (_hd97468_ _ids97469_)
                    (let _recur97471_ ((_e97473_ _hd97468_)
                                       (_vars97474_ '())
                                       (_depth97475_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97473_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97473_))
                              (values '(any) _vars97474_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97473_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97390_
                                     _hd97468_))
                                  (if (let ((__tmp98870
                                             (lambda (_id97477_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97473_
                                                  _id97477_)))))
                                        (declare (not safe))
                                        (find __tmp98870 _ids97469_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97473_))
                                              _vars97474_)
                                      (if (let ((__tmp98868
                                                 (lambda (_var97479_)
                                                   (let ((__tmp98869
                                                          (car _var97479_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97473_
                                                      __tmp98869)))))
                                            (declare (not safe))
                                            (find __tmp98868 _vars97474_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97390_
                                             _e97473_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97473_))
                                                  (let ((__tmp98867
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98867
                                                          _vars97474_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97473_))
                              (let* ((_e9748097487_ _e97473_)
                                     (_E9748297491_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9748097487_))))
                                     (_E9748197552_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9748097487_))
                                            (let ((_e9748397495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9748097487_))))
                                              (let ((_hd9748497498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9748397495_)))
                                                    (_tl9748597500_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9748397495_))))
                                                (let* ((_hd97503_
                                                        _hd9748497498_)
                                                       (_rest97505_
                                                        _tl9748597500_))
                                                  (if '#t
                                                      (let* ((_make-pair97520_
                                                              (lambda (_tag97507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97508_
                               _tl97509_)
                        (let* ((_hd-depth97511_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97507_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97475_ '1))
                                    _depth97475_))
                               (_g98862_
                                (let ()
                                  (declare (not safe))
                                  (_recur97471_
                                   _hd97508_
                                   _vars97474_
                                   _hd-depth97511_))))
                          (begin
                            (let ((_g98863_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98862_)
                                         (##vector-length _g98862_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98863_ 2)))
                                  (error "Context expects 2 values" _g98863_)))
                            (let ((_hd97513_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98862_ 0)))
                                  (_vars97514_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98862_ 1))))
                              (let ((_g98864_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97471_
                                        _tl97509_
                                        _vars97514_
                                        _depth97475_))))
                                (begin
                                  (let ((_g98865_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98864_)
                                               (##vector-length _g98864_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98865_ 2)))
                                        (error "Context expects 2 values"
                                               _g98865_)))
                                  (let ((_tl97516_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98864_ 0)))
                                        (_vars97517_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98864_ 1))))
                                    (let ()
                                      (values (let ((__tmp98866
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97513_
                                                             _tl97516_))))
                                                (declare (not safe))
                                                (cons _tag97507_ __tmp98866))
                                              _vars97517_))))))))))
                     (_e9752197528_ _rest97505_)
                     (_E9752397532_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97520_ 'cons _hd97503_ _rest97505_))))
                     (_E9752297548_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9752197528_))
                            (let ((_e9752497536_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9752197528_))))
                              (let ((_hd9752597539_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9752497536_)))
                                    (_tl9752697541_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9752497536_))))
                                (let* ((_rest-hd97544_ _hd9752597539_)
                                       (_rest-tl97546_ _tl9752697541_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97544_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97520_
                                             'splice
                                             _hd97503_
                                             _rest-tl97546_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97520_
                                             'cons
                                             _hd97503_
                                             _rest97505_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9752397532_))))))
                            (let () (declare (not safe)) (_E9752397532_))))))
                (let () (declare (not safe)) (_E9752297548_)))
              (let () (declare (not safe)) (_E9748297491_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9748297491_))))))
                                (let () (declare (not safe)) (_E9748197552_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97473_))
                                  (values '(null) _vars97474_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97473_))
                                      (let ((_g98859_
                                             (let ((__tmp98861
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97473_)))))
                                               (declare (not safe))
                                               (_recur97471_
                                                __tmp98861
                                                _vars97474_
                                                _depth97475_))))
                                        (begin
                                          (let ((_g98860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98859_)
                                                       (##vector-length
                                                        _g98859_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98860_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98860_)))
                                          (let ((_e97556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98859_ 0)))
                                                (_vars97557_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98859_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97556_))
                                                    _vars97557_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97473_))
                                          (let ((_g98856_
                                                 (let ((__tmp98858
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97473_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97471_
                                                    __tmp98858
                                                    _vars97474_
                                                    _depth97475_))))
                                            (begin
                                              (let ((_g98857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98856_)
                                                           (##vector-length
                                                            _g98856_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98857_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98857_)))
                                              (let ((_e97559_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98856_
                                                        0)))
                                                    (_vars97560_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98856_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97559_))
                                                        _vars97560_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97473_))
                                              (values (let ((__tmp98855
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97473_))))
                (declare (not safe))
                (cons 'datum __tmp98855))
              _vars97474_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97390_
                                                 _e97473_))))))))))))
          (let* ((_e9740097413_ _stx97390_)
                 (_E9740297417_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9740097413_))))
                 (_E9740197464_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9740097413_))
                        (let ((_e9740397421_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9740097413_))))
                          (let ((_hd9740497424_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9740397421_)))
                                (_tl9740597426_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9740397421_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9740597426_))
                                (let ((_e9740697429_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9740597426_))))
                                  (let ((_hd9740797432_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9740697429_)))
                                        (_tl9740897434_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9740697429_))))
                                    (let ((_expr97437_ _hd9740797432_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9740897434_))
                                          (let ((_e9740997439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9740897434_))))
                                            (let ((_hd9741097442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9740997439_)))
                                                  (_tl9741197444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9740997439_))))
                                              (let* ((_ids97447_
                                                      _hd9741097442_)
                                                     (_clauses97449_
                                                      _tl9741197444_))
                                                (if '#t
                                                    (if (let ((__tmp98888
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97447_))))
                  (declare (not safe))
                  (not __tmp98888))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97390_
                   _ids97447_))
                (if (let ((__tmp98887
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97449_))))
                      (declare (not safe))
                      (not __tmp98887))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97390_))
                    (let* ((_ids97451_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97447_)))
                           (_clauses97453_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97449_)))
                           (_clause-ids97455_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97453_)))
                           (_E97457_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97459_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97461_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97453_))
                                _E97457_
                                (car _clause-ids97455_))))
                      (let ((__tmp98872
                             (let ((__tmp98873
                                    (let ((__tmp98875
                                           (let ((__tmp98880
                                                  (let ((__tmp98881
                                                         (let ((__tmp98886
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97457_ '())))
                       (__tmp98882
                        (let ((__tmp98883
                               (let ((__tmp98885
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97459_ '())))
                                     (__tmp98884
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97459_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98885
                                  __tmp98884))))
                          (declare (not safe))
                          (cons __tmp98883 '()))))
                   (declare (not safe))
                   (cons __tmp98886 __tmp98882))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98881 '())))
                                                 (__tmp98876
                                                  (let ((__tmp98879
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97395_
                                                            _target97459_
                                                            _ids97451_
                                                            _clauses97453_
                                                            _clause-ids97455_
                                                            _E97457_)))
                                                        (__tmp98877
                                                         (let ((__tmp98878
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97437_ '()))))
                   (declare (not safe))
                   (cons _first97461_ __tmp98878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97396_
                                                     __tmp98879
                                                     __tmp98877))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98880
                                              __tmp98876)))
                                          (__tmp98874
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97390_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98875
                                       __tmp98874))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98873)))
                            (__tmp98871
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97390_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98872 __tmp98871)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9740297417_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9740297417_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9740297417_)))))
                        (let () (declare (not safe)) (_E9740297417_))))))
            (let () (declare (not safe)) (_E9740197464_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx98100_)
        (let* ((_identifier=?98102_ 'free-identifier=?)
               (_unwrap-e98104_ 'syntax-e)
               (_wrap-e98106_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98100_
           _identifier=?98102_
           _unwrap-e98104_
           _wrap-e98106_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx98108_ _identifier=?98109_)
        (let* ((_unwrap-e98111_ 'syntax-e) (_wrap-e98113_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98108_
           _identifier=?98109_
           _unwrap-e98111_
           _wrap-e98113_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx98115_ _identifier=?98116_ _unwrap-e98117_)
        (let ((_wrap-e98119_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98115_
           _identifier=?98116_
           _unwrap-e98117_
           _wrap-e98119_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98890_
        (let ((_g98889_ (let () (declare (not safe)) (##length _g98890_))))
          (cond ((let () (declare (not safe)) (##fx= _g98889_ 1))
                 (apply (lambda (_stx98100_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx98100_)))
                        _g98890_))
                ((let () (declare (not safe)) (##fx= _g98889_ 2))
                 (apply (lambda (_stx98108_ _identifier=?98109_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx98108_
                             _identifier=?98109_)))
                        _g98890_))
                ((let () (declare (not safe)) (##fx= _g98889_ 3))
                 (apply (lambda (_stx98115_
                                 _identifier=?98116_
                                 _unwrap-e98117_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx98115_
                             _identifier=?98116_
                             _unwrap-e98117_)))
                        _g98890_))
                ((let () (declare (not safe)) (##fx= _g98889_ 4))
                 (apply (lambda (_stx98121_
                                 _identifier=?98122_
                                 _unwrap-e98123_
                                 _wrap-e98124_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx98121_
                             _identifier=?98122_
                             _unwrap-e98123_
                             _wrap-e98124_)))
                        _g98890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98890_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97387_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97387_))
            (let ((__tmp98891
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97387_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98891 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97345_ . _rest97346_)
        (let ((_len97348_ (length _hd97345_)))
          (let _lp97350_ ((_rest97352_ _rest97346_))
            (let* ((_rest9735397361_ _rest97352_)
                   (_else9735597369_ (lambda () '#!void))
                   (_K9735797375_
                    (lambda (_rest97372_ _hd97373_)
                      (if (fx= _len97348_ (length _hd97373_))
                          (let () (declare (not safe)) (_lp97350_ _rest97372_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97373_))))))
              (if (let () (declare (not safe)) (##pair? _rest9735397361_))
                  (let ((_hd9735897378_
                         (let ()
                           (declare (not safe))
                           (##car _rest9735397361_)))
                        (_tl9735997380_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9735397361_))))
                    (let* ((_hd97383_ _hd9735897378_)
                           (_rest97385_ _tl9735997380_))
                      (declare (not safe))
                      (_K9735797375_ _rest97385_ _hd97383_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97303_ _n97304_)
        (let _lp97306_ ((_rest97308_ _stx97303_) (_r97309_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97308_))
              (let* ((_g9731097317_
                      (let () (declare (not safe)) (gx#syntax-e _rest97308_)))
                     (_E9731297321_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9731097317_))))
                     (_K9731397327_
                      (lambda (_rest97324_ _hd97325_)
                        (let ((__tmp98896
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97325_ _r97309_))))
                          (declare (not safe))
                          (_lp97306_ _rest97324_ __tmp98896)))))
                (if (let () (declare (not safe)) (##pair? _g9731097317_))
                    (let ((_hd9731497330_
                           (let () (declare (not safe)) (##car _g9731097317_)))
                          (_tl9731597332_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9731097317_))))
                      (let* ((_hd97335_ _hd9731497330_)
                             (_rest97337_ _tl9731597332_))
                        (declare (not safe))
                        (_K9731397327_ _rest97337_ _hd97335_)))
                    (let () (declare (not safe)) (_E9731297321_))))
              (let _lp97339_ ((_n97341_ _n97304_)
                              (_l97342_ _r97309_)
                              (_r97343_ _rest97308_))
                (if (let () (declare (not safe)) (null? _l97342_))
                    (values _l97342_ _r97343_)
                    (if (fxpositive? _n97341_)
                        (let ((__tmp98895
                               (let () (declare (not safe)) (fx- _n97341_ '1)))
                              (__tmp98894 (cdr _l97342_))
                              (__tmp98892
                               (let ((__tmp98893 (car _l97342_)))
                                 (declare (not safe))
                                 (cons __tmp98893 _r97343_))))
                          (declare (not safe))
                          (_lp97339_ __tmp98895 __tmp98894 __tmp98892))
                        (values (reverse _l97342_) _r97343_))))))))))
