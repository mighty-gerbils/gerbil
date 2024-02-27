(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709038442)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96669 (list gx#expander::t))
            (__tmp96667
             (let ((__tmp96668
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96668 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96669
         '(id depth)
         __tmp96667
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96664_
        (apply make-instance gx#syntax-pattern::t _$args96664_)))
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
      (lambda (_self96661_ _stx96662_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96662_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96143_)
        (letrec ((_generate96145_
                  (lambda (_e96372_)
                    (letrec ((_BUG96374_
                              (lambda (_q96536_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96143_
                                         _e96372_
                                         _q96536_))))
                             (_local-pattern-e96375_
                              (lambda (_pat96534_)
                                (let ((__tmp96670
                                       (##structure-ref
                                        _pat96534_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96670))))
                             (_getvar96376_
                              (lambda (_q96531_ _vars96532_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96531_
                                   _vars96532_
                                   _BUG96374_))))
                             (_getarg96377_
                              (lambda (_arg96497_ _vars96498_)
                                (let* ((_arg9649996506_ _arg96497_)
                                       (_E9650196510_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9649996506_))))
                                       (_K9650296519_
                                        (lambda (_e96513_ _tag96514_)
                                          (let ((_$e96516_ _tag96514_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96516_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar96376_
                                                   _e96513_
                                                   _vars96498_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96516_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e96375_
                                                       _e96513_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG96374_
                                                       _arg96497_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9649996506_))
                                      (let ((_hd9650396522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9649996506_)))
                                            (_tl9650496524_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9649996506_))))
                                        (let* ((_tag96527_ _hd9650396522_)
                                               (_e96529_ _tl9650496524_))
                                          (declare (not safe))
                                          (_K9650296519_ _e96529_ _tag96527_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9650196510_)))))))
                      (let _recur96379_ ((_e96381_ _e96372_) (_vars96382_ '()))
                        (let* ((_e9638396390_ _e96381_)
                               (_E9638596394_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9638396390_))))
                               (_K9638696485_
                                (lambda (_body96397_ _tag96398_)
                                  (let ((_$e96400_ _tag96398_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96400_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body96397_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e96400_))
                                            (let ((_id96403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body96397_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id96403_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks96405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id96403_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks96405_))
                                                        (let ((__tmp96698
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body96397_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96698))
                (let ((__tmp96697
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body96397_)))
                      (__tmp96696
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body96397_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96697
                   __tmp96696
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id96403_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body96397_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG96374_
                                                         _e96381_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e96400_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e96375_
                                                   _body96397_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e96400_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar96376_
                                                       _body96397_
                                                       _vars96382_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e96400_))
                                                        (let ((__tmp96694
                                                               (let ((__tmp96695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body96397_)))
                         (declare (not safe))
                         (_recur96379_ __tmp96695 _vars96382_)))
                      (__tmp96692
                       (let ((__tmp96693 (cdr _body96397_)))
                         (declare (not safe))
                         (_recur96379_ __tmp96693 _vars96382_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96694 __tmp96692))
                (if (let () (declare (not safe)) (eq? 'vector _$e96400_))
                    (let ((__tmp96691
                           (let ()
                             (declare (not safe))
                             (_recur96379_ _body96397_ _vars96382_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96691))
                    (if (let () (declare (not safe)) (eq? 'box _$e96400_))
                        (let ((__tmp96690
                               (let ()
                                 (declare (not safe))
                                 (_recur96379_ _body96397_ _vars96382_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96690))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e96400_))
                            (let* ((_body9640696417_ _body96397_)
                                   (_E9640896421_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9640696417_))))
                                   (_K9640996459_
                                    (lambda (_args96424_
                                             _iv96425_
                                             _hd96426_
                                             _depth96427_)
                                      (let* ((_targets96433_
                                              (map (lambda (_g9642896430_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg96377_
                                                        _g9642896430_
                                                        _vars96382_)))
                                                   _args96424_))
                                             (_fold-in96435_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96424_)))
                                             (_fold-out96437_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96439_
                                              (let ((__tmp96671
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96437_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96671
                                                        _fold-in96435_)))
                                             (_lambda-body96456_
                                              (if (fx> _depth96427_ '1)
                                                  (let ((_r-args96447_
                                                         (map (lambda (_arg96441_)
                                                                (let ((__tmp96676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96441_)))
                          (declare (not safe))
                          (cons 'ref __tmp96676)))
                      _args96424_))
                (_r-vars96448_
                 (let ((__tmp96677
                        (lambda (_arg96443_ _var96444_ _r96445_)
                          (let ((__tmp96678
                                 (let ((__tmp96679 (cdr _arg96443_)))
                                   (declare (not safe))
                                   (cons __tmp96679 _var96444_))))
                            (declare (not safe))
                            (cons __tmp96678 _r96445_)))))
                   (declare (not safe))
                   (foldr2 __tmp96677
                           _vars96382_
                           _args96424_
                           _fold-in96435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96680
                                                           (let ((__tmp96681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96685
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96427_ '1)))
                                (__tmp96682
                                 (let ((__tmp96683
                                        (let ((__tmp96684
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96437_))))
                                          (declare (not safe))
                                          (cons __tmp96684 _r-args96447_))))
                                   (declare (not safe))
                                   (cons _hd96426_ __tmp96683))))
                            (declare (not safe))
                            (cons __tmp96685 __tmp96682))))
                     (declare (not safe))
                     (cons 'splice __tmp96681))))
              (declare (not safe))
              (_recur96379_ __tmp96680 _r-vars96448_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96454_
                                                          (let ((__tmp96672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96450_ _var96451_ _r96452_)
                           (let ((__tmp96673
                                  (let ((__tmp96674 (cdr _arg96450_)))
                                    (declare (not safe))
                                    (cons __tmp96674 _var96451_))))
                             (declare (not safe))
                             (cons __tmp96673 _r96452_)))))
                    (declare (not safe))
                    (foldr2 __tmp96672
                            _vars96382_
                            _args96424_
                            _fold-in96435_)))
                 (__tmp96675
                  (let ()
                    (declare (not safe))
                    (_recur96379_ _hd96426_ _hd-vars96454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96675
                                                     _fold-out96437_)))))
                                        (let ((__tmp96689
                                               (if (fx> (length _targets96433_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96433_))
                                                   '#!void))
                                              (__tmp96686
                                               (let ((__tmp96688
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96439_
                                                         _lambda-body96456_)))
                                                     (__tmp96687
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur96379_
                                                         _iv96425_
                                                         _vars96382_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96688
                                                  __tmp96687
                                                  _targets96433_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96689
                                           __tmp96686))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9640696417_))
                                  (let ((_hd9641096462_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9640696417_)))
                                        (_tl9641196464_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9640696417_))))
                                    (let ((_depth96467_ _hd9641096462_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9641196464_))
                                          (let ((_hd9641296469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9641196464_)))
                                                (_tl9641396471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9641196464_))))
                                            (let ((_hd96474_ _hd9641296469_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9641396471_))
                                                  (let ((_hd9641496476_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9641396471_)))
                                                        (_tl9641596478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9641396471_))))
                                                    (let* ((_iv96481_
                                                            _hd9641496476_)
                                                           (_args96483_
                                                            _tl9641596478_))
                                                      (declare (not safe))
                                                      (_K9640996459_
                                                       _args96483_
                                                       _iv96481_
                                                       _hd96474_
                                                       _depth96467_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9640896421_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9640896421_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9640896421_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e96400_))
                                _body96397_
                                (let ()
                                  (declare (not safe))
                                  (_BUG96374_ _e96381_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9638396390_))
                              (let ((_hd9638796488_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9638396390_)))
                                    (_tl9638896490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9638396390_))))
                                (let* ((_tag96493_ _hd9638796488_)
                                       (_body96495_ _tl9638896490_))
                                  (declare (not safe))
                                  (_K9638696485_ _body96495_ _tag96493_)))
                              (let ()
                                (declare (not safe))
                                (_E9638596394_))))))))
                 (_parse96146_
                  (lambda (_e96187_)
                    (letrec ((_make-cons96189_
                              (lambda (_hd96364_ _tl96365_)
                                (let ((_g96699_ _hd96364_)
                                      (_g96701_ _tl96365_))
                                  (begin
                                    (let ((_g96700_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96699_)
                                                 (##vector-length _g96699_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96700_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96700_)))
                                    (let ((_g96702_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96701_)
                                                 (##vector-length _g96701_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96702_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96702_)))
                                    (let ((_hd-e96367_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96699_ 0)))
                                          (_hd-vars96368_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96699_ 1))))
                                      (let ((_tl-e96369_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96701_ 0)))
                                            (_tl-vars96370_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96701_ 1))))
                                        (values (let ((__tmp96703
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e96367_
                                                               _tl-e96369_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96703))
                                                (append _hd-vars96368_
                                                        _tl-vars96370_))))))))
                             (_make-splice96190_
                              (lambda (_where96303_
                                       _depth96304_
                                       _hd96305_
                                       _tl96306_)
                                (let ((_g96704_ _hd96305_)
                                      (_g96706_ _tl96306_))
                                  (begin
                                    (let ((_g96705_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96704_)
                                                 (##vector-length _g96704_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96705_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96705_)))
                                    (let ((_g96707_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96706_)
                                                 (##vector-length _g96706_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96707_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96707_)))
                                    (let ((_hd-e96308_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96704_ 0)))
                                          (_hd-vars96309_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96704_ 1))))
                                      (let ((_tl-e96310_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96706_ 0)))
                                            (_tl-vars96311_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96706_ 1))))
                                        (let _lp96313_ ((_rest96315_
                                                         _hd-vars96309_)
                                                        (_targets96316_ '())
                                                        (_vars96317_
                                                         _tl-vars96311_))
                                          (let* ((_rest9631896328_ _rest96315_)
                                                 (_else9632096336_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96316_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96143_
                                                           _where96303_))
                                                        (values (let ((__tmp96708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96709
                                      (let ((__tmp96710
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96310_
                                                     _targets96316_))))
                                        (declare (not safe))
                                        (cons _hd-e96308_ __tmp96710))))
                                 (declare (not safe))
                                 (cons _depth96304_ __tmp96709))))
                          (declare (not safe))
                          (cons 'splice __tmp96708))
                        _vars96317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9632296345_
                                                  (lambda (_rest96339_
                                                           _hd-pat96340_
                                                           _hd-depth*96341_)
                                                    (let ((_hd-depth96343_
                                                           (fx- _hd-depth*96341_
                                                                _depth96304_)))
                                                      (if (fxpositive?
                                                           _hd-depth96343_)
                                                          (let ((__tmp96715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96716
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96340_))))
                           (declare (not safe))
                           (cons __tmp96716 _targets96316_)))
                        (__tmp96713
                         (let ((__tmp96714
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth96343_ _hd-pat96340_))))
                           (declare (not safe))
                           (cons __tmp96714 _vars96317_))))
                    (declare (not safe))
                    (_lp96313_ _rest96339_ __tmp96715 __tmp96713))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth96343_))
                      (let ((__tmp96711
                             (let ((__tmp96712
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96340_))))
                               (declare (not safe))
                               (cons __tmp96712 _targets96316_))))
                        (declare (not safe))
                        (_lp96313_ _rest96339_ __tmp96711 _vars96317_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96143_
                         _where96303_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9631896328_))
                                                (let ((_hd9632396348_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9631896328_)))
                                                      (_tl9632496350_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9631896328_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9632396348_))
                                                      (let ((_hd9632596353_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9632396348_)))
                    (_tl9632696355_
                     (let () (declare (not safe)) (##cdr _hd9632396348_))))
                (let* ((_hd-depth*96358_ _hd9632596353_)
                       (_hd-pat96360_ _tl9632696355_)
                       (_rest96362_ _tl9632496350_))
                  (declare (not safe))
                  (_K9632296345_ _rest96362_ _hd-pat96360_ _hd-depth*96358_)))
              (let () (declare (not safe)) (_else9632096336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9632096336_)))))))))))
                             (_recur96191_
                              (lambda (_e96196_ _is-e?96197_)
                                (if (_is-e?96197_ _e96196_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96143_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96196_))
                                        (let* ((_pat96199_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96196_)))
                                               (_depth96201_
                                                (##structure-ref
                                                 _pat96199_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96201_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96199_))
                                                      (let ((__tmp96732
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96201_ _pat96199_))))
                (declare (not safe))
                (cons __tmp96732 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96199_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96196_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96196_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96196_))
                                                (let* ((_e9620396210_ _e96196_)
                                                       (_E9620596214_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9620396210_))))
                                                       (_E9620496293_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9620396210_))
                      (let ((_e9620696218_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9620396210_))))
                        (let ((_hd9620796221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9620696218_)))
                              (_tl9620896223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9620696218_))))
                          (let* ((_hd96226_ _hd9620796221_)
                                 (_rest96228_ _tl9620896223_))
                            (if '#t
                                (if (_is-e?96197_ _hd96226_)
                                    (let* ((_e9622996236_ _rest96228_)
                                           (_E9623196240_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96143_
                                                 _e96196_))))
                                           (_E9623096254_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9622996236_))
                                                  (let ((_e9623296244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9622996236_))))
                                                    (let ((_hd9623396247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9623296244_)))
                                                          (_tl9623496249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9623296244_))))
                                                      (let ((_rest96252_
                                                             _hd9623396247_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9623496249_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96191_ _rest96252_ false))
                        (let () (declare (not safe)) (_E9623196240_)))
                    (let () (declare (not safe)) (_E9623196240_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9623196240_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9623096254_)))
                                    (let _lp96258_ ((_rest96260_ _rest96228_)
                                                    (_depth96261_ '0))
                                      (let* ((_e9626296269_ _rest96260_)
                                             (_E9626496273_
                                              (lambda ()
                                                (if (fxpositive? _depth96261_)
                                                    (let ((__tmp96726
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96191_
                                                              _hd96226_
                                                              _is-e?96197_)))
                                                          (__tmp96725
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96191_
                                                              _rest96260_
                                                              _is-e?96197_))))
                                                      (declare (not safe))
                                                      (_make-splice96190_
                                                       _e96196_
                                                       _depth96261_
                                                       __tmp96726
                                                       __tmp96725))
                                                    (let ((__tmp96724
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96191_
                                                              _hd96226_
                                                              _is-e?96197_)))
                                                          (__tmp96723
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96191_
                                                              _rest96260_
                                                              _is-e?96197_))))
                                                      (declare (not safe))
                                                      (_make-cons96189_
                                                       __tmp96724
                                                       __tmp96723)))))
                                             (_E9626396289_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9626296269_))
                                                    (let ((_e9626596277_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9626296269_))))
                                                      (let ((_hd9626696280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9626596277_)))
                    (_tl9626796282_
                     (let () (declare (not safe)) (##cdr _e9626596277_))))
                (let* ((_rest-hd96285_ _hd9626696280_)
                       (_rest-tl96287_ _tl9626796282_))
                  (if '#t
                      (if (_is-e?96197_ _rest-hd96285_)
                          (let ((__tmp96731
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96261_ '1))))
                            (declare (not safe))
                            (_lp96258_ _rest-tl96287_ __tmp96731))
                          (if (fxpositive? _depth96261_)
                              (let ((__tmp96730
                                     (let ()
                                       (declare (not safe))
                                       (_recur96191_ _hd96226_ _is-e?96197_)))
                                    (__tmp96729
                                     (let ()
                                       (declare (not safe))
                                       (_recur96191_
                                        _rest96260_
                                        _is-e?96197_))))
                                (declare (not safe))
                                (_make-splice96190_
                                 _e96196_
                                 _depth96261_
                                 __tmp96730
                                 __tmp96729))
                              (let ((__tmp96728
                                     (let ()
                                       (declare (not safe))
                                       (_recur96191_ _hd96226_ _is-e?96197_)))
                                    (__tmp96727
                                     (let ()
                                       (declare (not safe))
                                       (_recur96191_
                                        _rest96260_
                                        _is-e?96197_))))
                                (declare (not safe))
                                (_make-cons96189_ __tmp96728 __tmp96727))))
                      (let () (declare (not safe)) (_E9626496273_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9626496273_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9626396289_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9620596214_))))))
                      (let () (declare (not safe)) (_E9620596214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9620496293_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96196_))
                                                    (let ((_g96720_
                                                           (let ((__tmp96722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96196_)))))
                     (declare (not safe))
                     (_recur96191_ __tmp96722 _is-e?96197_))))
              (begin
                (let ((_g96721_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96720_)
                             (##vector-length _g96720_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96721_ 2)))
                      (error "Context expects 2 values" _g96721_)))
                (let ((_e96297_
                       (let () (declare (not safe)) (##vector-ref _g96720_ 0)))
                      (_vars96298_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96720_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96297_))
                          _vars96298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96196_))
                                                        (let ((_g96717_
                                                               (let ((__tmp96719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96196_)))))
                         (declare (not safe))
                         (_recur96191_ __tmp96719 _is-e?96197_))))
                  (begin
                    (let ((_g96718_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96717_)
                                 (##vector-length _g96717_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96718_ 2)))
                          (error "Context expects 2 values" _g96718_)))
                    (let ((_e96300_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96717_ 0)))
                          (_vars96301_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96717_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96300_))
                              _vars96301_))))
                (values (let () (declare (not safe)) (cons 'datum _e96196_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96733_
                             (let ()
                               (declare (not safe))
                               (_recur96191_ _e96187_ gx#ellipsis?))))
                        (begin
                          (let ((_g96734_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96733_)
                                       (##vector-length _g96733_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96734_ 2)))
                                (error "Context expects 2 values" _g96734_)))
                          (let ((_tree96193_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96733_ 0)))
                                (_vars96194_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96733_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96194_))
                                _tree96193_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96143_
                                   _vars96194_))))))))))
          (let* ((_e9614796157_ _stx96143_)
                 (_E9614996161_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96143_))))
                 (_E9614896183_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9614796157_))
                        (let ((_e9615096165_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9614796157_))))
                          (let ((_hd9615196168_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9615096165_)))
                                (_tl9615296170_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9615096165_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9615296170_))
                                (let ((_e9615396173_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9615296170_))))
                                  (let ((_hd9615496176_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9615396173_)))
                                        (_tl9615596178_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9615396173_))))
                                    (let ((_form96181_ _hd9615496176_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9615596178_))
                                          (if '#t
                                              (let ((__tmp96736
                                                     (let ((__tmp96737
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96146_
                                                               _form96181_))))
                                                       (declare (not safe))
                                                       (_generate96145_
                                                        __tmp96737)))
                                                    (__tmp96735
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96143_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96736
                                                 __tmp96735))
                                              (let ()
                                                (declare (not safe))
                                                (_E9614996161_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9614996161_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9614996161_)))))
                        (let () (declare (not safe)) (_E9614996161_))))))
            (let () (declare (not safe)) (_E9614896183_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx95407_ _identifier=?95408_ _unwrap-e95409_ _wrap-e95410_)
        (letrec ((_generate-bindings95412_
                  (lambda (_target96007_
                           _ids96008_
                           _clauses96009_
                           _clause-ids96010_
                           _E96011_)
                    (letrec ((_generate196013_
                              (lambda (_clause96110_ _clause-id96111_ _E96112_)
                                (let ((__tmp96742
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96111_ '())))
                                      (__tmp96738
                                       (let ((__tmp96739
                                              (let ((__tmp96741
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96007_
                                                             '())))
                                                    (__tmp96740
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95414_
                                                        _target96007_
                                                        _ids96008_
                                                        _clause96110_
                                                        _E96112_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96741
                                                 __tmp96740))))
                                         (declare (not safe))
                                         (cons __tmp96739 '()))))
                                  (declare (not safe))
                                  (cons __tmp96742 __tmp96738)))))
                      (let _lp96015_ ((_rest96017_ _clauses96009_)
                                      (_rest-ids96018_ _clause-ids96010_)
                                      (_bindings96019_ '()))
                        (let* ((_rest9602096028_ _rest96017_)
                               (_else9602296036_ (lambda () _bindings96019_))
                               (_K9602496098_
                                (lambda (_rest96039_ _clause96040_)
                                  (let* ((_rest-ids9604196048_ _rest-ids96018_)
                                         (_E9604396052_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9604196048_))))
                                         (_K9604496086_
                                          (lambda (_rest-ids96055_
                                                   _clause-id96056_)
                                            (let* ((_rest-ids9605796065_
                                                    _rest-ids96055_)
                                                   (_else9605996073_
                                                    (lambda ()
                                                      (let ((__tmp96743
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196013_
                        _clause96040_
                        _clause-id96056_
                        _E96011_))))
                (declare (not safe))
                (cons __tmp96743 _bindings96019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9606196078_
                                                    (lambda (_next-clause-id96076_)
                                                      (let ((__tmp96744
                                                             (let ((__tmp96745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196013_
                               _clause96040_
                               _clause-id96056_
                               _next-clause-id96076_))))
                       (declare (not safe))
                       (cons __tmp96745 _bindings96019_))))
                (declare (not safe))
                (_lp96015_ _rest96039_ _rest-ids96055_ __tmp96744)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9605796065_))
                                                  (let* ((_hd9606296081_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9605796065_)))
                                                         (_next-clause-id96084_
                                                          _hd9606296081_))
                                                    (declare (not safe))
                                                    (_K9606196078_
                                                     _next-clause-id96084_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9605996073_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9604196048_))
                                        (let ((_hd9604596089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9604196048_)))
                                              (_tl9604696091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9604196048_))))
                                          (let* ((_clause-id96094_
                                                  _hd9604596089_)
                                                 (_rest-ids96096_
                                                  _tl9604696091_))
                                            (declare (not safe))
                                            (_K9604496086_
                                             _rest-ids96096_
                                             _clause-id96094_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9604396052_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9602096028_))
                              (let ((_hd9602596101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9602096028_)))
                                    (_tl9602696103_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9602096028_))))
                                (let* ((_clause96106_ _hd9602596101_)
                                       (_rest96108_ _tl9602696103_))
                                  (declare (not safe))
                                  (_K9602496098_ _rest96108_ _clause96106_)))
                              (let ()
                                (declare (not safe))
                                (_else9602296036_))))))))
                 (_generate-body95413_
                  (lambda (_bindings95967_ _body95968_)
                    (let _recur95970_ ((_rest95972_ _bindings95967_))
                      (let* ((_rest9597395981_ _rest95972_)
                             (_else9597595989_ (lambda () _body95968_))
                             (_K9597795995_
                              (lambda (_rest95992_ _hd95993_)
                                (let ((__tmp96747
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd95993_ '())))
                                      (__tmp96746
                                       (let ()
                                         (declare (not safe))
                                         (_recur95970_ _rest95992_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96747
                                   __tmp96746)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9597395981_))
                            (let ((_hd9597895998_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9597395981_)))
                                  (_tl9597996000_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9597395981_))))
                              (let* ((_hd96003_ _hd9597895998_)
                                     (_rest96005_ _tl9597996000_))
                                (declare (not safe))
                                (_K9597795995_ _rest96005_ _hd96003_)))
                            (let ()
                              (declare (not safe))
                              (_else9597595989_)))))))
                 (_generate-clause95414_
                  (lambda (_target95830_ _ids95831_ _clause95832_ _E95833_)
                    (letrec ((_generate195835_
                              (lambda (_hd95922_ _fender95923_ _body95924_)
                                (let ((_g96748_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95416_
                                          _hd95922_
                                          _ids95831_))))
                                  (begin
                                    (let ((_g96749_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96748_)
                                                 (##vector-length _g96748_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96749_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96749_)))
                                    (let ((_e95926_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96748_ 0)))
                                          (_mvars95927_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96748_ 1))))
                                      (let* ((_pvars95929_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars95927_))))
                                             (_E95931_
                                              (let ((__tmp96750
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95830_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E95833_ __tmp96750)))
                                             (_K95964_
                                              (let ((__tmp96751
                                                     (let ((__tmp96753
                                                            (map (lambda (_mvar95933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar95934_)
                           (let* ((_mvar9593595942_ _mvar95933_)
                                  (_E9593795946_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9593595942_))))
                                  (_K9593895952_
                                   (lambda (_depth95949_ _id95950_)
                                     (let ((__tmp96754
                                            (let ((__tmp96755
                                                   (let ((__tmp96757
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id95950_)))
                                                         (__tmp96756
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar95934_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96757
                                                      __tmp96756
                                                      _depth95949_))))
                                              (declare (not safe))
                                              (cons __tmp96755 '()))))
                                       (declare (not safe))
                                       (cons _id95950_ __tmp96754)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9593595942_))
                                 (let ((_hd9593995955_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9593595942_)))
                                       (_tl9594095957_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9593595942_))))
                                   (let* ((_id95960_ _hd9593995955_)
                                          (_depth95962_ _tl9594095957_))
                                     (declare (not safe))
                                     (_K9593895952_ _depth95962_ _id95960_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9593795946_)))))
                         _mvars95927_
                         _pvars95929_))
                   (__tmp96752
                    (if (let () (declare (not safe)) (eq? _fender95923_ '#t))
                        _body95924_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender95923_
                           _body95924_
                           _E95931_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96753 __tmp96752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars95929_
                                                 __tmp96751))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95415_
                                           _hd95922_
                                           _target95830_
                                           _e95926_
                                           _mvars95927_
                                           _K95964_
                                           _E95931_)))))))))
                      (let* ((_e9583695856_ _clause95832_)
                             (_E9584595860_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9583695856_))))
                             (_E9583895894_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9583695856_))
                                    (let ((_e9584695864_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9583695856_))))
                                      (let ((_hd9584795867_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9584695864_)))
                                            (_tl9584895869_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9584695864_))))
                                        (let ((_hd95872_ _hd9584795867_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9584895869_))
                                              (let ((_e9584995874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9584895869_))))
                                                (let ((_hd9585095877_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9584995874_)))
                                                      (_tl9585195879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9584995874_))))
                                                  (let ((_fender95882_
                                                         _hd9585095877_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9585195879_))
                                                        (let ((_e9585295884_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9585195879_))))
                  (let ((_hd9585395887_
                         (let () (declare (not safe)) (##car _e9585295884_)))
                        (_tl9585495889_
                         (let () (declare (not safe)) (##cdr _e9585295884_))))
                    (let ((_body95892_ _hd9585395887_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9585495889_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate195835_
                                 _hd95872_
                                 _fender95882_
                                 _body95892_))
                              (let () (declare (not safe)) (_E9584595860_)))
                          (let () (declare (not safe)) (_E9584595860_))))))
                (let () (declare (not safe)) (_E9584595860_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9584595860_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9584595860_)))))
                             (_E9583795918_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9583695856_))
                                    (let ((_e9583995898_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9583695856_))))
                                      (let ((_hd9584095901_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9583995898_)))
                                            (_tl9584195903_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9583995898_))))
                                        (let ((_hd95906_ _hd9584095901_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9584195903_))
                                              (let ((_e9584295908_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9584195903_))))
                                                (let ((_hd9584395911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9584295908_)))
                                                      (_tl9584495913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9584295908_))))
                                                  (let ((_body95916_
                                                         _hd9584395911_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9584495913_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate195835_
                                                               _hd95906_
                                                               '#t
                                                               _body95916_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9583895894_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9583895894_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9583895894_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9583895894_))))))
                        (let () (declare (not safe)) (_E9583795918_))))))
                 (_generate-match95415_
                  (lambda (_where95579_
                           _target95580_
                           _hd95581_
                           _mvars95582_
                           _K95583_
                           _E95584_)
                    (letrec ((_BUG95586_
                              (lambda (_q95828_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx95407_
                                         _hd95581_
                                         _q95828_))))
                             (_recur95587_
                              (lambda (_e95678_
                                       _vars95679_
                                       _target95680_
                                       _E95681_
                                       _k95682_)
                                (let* ((_e9568395690_ _e95678_)
                                       (_E9568595694_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9568395690_))))
                                       (_K9568695816_
                                        (lambda (_body95697_ _tag95698_)
                                          (let ((_$e95700_ _tag95698_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95700_))
                                                (_k95682_ _vars95679_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95700_))
                                                    (let ((__tmp96864
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95680_)))
                                                          (__tmp96860
                                                           (let ((__tmp96862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96863
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95410_ _body95697_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?95408_
                             __tmp96863
                             _target95680_)))
                         (__tmp96861 (_k95682_ _vars95679_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp96862 __tmp96861 _E95681_))))
              (declare (not safe))
              (gx#core-list 'if __tmp96864 __tmp96860 _E95681_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95700_))
                                                        (_k95682_
                                                         (let ((__tmp96859
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95697_ _target95680_))))
                   (declare (not safe))
                   (cons __tmp96859 _vars95679_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95700_))
                    (let ((_$e95703_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95704_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95705_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp96858
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95680_)))
                            (__tmp96839
                             (let ((__tmp96853
                                    (let ((__tmp96854
                                           (let ((__tmp96857
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95703_ '())))
                                                 (__tmp96855
                                                  (let ((__tmp96856
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95409_
                                                            _target95680_))))
                                                    (declare (not safe))
                                                    (cons __tmp96856 '()))))
                                             (declare (not safe))
                                             (cons __tmp96857 __tmp96855))))
                                      (declare (not safe))
                                      (cons __tmp96854 '())))
                                   (__tmp96840
                                    (let ((__tmp96843
                                           (let ((__tmp96849
                                                  (let ((__tmp96852
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp96850
                 (let ((__tmp96851
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95703_))))
                   (declare (not safe))
                   (cons __tmp96851 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96852
                                                          __tmp96850)))
                                                 (__tmp96844
                                                  (let ((__tmp96845
                                                         (let ((__tmp96848
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95705_ '())))
                       (__tmp96846
                        (let ((__tmp96847
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95703_))))
                          (declare (not safe))
                          (cons __tmp96847 '()))))
                   (declare (not safe))
                   (cons __tmp96848 __tmp96846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96845 '()))))
                                             (declare (not safe))
                                             (cons __tmp96849 __tmp96844)))
                                          (__tmp96841
                                           (let* ((_body9570695713_
                                                   _body95697_)
                                                  (_E9570895717_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9570695713_))))
                                                  (_K9570995725_
                                                   (lambda (_tl95720_
                                                            _hd95721_)
                                                     (let ((__tmp96842
                                                            (lambda (_vars95723_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95587_
                         _tl95720_
                         _vars95723_
                         _$tl95705_
                         _E95681_
                         _k95682_)))))
               (declare (not safe))
               (_recur95587_
                _hd95721_
                _vars95679_
                _$hd95704_
                _E95681_
                __tmp96842)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9570695713_))
                                                 (let ((_hd9571095728_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9570695713_)))
                                                       (_tl9571195730_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9570695713_))))
                                                   (let* ((_hd95733_
                                                           _hd9571095728_)
                                                          (_tl95735_
                                                           _tl9571195730_))
                                                     (declare (not safe))
                                                     (_K9570995725_
                                                      _tl95735_
                                                      _hd95733_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9570895717_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp96843
                                       __tmp96841))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp96853
                                __tmp96840))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp96858 __tmp96839 _E95681_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95700_))
                        (let* ((_body9573695743_ _body95697_)
                               (_E9573895747_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9573695743_))))
                               (_K9573995798_
                                (lambda (_tl95750_ _hd95751_)
                                  (let* ((_rlen95753_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95588_ _tl95750_)))
                                         (_$target95755_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95757_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95759_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95761_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95763_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95765_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95767_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars95769_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95589_ _hd95751_)))
                                         (_lvars95771_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95769_)))
                                         (_tlvars95773_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95769_)))
                                         (_linit95777_
                                          (map (lambda (_var95775_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars95771_)))
                                    (letrec ((_make-loop95780_
                                              (lambda (_vars95784_)
                                                (let ((__tmp96790
                                                       (let ((__tmp96791
                                                              (let ((__tmp96827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95761_ '())))
                            (__tmp96792
                             (let ((__tmp96793
                                    (let ((__tmp96826
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95757_ _lvars95771_)))
                                          (__tmp96794
                                           (let ((__tmp96825
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95757_)))
                                                 (__tmp96803
                                                  (let ((__tmp96820
                                                         (let ((__tmp96821
                                                                (let ((__tmp96824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95763_ '())))
                              (__tmp96822
                               (let ((__tmp96823
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95409_
                                         _$hd95757_))))
                                 (declare (not safe))
                                 (cons __tmp96823 '()))))
                          (declare (not safe))
                          (cons __tmp96824 __tmp96822))))
                   (declare (not safe))
                   (cons __tmp96821 '())))
                (__tmp96804
                 (let ((__tmp96810
                        (let ((__tmp96816
                               (let ((__tmp96819
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95765_ '())))
                                     (__tmp96817
                                      (let ((__tmp96818
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95763_))))
                                        (declare (not safe))
                                        (cons __tmp96818 '()))))
                                 (declare (not safe))
                                 (cons __tmp96819 __tmp96817)))
                              (__tmp96811
                               (let ((__tmp96812
                                      (let ((__tmp96815
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95767_ '())))
                                            (__tmp96813
                                             (let ((__tmp96814
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95763_))))
                                               (declare (not safe))
                                               (cons __tmp96814 '()))))
                                        (declare (not safe))
                                        (cons __tmp96815 __tmp96813))))
                                 (declare (not safe))
                                 (cons __tmp96812 '()))))
                          (declare (not safe))
                          (cons __tmp96816 __tmp96811)))
                       (__tmp96805
                        (let ((__tmp96806
                               (lambda (_hdvars95786_)
                                 (let ((__tmp96807
                                        (let ((__tmp96808
                                               (map (lambda (_svar95788_
                                                             _lvar95789_)
                                                      (let ((__tmp96809
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar95788_ _hdvars95786_ _BUG95586_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp96809 _lvar95789_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars95769_
                                                    _lvars95771_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95767_ __tmp96808))))
                                   (declare (not safe))
                                   (cons _$lp95761_ __tmp96807)))))
                          (declare (not safe))
                          (_recur95587_
                           _hd95751_
                           '()
                           _$lp-hd95765_
                           _E95681_
                           __tmp96806))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp96810 __tmp96805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96820
                                                     __tmp96804)))
                                                 (__tmp96795
                                                  (let ((__tmp96799
                                                         (map (lambda (_lvar95791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar95792_)
                        (let ((__tmp96802
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar95792_ '())))
                              (__tmp96800
                               (let ((__tmp96801
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar95791_))))
                                 (declare (not safe))
                                 (cons __tmp96801 '()))))
                          (declare (not safe))
                          (cons __tmp96802 __tmp96800)))
                      _lvars95771_
                      _tlvars95773_))
                (__tmp96796
                 (_k95682_
                  (let ((__tmp96797
                         (lambda (_svar95794_ _tlvar95795_ _r95796_)
                           (let ((__tmp96798
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar95794_ _tlvar95795_))))
                             (declare (not safe))
                             (cons __tmp96798 _r95796_)))))
                    (declare (not safe))
                    (foldl2 __tmp96797
                            _vars95784_
                            _svars95769_
                            _tlvars95773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96799
                                                     __tmp96796))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp96825
                                              __tmp96803
                                              __tmp96795))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp96826
                                       __tmp96794))))
                               (declare (not safe))
                               (cons __tmp96793 '()))))
                        (declare (not safe))
                        (cons __tmp96827 __tmp96792))))
                 (declare (not safe))
                 (cons __tmp96791 '())))
              (__tmp96788
               (let ((__tmp96789
                      (let ()
                        (declare (not safe))
                        (cons _$target95755_ _linit95777_))))
                 (declare (not safe))
                 (cons _$lp95761_ __tmp96789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp96790
                                                   __tmp96788)))))
                                      (let ((_body95782_
                                             (let ((__tmp96829
                                                    (let ((__tmp96830
                                                           (let ((__tmp96833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96834
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95759_ '()))))
                            (declare (not safe))
                            (cons _$target95755_ __tmp96834)))
                         (__tmp96831
                          (let ((__tmp96832
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95680_
                                    _rlen95753_))))
                            (declare (not safe))
                            (cons __tmp96832 '()))))
                     (declare (not safe))
                     (cons __tmp96833 __tmp96831))))
              (declare (not safe))
              (cons __tmp96830 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96828
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95587_
                                                       _tl95750_
                                                       _vars95679_
                                                       _$tl95759_
                                                       _E95681_
                                                       _make-loop95780_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96829
                                                __tmp96828))))
                                        (let ((__tmp96838
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95680_)))
                                              (__tmp96835
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95753_))
                                                   _body95782_
                                                   (let ((__tmp96836
                                                          (let ((__tmp96837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95680_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp96837 _rlen95753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp96836
                                                      _body95782_
                                                      _E95681_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp96838
                                           __tmp96835
                                           _E95681_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9573695743_))
                              (let ((_hd9574095801_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9573695743_)))
                                    (_tl9574195803_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9573695743_))))
                                (let* ((_hd95806_ _hd9574095801_)
                                       (_tl95808_ _tl9574195803_))
                                  (declare (not safe))
                                  (_K9573995798_ _tl95808_ _hd95806_)))
                              (let () (declare (not safe)) (_E9573895747_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95700_))
                            (let ((__tmp96787
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95680_)))
                                  (__tmp96786 (_k95682_ _vars95679_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp96787
                               __tmp96786
                               _E95681_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95700_))
                                (let ((_$e95810_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp96785
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95680_)))
                                        (__tmp96777
                                         (let ((__tmp96779
                                                (let ((__tmp96780
                                                       (let ((__tmp96784
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e95810_ '())))
                     (__tmp96781
                      (let ((__tmp96782
                             (let ((__tmp96783
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95409_
                                       _target95680_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp96783))))
                        (declare (not safe))
                        (cons __tmp96782 '()))))
                 (declare (not safe))
                 (cons __tmp96784 __tmp96781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96780 '())))
                                               (__tmp96778
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95587_
                                                   _body95697_
                                                   _vars95679_
                                                   _$e95810_
                                                   _E95681_
                                                   _k95682_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp96779
                                            __tmp96778))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp96785
                                     __tmp96777
                                     _E95681_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95700_))
                                    (let ((_$e95812_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp96776
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95680_)))
                                            (__tmp96768
                                             (let ((__tmp96770
                                                    (let ((__tmp96771
                                                           (let ((__tmp96775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e95812_ '())))
                         (__tmp96772
                          (let ((__tmp96773
                                 (let ((__tmp96774
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95409_
                                           _target95680_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp96774))))
                            (declare (not safe))
                            (cons __tmp96773 '()))))
                     (declare (not safe))
                     (cons __tmp96775 __tmp96772))))
              (declare (not safe))
              (cons __tmp96771 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96769
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95587_
                                                       _body95697_
                                                       _vars95679_
                                                       _$e95812_
                                                       _E95681_
                                                       _k95682_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96770
                                                __tmp96769))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp96776
                                         __tmp96768
                                         _E95681_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95700_))
                                        (let ((_$e95814_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96767
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95680_)))
                                                (__tmp96758
                                                 (let ((__tmp96762
                                                        (let ((__tmp96763
                                                               (let ((__tmp96766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e95814_ '())))
                             (__tmp96764
                              (let ((__tmp96765
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95680_))))
                                (declare (not safe))
                                (cons __tmp96765 '()))))
                         (declare (not safe))
                         (cons __tmp96766 __tmp96764))))
                  (declare (not safe))
                  (cons __tmp96763 '())))
               (__tmp96759
                (let ((__tmp96761
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e95814_ _body95697_)))
                      (__tmp96760 (_k95682_ _vars95679_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96761 __tmp96760 _E95681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96762
                                                    __tmp96759))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96767
                                             __tmp96758
                                             _E95681_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95586_ _e95678_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9568395690_))
                                      (let ((_hd9568795819_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9568395690_)))
                                            (_tl9568895821_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9568395690_))))
                                        (let* ((_tag95824_ _hd9568795819_)
                                               (_body95826_ _tl9568895821_))
                                          (declare (not safe))
                                          (_K9568695816_
                                           _body95826_
                                           _tag95824_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9568595694_))))))
                             (_splice-rlen95588_
                              (lambda (_e95640_)
                                (let _lp95642_ ((_e95644_ _e95640_)
                                                (_n95645_ '0))
                                  (let* ((_e9564695653_ _e95644_)
                                         (_E9564895657_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9564695653_))))
                                         (_K9564995666_
                                          (lambda (_body95660_ _tag95661_)
                                            (let ((_$e95663_ _tag95661_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95663_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx95407_
                                                     _where95579_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95663_))
                                                      (let ((__tmp96866
                                                             (cdr _body95660_))
                                                            (__tmp96865
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95645_ '1))))
                (declare (not safe))
                (_lp95642_ __tmp96866 __tmp96865))
              _n95645_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9564695653_))
                                        (let ((_hd9565095669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9564695653_)))
                                              (_tl9565195671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9564695653_))))
                                          (let* ((_tag95674_ _hd9565095669_)
                                                 (_body95676_ _tl9565195671_))
                                            (declare (not safe))
                                            (_K9564995666_
                                             _body95676_
                                             _tag95674_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9564895657_)))))))
                             (_splice-vars95589_
                              (lambda (_e95596_)
                                (let _recur95598_ ((_e95600_ _e95596_)
                                                   (_vars95601_ '()))
                                  (let* ((_e9560295609_ _e95600_)
                                         (_E9560495613_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9560295609_))))
                                         (_K9560595628_
                                          (lambda (_body95616_ _tag95617_)
                                            (let ((_$e95619_ _tag95617_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95619_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95616_
                                                          _vars95601_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95619_))
                  (let () (declare (not safe)) (eq? 'splice _$e95619_)))
              (let ((__tmp96869 (cdr _body95616_))
                    (__tmp96867
                     (let ((__tmp96868 (car _body95616_)))
                       (declare (not safe))
                       (_recur95598_ __tmp96868 _vars95601_))))
                (declare (not safe))
                (_recur95598_ __tmp96869 __tmp96867))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95619_))
                      (let () (declare (not safe)) (eq? 'box _$e95619_)))
                  (let ()
                    (declare (not safe))
                    (_recur95598_ _body95616_ _vars95601_))
                  _vars95601_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9560295609_))
                                        (let ((_hd9560695631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9560295609_)))
                                              (_tl9560795633_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9560295609_))))
                                          (let* ((_tag95636_ _hd9560695631_)
                                                 (_body95638_ _tl9560795633_))
                                            (declare (not safe))
                                            (_K9560595628_
                                             _body95638_
                                             _tag95636_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9560495613_)))))))
                             (_make-body95590_
                              (lambda (_vars95592_)
                                (let ((__tmp96870
                                       (map (lambda (_mvar95594_)
                                              (let ((__tmp96871
                                                     (car _mvar95594_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp96871
                                                 _vars95592_
                                                 _BUG95586_)))
                                            _mvars95582_)))
                                  (declare (not safe))
                                  (cons _K95583_ __tmp96870)))))
                      (let ()
                        (declare (not safe))
                        (_recur95587_
                         _hd95581_
                         '()
                         _target95580_
                         _E95584_
                         _make-body95590_)))))
                 (_parse-clause95416_
                  (lambda (_hd95485_ _ids95486_)
                    (let _recur95488_ ((_e95490_ _hd95485_)
                                       (_vars95491_ '())
                                       (_depth95492_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95490_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95490_))
                              (values '(any) _vars95491_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95490_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx95407_
                                     _hd95485_))
                                  (if (let ((__tmp96887
                                             (lambda (_id95494_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95490_
                                                  _id95494_)))))
                                        (declare (not safe))
                                        (find __tmp96887 _ids95486_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95490_))
                                              _vars95491_)
                                      (if (let ((__tmp96885
                                                 (lambda (_var95496_)
                                                   (let ((__tmp96886
                                                          (car _var95496_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95490_
                                                      __tmp96886)))))
                                            (declare (not safe))
                                            (find __tmp96885 _vars95491_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx95407_
                                             _e95490_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95490_))
                                                  (let ((__tmp96884
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96884
                                                          _vars95491_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95490_))
                              (let* ((_e9549795504_ _e95490_)
                                     (_E9549995508_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9549795504_))))
                                     (_E9549895569_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9549795504_))
                                            (let ((_e9550095512_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9549795504_))))
                                              (let ((_hd9550195515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9550095512_)))
                                                    (_tl9550295517_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9550095512_))))
                                                (let* ((_hd95520_
                                                        _hd9550195515_)
                                                       (_rest95522_
                                                        _tl9550295517_))
                                                  (if '#t
                                                      (let* ((_make-pair95537_
                                                              (lambda (_tag95524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95525_
                               _tl95526_)
                        (let* ((_hd-depth95528_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95524_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95492_ '1))
                                    _depth95492_))
                               (_g96879_
                                (let ()
                                  (declare (not safe))
                                  (_recur95488_
                                   _hd95525_
                                   _vars95491_
                                   _hd-depth95528_))))
                          (begin
                            (let ((_g96880_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g96879_)
                                         (##vector-length _g96879_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g96880_ 2)))
                                  (error "Context expects 2 values" _g96880_)))
                            (let ((_hd95530_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96879_ 0)))
                                  (_vars95531_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96879_ 1))))
                              (let ((_g96881_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95488_
                                        _tl95526_
                                        _vars95531_
                                        _depth95492_))))
                                (begin
                                  (let ((_g96882_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g96881_)
                                               (##vector-length _g96881_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g96882_ 2)))
                                        (error "Context expects 2 values"
                                               _g96882_)))
                                  (let ((_tl95533_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96881_ 0)))
                                        (_vars95534_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96881_ 1))))
                                    (let ()
                                      (values (let ((__tmp96883
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95530_
                                                             _tl95533_))))
                                                (declare (not safe))
                                                (cons _tag95524_ __tmp96883))
                                              _vars95534_))))))))))
                     (_e9553895545_ _rest95522_)
                     (_E9554095549_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95537_ 'cons _hd95520_ _rest95522_))))
                     (_E9553995565_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9553895545_))
                            (let ((_e9554195553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9553895545_))))
                              (let ((_hd9554295556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9554195553_)))
                                    (_tl9554395558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9554195553_))))
                                (let* ((_rest-hd95561_ _hd9554295556_)
                                       (_rest-tl95563_ _tl9554395558_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95561_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95537_
                                             'splice
                                             _hd95520_
                                             _rest-tl95563_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95537_
                                             'cons
                                             _hd95520_
                                             _rest95522_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9554095549_))))))
                            (let () (declare (not safe)) (_E9554095549_))))))
                (let () (declare (not safe)) (_E9553995565_)))
              (let () (declare (not safe)) (_E9549995508_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9549995508_))))))
                                (let () (declare (not safe)) (_E9549895569_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95490_))
                                  (values '(null) _vars95491_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95490_))
                                      (let ((_g96876_
                                             (let ((__tmp96878
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95490_)))))
                                               (declare (not safe))
                                               (_recur95488_
                                                __tmp96878
                                                _vars95491_
                                                _depth95492_))))
                                        (begin
                                          (let ((_g96877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96876_)
                                                       (##vector-length
                                                        _g96876_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96877_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96877_)))
                                          (let ((_e95573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96876_ 0)))
                                                (_vars95574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96876_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95573_))
                                                    _vars95574_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95490_))
                                          (let ((_g96873_
                                                 (let ((__tmp96875
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95490_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95488_
                                                    __tmp96875
                                                    _vars95491_
                                                    _depth95492_))))
                                            (begin
                                              (let ((_g96874_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g96873_)
                                                           (##vector-length
                                                            _g96873_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g96874_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g96874_)))
                                              (let ((_e95576_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96873_
                                                        0)))
                                                    (_vars95577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96873_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95576_))
                                                        _vars95577_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95490_))
                                              (values (let ((__tmp96872
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95490_))))
                (declare (not safe))
                (cons 'datum __tmp96872))
              _vars95491_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx95407_
                                                 _e95490_))))))))))))
          (let* ((_e9541795430_ _stx95407_)
                 (_E9541995434_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9541795430_))))
                 (_E9541895481_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9541795430_))
                        (let ((_e9542095438_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9541795430_))))
                          (let ((_hd9542195441_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9542095438_)))
                                (_tl9542295443_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9542095438_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9542295443_))
                                (let ((_e9542395446_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9542295443_))))
                                  (let ((_hd9542495449_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9542395446_)))
                                        (_tl9542595451_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9542395446_))))
                                    (let ((_expr95454_ _hd9542495449_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9542595451_))
                                          (let ((_e9542695456_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9542595451_))))
                                            (let ((_hd9542795459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9542695456_)))
                                                  (_tl9542895461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9542695456_))))
                                              (let* ((_ids95464_
                                                      _hd9542795459_)
                                                     (_clauses95466_
                                                      _tl9542895461_))
                                                (if '#t
                                                    (if (let ((__tmp96905
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95464_))))
                  (declare (not safe))
                  (not __tmp96905))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx95407_
                   _ids95464_))
                (if (let ((__tmp96904
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95466_))))
                      (declare (not safe))
                      (not __tmp96904))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx95407_))
                    (let* ((_ids95468_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95464_)))
                           (_clauses95470_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95466_)))
                           (_clause-ids95472_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95470_)))
                           (_E95474_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95476_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95478_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95470_))
                                _E95474_
                                (car _clause-ids95472_))))
                      (let ((__tmp96889
                             (let ((__tmp96890
                                    (let ((__tmp96892
                                           (let ((__tmp96897
                                                  (let ((__tmp96898
                                                         (let ((__tmp96903
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95474_ '())))
                       (__tmp96899
                        (let ((__tmp96900
                               (let ((__tmp96902
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95476_ '())))
                                     (__tmp96901
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95476_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp96902
                                  __tmp96901))))
                          (declare (not safe))
                          (cons __tmp96900 '()))))
                   (declare (not safe))
                   (cons __tmp96903 __tmp96899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96898 '())))
                                                 (__tmp96893
                                                  (let ((__tmp96896
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95412_
                                                            _target95476_
                                                            _ids95468_
                                                            _clauses95470_
                                                            _clause-ids95472_
                                                            _E95474_)))
                                                        (__tmp96894
                                                         (let ((__tmp96895
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95454_ '()))))
                   (declare (not safe))
                   (cons _first95478_ __tmp96895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95413_
                                                     __tmp96896
                                                     __tmp96894))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp96897
                                              __tmp96893)))
                                          (__tmp96891
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx95407_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp96892
                                       __tmp96891))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp96890)))
                            (__tmp96888
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx95407_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp96889 __tmp96888)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9541995434_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9541995434_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9541995434_)))))
                        (let () (declare (not safe)) (_E9541995434_))))))
            (let () (declare (not safe)) (_E9541895481_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96117_)
        (let* ((_identifier=?96119_ 'free-identifier=?)
               (_unwrap-e96121_ 'syntax-e)
               (_wrap-e96123_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96117_
           _identifier=?96119_
           _unwrap-e96121_
           _wrap-e96123_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96125_ _identifier=?96126_)
        (let* ((_unwrap-e96128_ 'syntax-e) (_wrap-e96130_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96125_
           _identifier=?96126_
           _unwrap-e96128_
           _wrap-e96130_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96132_ _identifier=?96133_ _unwrap-e96134_)
        (let ((_wrap-e96136_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96132_
           _identifier=?96133_
           _unwrap-e96134_
           _wrap-e96136_))))
    (define gx#macro-expand-syntax-case
      (lambda _g96907_
        (let ((_g96906_ (let () (declare (not safe)) (##length _g96907_))))
          (cond ((let () (declare (not safe)) (##fx= _g96906_ 1))
                 (apply (lambda (_stx96117_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96117_)))
                        _g96907_))
                ((let () (declare (not safe)) (##fx= _g96906_ 2))
                 (apply (lambda (_stx96125_ _identifier=?96126_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96125_
                             _identifier=?96126_)))
                        _g96907_))
                ((let () (declare (not safe)) (##fx= _g96906_ 3))
                 (apply (lambda (_stx96132_
                                 _identifier=?96133_
                                 _unwrap-e96134_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96132_
                             _identifier=?96133_
                             _unwrap-e96134_)))
                        _g96907_))
                ((let () (declare (not safe)) (##fx= _g96906_ 4))
                 (apply (lambda (_stx96138_
                                 _identifier=?96139_
                                 _unwrap-e96140_
                                 _wrap-e96141_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96138_
                             _identifier=?96139_
                             _unwrap-e96140_
                             _wrap-e96141_)))
                        _g96907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g96907_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx95404_)
        (if (let () (declare (not safe)) (gx#identifier? _stx95404_))
            (let ((__tmp96908
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx95404_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp96908 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd95362_ . _rest95363_)
        (let ((_len95365_ (length _hd95362_)))
          (let _lp95367_ ((_rest95369_ _rest95363_))
            (let* ((_rest9537095378_ _rest95369_)
                   (_else9537295386_ (lambda () '#!void))
                   (_K9537495392_
                    (lambda (_rest95389_ _hd95390_)
                      (if (fx= _len95365_ (length _hd95390_))
                          (let () (declare (not safe)) (_lp95367_ _rest95389_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd95390_))))))
              (if (let () (declare (not safe)) (##pair? _rest9537095378_))
                  (let ((_hd9537595395_
                         (let ()
                           (declare (not safe))
                           (##car _rest9537095378_)))
                        (_tl9537695397_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9537095378_))))
                    (let* ((_hd95400_ _hd9537595395_)
                           (_rest95402_ _tl9537695397_))
                      (declare (not safe))
                      (_K9537495392_ _rest95402_ _hd95400_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95320_ _n95321_)
        (let _lp95323_ ((_rest95325_ _stx95320_) (_r95326_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95325_))
              (let* ((_g9532795334_
                      (let () (declare (not safe)) (gx#syntax-e _rest95325_)))
                     (_E9532995338_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9532795334_))))
                     (_K9533095344_
                      (lambda (_rest95341_ _hd95342_)
                        (let ((__tmp96913
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95342_ _r95326_))))
                          (declare (not safe))
                          (_lp95323_ _rest95341_ __tmp96913)))))
                (if (let () (declare (not safe)) (##pair? _g9532795334_))
                    (let ((_hd9533195347_
                           (let () (declare (not safe)) (##car _g9532795334_)))
                          (_tl9533295349_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9532795334_))))
                      (let* ((_hd95352_ _hd9533195347_)
                             (_rest95354_ _tl9533295349_))
                        (declare (not safe))
                        (_K9533095344_ _rest95354_ _hd95352_)))
                    (let () (declare (not safe)) (_E9532995338_))))
              (let _lp95356_ ((_n95358_ _n95321_)
                              (_l95359_ _r95326_)
                              (_r95360_ _rest95325_))
                (if (let () (declare (not safe)) (null? _l95359_))
                    (values _l95359_ _r95360_)
                    (if (fxpositive? _n95358_)
                        (let ((__tmp96912
                               (let () (declare (not safe)) (fx- _n95358_ '1)))
                              (__tmp96911 (cdr _l95359_))
                              (__tmp96909
                               (let ((__tmp96910 (car _l95359_)))
                                 (declare (not safe))
                                 (cons __tmp96910 _r95360_))))
                          (declare (not safe))
                          (_lp95356_ __tmp96912 __tmp96911 __tmp96909))
                        (values (reverse _l95359_) _r95360_))))))))))
