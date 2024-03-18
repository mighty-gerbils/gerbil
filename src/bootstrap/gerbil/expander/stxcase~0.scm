(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710770269)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98601 (list gx#expander::t))
            (__tmp98599
             (let ((__tmp98600
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98600 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98601
         '(id depth)
         __tmp98599
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98596_
        (apply make-instance gx#syntax-pattern::t _$args98596_)))
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
      (lambda (_self98593_ _stx98594_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98594_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx98075_)
        (letrec ((_generate98077_
                  (lambda (_e98304_)
                    (letrec ((_BUG98306_
                              (lambda (_q98468_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx98075_
                                         _e98304_
                                         _q98468_))))
                             (_local-pattern-e98307_
                              (lambda (_pat98466_)
                                (let ((__tmp98602
                                       (##structure-ref
                                        _pat98466_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98602))))
                             (_getvar98308_
                              (lambda (_q98463_ _vars98464_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98463_
                                   _vars98464_
                                   _BUG98306_))))
                             (_getarg98309_
                              (lambda (_arg98429_ _vars98430_)
                                (let* ((_arg9843198438_ _arg98429_)
                                       (_E9843398442_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9843198438_))))
                                       (_K9843498451_
                                        (lambda (_e98445_ _tag98446_)
                                          (let ((_$e98448_ _tag98446_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98448_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98308_
                                                   _e98445_
                                                   _vars98430_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98448_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98307_
                                                       _e98445_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98306_
                                                       _arg98429_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9843198438_))
                                      (let ((_hd9843598454_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9843198438_)))
                                            (_tl9843698456_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9843198438_))))
                                        (let* ((_tag98459_ _hd9843598454_)
                                               (_e98461_ _tl9843698456_))
                                          (declare (not safe))
                                          (_K9843498451_ _e98461_ _tag98459_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9843398442_)))))))
                      (let _recur98311_ ((_e98313_ _e98304_) (_vars98314_ '()))
                        (let* ((_e9831598322_ _e98313_)
                               (_E9831798326_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9831598322_))))
                               (_K9831898417_
                                (lambda (_body98329_ _tag98330_)
                                  (let ((_$e98332_ _tag98330_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98332_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98329_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98332_))
                                            (let ((_id98335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98329_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98335_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98337_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98335_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98337_))
                                                        (let ((__tmp98630
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98329_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98630))
                (let ((__tmp98629
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98329_)))
                      (__tmp98628
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98329_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98629
                   __tmp98628
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98335_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98329_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98306_
                                                         _e98313_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98332_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98307_
                                                   _body98329_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98332_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98308_
                                                       _body98329_
                                                       _vars98314_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98332_))
                                                        (let ((__tmp98626
                                                               (let ((__tmp98627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98329_)))
                         (declare (not safe))
                         (_recur98311_ __tmp98627 _vars98314_)))
                      (__tmp98624
                       (let ((__tmp98625 (cdr _body98329_)))
                         (declare (not safe))
                         (_recur98311_ __tmp98625 _vars98314_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98626 __tmp98624))
                (if (let () (declare (not safe)) (eq? 'vector _$e98332_))
                    (let ((__tmp98623
                           (let ()
                             (declare (not safe))
                             (_recur98311_ _body98329_ _vars98314_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98623))
                    (if (let () (declare (not safe)) (eq? 'box _$e98332_))
                        (let ((__tmp98622
                               (let ()
                                 (declare (not safe))
                                 (_recur98311_ _body98329_ _vars98314_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98622))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98332_))
                            (let* ((_body9833898349_ _body98329_)
                                   (_E9834098353_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9833898349_))))
                                   (_K9834198391_
                                    (lambda (_args98356_
                                             _iv98357_
                                             _hd98358_
                                             _depth98359_)
                                      (let* ((_targets98365_
                                              (map (lambda (_g9836098362_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98309_
                                                        _g9836098362_
                                                        _vars98314_)))
                                                   _args98356_))
                                             (_fold-in98367_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98356_)))
                                             (_fold-out98369_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98371_
                                              (let ((__tmp98603
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98369_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98603
                                                        _fold-in98367_)))
                                             (_lambda-body98388_
                                              (if (fx> _depth98359_ '1)
                                                  (let ((_r-args98379_
                                                         (map (lambda (_arg98373_)
                                                                (let ((__tmp98608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98373_)))
                          (declare (not safe))
                          (cons 'ref __tmp98608)))
                      _args98356_))
                (_r-vars98380_
                 (let ((__tmp98609
                        (lambda (_arg98375_ _var98376_ _r98377_)
                          (let ((__tmp98610
                                 (let ((__tmp98611 (cdr _arg98375_)))
                                   (declare (not safe))
                                   (cons __tmp98611 _var98376_))))
                            (declare (not safe))
                            (cons __tmp98610 _r98377_)))))
                   (declare (not safe))
                   (foldr2 __tmp98609
                           _vars98314_
                           _args98356_
                           _fold-in98367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98612
                                                           (let ((__tmp98613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98617
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98359_ '1)))
                                (__tmp98614
                                 (let ((__tmp98615
                                        (let ((__tmp98616
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98369_))))
                                          (declare (not safe))
                                          (cons __tmp98616 _r-args98379_))))
                                   (declare (not safe))
                                   (cons _hd98358_ __tmp98615))))
                            (declare (not safe))
                            (cons __tmp98617 __tmp98614))))
                     (declare (not safe))
                     (cons 'splice __tmp98613))))
              (declare (not safe))
              (_recur98311_ __tmp98612 _r-vars98380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98386_
                                                          (let ((__tmp98604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98382_ _var98383_ _r98384_)
                           (let ((__tmp98605
                                  (let ((__tmp98606 (cdr _arg98382_)))
                                    (declare (not safe))
                                    (cons __tmp98606 _var98383_))))
                             (declare (not safe))
                             (cons __tmp98605 _r98384_)))))
                    (declare (not safe))
                    (foldr2 __tmp98604
                            _vars98314_
                            _args98356_
                            _fold-in98367_)))
                 (__tmp98607
                  (let ()
                    (declare (not safe))
                    (_recur98311_ _hd98358_ _hd-vars98386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98607
                                                     _fold-out98369_)))))
                                        (let ((__tmp98621
                                               (if (fx> (length _targets98365_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98365_))
                                                   '#!void))
                                              (__tmp98618
                                               (let ((__tmp98620
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98371_
                                                         _lambda-body98388_)))
                                                     (__tmp98619
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98311_
                                                         _iv98357_
                                                         _vars98314_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98620
                                                  __tmp98619
                                                  _targets98365_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98621
                                           __tmp98618))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9833898349_))
                                  (let ((_hd9834298394_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9833898349_)))
                                        (_tl9834398396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9833898349_))))
                                    (let ((_depth98399_ _hd9834298394_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9834398396_))
                                          (let ((_hd9834498401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9834398396_)))
                                                (_tl9834598403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9834398396_))))
                                            (let ((_hd98406_ _hd9834498401_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9834598403_))
                                                  (let ((_hd9834698408_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9834598403_)))
                                                        (_tl9834798410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9834598403_))))
                                                    (let* ((_iv98413_
                                                            _hd9834698408_)
                                                           (_args98415_
                                                            _tl9834798410_))
                                                      (declare (not safe))
                                                      (_K9834198391_
                                                       _args98415_
                                                       _iv98413_
                                                       _hd98406_
                                                       _depth98399_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9834098353_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9834098353_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9834098353_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98332_))
                                _body98329_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98306_ _e98313_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9831598322_))
                              (let ((_hd9831998420_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9831598322_)))
                                    (_tl9832098422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9831598322_))))
                                (let* ((_tag98425_ _hd9831998420_)
                                       (_body98427_ _tl9832098422_))
                                  (declare (not safe))
                                  (_K9831898417_ _body98427_ _tag98425_)))
                              (let ()
                                (declare (not safe))
                                (_E9831798326_))))))))
                 (_parse98078_
                  (lambda (_e98119_)
                    (letrec ((_make-cons98121_
                              (lambda (_hd98296_ _tl98297_)
                                (let ((_g98631_ _hd98296_)
                                      (_g98633_ _tl98297_))
                                  (begin
                                    (let ((_g98632_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98631_)
                                                 (##vector-length _g98631_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98632_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98632_)))
                                    (let ((_g98634_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98633_)
                                                 (##vector-length _g98633_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98634_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98634_)))
                                    (let ((_hd-e98299_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98631_ 0)))
                                          (_hd-vars98300_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98631_ 1))))
                                      (let ((_tl-e98301_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98633_ 0)))
                                            (_tl-vars98302_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98633_ 1))))
                                        (values (let ((__tmp98635
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98299_
                                                               _tl-e98301_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98635))
                                                (append _hd-vars98300_
                                                        _tl-vars98302_))))))))
                             (_make-splice98122_
                              (lambda (_where98235_
                                       _depth98236_
                                       _hd98237_
                                       _tl98238_)
                                (let ((_g98636_ _hd98237_)
                                      (_g98638_ _tl98238_))
                                  (begin
                                    (let ((_g98637_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98636_)
                                                 (##vector-length _g98636_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98637_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98637_)))
                                    (let ((_g98639_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98638_)
                                                 (##vector-length _g98638_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98639_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98639_)))
                                    (let ((_hd-e98240_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98636_ 0)))
                                          (_hd-vars98241_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98636_ 1))))
                                      (let ((_tl-e98242_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98638_ 0)))
                                            (_tl-vars98243_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98638_ 1))))
                                        (let _lp98245_ ((_rest98247_
                                                         _hd-vars98241_)
                                                        (_targets98248_ '())
                                                        (_vars98249_
                                                         _tl-vars98243_))
                                          (let* ((_rest9825098260_ _rest98247_)
                                                 (_else9825298268_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98248_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx98075_
                                                           _where98235_))
                                                        (values (let ((__tmp98640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98641
                                      (let ((__tmp98642
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e98242_
                                                     _targets98248_))))
                                        (declare (not safe))
                                        (cons _hd-e98240_ __tmp98642))))
                                 (declare (not safe))
                                 (cons _depth98236_ __tmp98641))))
                          (declare (not safe))
                          (cons 'splice __tmp98640))
                        _vars98249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9825498277_
                                                  (lambda (_rest98271_
                                                           _hd-pat98272_
                                                           _hd-depth*98273_)
                                                    (let ((_hd-depth98275_
                                                           (fx- _hd-depth*98273_
                                                                _depth98236_)))
                                                      (if (fxpositive?
                                                           _hd-depth98275_)
                                                          (let ((__tmp98647
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98648
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98272_))))
                           (declare (not safe))
                           (cons __tmp98648 _targets98248_)))
                        (__tmp98645
                         (let ((__tmp98646
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98275_ _hd-pat98272_))))
                           (declare (not safe))
                           (cons __tmp98646 _vars98249_))))
                    (declare (not safe))
                    (_lp98245_ _rest98271_ __tmp98647 __tmp98645))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98275_))
                      (let ((__tmp98643
                             (let ((__tmp98644
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98272_))))
                               (declare (not safe))
                               (cons __tmp98644 _targets98248_))))
                        (declare (not safe))
                        (_lp98245_ _rest98271_ __tmp98643 _vars98249_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx98075_
                         _where98235_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9825098260_))
                                                (let ((_hd9825598280_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9825098260_)))
                                                      (_tl9825698282_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9825098260_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9825598280_))
                                                      (let ((_hd9825798285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9825598280_)))
                    (_tl9825898287_
                     (let () (declare (not safe)) (##cdr _hd9825598280_))))
                (let* ((_hd-depth*98290_ _hd9825798285_)
                       (_hd-pat98292_ _tl9825898287_)
                       (_rest98294_ _tl9825698282_))
                  (declare (not safe))
                  (_K9825498277_ _rest98294_ _hd-pat98292_ _hd-depth*98290_)))
              (let () (declare (not safe)) (_else9825298268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9825298268_)))))))))))
                             (_recur98123_
                              (lambda (_e98128_ _is-e?98129_)
                                (if (_is-e?98129_ _e98128_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx98075_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e98128_))
                                        (let* ((_pat98131_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e98128_)))
                                               (_depth98133_
                                                (##structure-ref
                                                 _pat98131_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth98133_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat98131_))
                                                      (let ((__tmp98664
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth98133_ _pat98131_))))
                (declare (not safe))
                (cons __tmp98664 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat98131_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e98128_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e98128_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e98128_))
                                                (let* ((_e9813598142_ _e98128_)
                                                       (_E9813798146_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9813598142_))))
                                                       (_E9813698225_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9813598142_))
                      (let ((_e9813898150_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9813598142_))))
                        (let ((_hd9813998153_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9813898150_)))
                              (_tl9814098155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9813898150_))))
                          (let* ((_hd98158_ _hd9813998153_)
                                 (_rest98160_ _tl9814098155_))
                            (if '#t
                                (if (_is-e?98129_ _hd98158_)
                                    (let* ((_e9816198168_ _rest98160_)
                                           (_E9816398172_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx98075_
                                                 _e98128_))))
                                           (_E9816298186_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9816198168_))
                                                  (let ((_e9816498176_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9816198168_))))
                                                    (let ((_hd9816598179_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9816498176_)))
                                                          (_tl9816698181_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9816498176_))))
                                                      (let ((_rest98184_
                                                             _hd9816598179_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9816698181_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur98123_ _rest98184_ false))
                        (let () (declare (not safe)) (_E9816398172_)))
                    (let () (declare (not safe)) (_E9816398172_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9816398172_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9816298186_)))
                                    (let _lp98190_ ((_rest98192_ _rest98160_)
                                                    (_depth98193_ '0))
                                      (let* ((_e9819498201_ _rest98192_)
                                             (_E9819698205_
                                              (lambda ()
                                                (if (fxpositive? _depth98193_)
                                                    (let ((__tmp98658
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98123_
                                                              _hd98158_
                                                              _is-e?98129_)))
                                                          (__tmp98657
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98123_
                                                              _rest98192_
                                                              _is-e?98129_))))
                                                      (declare (not safe))
                                                      (_make-splice98122_
                                                       _e98128_
                                                       _depth98193_
                                                       __tmp98658
                                                       __tmp98657))
                                                    (let ((__tmp98656
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98123_
                                                              _hd98158_
                                                              _is-e?98129_)))
                                                          (__tmp98655
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98123_
                                                              _rest98192_
                                                              _is-e?98129_))))
                                                      (declare (not safe))
                                                      (_make-cons98121_
                                                       __tmp98656
                                                       __tmp98655)))))
                                             (_E9819598221_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9819498201_))
                                                    (let ((_e9819798209_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9819498201_))))
                                                      (let ((_hd9819898212_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9819798209_)))
                    (_tl9819998214_
                     (let () (declare (not safe)) (##cdr _e9819798209_))))
                (let* ((_rest-hd98217_ _hd9819898212_)
                       (_rest-tl98219_ _tl9819998214_))
                  (if '#t
                      (if (_is-e?98129_ _rest-hd98217_)
                          (let ((__tmp98663
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth98193_ '1))))
                            (declare (not safe))
                            (_lp98190_ _rest-tl98219_ __tmp98663))
                          (if (fxpositive? _depth98193_)
                              (let ((__tmp98662
                                     (let ()
                                       (declare (not safe))
                                       (_recur98123_ _hd98158_ _is-e?98129_)))
                                    (__tmp98661
                                     (let ()
                                       (declare (not safe))
                                       (_recur98123_
                                        _rest98192_
                                        _is-e?98129_))))
                                (declare (not safe))
                                (_make-splice98122_
                                 _e98128_
                                 _depth98193_
                                 __tmp98662
                                 __tmp98661))
                              (let ((__tmp98660
                                     (let ()
                                       (declare (not safe))
                                       (_recur98123_ _hd98158_ _is-e?98129_)))
                                    (__tmp98659
                                     (let ()
                                       (declare (not safe))
                                       (_recur98123_
                                        _rest98192_
                                        _is-e?98129_))))
                                (declare (not safe))
                                (_make-cons98121_ __tmp98660 __tmp98659))))
                      (let () (declare (not safe)) (_E9819698205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9819698205_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9819598221_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9813798146_))))))
                      (let () (declare (not safe)) (_E9813798146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9813698225_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e98128_))
                                                    (let ((_g98652_
                                                           (let ((__tmp98654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e98128_)))))
                     (declare (not safe))
                     (_recur98123_ __tmp98654 _is-e?98129_))))
              (begin
                (let ((_g98653_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98652_)
                             (##vector-length _g98652_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98653_ 2)))
                      (error "Context expects 2 values" _g98653_)))
                (let ((_e98229_
                       (let () (declare (not safe)) (##vector-ref _g98652_ 0)))
                      (_vars98230_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98652_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e98229_))
                          _vars98230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e98128_))
                                                        (let ((_g98649_
                                                               (let ((__tmp98651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e98128_)))))
                         (declare (not safe))
                         (_recur98123_ __tmp98651 _is-e?98129_))))
                  (begin
                    (let ((_g98650_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98649_)
                                 (##vector-length _g98649_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98650_ 2)))
                          (error "Context expects 2 values" _g98650_)))
                    (let ((_e98232_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98649_ 0)))
                          (_vars98233_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98649_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e98232_))
                              _vars98233_))))
                (values (let () (declare (not safe)) (cons 'datum _e98128_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98665_
                             (let ()
                               (declare (not safe))
                               (_recur98123_ _e98119_ gx#ellipsis?))))
                        (begin
                          (let ((_g98666_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98665_)
                                       (##vector-length _g98665_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98666_ 2)))
                                (error "Context expects 2 values" _g98666_)))
                          (let ((_tree98125_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98665_ 0)))
                                (_vars98126_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98665_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars98126_))
                                _tree98125_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx98075_
                                   _vars98126_))))))))))
          (let* ((_e9807998089_ _stx98075_)
                 (_E9808198093_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx98075_))))
                 (_E9808098115_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9807998089_))
                        (let ((_e9808298097_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9807998089_))))
                          (let ((_hd9808398100_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9808298097_)))
                                (_tl9808498102_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9808298097_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9808498102_))
                                (let ((_e9808598105_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9808498102_))))
                                  (let ((_hd9808698108_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9808598105_)))
                                        (_tl9808798110_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9808598105_))))
                                    (let ((_form98113_ _hd9808698108_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9808798110_))
                                          (if '#t
                                              (let ((__tmp98668
                                                     (let ((__tmp98669
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse98078_
                                                               _form98113_))))
                                                       (declare (not safe))
                                                       (_generate98077_
                                                        __tmp98669)))
                                                    (__tmp98667
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx98075_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98668
                                                 __tmp98667))
                                              (let ()
                                                (declare (not safe))
                                                (_E9808198093_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9808198093_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9808198093_)))))
                        (let () (declare (not safe)) (_E9808198093_))))))
            (let () (declare (not safe)) (_E9808098115_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97339_ _identifier=?97340_ _unwrap-e97341_ _wrap-e97342_)
        (letrec ((_generate-bindings97344_
                  (lambda (_target97939_
                           _ids97940_
                           _clauses97941_
                           _clause-ids97942_
                           _E97943_)
                    (letrec ((_generate197945_
                              (lambda (_clause98042_ _clause-id98043_ _E98044_)
                                (let ((__tmp98674
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id98043_ '())))
                                      (__tmp98670
                                       (let ((__tmp98671
                                              (let ((__tmp98673
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97939_
                                                             '())))
                                                    (__tmp98672
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97346_
                                                        _target97939_
                                                        _ids97940_
                                                        _clause98042_
                                                        _E98044_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98673
                                                 __tmp98672))))
                                         (declare (not safe))
                                         (cons __tmp98671 '()))))
                                  (declare (not safe))
                                  (cons __tmp98674 __tmp98670)))))
                      (let _lp97947_ ((_rest97949_ _clauses97941_)
                                      (_rest-ids97950_ _clause-ids97942_)
                                      (_bindings97951_ '()))
                        (let* ((_rest9795297960_ _rest97949_)
                               (_else9795497968_ (lambda () _bindings97951_))
                               (_K9795698030_
                                (lambda (_rest97971_ _clause97972_)
                                  (let* ((_rest-ids9797397980_ _rest-ids97950_)
                                         (_E9797597984_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9797397980_))))
                                         (_K9797698018_
                                          (lambda (_rest-ids97987_
                                                   _clause-id97988_)
                                            (let* ((_rest-ids9798997997_
                                                    _rest-ids97987_)
                                                   (_else9799198005_
                                                    (lambda ()
                                                      (let ((__tmp98675
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197945_
                        _clause97972_
                        _clause-id97988_
                        _E97943_))))
                (declare (not safe))
                (cons __tmp98675 _bindings97951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9799398010_
                                                    (lambda (_next-clause-id98008_)
                                                      (let ((__tmp98676
                                                             (let ((__tmp98677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197945_
                               _clause97972_
                               _clause-id97988_
                               _next-clause-id98008_))))
                       (declare (not safe))
                       (cons __tmp98677 _bindings97951_))))
                (declare (not safe))
                (_lp97947_ _rest97971_ _rest-ids97987_ __tmp98676)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9798997997_))
                                                  (let* ((_hd9799498013_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9798997997_)))
                                                         (_next-clause-id98016_
                                                          _hd9799498013_))
                                                    (declare (not safe))
                                                    (_K9799398010_
                                                     _next-clause-id98016_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9799198005_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9797397980_))
                                        (let ((_hd9797798021_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9797397980_)))
                                              (_tl9797898023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9797397980_))))
                                          (let* ((_clause-id98026_
                                                  _hd9797798021_)
                                                 (_rest-ids98028_
                                                  _tl9797898023_))
                                            (declare (not safe))
                                            (_K9797698018_
                                             _rest-ids98028_
                                             _clause-id98026_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9797597984_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9795297960_))
                              (let ((_hd9795798033_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9795297960_)))
                                    (_tl9795898035_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9795297960_))))
                                (let* ((_clause98038_ _hd9795798033_)
                                       (_rest98040_ _tl9795898035_))
                                  (declare (not safe))
                                  (_K9795698030_ _rest98040_ _clause98038_)))
                              (let ()
                                (declare (not safe))
                                (_else9795497968_))))))))
                 (_generate-body97345_
                  (lambda (_bindings97899_ _body97900_)
                    (let _recur97902_ ((_rest97904_ _bindings97899_))
                      (let* ((_rest9790597913_ _rest97904_)
                             (_else9790797921_ (lambda () _body97900_))
                             (_K9790997927_
                              (lambda (_rest97924_ _hd97925_)
                                (let ((__tmp98679
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97925_ '())))
                                      (__tmp98678
                                       (let ()
                                         (declare (not safe))
                                         (_recur97902_ _rest97924_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98679
                                   __tmp98678)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9790597913_))
                            (let ((_hd9791097930_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9790597913_)))
                                  (_tl9791197932_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9790597913_))))
                              (let* ((_hd97935_ _hd9791097930_)
                                     (_rest97937_ _tl9791197932_))
                                (declare (not safe))
                                (_K9790997927_ _rest97937_ _hd97935_)))
                            (let ()
                              (declare (not safe))
                              (_else9790797921_)))))))
                 (_generate-clause97346_
                  (lambda (_target97762_ _ids97763_ _clause97764_ _E97765_)
                    (letrec ((_generate197767_
                              (lambda (_hd97854_ _fender97855_ _body97856_)
                                (let ((_g98680_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97348_
                                          _hd97854_
                                          _ids97763_))))
                                  (begin
                                    (let ((_g98681_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98680_)
                                                 (##vector-length _g98680_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98681_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98681_)))
                                    (let ((_e97858_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98680_ 0)))
                                          (_mvars97859_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98680_ 1))))
                                      (let* ((_pvars97861_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97859_))))
                                             (_E97863_
                                              (let ((__tmp98682
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97762_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97765_ __tmp98682)))
                                             (_K97896_
                                              (let ((__tmp98683
                                                     (let ((__tmp98685
                                                            (map (lambda (_mvar97865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97866_)
                           (let* ((_mvar9786797874_ _mvar97865_)
                                  (_E9786997878_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9786797874_))))
                                  (_K9787097884_
                                   (lambda (_depth97881_ _id97882_)
                                     (let ((__tmp98686
                                            (let ((__tmp98687
                                                   (let ((__tmp98689
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97882_)))
                                                         (__tmp98688
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97866_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98689
                                                      __tmp98688
                                                      _depth97881_))))
                                              (declare (not safe))
                                              (cons __tmp98687 '()))))
                                       (declare (not safe))
                                       (cons _id97882_ __tmp98686)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9786797874_))
                                 (let ((_hd9787197887_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9786797874_)))
                                       (_tl9787297889_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9786797874_))))
                                   (let* ((_id97892_ _hd9787197887_)
                                          (_depth97894_ _tl9787297889_))
                                     (declare (not safe))
                                     (_K9787097884_ _depth97894_ _id97892_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9786997878_)))))
                         _mvars97859_
                         _pvars97861_))
                   (__tmp98684
                    (if (let () (declare (not safe)) (eq? _fender97855_ '#t))
                        _body97856_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97855_
                           _body97856_
                           _E97863_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98685 __tmp98684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97861_
                                                 __tmp98683))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97347_
                                           _hd97854_
                                           _target97762_
                                           _e97858_
                                           _mvars97859_
                                           _K97896_
                                           _E97863_)))))))))
                      (let* ((_e9776897788_ _clause97764_)
                             (_E9777797792_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9776897788_))))
                             (_E9777097826_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9776897788_))
                                    (let ((_e9777897796_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9776897788_))))
                                      (let ((_hd9777997799_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9777897796_)))
                                            (_tl9778097801_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9777897796_))))
                                        (let ((_hd97804_ _hd9777997799_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9778097801_))
                                              (let ((_e9778197806_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9778097801_))))
                                                (let ((_hd9778297809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9778197806_)))
                                                      (_tl9778397811_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9778197806_))))
                                                  (let ((_fender97814_
                                                         _hd9778297809_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9778397811_))
                                                        (let ((_e9778497816_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9778397811_))))
                  (let ((_hd9778597819_
                         (let () (declare (not safe)) (##car _e9778497816_)))
                        (_tl9778697821_
                         (let () (declare (not safe)) (##cdr _e9778497816_))))
                    (let ((_body97824_ _hd9778597819_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9778697821_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197767_
                                 _hd97804_
                                 _fender97814_
                                 _body97824_))
                              (let () (declare (not safe)) (_E9777797792_)))
                          (let () (declare (not safe)) (_E9777797792_))))))
                (let () (declare (not safe)) (_E9777797792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9777797792_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9777797792_)))))
                             (_E9776997850_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9776897788_))
                                    (let ((_e9777197830_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9776897788_))))
                                      (let ((_hd9777297833_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9777197830_)))
                                            (_tl9777397835_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9777197830_))))
                                        (let ((_hd97838_ _hd9777297833_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9777397835_))
                                              (let ((_e9777497840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9777397835_))))
                                                (let ((_hd9777597843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9777497840_)))
                                                      (_tl9777697845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9777497840_))))
                                                  (let ((_body97848_
                                                         _hd9777597843_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9777697845_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197767_
                                                               _hd97838_
                                                               '#t
                                                               _body97848_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9777097826_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9777097826_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9777097826_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9777097826_))))))
                        (let () (declare (not safe)) (_E9776997850_))))))
                 (_generate-match97347_
                  (lambda (_where97511_
                           _target97512_
                           _hd97513_
                           _mvars97514_
                           _K97515_
                           _E97516_)
                    (letrec ((_BUG97518_
                              (lambda (_q97760_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97339_
                                         _hd97513_
                                         _q97760_))))
                             (_recur97519_
                              (lambda (_e97610_
                                       _vars97611_
                                       _target97612_
                                       _E97613_
                                       _k97614_)
                                (let* ((_e9761597622_ _e97610_)
                                       (_E9761797626_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9761597622_))))
                                       (_K9761897748_
                                        (lambda (_body97629_ _tag97630_)
                                          (let ((_$e97632_ _tag97630_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97632_))
                                                (_k97614_ _vars97611_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97632_))
                                                    (let ((__tmp98796
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97612_)))
                                                          (__tmp98792
                                                           (let ((__tmp98794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98795
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97342_ _body97629_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97340_
                             __tmp98795
                             _target97612_)))
                         (__tmp98793 (_k97614_ _vars97611_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98794 __tmp98793 _E97613_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98796 __tmp98792 _E97613_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97632_))
                                                        (_k97614_
                                                         (let ((__tmp98791
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97629_ _target97612_))))
                   (declare (not safe))
                   (cons __tmp98791 _vars97611_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97632_))
                    (let ((_$e97635_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97636_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97637_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98790
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97612_)))
                            (__tmp98771
                             (let ((__tmp98785
                                    (let ((__tmp98786
                                           (let ((__tmp98789
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97635_ '())))
                                                 (__tmp98787
                                                  (let ((__tmp98788
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97341_
                                                            _target97612_))))
                                                    (declare (not safe))
                                                    (cons __tmp98788 '()))))
                                             (declare (not safe))
                                             (cons __tmp98789 __tmp98787))))
                                      (declare (not safe))
                                      (cons __tmp98786 '())))
                                   (__tmp98772
                                    (let ((__tmp98775
                                           (let ((__tmp98781
                                                  (let ((__tmp98784
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98782
                 (let ((__tmp98783
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97635_))))
                   (declare (not safe))
                   (cons __tmp98783 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98784
                                                          __tmp98782)))
                                                 (__tmp98776
                                                  (let ((__tmp98777
                                                         (let ((__tmp98780
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97637_ '())))
                       (__tmp98778
                        (let ((__tmp98779
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97635_))))
                          (declare (not safe))
                          (cons __tmp98779 '()))))
                   (declare (not safe))
                   (cons __tmp98780 __tmp98778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98777 '()))))
                                             (declare (not safe))
                                             (cons __tmp98781 __tmp98776)))
                                          (__tmp98773
                                           (let* ((_body9763897645_
                                                   _body97629_)
                                                  (_E9764097649_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9763897645_))))
                                                  (_K9764197657_
                                                   (lambda (_tl97652_
                                                            _hd97653_)
                                                     (let ((__tmp98774
                                                            (lambda (_vars97655_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97519_
                         _tl97652_
                         _vars97655_
                         _$tl97637_
                         _E97613_
                         _k97614_)))))
               (declare (not safe))
               (_recur97519_
                _hd97653_
                _vars97611_
                _$hd97636_
                _E97613_
                __tmp98774)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9763897645_))
                                                 (let ((_hd9764297660_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9763897645_)))
                                                       (_tl9764397662_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9763897645_))))
                                                   (let* ((_hd97665_
                                                           _hd9764297660_)
                                                          (_tl97667_
                                                           _tl9764397662_))
                                                     (declare (not safe))
                                                     (_K9764197657_
                                                      _tl97667_
                                                      _hd97665_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9764097649_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98775
                                       __tmp98773))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98785
                                __tmp98772))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98790 __tmp98771 _E97613_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97632_))
                        (let* ((_body9766897675_ _body97629_)
                               (_E9767097679_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9766897675_))))
                               (_K9767197730_
                                (lambda (_tl97682_ _hd97683_)
                                  (let* ((_rlen97685_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97520_ _tl97682_)))
                                         (_$target97687_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97689_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97691_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97693_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97695_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97697_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97699_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97701_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97521_ _hd97683_)))
                                         (_lvars97703_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97701_)))
                                         (_tlvars97705_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97701_)))
                                         (_linit97709_
                                          (map (lambda (_var97707_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97703_)))
                                    (letrec ((_make-loop97712_
                                              (lambda (_vars97716_)
                                                (let ((__tmp98722
                                                       (let ((__tmp98723
                                                              (let ((__tmp98759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97693_ '())))
                            (__tmp98724
                             (let ((__tmp98725
                                    (let ((__tmp98758
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97689_ _lvars97703_)))
                                          (__tmp98726
                                           (let ((__tmp98757
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97689_)))
                                                 (__tmp98735
                                                  (let ((__tmp98752
                                                         (let ((__tmp98753
                                                                (let ((__tmp98756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97695_ '())))
                              (__tmp98754
                               (let ((__tmp98755
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97341_
                                         _$hd97689_))))
                                 (declare (not safe))
                                 (cons __tmp98755 '()))))
                          (declare (not safe))
                          (cons __tmp98756 __tmp98754))))
                   (declare (not safe))
                   (cons __tmp98753 '())))
                (__tmp98736
                 (let ((__tmp98742
                        (let ((__tmp98748
                               (let ((__tmp98751
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97697_ '())))
                                     (__tmp98749
                                      (let ((__tmp98750
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97695_))))
                                        (declare (not safe))
                                        (cons __tmp98750 '()))))
                                 (declare (not safe))
                                 (cons __tmp98751 __tmp98749)))
                              (__tmp98743
                               (let ((__tmp98744
                                      (let ((__tmp98747
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97699_ '())))
                                            (__tmp98745
                                             (let ((__tmp98746
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97695_))))
                                               (declare (not safe))
                                               (cons __tmp98746 '()))))
                                        (declare (not safe))
                                        (cons __tmp98747 __tmp98745))))
                                 (declare (not safe))
                                 (cons __tmp98744 '()))))
                          (declare (not safe))
                          (cons __tmp98748 __tmp98743)))
                       (__tmp98737
                        (let ((__tmp98738
                               (lambda (_hdvars97718_)
                                 (let ((__tmp98739
                                        (let ((__tmp98740
                                               (map (lambda (_svar97720_
                                                             _lvar97721_)
                                                      (let ((__tmp98741
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97720_ _hdvars97718_ _BUG97518_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98741 _lvar97721_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97701_
                                                    _lvars97703_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97699_ __tmp98740))))
                                   (declare (not safe))
                                   (cons _$lp97693_ __tmp98739)))))
                          (declare (not safe))
                          (_recur97519_
                           _hd97683_
                           '()
                           _$lp-hd97697_
                           _E97613_
                           __tmp98738))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98742 __tmp98737))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98752
                                                     __tmp98736)))
                                                 (__tmp98727
                                                  (let ((__tmp98731
                                                         (map (lambda (_lvar97723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97724_)
                        (let ((__tmp98734
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97724_ '())))
                              (__tmp98732
                               (let ((__tmp98733
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97723_))))
                                 (declare (not safe))
                                 (cons __tmp98733 '()))))
                          (declare (not safe))
                          (cons __tmp98734 __tmp98732)))
                      _lvars97703_
                      _tlvars97705_))
                (__tmp98728
                 (_k97614_
                  (let ((__tmp98729
                         (lambda (_svar97726_ _tlvar97727_ _r97728_)
                           (let ((__tmp98730
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97726_ _tlvar97727_))))
                             (declare (not safe))
                             (cons __tmp98730 _r97728_)))))
                    (declare (not safe))
                    (foldl2 __tmp98729
                            _vars97716_
                            _svars97701_
                            _tlvars97705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98731
                                                     __tmp98728))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98757
                                              __tmp98735
                                              __tmp98727))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98758
                                       __tmp98726))))
                               (declare (not safe))
                               (cons __tmp98725 '()))))
                        (declare (not safe))
                        (cons __tmp98759 __tmp98724))))
                 (declare (not safe))
                 (cons __tmp98723 '())))
              (__tmp98720
               (let ((__tmp98721
                      (let ()
                        (declare (not safe))
                        (cons _$target97687_ _linit97709_))))
                 (declare (not safe))
                 (cons _$lp97693_ __tmp98721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98722
                                                   __tmp98720)))))
                                      (let ((_body97714_
                                             (let ((__tmp98761
                                                    (let ((__tmp98762
                                                           (let ((__tmp98765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98766
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97691_ '()))))
                            (declare (not safe))
                            (cons _$target97687_ __tmp98766)))
                         (__tmp98763
                          (let ((__tmp98764
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97612_
                                    _rlen97685_))))
                            (declare (not safe))
                            (cons __tmp98764 '()))))
                     (declare (not safe))
                     (cons __tmp98765 __tmp98763))))
              (declare (not safe))
              (cons __tmp98762 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98760
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97519_
                                                       _tl97682_
                                                       _vars97611_
                                                       _$tl97691_
                                                       _E97613_
                                                       _make-loop97712_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98761
                                                __tmp98760))))
                                        (let ((__tmp98770
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97612_)))
                                              (__tmp98767
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97685_))
                                                   _body97714_
                                                   (let ((__tmp98768
                                                          (let ((__tmp98769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97612_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98769 _rlen97685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98768
                                                      _body97714_
                                                      _E97613_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98770
                                           __tmp98767
                                           _E97613_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9766897675_))
                              (let ((_hd9767297733_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9766897675_)))
                                    (_tl9767397735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9766897675_))))
                                (let* ((_hd97738_ _hd9767297733_)
                                       (_tl97740_ _tl9767397735_))
                                  (declare (not safe))
                                  (_K9767197730_ _tl97740_ _hd97738_)))
                              (let () (declare (not safe)) (_E9767097679_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97632_))
                            (let ((__tmp98719
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97612_)))
                                  (__tmp98718 (_k97614_ _vars97611_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98719
                               __tmp98718
                               _E97613_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97632_))
                                (let ((_$e97742_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98717
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97612_)))
                                        (__tmp98709
                                         (let ((__tmp98711
                                                (let ((__tmp98712
                                                       (let ((__tmp98716
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97742_ '())))
                     (__tmp98713
                      (let ((__tmp98714
                             (let ((__tmp98715
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97341_
                                       _target97612_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98715))))
                        (declare (not safe))
                        (cons __tmp98714 '()))))
                 (declare (not safe))
                 (cons __tmp98716 __tmp98713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98712 '())))
                                               (__tmp98710
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97519_
                                                   _body97629_
                                                   _vars97611_
                                                   _$e97742_
                                                   _E97613_
                                                   _k97614_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98711
                                            __tmp98710))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98717
                                     __tmp98709
                                     _E97613_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97632_))
                                    (let ((_$e97744_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98708
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97612_)))
                                            (__tmp98700
                                             (let ((__tmp98702
                                                    (let ((__tmp98703
                                                           (let ((__tmp98707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97744_ '())))
                         (__tmp98704
                          (let ((__tmp98705
                                 (let ((__tmp98706
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97341_
                                           _target97612_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98706))))
                            (declare (not safe))
                            (cons __tmp98705 '()))))
                     (declare (not safe))
                     (cons __tmp98707 __tmp98704))))
              (declare (not safe))
              (cons __tmp98703 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98701
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97519_
                                                       _body97629_
                                                       _vars97611_
                                                       _$e97744_
                                                       _E97613_
                                                       _k97614_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98702
                                                __tmp98701))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98708
                                         __tmp98700
                                         _E97613_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97632_))
                                        (let ((_$e97746_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98699
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97612_)))
                                                (__tmp98690
                                                 (let ((__tmp98694
                                                        (let ((__tmp98695
                                                               (let ((__tmp98698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97746_ '())))
                             (__tmp98696
                              (let ((__tmp98697
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97612_))))
                                (declare (not safe))
                                (cons __tmp98697 '()))))
                         (declare (not safe))
                         (cons __tmp98698 __tmp98696))))
                  (declare (not safe))
                  (cons __tmp98695 '())))
               (__tmp98691
                (let ((__tmp98693
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97746_ _body97629_)))
                      (__tmp98692 (_k97614_ _vars97611_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98693 __tmp98692 _E97613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98694
                                                    __tmp98691))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98699
                                             __tmp98690
                                             _E97613_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97518_ _e97610_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9761597622_))
                                      (let ((_hd9761997751_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9761597622_)))
                                            (_tl9762097753_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9761597622_))))
                                        (let* ((_tag97756_ _hd9761997751_)
                                               (_body97758_ _tl9762097753_))
                                          (declare (not safe))
                                          (_K9761897748_
                                           _body97758_
                                           _tag97756_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9761797626_))))))
                             (_splice-rlen97520_
                              (lambda (_e97572_)
                                (let _lp97574_ ((_e97576_ _e97572_)
                                                (_n97577_ '0))
                                  (let* ((_e9757897585_ _e97576_)
                                         (_E9758097589_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9757897585_))))
                                         (_K9758197598_
                                          (lambda (_body97592_ _tag97593_)
                                            (let ((_$e97595_ _tag97593_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97595_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97339_
                                                     _where97511_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97595_))
                                                      (let ((__tmp98798
                                                             (cdr _body97592_))
                                                            (__tmp98797
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97577_ '1))))
                (declare (not safe))
                (_lp97574_ __tmp98798 __tmp98797))
              _n97577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9757897585_))
                                        (let ((_hd9758297601_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9757897585_)))
                                              (_tl9758397603_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9757897585_))))
                                          (let* ((_tag97606_ _hd9758297601_)
                                                 (_body97608_ _tl9758397603_))
                                            (declare (not safe))
                                            (_K9758197598_
                                             _body97608_
                                             _tag97606_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9758097589_)))))))
                             (_splice-vars97521_
                              (lambda (_e97528_)
                                (let _recur97530_ ((_e97532_ _e97528_)
                                                   (_vars97533_ '()))
                                  (let* ((_e9753497541_ _e97532_)
                                         (_E9753697545_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9753497541_))))
                                         (_K9753797560_
                                          (lambda (_body97548_ _tag97549_)
                                            (let ((_$e97551_ _tag97549_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97551_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97548_
                                                          _vars97533_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97551_))
                  (let () (declare (not safe)) (eq? 'splice _$e97551_)))
              (let ((__tmp98801 (cdr _body97548_))
                    (__tmp98799
                     (let ((__tmp98800 (car _body97548_)))
                       (declare (not safe))
                       (_recur97530_ __tmp98800 _vars97533_))))
                (declare (not safe))
                (_recur97530_ __tmp98801 __tmp98799))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97551_))
                      (let () (declare (not safe)) (eq? 'box _$e97551_)))
                  (let ()
                    (declare (not safe))
                    (_recur97530_ _body97548_ _vars97533_))
                  _vars97533_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9753497541_))
                                        (let ((_hd9753897563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9753497541_)))
                                              (_tl9753997565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9753497541_))))
                                          (let* ((_tag97568_ _hd9753897563_)
                                                 (_body97570_ _tl9753997565_))
                                            (declare (not safe))
                                            (_K9753797560_
                                             _body97570_
                                             _tag97568_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9753697545_)))))))
                             (_make-body97522_
                              (lambda (_vars97524_)
                                (let ((__tmp98802
                                       (map (lambda (_mvar97526_)
                                              (let ((__tmp98803
                                                     (car _mvar97526_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98803
                                                 _vars97524_
                                                 _BUG97518_)))
                                            _mvars97514_)))
                                  (declare (not safe))
                                  (cons _K97515_ __tmp98802)))))
                      (let ()
                        (declare (not safe))
                        (_recur97519_
                         _hd97513_
                         '()
                         _target97512_
                         _E97516_
                         _make-body97522_)))))
                 (_parse-clause97348_
                  (lambda (_hd97417_ _ids97418_)
                    (let _recur97420_ ((_e97422_ _hd97417_)
                                       (_vars97423_ '())
                                       (_depth97424_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97422_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97422_))
                              (values '(any) _vars97423_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97422_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97339_
                                     _hd97417_))
                                  (if (let ((__tmp98819
                                             (lambda (_id97426_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97422_
                                                  _id97426_)))))
                                        (declare (not safe))
                                        (find __tmp98819 _ids97418_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97422_))
                                              _vars97423_)
                                      (if (let ((__tmp98817
                                                 (lambda (_var97428_)
                                                   (let ((__tmp98818
                                                          (car _var97428_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97422_
                                                      __tmp98818)))))
                                            (declare (not safe))
                                            (find __tmp98817 _vars97423_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97339_
                                             _e97422_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97422_))
                                                  (let ((__tmp98816
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98816
                                                          _vars97423_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97422_))
                              (let* ((_e9742997436_ _e97422_)
                                     (_E9743197440_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9742997436_))))
                                     (_E9743097501_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9742997436_))
                                            (let ((_e9743297444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9742997436_))))
                                              (let ((_hd9743397447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9743297444_)))
                                                    (_tl9743497449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9743297444_))))
                                                (let* ((_hd97452_
                                                        _hd9743397447_)
                                                       (_rest97454_
                                                        _tl9743497449_))
                                                  (if '#t
                                                      (let* ((_make-pair97469_
                                                              (lambda (_tag97456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97457_
                               _tl97458_)
                        (let* ((_hd-depth97460_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97456_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97424_ '1))
                                    _depth97424_))
                               (_g98811_
                                (let ()
                                  (declare (not safe))
                                  (_recur97420_
                                   _hd97457_
                                   _vars97423_
                                   _hd-depth97460_))))
                          (begin
                            (let ((_g98812_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98811_)
                                         (##vector-length _g98811_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98812_ 2)))
                                  (error "Context expects 2 values" _g98812_)))
                            (let ((_hd97462_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98811_ 0)))
                                  (_vars97463_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98811_ 1))))
                              (let ((_g98813_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97420_
                                        _tl97458_
                                        _vars97463_
                                        _depth97424_))))
                                (begin
                                  (let ((_g98814_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98813_)
                                               (##vector-length _g98813_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98814_ 2)))
                                        (error "Context expects 2 values"
                                               _g98814_)))
                                  (let ((_tl97465_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98813_ 0)))
                                        (_vars97466_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98813_ 1))))
                                    (let ()
                                      (values (let ((__tmp98815
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97462_
                                                             _tl97465_))))
                                                (declare (not safe))
                                                (cons _tag97456_ __tmp98815))
                                              _vars97466_))))))))))
                     (_e9747097477_ _rest97454_)
                     (_E9747297481_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97469_ 'cons _hd97452_ _rest97454_))))
                     (_E9747197497_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9747097477_))
                            (let ((_e9747397485_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9747097477_))))
                              (let ((_hd9747497488_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9747397485_)))
                                    (_tl9747597490_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9747397485_))))
                                (let* ((_rest-hd97493_ _hd9747497488_)
                                       (_rest-tl97495_ _tl9747597490_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97493_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97469_
                                             'splice
                                             _hd97452_
                                             _rest-tl97495_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97469_
                                             'cons
                                             _hd97452_
                                             _rest97454_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9747297481_))))))
                            (let () (declare (not safe)) (_E9747297481_))))))
                (let () (declare (not safe)) (_E9747197497_)))
              (let () (declare (not safe)) (_E9743197440_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9743197440_))))))
                                (let () (declare (not safe)) (_E9743097501_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97422_))
                                  (values '(null) _vars97423_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97422_))
                                      (let ((_g98808_
                                             (let ((__tmp98810
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97422_)))))
                                               (declare (not safe))
                                               (_recur97420_
                                                __tmp98810
                                                _vars97423_
                                                _depth97424_))))
                                        (begin
                                          (let ((_g98809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98808_)
                                                       (##vector-length
                                                        _g98808_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98809_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98809_)))
                                          (let ((_e97505_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98808_ 0)))
                                                (_vars97506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98808_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97505_))
                                                    _vars97506_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97422_))
                                          (let ((_g98805_
                                                 (let ((__tmp98807
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97422_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97420_
                                                    __tmp98807
                                                    _vars97423_
                                                    _depth97424_))))
                                            (begin
                                              (let ((_g98806_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98805_)
                                                           (##vector-length
                                                            _g98805_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98806_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98806_)))
                                              (let ((_e97508_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98805_
                                                        0)))
                                                    (_vars97509_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98805_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97508_))
                                                        _vars97509_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97422_))
                                              (values (let ((__tmp98804
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97422_))))
                (declare (not safe))
                (cons 'datum __tmp98804))
              _vars97423_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97339_
                                                 _e97422_))))))))))))
          (let* ((_e9734997362_ _stx97339_)
                 (_E9735197366_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9734997362_))))
                 (_E9735097413_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9734997362_))
                        (let ((_e9735297370_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9734997362_))))
                          (let ((_hd9735397373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9735297370_)))
                                (_tl9735497375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9735297370_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9735497375_))
                                (let ((_e9735597378_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9735497375_))))
                                  (let ((_hd9735697381_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9735597378_)))
                                        (_tl9735797383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9735597378_))))
                                    (let ((_expr97386_ _hd9735697381_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9735797383_))
                                          (let ((_e9735897388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9735797383_))))
                                            (let ((_hd9735997391_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9735897388_)))
                                                  (_tl9736097393_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9735897388_))))
                                              (let* ((_ids97396_
                                                      _hd9735997391_)
                                                     (_clauses97398_
                                                      _tl9736097393_))
                                                (if '#t
                                                    (if (let ((__tmp98837
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97396_))))
                  (declare (not safe))
                  (not __tmp98837))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97339_
                   _ids97396_))
                (if (let ((__tmp98836
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97398_))))
                      (declare (not safe))
                      (not __tmp98836))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97339_))
                    (let* ((_ids97400_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97396_)))
                           (_clauses97402_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97398_)))
                           (_clause-ids97404_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97402_)))
                           (_E97406_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97408_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97410_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97402_))
                                _E97406_
                                (car _clause-ids97404_))))
                      (let ((__tmp98821
                             (let ((__tmp98822
                                    (let ((__tmp98824
                                           (let ((__tmp98829
                                                  (let ((__tmp98830
                                                         (let ((__tmp98835
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97406_ '())))
                       (__tmp98831
                        (let ((__tmp98832
                               (let ((__tmp98834
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97408_ '())))
                                     (__tmp98833
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97408_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98834
                                  __tmp98833))))
                          (declare (not safe))
                          (cons __tmp98832 '()))))
                   (declare (not safe))
                   (cons __tmp98835 __tmp98831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98830 '())))
                                                 (__tmp98825
                                                  (let ((__tmp98828
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97344_
                                                            _target97408_
                                                            _ids97400_
                                                            _clauses97402_
                                                            _clause-ids97404_
                                                            _E97406_)))
                                                        (__tmp98826
                                                         (let ((__tmp98827
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97386_ '()))))
                   (declare (not safe))
                   (cons _first97410_ __tmp98827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97345_
                                                     __tmp98828
                                                     __tmp98826))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98829
                                              __tmp98825)))
                                          (__tmp98823
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97339_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98824
                                       __tmp98823))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98822)))
                            (__tmp98820
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97339_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98821 __tmp98820)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9735197366_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9735197366_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9735197366_)))))
                        (let () (declare (not safe)) (_E9735197366_))))))
            (let () (declare (not safe)) (_E9735097413_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx98049_)
        (let* ((_identifier=?98051_ 'free-identifier=?)
               (_unwrap-e98053_ 'syntax-e)
               (_wrap-e98055_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98049_
           _identifier=?98051_
           _unwrap-e98053_
           _wrap-e98055_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx98057_ _identifier=?98058_)
        (let* ((_unwrap-e98060_ 'syntax-e) (_wrap-e98062_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98057_
           _identifier=?98058_
           _unwrap-e98060_
           _wrap-e98062_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx98064_ _identifier=?98065_ _unwrap-e98066_)
        (let ((_wrap-e98068_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98064_
           _identifier=?98065_
           _unwrap-e98066_
           _wrap-e98068_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98839_
        (let ((_g98838_ (let () (declare (not safe)) (##length _g98839_))))
          (cond ((let () (declare (not safe)) (##fx= _g98838_ 1))
                 (apply (lambda (_stx98049_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx98049_)))
                        _g98839_))
                ((let () (declare (not safe)) (##fx= _g98838_ 2))
                 (apply (lambda (_stx98057_ _identifier=?98058_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx98057_
                             _identifier=?98058_)))
                        _g98839_))
                ((let () (declare (not safe)) (##fx= _g98838_ 3))
                 (apply (lambda (_stx98064_
                                 _identifier=?98065_
                                 _unwrap-e98066_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx98064_
                             _identifier=?98065_
                             _unwrap-e98066_)))
                        _g98839_))
                ((let () (declare (not safe)) (##fx= _g98838_ 4))
                 (apply (lambda (_stx98070_
                                 _identifier=?98071_
                                 _unwrap-e98072_
                                 _wrap-e98073_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx98070_
                             _identifier=?98071_
                             _unwrap-e98072_
                             _wrap-e98073_)))
                        _g98839_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98839_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97336_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97336_))
            (let ((__tmp98840
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97336_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98840 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97294_ . _rest97295_)
        (let ((_len97297_ (length _hd97294_)))
          (let _lp97299_ ((_rest97301_ _rest97295_))
            (let* ((_rest9730297310_ _rest97301_)
                   (_else9730497318_ (lambda () '#!void))
                   (_K9730697324_
                    (lambda (_rest97321_ _hd97322_)
                      (if (fx= _len97297_ (length _hd97322_))
                          (let () (declare (not safe)) (_lp97299_ _rest97321_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97322_))))))
              (if (let () (declare (not safe)) (##pair? _rest9730297310_))
                  (let ((_hd9730797327_
                         (let ()
                           (declare (not safe))
                           (##car _rest9730297310_)))
                        (_tl9730897329_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9730297310_))))
                    (let* ((_hd97332_ _hd9730797327_)
                           (_rest97334_ _tl9730897329_))
                      (declare (not safe))
                      (_K9730697324_ _rest97334_ _hd97332_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97252_ _n97253_)
        (let _lp97255_ ((_rest97257_ _stx97252_) (_r97258_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97257_))
              (let* ((_g9725997266_
                      (let () (declare (not safe)) (gx#syntax-e _rest97257_)))
                     (_E9726197270_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9725997266_))))
                     (_K9726297276_
                      (lambda (_rest97273_ _hd97274_)
                        (let ((__tmp98845
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97274_ _r97258_))))
                          (declare (not safe))
                          (_lp97255_ _rest97273_ __tmp98845)))))
                (if (let () (declare (not safe)) (##pair? _g9725997266_))
                    (let ((_hd9726397279_
                           (let () (declare (not safe)) (##car _g9725997266_)))
                          (_tl9726497281_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9725997266_))))
                      (let* ((_hd97284_ _hd9726397279_)
                             (_rest97286_ _tl9726497281_))
                        (declare (not safe))
                        (_K9726297276_ _rest97286_ _hd97284_)))
                    (let () (declare (not safe)) (_E9726197270_))))
              (let _lp97288_ ((_n97290_ _n97253_)
                              (_l97291_ _r97258_)
                              (_r97292_ _rest97257_))
                (if (let () (declare (not safe)) (null? _l97291_))
                    (values _l97291_ _r97292_)
                    (if (fxpositive? _n97290_)
                        (let ((__tmp98844
                               (let () (declare (not safe)) (fx- _n97290_ '1)))
                              (__tmp98843 (cdr _l97291_))
                              (__tmp98841
                               (let ((__tmp98842 (car _l97291_)))
                                 (declare (not safe))
                                 (cons __tmp98842 _r97292_))))
                          (declare (not safe))
                          (_lp97288_ __tmp98844 __tmp98843 __tmp98841))
                        (values (reverse _l97291_) _r97292_))))))))))
