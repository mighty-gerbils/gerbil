(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710954837)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98634 (list gx#expander::t))
            (__tmp98632
             (let ((__tmp98633
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98633 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98634
         '(id depth)
         __tmp98632
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98629_
        (apply make-instance gx#syntax-pattern::t _$args98629_)))
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
      (lambda (_self98626_ _stx98627_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98627_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx98108_)
        (letrec ((_generate98110_
                  (lambda (_e98337_)
                    (letrec ((_BUG98339_
                              (lambda (_q98501_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx98108_
                                         _e98337_
                                         _q98501_))))
                             (_local-pattern-e98340_
                              (lambda (_pat98499_)
                                (let ((__tmp98635
                                       (##structure-ref
                                        _pat98499_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98635))))
                             (_getvar98341_
                              (lambda (_q98496_ _vars98497_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98496_
                                   _vars98497_
                                   _BUG98339_))))
                             (_getarg98342_
                              (lambda (_arg98462_ _vars98463_)
                                (let* ((_arg9846498471_ _arg98462_)
                                       (_E9846698475_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9846498471_))))
                                       (_K9846798484_
                                        (lambda (_e98478_ _tag98479_)
                                          (let ((_$e98481_ _tag98479_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98481_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98341_
                                                   _e98478_
                                                   _vars98463_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98481_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98340_
                                                       _e98478_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98339_
                                                       _arg98462_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9846498471_))
                                      (let ((_hd9846898487_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9846498471_)))
                                            (_tl9846998489_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9846498471_))))
                                        (let* ((_tag98492_ _hd9846898487_)
                                               (_e98494_ _tl9846998489_))
                                          (declare (not safe))
                                          (_K9846798484_ _e98494_ _tag98492_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9846698475_)))))))
                      (let _recur98344_ ((_e98346_ _e98337_) (_vars98347_ '()))
                        (let* ((_e9834898355_ _e98346_)
                               (_E9835098359_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9834898355_))))
                               (_K9835198450_
                                (lambda (_body98362_ _tag98363_)
                                  (let ((_$e98365_ _tag98363_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98365_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98362_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98365_))
                                            (let ((_id98368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98362_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98368_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98368_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98370_))
                                                        (let ((__tmp98663
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98362_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98663))
                (let ((__tmp98662
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98362_)))
                      (__tmp98661
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98362_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98662
                   __tmp98661
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98368_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98362_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98339_
                                                         _e98346_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98365_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98340_
                                                   _body98362_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98365_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98341_
                                                       _body98362_
                                                       _vars98347_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98365_))
                                                        (let ((__tmp98659
                                                               (let ((__tmp98660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98362_)))
                         (declare (not safe))
                         (_recur98344_ __tmp98660 _vars98347_)))
                      (__tmp98657
                       (let ((__tmp98658 (cdr _body98362_)))
                         (declare (not safe))
                         (_recur98344_ __tmp98658 _vars98347_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98659 __tmp98657))
                (if (let () (declare (not safe)) (eq? 'vector _$e98365_))
                    (let ((__tmp98656
                           (let ()
                             (declare (not safe))
                             (_recur98344_ _body98362_ _vars98347_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98656))
                    (if (let () (declare (not safe)) (eq? 'box _$e98365_))
                        (let ((__tmp98655
                               (let ()
                                 (declare (not safe))
                                 (_recur98344_ _body98362_ _vars98347_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98655))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98365_))
                            (let* ((_body9837198382_ _body98362_)
                                   (_E9837398386_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9837198382_))))
                                   (_K9837498424_
                                    (lambda (_args98389_
                                             _iv98390_
                                             _hd98391_
                                             _depth98392_)
                                      (let* ((_targets98398_
                                              (map (lambda (_g9839398395_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98342_
                                                        _g9839398395_
                                                        _vars98347_)))
                                                   _args98389_))
                                             (_fold-in98400_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98389_)))
                                             (_fold-out98402_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98404_
                                              (let ((__tmp98636
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98402_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98636
                                                        _fold-in98400_)))
                                             (_lambda-body98421_
                                              (if (fx> _depth98392_ '1)
                                                  (let ((_r-args98412_
                                                         (map (lambda (_arg98406_)
                                                                (let ((__tmp98641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98406_)))
                          (declare (not safe))
                          (cons 'ref __tmp98641)))
                      _args98389_))
                (_r-vars98413_
                 (let ((__tmp98642
                        (lambda (_arg98408_ _var98409_ _r98410_)
                          (let ((__tmp98643
                                 (let ((__tmp98644 (cdr _arg98408_)))
                                   (declare (not safe))
                                   (cons __tmp98644 _var98409_))))
                            (declare (not safe))
                            (cons __tmp98643 _r98410_)))))
                   (declare (not safe))
                   (foldr2 __tmp98642
                           _vars98347_
                           _args98389_
                           _fold-in98400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98645
                                                           (let ((__tmp98646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98650
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98392_ '1)))
                                (__tmp98647
                                 (let ((__tmp98648
                                        (let ((__tmp98649
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98402_))))
                                          (declare (not safe))
                                          (cons __tmp98649 _r-args98412_))))
                                   (declare (not safe))
                                   (cons _hd98391_ __tmp98648))))
                            (declare (not safe))
                            (cons __tmp98650 __tmp98647))))
                     (declare (not safe))
                     (cons 'splice __tmp98646))))
              (declare (not safe))
              (_recur98344_ __tmp98645 _r-vars98413_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98419_
                                                          (let ((__tmp98637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98415_ _var98416_ _r98417_)
                           (let ((__tmp98638
                                  (let ((__tmp98639 (cdr _arg98415_)))
                                    (declare (not safe))
                                    (cons __tmp98639 _var98416_))))
                             (declare (not safe))
                             (cons __tmp98638 _r98417_)))))
                    (declare (not safe))
                    (foldr2 __tmp98637
                            _vars98347_
                            _args98389_
                            _fold-in98400_)))
                 (__tmp98640
                  (let ()
                    (declare (not safe))
                    (_recur98344_ _hd98391_ _hd-vars98419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98640
                                                     _fold-out98402_)))))
                                        (let ((__tmp98654
                                               (if (fx> (length _targets98398_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98398_))
                                                   '#!void))
                                              (__tmp98651
                                               (let ((__tmp98653
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98404_
                                                         _lambda-body98421_)))
                                                     (__tmp98652
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98344_
                                                         _iv98390_
                                                         _vars98347_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98653
                                                  __tmp98652
                                                  _targets98398_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98654
                                           __tmp98651))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9837198382_))
                                  (let ((_hd9837598427_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9837198382_)))
                                        (_tl9837698429_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9837198382_))))
                                    (let ((_depth98432_ _hd9837598427_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9837698429_))
                                          (let ((_hd9837798434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9837698429_)))
                                                (_tl9837898436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9837698429_))))
                                            (let ((_hd98439_ _hd9837798434_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9837898436_))
                                                  (let ((_hd9837998441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9837898436_)))
                                                        (_tl9838098443_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9837898436_))))
                                                    (let* ((_iv98446_
                                                            _hd9837998441_)
                                                           (_args98448_
                                                            _tl9838098443_))
                                                      (declare (not safe))
                                                      (_K9837498424_
                                                       _args98448_
                                                       _iv98446_
                                                       _hd98439_
                                                       _depth98432_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9837398386_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9837398386_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9837398386_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98365_))
                                _body98362_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98339_ _e98346_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9834898355_))
                              (let ((_hd9835298453_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9834898355_)))
                                    (_tl9835398455_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9834898355_))))
                                (let* ((_tag98458_ _hd9835298453_)
                                       (_body98460_ _tl9835398455_))
                                  (declare (not safe))
                                  (_K9835198450_ _body98460_ _tag98458_)))
                              (let ()
                                (declare (not safe))
                                (_E9835098359_))))))))
                 (_parse98111_
                  (lambda (_e98152_)
                    (letrec ((_make-cons98154_
                              (lambda (_hd98329_ _tl98330_)
                                (let ((_g98664_ _hd98329_)
                                      (_g98666_ _tl98330_))
                                  (begin
                                    (let ((_g98665_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98664_)
                                                 (##vector-length _g98664_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98665_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98665_)))
                                    (let ((_g98667_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98666_)
                                                 (##vector-length _g98666_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98667_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98667_)))
                                    (let ((_hd-e98332_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98664_ 0)))
                                          (_hd-vars98333_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98664_ 1))))
                                      (let ((_tl-e98334_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98666_ 0)))
                                            (_tl-vars98335_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98666_ 1))))
                                        (values (let ((__tmp98668
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98332_
                                                               _tl-e98334_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98668))
                                                (append _hd-vars98333_
                                                        _tl-vars98335_))))))))
                             (_make-splice98155_
                              (lambda (_where98268_
                                       _depth98269_
                                       _hd98270_
                                       _tl98271_)
                                (let ((_g98669_ _hd98270_)
                                      (_g98671_ _tl98271_))
                                  (begin
                                    (let ((_g98670_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98669_)
                                                 (##vector-length _g98669_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98670_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98670_)))
                                    (let ((_g98672_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98671_)
                                                 (##vector-length _g98671_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98672_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98672_)))
                                    (let ((_hd-e98273_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98669_ 0)))
                                          (_hd-vars98274_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98669_ 1))))
                                      (let ((_tl-e98275_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98671_ 0)))
                                            (_tl-vars98276_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98671_ 1))))
                                        (let _lp98278_ ((_rest98280_
                                                         _hd-vars98274_)
                                                        (_targets98281_ '())
                                                        (_vars98282_
                                                         _tl-vars98276_))
                                          (let* ((_rest9828398293_ _rest98280_)
                                                 (_else9828598301_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98281_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx98108_
                                                           _where98268_))
                                                        (values (let ((__tmp98673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98674
                                      (let ((__tmp98675
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e98275_
                                                     _targets98281_))))
                                        (declare (not safe))
                                        (cons _hd-e98273_ __tmp98675))))
                                 (declare (not safe))
                                 (cons _depth98269_ __tmp98674))))
                          (declare (not safe))
                          (cons 'splice __tmp98673))
                        _vars98282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9828798310_
                                                  (lambda (_rest98304_
                                                           _hd-pat98305_
                                                           _hd-depth*98306_)
                                                    (let ((_hd-depth98308_
                                                           (fx- _hd-depth*98306_
                                                                _depth98269_)))
                                                      (if (fxpositive?
                                                           _hd-depth98308_)
                                                          (let ((__tmp98680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98681
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98305_))))
                           (declare (not safe))
                           (cons __tmp98681 _targets98281_)))
                        (__tmp98678
                         (let ((__tmp98679
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98308_ _hd-pat98305_))))
                           (declare (not safe))
                           (cons __tmp98679 _vars98282_))))
                    (declare (not safe))
                    (_lp98278_ _rest98304_ __tmp98680 __tmp98678))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98308_))
                      (let ((__tmp98676
                             (let ((__tmp98677
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98305_))))
                               (declare (not safe))
                               (cons __tmp98677 _targets98281_))))
                        (declare (not safe))
                        (_lp98278_ _rest98304_ __tmp98676 _vars98282_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx98108_
                         _where98268_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9828398293_))
                                                (let ((_hd9828898313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9828398293_)))
                                                      (_tl9828998315_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9828398293_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9828898313_))
                                                      (let ((_hd9829098318_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9828898313_)))
                    (_tl9829198320_
                     (let () (declare (not safe)) (##cdr _hd9828898313_))))
                (let* ((_hd-depth*98323_ _hd9829098318_)
                       (_hd-pat98325_ _tl9829198320_)
                       (_rest98327_ _tl9828998315_))
                  (declare (not safe))
                  (_K9828798310_ _rest98327_ _hd-pat98325_ _hd-depth*98323_)))
              (let () (declare (not safe)) (_else9828598301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9828598301_)))))))))))
                             (_recur98156_
                              (lambda (_e98161_ _is-e?98162_)
                                (if (_is-e?98162_ _e98161_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx98108_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e98161_))
                                        (let* ((_pat98164_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e98161_)))
                                               (_depth98166_
                                                (##structure-ref
                                                 _pat98164_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth98166_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat98164_))
                                                      (let ((__tmp98697
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth98166_ _pat98164_))))
                (declare (not safe))
                (cons __tmp98697 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat98164_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e98161_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e98161_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e98161_))
                                                (let* ((_e9816898175_ _e98161_)
                                                       (_E9817098179_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9816898175_))))
                                                       (_E9816998258_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9816898175_))
                      (let ((_e9817198183_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9816898175_))))
                        (let ((_hd9817298186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9817198183_)))
                              (_tl9817398188_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9817198183_))))
                          (let* ((_hd98191_ _hd9817298186_)
                                 (_rest98193_ _tl9817398188_))
                            (if '#t
                                (if (_is-e?98162_ _hd98191_)
                                    (let* ((_e9819498201_ _rest98193_)
                                           (_E9819698205_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx98108_
                                                 _e98161_))))
                                           (_E9819598219_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9819498201_))
                                                  (let ((_e9819798209_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9819498201_))))
                                                    (let ((_hd9819898212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9819798209_)))
                                                          (_tl9819998214_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9819798209_))))
                                                      (let ((_rest98217_
                                                             _hd9819898212_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9819998214_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur98156_ _rest98217_ false))
                        (let () (declare (not safe)) (_E9819698205_)))
                    (let () (declare (not safe)) (_E9819698205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9819698205_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9819598219_)))
                                    (let _lp98223_ ((_rest98225_ _rest98193_)
                                                    (_depth98226_ '0))
                                      (let* ((_e9822798234_ _rest98225_)
                                             (_E9822998238_
                                              (lambda ()
                                                (if (fxpositive? _depth98226_)
                                                    (let ((__tmp98691
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98156_
                                                              _hd98191_
                                                              _is-e?98162_)))
                                                          (__tmp98690
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98156_
                                                              _rest98225_
                                                              _is-e?98162_))))
                                                      (declare (not safe))
                                                      (_make-splice98155_
                                                       _e98161_
                                                       _depth98226_
                                                       __tmp98691
                                                       __tmp98690))
                                                    (let ((__tmp98689
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98156_
                                                              _hd98191_
                                                              _is-e?98162_)))
                                                          (__tmp98688
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98156_
                                                              _rest98225_
                                                              _is-e?98162_))))
                                                      (declare (not safe))
                                                      (_make-cons98154_
                                                       __tmp98689
                                                       __tmp98688)))))
                                             (_E9822898254_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9822798234_))
                                                    (let ((_e9823098242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9822798234_))))
                                                      (let ((_hd9823198245_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9823098242_)))
                    (_tl9823298247_
                     (let () (declare (not safe)) (##cdr _e9823098242_))))
                (let* ((_rest-hd98250_ _hd9823198245_)
                       (_rest-tl98252_ _tl9823298247_))
                  (if '#t
                      (if (_is-e?98162_ _rest-hd98250_)
                          (let ((__tmp98696
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth98226_ '1))))
                            (declare (not safe))
                            (_lp98223_ _rest-tl98252_ __tmp98696))
                          (if (fxpositive? _depth98226_)
                              (let ((__tmp98695
                                     (let ()
                                       (declare (not safe))
                                       (_recur98156_ _hd98191_ _is-e?98162_)))
                                    (__tmp98694
                                     (let ()
                                       (declare (not safe))
                                       (_recur98156_
                                        _rest98225_
                                        _is-e?98162_))))
                                (declare (not safe))
                                (_make-splice98155_
                                 _e98161_
                                 _depth98226_
                                 __tmp98695
                                 __tmp98694))
                              (let ((__tmp98693
                                     (let ()
                                       (declare (not safe))
                                       (_recur98156_ _hd98191_ _is-e?98162_)))
                                    (__tmp98692
                                     (let ()
                                       (declare (not safe))
                                       (_recur98156_
                                        _rest98225_
                                        _is-e?98162_))))
                                (declare (not safe))
                                (_make-cons98154_ __tmp98693 __tmp98692))))
                      (let () (declare (not safe)) (_E9822998238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9822998238_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9822898254_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9817098179_))))))
                      (let () (declare (not safe)) (_E9817098179_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9816998258_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e98161_))
                                                    (let ((_g98685_
                                                           (let ((__tmp98687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e98161_)))))
                     (declare (not safe))
                     (_recur98156_ __tmp98687 _is-e?98162_))))
              (begin
                (let ((_g98686_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98685_)
                             (##vector-length _g98685_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98686_ 2)))
                      (error "Context expects 2 values" _g98686_)))
                (let ((_e98262_
                       (let () (declare (not safe)) (##vector-ref _g98685_ 0)))
                      (_vars98263_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98685_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e98262_))
                          _vars98263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e98161_))
                                                        (let ((_g98682_
                                                               (let ((__tmp98684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e98161_)))))
                         (declare (not safe))
                         (_recur98156_ __tmp98684 _is-e?98162_))))
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
                          (error "Context expects 2 values" _g98683_)))
                    (let ((_e98265_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98682_ 0)))
                          (_vars98266_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98682_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e98265_))
                              _vars98266_))))
                (values (let () (declare (not safe)) (cons 'datum _e98161_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98698_
                             (let ()
                               (declare (not safe))
                               (_recur98156_ _e98152_ gx#ellipsis?))))
                        (begin
                          (let ((_g98699_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98698_)
                                       (##vector-length _g98698_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98699_ 2)))
                                (error "Context expects 2 values" _g98699_)))
                          (let ((_tree98158_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98698_ 0)))
                                (_vars98159_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98698_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars98159_))
                                _tree98158_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx98108_
                                   _vars98159_))))))))))
          (let* ((_e9811298122_ _stx98108_)
                 (_E9811498126_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx98108_))))
                 (_E9811398148_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9811298122_))
                        (let ((_e9811598130_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9811298122_))))
                          (let ((_hd9811698133_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9811598130_)))
                                (_tl9811798135_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9811598130_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9811798135_))
                                (let ((_e9811898138_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9811798135_))))
                                  (let ((_hd9811998141_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9811898138_)))
                                        (_tl9812098143_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9811898138_))))
                                    (let ((_form98146_ _hd9811998141_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9812098143_))
                                          (if '#t
                                              (let ((__tmp98701
                                                     (let ((__tmp98702
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse98111_
                                                               _form98146_))))
                                                       (declare (not safe))
                                                       (_generate98110_
                                                        __tmp98702)))
                                                    (__tmp98700
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx98108_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98701
                                                 __tmp98700))
                                              (let ()
                                                (declare (not safe))
                                                (_E9811498126_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9811498126_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9811498126_)))))
                        (let () (declare (not safe)) (_E9811498126_))))))
            (let () (declare (not safe)) (_E9811398148_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97372_ _identifier=?97373_ _unwrap-e97374_ _wrap-e97375_)
        (letrec ((_generate-bindings97377_
                  (lambda (_target97972_
                           _ids97973_
                           _clauses97974_
                           _clause-ids97975_
                           _E97976_)
                    (letrec ((_generate197978_
                              (lambda (_clause98075_ _clause-id98076_ _E98077_)
                                (let ((__tmp98707
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id98076_ '())))
                                      (__tmp98703
                                       (let ((__tmp98704
                                              (let ((__tmp98706
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97972_
                                                             '())))
                                                    (__tmp98705
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97379_
                                                        _target97972_
                                                        _ids97973_
                                                        _clause98075_
                                                        _E98077_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98706
                                                 __tmp98705))))
                                         (declare (not safe))
                                         (cons __tmp98704 '()))))
                                  (declare (not safe))
                                  (cons __tmp98707 __tmp98703)))))
                      (let _lp97980_ ((_rest97982_ _clauses97974_)
                                      (_rest-ids97983_ _clause-ids97975_)
                                      (_bindings97984_ '()))
                        (let* ((_rest9798597993_ _rest97982_)
                               (_else9798798001_ (lambda () _bindings97984_))
                               (_K9798998063_
                                (lambda (_rest98004_ _clause98005_)
                                  (let* ((_rest-ids9800698013_ _rest-ids97983_)
                                         (_E9800898017_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9800698013_))))
                                         (_K9800998051_
                                          (lambda (_rest-ids98020_
                                                   _clause-id98021_)
                                            (let* ((_rest-ids9802298030_
                                                    _rest-ids98020_)
                                                   (_else9802498038_
                                                    (lambda ()
                                                      (let ((__tmp98708
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197978_
                        _clause98005_
                        _clause-id98021_
                        _E97976_))))
                (declare (not safe))
                (cons __tmp98708 _bindings97984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9802698043_
                                                    (lambda (_next-clause-id98041_)
                                                      (let ((__tmp98709
                                                             (let ((__tmp98710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197978_
                               _clause98005_
                               _clause-id98021_
                               _next-clause-id98041_))))
                       (declare (not safe))
                       (cons __tmp98710 _bindings97984_))))
                (declare (not safe))
                (_lp97980_ _rest98004_ _rest-ids98020_ __tmp98709)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9802298030_))
                                                  (let* ((_hd9802798046_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9802298030_)))
                                                         (_next-clause-id98049_
                                                          _hd9802798046_))
                                                    (declare (not safe))
                                                    (_K9802698043_
                                                     _next-clause-id98049_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9802498038_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9800698013_))
                                        (let ((_hd9801098054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9800698013_)))
                                              (_tl9801198056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9800698013_))))
                                          (let* ((_clause-id98059_
                                                  _hd9801098054_)
                                                 (_rest-ids98061_
                                                  _tl9801198056_))
                                            (declare (not safe))
                                            (_K9800998051_
                                             _rest-ids98061_
                                             _clause-id98059_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9800898017_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9798597993_))
                              (let ((_hd9799098066_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9798597993_)))
                                    (_tl9799198068_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9798597993_))))
                                (let* ((_clause98071_ _hd9799098066_)
                                       (_rest98073_ _tl9799198068_))
                                  (declare (not safe))
                                  (_K9798998063_ _rest98073_ _clause98071_)))
                              (let ()
                                (declare (not safe))
                                (_else9798798001_))))))))
                 (_generate-body97378_
                  (lambda (_bindings97932_ _body97933_)
                    (let _recur97935_ ((_rest97937_ _bindings97932_))
                      (let* ((_rest9793897946_ _rest97937_)
                             (_else9794097954_ (lambda () _body97933_))
                             (_K9794297960_
                              (lambda (_rest97957_ _hd97958_)
                                (let ((__tmp98712
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97958_ '())))
                                      (__tmp98711
                                       (let ()
                                         (declare (not safe))
                                         (_recur97935_ _rest97957_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98712
                                   __tmp98711)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9793897946_))
                            (let ((_hd9794397963_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9793897946_)))
                                  (_tl9794497965_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9793897946_))))
                              (let* ((_hd97968_ _hd9794397963_)
                                     (_rest97970_ _tl9794497965_))
                                (declare (not safe))
                                (_K9794297960_ _rest97970_ _hd97968_)))
                            (let ()
                              (declare (not safe))
                              (_else9794097954_)))))))
                 (_generate-clause97379_
                  (lambda (_target97795_ _ids97796_ _clause97797_ _E97798_)
                    (letrec ((_generate197800_
                              (lambda (_hd97887_ _fender97888_ _body97889_)
                                (let ((_g98713_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97381_
                                          _hd97887_
                                          _ids97796_))))
                                  (begin
                                    (let ((_g98714_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98713_)
                                                 (##vector-length _g98713_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98714_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98714_)))
                                    (let ((_e97891_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98713_ 0)))
                                          (_mvars97892_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98713_ 1))))
                                      (let* ((_pvars97894_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97892_))))
                                             (_E97896_
                                              (let ((__tmp98715
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97795_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97798_ __tmp98715)))
                                             (_K97929_
                                              (let ((__tmp98716
                                                     (let ((__tmp98718
                                                            (map (lambda (_mvar97898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97899_)
                           (let* ((_mvar9790097907_ _mvar97898_)
                                  (_E9790297911_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9790097907_))))
                                  (_K9790397917_
                                   (lambda (_depth97914_ _id97915_)
                                     (let ((__tmp98719
                                            (let ((__tmp98720
                                                   (let ((__tmp98722
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97915_)))
                                                         (__tmp98721
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97899_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98722
                                                      __tmp98721
                                                      _depth97914_))))
                                              (declare (not safe))
                                              (cons __tmp98720 '()))))
                                       (declare (not safe))
                                       (cons _id97915_ __tmp98719)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9790097907_))
                                 (let ((_hd9790497920_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9790097907_)))
                                       (_tl9790597922_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9790097907_))))
                                   (let* ((_id97925_ _hd9790497920_)
                                          (_depth97927_ _tl9790597922_))
                                     (declare (not safe))
                                     (_K9790397917_ _depth97927_ _id97925_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9790297911_)))))
                         _mvars97892_
                         _pvars97894_))
                   (__tmp98717
                    (if (let () (declare (not safe)) (eq? _fender97888_ '#t))
                        _body97889_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97888_
                           _body97889_
                           _E97896_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98718 __tmp98717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97894_
                                                 __tmp98716))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97380_
                                           _hd97887_
                                           _target97795_
                                           _e97891_
                                           _mvars97892_
                                           _K97929_
                                           _E97896_)))))))))
                      (let* ((_e9780197821_ _clause97797_)
                             (_E9781097825_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9780197821_))))
                             (_E9780397859_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9780197821_))
                                    (let ((_e9781197829_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9780197821_))))
                                      (let ((_hd9781297832_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9781197829_)))
                                            (_tl9781397834_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9781197829_))))
                                        (let ((_hd97837_ _hd9781297832_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9781397834_))
                                              (let ((_e9781497839_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9781397834_))))
                                                (let ((_hd9781597842_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9781497839_)))
                                                      (_tl9781697844_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9781497839_))))
                                                  (let ((_fender97847_
                                                         _hd9781597842_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9781697844_))
                                                        (let ((_e9781797849_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9781697844_))))
                  (let ((_hd9781897852_
                         (let () (declare (not safe)) (##car _e9781797849_)))
                        (_tl9781997854_
                         (let () (declare (not safe)) (##cdr _e9781797849_))))
                    (let ((_body97857_ _hd9781897852_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9781997854_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197800_
                                 _hd97837_
                                 _fender97847_
                                 _body97857_))
                              (let () (declare (not safe)) (_E9781097825_)))
                          (let () (declare (not safe)) (_E9781097825_))))))
                (let () (declare (not safe)) (_E9781097825_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9781097825_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9781097825_)))))
                             (_E9780297883_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9780197821_))
                                    (let ((_e9780497863_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9780197821_))))
                                      (let ((_hd9780597866_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9780497863_)))
                                            (_tl9780697868_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9780497863_))))
                                        (let ((_hd97871_ _hd9780597866_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9780697868_))
                                              (let ((_e9780797873_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9780697868_))))
                                                (let ((_hd9780897876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9780797873_)))
                                                      (_tl9780997878_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9780797873_))))
                                                  (let ((_body97881_
                                                         _hd9780897876_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9780997878_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197800_
                                                               _hd97871_
                                                               '#t
                                                               _body97881_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9780397859_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9780397859_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9780397859_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9780397859_))))))
                        (let () (declare (not safe)) (_E9780297883_))))))
                 (_generate-match97380_
                  (lambda (_where97544_
                           _target97545_
                           _hd97546_
                           _mvars97547_
                           _K97548_
                           _E97549_)
                    (letrec ((_BUG97551_
                              (lambda (_q97793_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97372_
                                         _hd97546_
                                         _q97793_))))
                             (_recur97552_
                              (lambda (_e97643_
                                       _vars97644_
                                       _target97645_
                                       _E97646_
                                       _k97647_)
                                (let* ((_e9764897655_ _e97643_)
                                       (_E9765097659_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9764897655_))))
                                       (_K9765197781_
                                        (lambda (_body97662_ _tag97663_)
                                          (let ((_$e97665_ _tag97663_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97665_))
                                                (_k97647_ _vars97644_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97665_))
                                                    (let ((__tmp98829
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97645_)))
                                                          (__tmp98825
                                                           (let ((__tmp98827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98828
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97375_ _body97662_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97373_
                             __tmp98828
                             _target97645_)))
                         (__tmp98826 (_k97647_ _vars97644_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98827 __tmp98826 _E97646_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98829 __tmp98825 _E97646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97665_))
                                                        (_k97647_
                                                         (let ((__tmp98824
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97662_ _target97645_))))
                   (declare (not safe))
                   (cons __tmp98824 _vars97644_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97665_))
                    (let ((_$e97668_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97669_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97670_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98823
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97645_)))
                            (__tmp98804
                             (let ((__tmp98818
                                    (let ((__tmp98819
                                           (let ((__tmp98822
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97668_ '())))
                                                 (__tmp98820
                                                  (let ((__tmp98821
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97374_
                                                            _target97645_))))
                                                    (declare (not safe))
                                                    (cons __tmp98821 '()))))
                                             (declare (not safe))
                                             (cons __tmp98822 __tmp98820))))
                                      (declare (not safe))
                                      (cons __tmp98819 '())))
                                   (__tmp98805
                                    (let ((__tmp98808
                                           (let ((__tmp98814
                                                  (let ((__tmp98817
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98815
                 (let ((__tmp98816
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97668_))))
                   (declare (not safe))
                   (cons __tmp98816 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98817
                                                          __tmp98815)))
                                                 (__tmp98809
                                                  (let ((__tmp98810
                                                         (let ((__tmp98813
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97670_ '())))
                       (__tmp98811
                        (let ((__tmp98812
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97668_))))
                          (declare (not safe))
                          (cons __tmp98812 '()))))
                   (declare (not safe))
                   (cons __tmp98813 __tmp98811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98810 '()))))
                                             (declare (not safe))
                                             (cons __tmp98814 __tmp98809)))
                                          (__tmp98806
                                           (let* ((_body9767197678_
                                                   _body97662_)
                                                  (_E9767397682_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9767197678_))))
                                                  (_K9767497690_
                                                   (lambda (_tl97685_
                                                            _hd97686_)
                                                     (let ((__tmp98807
                                                            (lambda (_vars97688_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97552_
                         _tl97685_
                         _vars97688_
                         _$tl97670_
                         _E97646_
                         _k97647_)))))
               (declare (not safe))
               (_recur97552_
                _hd97686_
                _vars97644_
                _$hd97669_
                _E97646_
                __tmp98807)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9767197678_))
                                                 (let ((_hd9767597693_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9767197678_)))
                                                       (_tl9767697695_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9767197678_))))
                                                   (let* ((_hd97698_
                                                           _hd9767597693_)
                                                          (_tl97700_
                                                           _tl9767697695_))
                                                     (declare (not safe))
                                                     (_K9767497690_
                                                      _tl97700_
                                                      _hd97698_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9767397682_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98808
                                       __tmp98806))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98818
                                __tmp98805))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98823 __tmp98804 _E97646_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97665_))
                        (let* ((_body9770197708_ _body97662_)
                               (_E9770397712_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9770197708_))))
                               (_K9770497763_
                                (lambda (_tl97715_ _hd97716_)
                                  (let* ((_rlen97718_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97553_ _tl97715_)))
                                         (_$target97720_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97722_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97724_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97726_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97728_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97730_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97732_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97734_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97554_ _hd97716_)))
                                         (_lvars97736_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97734_)))
                                         (_tlvars97738_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97734_)))
                                         (_linit97742_
                                          (map (lambda (_var97740_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97736_)))
                                    (letrec ((_make-loop97745_
                                              (lambda (_vars97749_)
                                                (let ((__tmp98755
                                                       (let ((__tmp98756
                                                              (let ((__tmp98792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97726_ '())))
                            (__tmp98757
                             (let ((__tmp98758
                                    (let ((__tmp98791
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97722_ _lvars97736_)))
                                          (__tmp98759
                                           (let ((__tmp98790
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97722_)))
                                                 (__tmp98768
                                                  (let ((__tmp98785
                                                         (let ((__tmp98786
                                                                (let ((__tmp98789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97728_ '())))
                              (__tmp98787
                               (let ((__tmp98788
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97374_
                                         _$hd97722_))))
                                 (declare (not safe))
                                 (cons __tmp98788 '()))))
                          (declare (not safe))
                          (cons __tmp98789 __tmp98787))))
                   (declare (not safe))
                   (cons __tmp98786 '())))
                (__tmp98769
                 (let ((__tmp98775
                        (let ((__tmp98781
                               (let ((__tmp98784
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97730_ '())))
                                     (__tmp98782
                                      (let ((__tmp98783
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97728_))))
                                        (declare (not safe))
                                        (cons __tmp98783 '()))))
                                 (declare (not safe))
                                 (cons __tmp98784 __tmp98782)))
                              (__tmp98776
                               (let ((__tmp98777
                                      (let ((__tmp98780
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97732_ '())))
                                            (__tmp98778
                                             (let ((__tmp98779
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97728_))))
                                               (declare (not safe))
                                               (cons __tmp98779 '()))))
                                        (declare (not safe))
                                        (cons __tmp98780 __tmp98778))))
                                 (declare (not safe))
                                 (cons __tmp98777 '()))))
                          (declare (not safe))
                          (cons __tmp98781 __tmp98776)))
                       (__tmp98770
                        (let ((__tmp98771
                               (lambda (_hdvars97751_)
                                 (let ((__tmp98772
                                        (let ((__tmp98773
                                               (map (lambda (_svar97753_
                                                             _lvar97754_)
                                                      (let ((__tmp98774
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97753_ _hdvars97751_ _BUG97551_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98774 _lvar97754_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97734_
                                                    _lvars97736_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97732_ __tmp98773))))
                                   (declare (not safe))
                                   (cons _$lp97726_ __tmp98772)))))
                          (declare (not safe))
                          (_recur97552_
                           _hd97716_
                           '()
                           _$lp-hd97730_
                           _E97646_
                           __tmp98771))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98775 __tmp98770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98785
                                                     __tmp98769)))
                                                 (__tmp98760
                                                  (let ((__tmp98764
                                                         (map (lambda (_lvar97756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97757_)
                        (let ((__tmp98767
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97757_ '())))
                              (__tmp98765
                               (let ((__tmp98766
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97756_))))
                                 (declare (not safe))
                                 (cons __tmp98766 '()))))
                          (declare (not safe))
                          (cons __tmp98767 __tmp98765)))
                      _lvars97736_
                      _tlvars97738_))
                (__tmp98761
                 (_k97647_
                  (let ((__tmp98762
                         (lambda (_svar97759_ _tlvar97760_ _r97761_)
                           (let ((__tmp98763
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97759_ _tlvar97760_))))
                             (declare (not safe))
                             (cons __tmp98763 _r97761_)))))
                    (declare (not safe))
                    (foldl2 __tmp98762
                            _vars97749_
                            _svars97734_
                            _tlvars97738_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98764
                                                     __tmp98761))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98790
                                              __tmp98768
                                              __tmp98760))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98791
                                       __tmp98759))))
                               (declare (not safe))
                               (cons __tmp98758 '()))))
                        (declare (not safe))
                        (cons __tmp98792 __tmp98757))))
                 (declare (not safe))
                 (cons __tmp98756 '())))
              (__tmp98753
               (let ((__tmp98754
                      (let ()
                        (declare (not safe))
                        (cons _$target97720_ _linit97742_))))
                 (declare (not safe))
                 (cons _$lp97726_ __tmp98754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98755
                                                   __tmp98753)))))
                                      (let ((_body97747_
                                             (let ((__tmp98794
                                                    (let ((__tmp98795
                                                           (let ((__tmp98798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98799
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97724_ '()))))
                            (declare (not safe))
                            (cons _$target97720_ __tmp98799)))
                         (__tmp98796
                          (let ((__tmp98797
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97645_
                                    _rlen97718_))))
                            (declare (not safe))
                            (cons __tmp98797 '()))))
                     (declare (not safe))
                     (cons __tmp98798 __tmp98796))))
              (declare (not safe))
              (cons __tmp98795 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98793
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97552_
                                                       _tl97715_
                                                       _vars97644_
                                                       _$tl97724_
                                                       _E97646_
                                                       _make-loop97745_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98794
                                                __tmp98793))))
                                        (let ((__tmp98803
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97645_)))
                                              (__tmp98800
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97718_))
                                                   _body97747_
                                                   (let ((__tmp98801
                                                          (let ((__tmp98802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97645_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98802 _rlen97718_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98801
                                                      _body97747_
                                                      _E97646_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98803
                                           __tmp98800
                                           _E97646_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9770197708_))
                              (let ((_hd9770597766_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9770197708_)))
                                    (_tl9770697768_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9770197708_))))
                                (let* ((_hd97771_ _hd9770597766_)
                                       (_tl97773_ _tl9770697768_))
                                  (declare (not safe))
                                  (_K9770497763_ _tl97773_ _hd97771_)))
                              (let () (declare (not safe)) (_E9770397712_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97665_))
                            (let ((__tmp98752
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97645_)))
                                  (__tmp98751 (_k97647_ _vars97644_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98752
                               __tmp98751
                               _E97646_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97665_))
                                (let ((_$e97775_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98750
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97645_)))
                                        (__tmp98742
                                         (let ((__tmp98744
                                                (let ((__tmp98745
                                                       (let ((__tmp98749
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97775_ '())))
                     (__tmp98746
                      (let ((__tmp98747
                             (let ((__tmp98748
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97374_
                                       _target97645_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98748))))
                        (declare (not safe))
                        (cons __tmp98747 '()))))
                 (declare (not safe))
                 (cons __tmp98749 __tmp98746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98745 '())))
                                               (__tmp98743
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97552_
                                                   _body97662_
                                                   _vars97644_
                                                   _$e97775_
                                                   _E97646_
                                                   _k97647_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98744
                                            __tmp98743))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98750
                                     __tmp98742
                                     _E97646_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97665_))
                                    (let ((_$e97777_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98741
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97645_)))
                                            (__tmp98733
                                             (let ((__tmp98735
                                                    (let ((__tmp98736
                                                           (let ((__tmp98740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97777_ '())))
                         (__tmp98737
                          (let ((__tmp98738
                                 (let ((__tmp98739
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97374_
                                           _target97645_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98739))))
                            (declare (not safe))
                            (cons __tmp98738 '()))))
                     (declare (not safe))
                     (cons __tmp98740 __tmp98737))))
              (declare (not safe))
              (cons __tmp98736 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98734
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97552_
                                                       _body97662_
                                                       _vars97644_
                                                       _$e97777_
                                                       _E97646_
                                                       _k97647_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98735
                                                __tmp98734))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98741
                                         __tmp98733
                                         _E97646_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97665_))
                                        (let ((_$e97779_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98732
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97645_)))
                                                (__tmp98723
                                                 (let ((__tmp98727
                                                        (let ((__tmp98728
                                                               (let ((__tmp98731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97779_ '())))
                             (__tmp98729
                              (let ((__tmp98730
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97645_))))
                                (declare (not safe))
                                (cons __tmp98730 '()))))
                         (declare (not safe))
                         (cons __tmp98731 __tmp98729))))
                  (declare (not safe))
                  (cons __tmp98728 '())))
               (__tmp98724
                (let ((__tmp98726
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97779_ _body97662_)))
                      (__tmp98725 (_k97647_ _vars97644_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98726 __tmp98725 _E97646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98727
                                                    __tmp98724))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98732
                                             __tmp98723
                                             _E97646_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97551_ _e97643_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9764897655_))
                                      (let ((_hd9765297784_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9764897655_)))
                                            (_tl9765397786_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9764897655_))))
                                        (let* ((_tag97789_ _hd9765297784_)
                                               (_body97791_ _tl9765397786_))
                                          (declare (not safe))
                                          (_K9765197781_
                                           _body97791_
                                           _tag97789_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9765097659_))))))
                             (_splice-rlen97553_
                              (lambda (_e97605_)
                                (let _lp97607_ ((_e97609_ _e97605_)
                                                (_n97610_ '0))
                                  (let* ((_e9761197618_ _e97609_)
                                         (_E9761397622_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9761197618_))))
                                         (_K9761497631_
                                          (lambda (_body97625_ _tag97626_)
                                            (let ((_$e97628_ _tag97626_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97628_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97372_
                                                     _where97544_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97628_))
                                                      (let ((__tmp98831
                                                             (cdr _body97625_))
                                                            (__tmp98830
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97610_ '1))))
                (declare (not safe))
                (_lp97607_ __tmp98831 __tmp98830))
              _n97610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9761197618_))
                                        (let ((_hd9761597634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9761197618_)))
                                              (_tl9761697636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9761197618_))))
                                          (let* ((_tag97639_ _hd9761597634_)
                                                 (_body97641_ _tl9761697636_))
                                            (declare (not safe))
                                            (_K9761497631_
                                             _body97641_
                                             _tag97639_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9761397622_)))))))
                             (_splice-vars97554_
                              (lambda (_e97561_)
                                (let _recur97563_ ((_e97565_ _e97561_)
                                                   (_vars97566_ '()))
                                  (let* ((_e9756797574_ _e97565_)
                                         (_E9756997578_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9756797574_))))
                                         (_K9757097593_
                                          (lambda (_body97581_ _tag97582_)
                                            (let ((_$e97584_ _tag97582_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97584_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97581_
                                                          _vars97566_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97584_))
                  (let () (declare (not safe)) (eq? 'splice _$e97584_)))
              (let ((__tmp98834 (cdr _body97581_))
                    (__tmp98832
                     (let ((__tmp98833 (car _body97581_)))
                       (declare (not safe))
                       (_recur97563_ __tmp98833 _vars97566_))))
                (declare (not safe))
                (_recur97563_ __tmp98834 __tmp98832))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97584_))
                      (let () (declare (not safe)) (eq? 'box _$e97584_)))
                  (let ()
                    (declare (not safe))
                    (_recur97563_ _body97581_ _vars97566_))
                  _vars97566_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9756797574_))
                                        (let ((_hd9757197596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9756797574_)))
                                              (_tl9757297598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9756797574_))))
                                          (let* ((_tag97601_ _hd9757197596_)
                                                 (_body97603_ _tl9757297598_))
                                            (declare (not safe))
                                            (_K9757097593_
                                             _body97603_
                                             _tag97601_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9756997578_)))))))
                             (_make-body97555_
                              (lambda (_vars97557_)
                                (let ((__tmp98835
                                       (map (lambda (_mvar97559_)
                                              (let ((__tmp98836
                                                     (car _mvar97559_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98836
                                                 _vars97557_
                                                 _BUG97551_)))
                                            _mvars97547_)))
                                  (declare (not safe))
                                  (cons _K97548_ __tmp98835)))))
                      (let ()
                        (declare (not safe))
                        (_recur97552_
                         _hd97546_
                         '()
                         _target97545_
                         _E97549_
                         _make-body97555_)))))
                 (_parse-clause97381_
                  (lambda (_hd97450_ _ids97451_)
                    (let _recur97453_ ((_e97455_ _hd97450_)
                                       (_vars97456_ '())
                                       (_depth97457_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97455_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97455_))
                              (values '(any) _vars97456_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97455_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97372_
                                     _hd97450_))
                                  (if (let ((__tmp98852
                                             (lambda (_id97459_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97455_
                                                  _id97459_)))))
                                        (declare (not safe))
                                        (find __tmp98852 _ids97451_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97455_))
                                              _vars97456_)
                                      (if (let ((__tmp98850
                                                 (lambda (_var97461_)
                                                   (let ((__tmp98851
                                                          (car _var97461_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97455_
                                                      __tmp98851)))))
                                            (declare (not safe))
                                            (find __tmp98850 _vars97456_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97372_
                                             _e97455_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97455_))
                                                  (let ((__tmp98849
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98849
                                                          _vars97456_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97455_))
                              (let* ((_e9746297469_ _e97455_)
                                     (_E9746497473_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9746297469_))))
                                     (_E9746397534_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9746297469_))
                                            (let ((_e9746597477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9746297469_))))
                                              (let ((_hd9746697480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9746597477_)))
                                                    (_tl9746797482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9746597477_))))
                                                (let* ((_hd97485_
                                                        _hd9746697480_)
                                                       (_rest97487_
                                                        _tl9746797482_))
                                                  (if '#t
                                                      (let* ((_make-pair97502_
                                                              (lambda (_tag97489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97490_
                               _tl97491_)
                        (let* ((_hd-depth97493_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97489_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97457_ '1))
                                    _depth97457_))
                               (_g98844_
                                (let ()
                                  (declare (not safe))
                                  (_recur97453_
                                   _hd97490_
                                   _vars97456_
                                   _hd-depth97493_))))
                          (begin
                            (let ((_g98845_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98844_)
                                         (##vector-length _g98844_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98845_ 2)))
                                  (error "Context expects 2 values" _g98845_)))
                            (let ((_hd97495_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98844_ 0)))
                                  (_vars97496_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98844_ 1))))
                              (let ((_g98846_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97453_
                                        _tl97491_
                                        _vars97496_
                                        _depth97457_))))
                                (begin
                                  (let ((_g98847_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98846_)
                                               (##vector-length _g98846_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98847_ 2)))
                                        (error "Context expects 2 values"
                                               _g98847_)))
                                  (let ((_tl97498_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98846_ 0)))
                                        (_vars97499_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98846_ 1))))
                                    (let ()
                                      (values (let ((__tmp98848
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97495_
                                                             _tl97498_))))
                                                (declare (not safe))
                                                (cons _tag97489_ __tmp98848))
                                              _vars97499_))))))))))
                     (_e9750397510_ _rest97487_)
                     (_E9750597514_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97502_ 'cons _hd97485_ _rest97487_))))
                     (_E9750497530_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9750397510_))
                            (let ((_e9750697518_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9750397510_))))
                              (let ((_hd9750797521_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9750697518_)))
                                    (_tl9750897523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9750697518_))))
                                (let* ((_rest-hd97526_ _hd9750797521_)
                                       (_rest-tl97528_ _tl9750897523_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97526_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97502_
                                             'splice
                                             _hd97485_
                                             _rest-tl97528_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97502_
                                             'cons
                                             _hd97485_
                                             _rest97487_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9750597514_))))))
                            (let () (declare (not safe)) (_E9750597514_))))))
                (let () (declare (not safe)) (_E9750497530_)))
              (let () (declare (not safe)) (_E9746497473_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9746497473_))))))
                                (let () (declare (not safe)) (_E9746397534_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97455_))
                                  (values '(null) _vars97456_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97455_))
                                      (let ((_g98841_
                                             (let ((__tmp98843
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97455_)))))
                                               (declare (not safe))
                                               (_recur97453_
                                                __tmp98843
                                                _vars97456_
                                                _depth97457_))))
                                        (begin
                                          (let ((_g98842_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98841_)
                                                       (##vector-length
                                                        _g98841_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98842_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98842_)))
                                          (let ((_e97538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98841_ 0)))
                                                (_vars97539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98841_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97538_))
                                                    _vars97539_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97455_))
                                          (let ((_g98838_
                                                 (let ((__tmp98840
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97453_
                                                    __tmp98840
                                                    _vars97456_
                                                    _depth97457_))))
                                            (begin
                                              (let ((_g98839_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98838_)
                                                           (##vector-length
                                                            _g98838_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98839_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98839_)))
                                              (let ((_e97541_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98838_
                                                        0)))
                                                    (_vars97542_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98838_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97541_))
                                                        _vars97542_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97455_))
                                              (values (let ((__tmp98837
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97455_))))
                (declare (not safe))
                (cons 'datum __tmp98837))
              _vars97456_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97372_
                                                 _e97455_))))))))))))
          (let* ((_e9738297395_ _stx97372_)
                 (_E9738497399_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9738297395_))))
                 (_E9738397446_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9738297395_))
                        (let ((_e9738597403_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9738297395_))))
                          (let ((_hd9738697406_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9738597403_)))
                                (_tl9738797408_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9738597403_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9738797408_))
                                (let ((_e9738897411_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9738797408_))))
                                  (let ((_hd9738997414_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9738897411_)))
                                        (_tl9739097416_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9738897411_))))
                                    (let ((_expr97419_ _hd9738997414_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9739097416_))
                                          (let ((_e9739197421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9739097416_))))
                                            (let ((_hd9739297424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9739197421_)))
                                                  (_tl9739397426_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9739197421_))))
                                              (let* ((_ids97429_
                                                      _hd9739297424_)
                                                     (_clauses97431_
                                                      _tl9739397426_))
                                                (if '#t
                                                    (if (let ((__tmp98870
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97429_))))
                  (declare (not safe))
                  (not __tmp98870))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97372_
                   _ids97429_))
                (if (let ((__tmp98869
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97431_))))
                      (declare (not safe))
                      (not __tmp98869))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97372_))
                    (let* ((_ids97433_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97429_)))
                           (_clauses97435_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97431_)))
                           (_clause-ids97437_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97435_)))
                           (_E97439_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97441_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97443_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97435_))
                                _E97439_
                                (car _clause-ids97437_))))
                      (let ((__tmp98854
                             (let ((__tmp98855
                                    (let ((__tmp98857
                                           (let ((__tmp98862
                                                  (let ((__tmp98863
                                                         (let ((__tmp98868
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97439_ '())))
                       (__tmp98864
                        (let ((__tmp98865
                               (let ((__tmp98867
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97441_ '())))
                                     (__tmp98866
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97441_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98867
                                  __tmp98866))))
                          (declare (not safe))
                          (cons __tmp98865 '()))))
                   (declare (not safe))
                   (cons __tmp98868 __tmp98864))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98863 '())))
                                                 (__tmp98858
                                                  (let ((__tmp98861
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97377_
                                                            _target97441_
                                                            _ids97433_
                                                            _clauses97435_
                                                            _clause-ids97437_
                                                            _E97439_)))
                                                        (__tmp98859
                                                         (let ((__tmp98860
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97419_ '()))))
                   (declare (not safe))
                   (cons _first97443_ __tmp98860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97378_
                                                     __tmp98861
                                                     __tmp98859))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98862
                                              __tmp98858)))
                                          (__tmp98856
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97372_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98857
                                       __tmp98856))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98855)))
                            (__tmp98853
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97372_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98854 __tmp98853)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9738497399_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9738497399_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9738497399_)))))
                        (let () (declare (not safe)) (_E9738497399_))))))
            (let () (declare (not safe)) (_E9738397446_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx98082_)
        (let* ((_identifier=?98084_ 'free-identifier=?)
               (_unwrap-e98086_ 'syntax-e)
               (_wrap-e98088_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98082_
           _identifier=?98084_
           _unwrap-e98086_
           _wrap-e98088_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx98090_ _identifier=?98091_)
        (let* ((_unwrap-e98093_ 'syntax-e) (_wrap-e98095_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98090_
           _identifier=?98091_
           _unwrap-e98093_
           _wrap-e98095_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx98097_ _identifier=?98098_ _unwrap-e98099_)
        (let ((_wrap-e98101_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98097_
           _identifier=?98098_
           _unwrap-e98099_
           _wrap-e98101_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98872_
        (let ((_g98871_ (let () (declare (not safe)) (##length _g98872_))))
          (cond ((let () (declare (not safe)) (##fx= _g98871_ 1))
                 (apply (lambda (_stx98082_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx98082_)))
                        _g98872_))
                ((let () (declare (not safe)) (##fx= _g98871_ 2))
                 (apply (lambda (_stx98090_ _identifier=?98091_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx98090_
                             _identifier=?98091_)))
                        _g98872_))
                ((let () (declare (not safe)) (##fx= _g98871_ 3))
                 (apply (lambda (_stx98097_
                                 _identifier=?98098_
                                 _unwrap-e98099_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx98097_
                             _identifier=?98098_
                             _unwrap-e98099_)))
                        _g98872_))
                ((let () (declare (not safe)) (##fx= _g98871_ 4))
                 (apply (lambda (_stx98103_
                                 _identifier=?98104_
                                 _unwrap-e98105_
                                 _wrap-e98106_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx98103_
                             _identifier=?98104_
                             _unwrap-e98105_
                             _wrap-e98106_)))
                        _g98872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98872_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97369_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97369_))
            (let ((__tmp98873
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97369_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98873 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97327_ . _rest97328_)
        (let ((_len97330_ (length _hd97327_)))
          (let _lp97332_ ((_rest97334_ _rest97328_))
            (let* ((_rest9733597343_ _rest97334_)
                   (_else9733797351_ (lambda () '#!void))
                   (_K9733997357_
                    (lambda (_rest97354_ _hd97355_)
                      (if (fx= _len97330_ (length _hd97355_))
                          (let () (declare (not safe)) (_lp97332_ _rest97354_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97355_))))))
              (if (let () (declare (not safe)) (##pair? _rest9733597343_))
                  (let ((_hd9734097360_
                         (let ()
                           (declare (not safe))
                           (##car _rest9733597343_)))
                        (_tl9734197362_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9733597343_))))
                    (let* ((_hd97365_ _hd9734097360_)
                           (_rest97367_ _tl9734197362_))
                      (declare (not safe))
                      (_K9733997357_ _rest97367_ _hd97365_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97285_ _n97286_)
        (let _lp97288_ ((_rest97290_ _stx97285_) (_r97291_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97290_))
              (let* ((_g9729297299_
                      (let () (declare (not safe)) (gx#syntax-e _rest97290_)))
                     (_E9729497303_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9729297299_))))
                     (_K9729597309_
                      (lambda (_rest97306_ _hd97307_)
                        (let ((__tmp98878
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97307_ _r97291_))))
                          (declare (not safe))
                          (_lp97288_ _rest97306_ __tmp98878)))))
                (if (let () (declare (not safe)) (##pair? _g9729297299_))
                    (let ((_hd9729697312_
                           (let () (declare (not safe)) (##car _g9729297299_)))
                          (_tl9729797314_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9729297299_))))
                      (let* ((_hd97317_ _hd9729697312_)
                             (_rest97319_ _tl9729797314_))
                        (declare (not safe))
                        (_K9729597309_ _rest97319_ _hd97317_)))
                    (let () (declare (not safe)) (_E9729497303_))))
              (let _lp97321_ ((_n97323_ _n97286_)
                              (_l97324_ _r97291_)
                              (_r97325_ _rest97290_))
                (if (let () (declare (not safe)) (null? _l97324_))
                    (values _l97324_ _r97325_)
                    (if (fxpositive? _n97323_)
                        (let ((__tmp98877
                               (let () (declare (not safe)) (fx- _n97323_ '1)))
                              (__tmp98876 (cdr _l97324_))
                              (__tmp98874
                               (let ((__tmp98875 (car _l97324_)))
                                 (declare (not safe))
                                 (cons __tmp98875 _r97325_))))
                          (declare (not safe))
                          (_lp97321_ __tmp98877 __tmp98876 __tmp98874))
                        (values (reverse _l97324_) _r97325_))))))))))
