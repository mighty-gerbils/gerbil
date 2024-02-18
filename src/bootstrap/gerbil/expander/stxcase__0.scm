(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708280334)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp193704 (list gx#expander::t))
            (__tmp193702
             (let ((__tmp193703
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp193703 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp193704
         '(id depth)
         __tmp193702
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args189632_
        (apply make-instance gx#syntax-pattern::t _$args189632_)))
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
      (lambda (_self189629_ _stx189630_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx189630_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx189111_)
        (letrec ((_generate189113_
                  (lambda (_e189340_)
                    (letrec ((_BUG189342_
                              (lambda (_q189504_)
                                (error '"BUG: syntax; generate"
                                       _stx189111_
                                       _e189340_
                                       _q189504_)))
                             (_local-pattern-e189343_
                              (lambda (_pat189502_)
                                (let ((__tmp193705
                                       (##structure-ref
                                        _pat189502_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp193705))))
                             (_getvar189344_
                              (lambda (_q189499_ _vars189500_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q189499_
                                           _vars189500_
                                           _BUG189342_))))
                             (_getarg189345_
                              (lambda (_arg189465_ _vars189466_)
                                (let* ((_arg189467189474_ _arg189465_)
                                       (_E189469189478_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg189467189474_)))
                                       (_K189470189487_
                                        (lambda (_e189481_ _tag189482_)
                                          (let ((_$e189484_ _tag189482_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e189484_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar189344_
                                                   _e189481_
                                                   _vars189466_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e189484_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e189343_
                                                       _e189481_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG189342_
                                                       _arg189465_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg189467189474_))
                                      (let ((_hd189471189490_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg189467189474_)))
                                            (_tl189472189492_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg189467189474_))))
                                        (let* ((_tag189495_ _hd189471189490_)
                                               (_e189497_ _tl189472189492_))
                                          (declare (not safe))
                                          (_K189470189487_
                                           _e189497_
                                           _tag189495_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E189469189478_)))))))
                      (let _recur189347_ ((_e189349_ _e189340_)
                                          (_vars189350_ '()))
                        (let* ((_e189351189358_ _e189349_)
                               (_E189353189362_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e189351189358_)))
                               (_K189354189453_
                                (lambda (_body189365_ _tag189366_)
                                  (let ((_$e189368_ _tag189366_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e189368_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body189365_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e189368_))
                                            (let ((_id189371_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body189365_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id189371_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks189373_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id189371_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks189373_))
                                                        (let ((__tmp193733
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body189365_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp193733))
                (let ((__tmp193732
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body189365_)))
                      (__tmp193731
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body189365_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp193732
                   __tmp193731
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id189371_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body189365_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG189342_
                                                         _e189349_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e189368_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e189343_
                                                   _body189365_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e189368_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar189344_
                                                       _body189365_
                                                       _vars189350_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e189368_))
                                                        (let ((__tmp193729
                                                               (let ((__tmp193730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body189365_)))
                         (declare (not safe))
                         (_recur189347_ __tmp193730 _vars189350_)))
                      (__tmp193727
                       (let ((__tmp193728 (cdr _body189365_)))
                         (declare (not safe))
                         (_recur189347_ __tmp193728 _vars189350_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp193729 __tmp193727))
                (if (let () (declare (not safe)) (eq? 'vector _$e189368_))
                    (let ((__tmp193726
                           (let ()
                             (declare (not safe))
                             (_recur189347_ _body189365_ _vars189350_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp193726))
                    (if (let () (declare (not safe)) (eq? 'box _$e189368_))
                        (let ((__tmp193725
                               (let ()
                                 (declare (not safe))
                                 (_recur189347_ _body189365_ _vars189350_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp193725))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e189368_))
                            (let* ((_body189374189385_ _body189365_)
                                   (_E189376189389_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body189374189385_)))
                                   (_K189377189427_
                                    (lambda (_args189392_
                                             _iv189393_
                                             _hd189394_
                                             _depth189395_)
                                      (let* ((_targets189401_
                                              (map (lambda (_g189396189398_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg189345_
                                                        _g189396189398_
                                                        _vars189350_)))
                                                   _args189392_))
                                             (_fold-in189403_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args189392_)))
                                             (_fold-out189405_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args189407_
                                              (let ((__tmp193706
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out189405_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp193706
                                                        _fold-in189403_)))
                                             (_lambda-body189424_
                                              (if (fx> _depth189395_ '1)
                                                  (let ((_r-args189415_
                                                         (map (lambda (_arg189409_)
                                                                (let ((__tmp193711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg189409_)))
                          (declare (not safe))
                          (cons 'ref __tmp193711)))
                      _args189392_))
                (_r-vars189416_
                 (let ((__tmp193712
                        (lambda (_arg189411_ _var189412_ _r189413_)
                          (let ((__tmp193713
                                 (let ((__tmp193714 (cdr _arg189411_)))
                                   (declare (not safe))
                                   (cons __tmp193714 _var189412_))))
                            (declare (not safe))
                            (cons __tmp193713 _r189413_)))))
                   (declare (not safe))
                   (foldr2 __tmp193712
                           _vars189350_
                           _args189392_
                           _fold-in189403_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp193715
                                                           (let ((__tmp193716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193720
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth189395_ '1)))
                                (__tmp193717
                                 (let ((__tmp193718
                                        (let ((__tmp193719
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out189405_))))
                                          (declare (not safe))
                                          (cons __tmp193719 _r-args189415_))))
                                   (declare (not safe))
                                   (cons _hd189394_ __tmp193718))))
                            (declare (not safe))
                            (cons __tmp193720 __tmp193717))))
                     (declare (not safe))
                     (cons 'splice __tmp193716))))
              (declare (not safe))
              (_recur189347_ __tmp193715 _r-vars189416_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars189422_
                                                          (let ((__tmp193707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg189418_ _var189419_ _r189420_)
                           (let ((__tmp193708
                                  (let ((__tmp193709 (cdr _arg189418_)))
                                    (declare (not safe))
                                    (cons __tmp193709 _var189419_))))
                             (declare (not safe))
                             (cons __tmp193708 _r189420_)))))
                    (declare (not safe))
                    (foldr2 __tmp193707
                            _vars189350_
                            _args189392_
                            _fold-in189403_)))
                 (__tmp193710
                  (let ()
                    (declare (not safe))
                    (_recur189347_ _hd189394_ _hd-vars189422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp193710
                                                     _fold-out189405_)))))
                                        (let ((__tmp193724
                                               (if (fx> (length _targets189401_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets189401_))
                                                   '#!void))
                                              (__tmp193721
                                               (let ((__tmp193723
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args189407_
                                                         _lambda-body189424_)))
                                                     (__tmp193722
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur189347_
                                                         _iv189393_
                                                         _vars189350_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp193723
                                                  __tmp193722
                                                  _targets189401_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp193724
                                           __tmp193721))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body189374189385_))
                                  (let ((_hd189378189430_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body189374189385_)))
                                        (_tl189379189432_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body189374189385_))))
                                    (let ((_depth189435_ _hd189378189430_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl189379189432_))
                                          (let ((_hd189380189437_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl189379189432_)))
                                                (_tl189381189439_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl189379189432_))))
                                            (let ((_hd189442_
                                                   _hd189380189437_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl189381189439_))
                                                  (let ((_hd189382189444_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl189381189439_)))
                                                        (_tl189383189446_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl189381189439_))))
                                                    (let* ((_iv189449_
                                                            _hd189382189444_)
                                                           (_args189451_
                                                            _tl189383189446_))
                                                      (declare (not safe))
                                                      (_K189377189427_
                                                       _args189451_
                                                       _iv189449_
                                                       _hd189442_
                                                       _depth189435_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E189376189389_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E189376189389_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E189376189389_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e189368_))
                                _body189365_
                                (let ()
                                  (declare (not safe))
                                  (_BUG189342_ _e189349_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e189351189358_))
                              (let ((_hd189355189456_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e189351189358_)))
                                    (_tl189356189458_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e189351189358_))))
                                (let* ((_tag189461_ _hd189355189456_)
                                       (_body189463_ _tl189356189458_))
                                  (declare (not safe))
                                  (_K189354189453_ _body189463_ _tag189461_)))
                              (let ()
                                (declare (not safe))
                                (_E189353189362_))))))))
                 (_parse189114_
                  (lambda (_e189155_)
                    (letrec ((_make-cons189157_
                              (lambda (_hd189332_ _tl189333_)
                                (let ((_g193734_ _hd189332_)
                                      (_g193736_ _tl189333_))
                                  (begin
                                    (let ((_g193735_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193734_)
                                                 (##vector-length _g193734_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193735_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193735_)))
                                    (let ((_g193737_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193736_)
                                                 (##vector-length _g193736_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193737_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193737_)))
                                    (let ((_hd-e189335_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193734_ 0)))
                                          (_hd-vars189336_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193734_ 1))))
                                      (let ((_tl-e189337_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193736_ 0)))
                                            (_tl-vars189338_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193736_ 1))))
                                        (values (let ((__tmp193738
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e189335_
                                                               _tl-e189337_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp193738))
                                                (append _hd-vars189336_
                                                        _tl-vars189338_))))))))
                             (_make-splice189158_
                              (lambda (_where189271_
                                       _depth189272_
                                       _hd189273_
                                       _tl189274_)
                                (let ((_g193739_ _hd189273_)
                                      (_g193741_ _tl189274_))
                                  (begin
                                    (let ((_g193740_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193739_)
                                                 (##vector-length _g193739_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193740_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193740_)))
                                    (let ((_g193742_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193741_)
                                                 (##vector-length _g193741_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193742_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193742_)))
                                    (let ((_hd-e189276_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193739_ 0)))
                                          (_hd-vars189277_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193739_ 1))))
                                      (let ((_tl-e189278_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193741_ 0)))
                                            (_tl-vars189279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g193741_ 1))))
                                        (let _lp189281_ ((_rest189283_
                                                          _hd-vars189277_)
                                                         (_targets189284_ '())
                                                         (_vars189285_
                                                          _tl-vars189279_))
                                          (let* ((_rest189286189296_
                                                  _rest189283_)
                                                 (_else189288189304_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets189284_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx189111_
                                                           _where189271_))
                                                        (values (let ((__tmp193743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp193744
                                      (let ((__tmp193745
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e189278_
                                                     _targets189284_))))
                                        (declare (not safe))
                                        (cons _hd-e189276_ __tmp193745))))
                                 (declare (not safe))
                                 (cons _depth189272_ __tmp193744))))
                          (declare (not safe))
                          (cons 'splice __tmp193743))
                        _vars189285_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K189290189313_
                                                  (lambda (_rest189307_
                                                           _hd-pat189308_
                                                           _hd-depth*189309_)
                                                    (let ((_hd-depth189311_
                                                           (fx- _hd-depth*189309_
                                                                _depth189272_)))
                                                      (if (fxpositive?
                                                           _hd-depth189311_)
                                                          (let ((__tmp193750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp193751
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat189308_))))
                           (declare (not safe))
                           (cons __tmp193751 _targets189284_)))
                        (__tmp193748
                         (let ((__tmp193749
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth189311_ _hd-pat189308_))))
                           (declare (not safe))
                           (cons __tmp193749 _vars189285_))))
                    (declare (not safe))
                    (_lp189281_ _rest189307_ __tmp193750 __tmp193748))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth189311_))
                      (let ((__tmp193746
                             (let ((__tmp193747
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat189308_))))
                               (declare (not safe))
                               (cons __tmp193747 _targets189284_))))
                        (declare (not safe))
                        (_lp189281_ _rest189307_ __tmp193746 _vars189285_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx189111_
                         _where189271_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest189286189296_))
                                                (let ((_hd189291189316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest189286189296_)))
                                                      (_tl189292189318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest189286189296_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd189291189316_))
                                                      (let ((_hd189293189321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd189291189316_)))
                    (_tl189294189323_
                     (let () (declare (not safe)) (##cdr _hd189291189316_))))
                (let* ((_hd-depth*189326_ _hd189293189321_)
                       (_hd-pat189328_ _tl189294189323_)
                       (_rest189330_ _tl189292189318_))
                  (declare (not safe))
                  (_K189290189313_
                   _rest189330_
                   _hd-pat189328_
                   _hd-depth*189326_)))
              (let () (declare (not safe)) (_else189288189304_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else189288189304_)))))))))))
                             (_recur189159_
                              (lambda (_e189164_ _is-e?189165_)
                                (if (_is-e?189165_ _e189164_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx189111_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e189164_))
                                        (let* ((_pat189167_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e189164_)))
                                               (_depth189169_
                                                (##structure-ref
                                                 _pat189167_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth189169_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat189167_))
                                                      (let ((__tmp193767
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth189169_ _pat189167_))))
                (declare (not safe))
                (cons __tmp193767 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat189167_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e189164_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e189164_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e189164_))
                                                (let* ((_e189171189178_
                                                        _e189164_)
                                                       (_E189173189182_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e189171189178_))))
                                                       (_E189172189261_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e189171189178_))
                      (let ((_e189174189186_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e189171189178_))))
                        (let ((_hd189175189189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e189174189186_)))
                              (_tl189176189191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e189174189186_))))
                          (let* ((_hd189194_ _hd189175189189_)
                                 (_rest189196_ _tl189176189191_))
                            (if '#t
                                (if (_is-e?189165_ _hd189194_)
                                    (let* ((_e189197189204_ _rest189196_)
                                           (_E189199189208_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx189111_
                                                 _e189164_))))
                                           (_E189198189222_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e189197189204_))
                                                  (let ((_e189200189212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e189197189204_))))
                                                    (let ((_hd189201189215_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e189200189212_)))
                                                          (_tl189202189217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e189200189212_))))
                                                      (let ((_rest189220_
                                                             _hd189201189215_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl189202189217_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur189159_ _rest189220_ false))
                        (let () (declare (not safe)) (_E189199189208_)))
                    (let () (declare (not safe)) (_E189199189208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E189199189208_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E189198189222_)))
                                    (let _lp189226_ ((_rest189228_
                                                      _rest189196_)
                                                     (_depth189229_ '0))
                                      (let* ((_e189230189237_ _rest189228_)
                                             (_E189232189241_
                                              (lambda ()
                                                (if (fxpositive? _depth189229_)
                                                    (let ((__tmp193761
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189159_
                                                              _hd189194_
                                                              _is-e?189165_)))
                                                          (__tmp193760
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189159_
                                                              _rest189228_
                                                              _is-e?189165_))))
                                                      (declare (not safe))
                                                      (_make-splice189158_
                                                       _e189164_
                                                       _depth189229_
                                                       __tmp193761
                                                       __tmp193760))
                                                    (let ((__tmp193759
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189159_
                                                              _hd189194_
                                                              _is-e?189165_)))
                                                          (__tmp193758
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur189159_
                                                              _rest189228_
                                                              _is-e?189165_))))
                                                      (declare (not safe))
                                                      (_make-cons189157_
                                                       __tmp193759
                                                       __tmp193758)))))
                                             (_E189231189257_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e189230189237_))
                                                    (let ((_e189233189245_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e189230189237_))))
                                                      (let ((_hd189234189248_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e189233189245_)))
                    (_tl189235189250_
                     (let () (declare (not safe)) (##cdr _e189233189245_))))
                (let* ((_rest-hd189253_ _hd189234189248_)
                       (_rest-tl189255_ _tl189235189250_))
                  (if '#t
                      (if (_is-e?189165_ _rest-hd189253_)
                          (let ((__tmp193766
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth189229_ '1))))
                            (declare (not safe))
                            (_lp189226_ _rest-tl189255_ __tmp193766))
                          (if (fxpositive? _depth189229_)
                              (let ((__tmp193765
                                     (let ()
                                       (declare (not safe))
                                       (_recur189159_
                                        _hd189194_
                                        _is-e?189165_)))
                                    (__tmp193764
                                     (let ()
                                       (declare (not safe))
                                       (_recur189159_
                                        _rest189228_
                                        _is-e?189165_))))
                                (declare (not safe))
                                (_make-splice189158_
                                 _e189164_
                                 _depth189229_
                                 __tmp193765
                                 __tmp193764))
                              (let ((__tmp193763
                                     (let ()
                                       (declare (not safe))
                                       (_recur189159_
                                        _hd189194_
                                        _is-e?189165_)))
                                    (__tmp193762
                                     (let ()
                                       (declare (not safe))
                                       (_recur189159_
                                        _rest189228_
                                        _is-e?189165_))))
                                (declare (not safe))
                                (_make-cons189157_ __tmp193763 __tmp193762))))
                      (let () (declare (not safe)) (_E189232189241_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E189232189241_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E189231189257_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E189173189182_))))))
                      (let () (declare (not safe)) (_E189173189182_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E189172189261_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e189164_))
                                                    (let ((_g193755_
                                                           (let ((__tmp193757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e189164_)))))
                     (declare (not safe))
                     (_recur189159_ __tmp193757 _is-e?189165_))))
              (begin
                (let ((_g193756_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g193755_)
                             (##vector-length _g193755_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g193756_ 2)))
                      (error "Context expects 2 values" _g193756_)))
                (let ((_e189265_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g193755_ 0)))
                      (_vars189266_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g193755_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e189265_))
                          _vars189266_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e189164_))
                                                        (let ((_g193752_
                                                               (let ((__tmp193754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e189164_)))))
                         (declare (not safe))
                         (_recur189159_ __tmp193754 _is-e?189165_))))
                  (begin
                    (let ((_g193753_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g193752_)
                                 (##vector-length _g193752_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g193753_ 2)))
                          (error "Context expects 2 values" _g193753_)))
                    (let ((_e189268_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g193752_ 0)))
                          (_vars189269_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g193752_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e189268_))
                              _vars189269_))))
                (values (let () (declare (not safe)) (cons 'datum _e189164_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g193768_
                             (let ()
                               (declare (not safe))
                               (_recur189159_ _e189155_ gx#ellipsis?))))
                        (begin
                          (let ((_g193769_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g193768_)
                                       (##vector-length _g193768_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g193769_ 2)))
                                (error "Context expects 2 values" _g193769_)))
                          (let ((_tree189161_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g193768_ 0)))
                                (_vars189162_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g193768_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars189162_))
                                _tree189161_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx189111_
                                   _vars189162_))))))))))
          (let* ((_e189115189125_ _stx189111_)
                 (_E189117189129_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx189111_))))
                 (_E189116189151_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e189115189125_))
                        (let ((_e189118189133_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e189115189125_))))
                          (let ((_hd189119189136_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e189118189133_)))
                                (_tl189120189138_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e189118189133_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl189120189138_))
                                (let ((_e189121189141_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl189120189138_))))
                                  (let ((_hd189122189144_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e189121189141_)))
                                        (_tl189123189146_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e189121189141_))))
                                    (let ((_form189149_ _hd189122189144_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl189123189146_))
                                          (if '#t
                                              (let ((__tmp193771
                                                     (let ((__tmp193772
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse189114_
                                                               _form189149_))))
                                                       (declare (not safe))
                                                       (_generate189113_
                                                        __tmp193772)))
                                                    (__tmp193770
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx189111_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp193771
                                                 __tmp193770))
                                              (let ()
                                                (declare (not safe))
                                                (_E189117189129_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E189117189129_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E189117189129_)))))
                        (let () (declare (not safe)) (_E189117189129_))))))
            (let () (declare (not safe)) (_E189116189151_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx188375_
               _identifier=?188376_
               _unwrap-e188377_
               _wrap-e188378_)
        (letrec ((_generate-bindings188380_
                  (lambda (_target188975_
                           _ids188976_
                           _clauses188977_
                           _clause-ids188978_
                           _E188979_)
                    (letrec ((_generate1188981_
                              (lambda (_clause189078_
                                       _clause-id189079_
                                       _E189080_)
                                (let ((__tmp193777
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id189079_ '())))
                                      (__tmp193773
                                       (let ((__tmp193774
                                              (let ((__tmp193776
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target188975_
                                                             '())))
                                                    (__tmp193775
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause188382_
                                                        _target188975_
                                                        _ids188976_
                                                        _clause189078_
                                                        _E189080_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp193776
                                                 __tmp193775))))
                                         (declare (not safe))
                                         (cons __tmp193774 '()))))
                                  (declare (not safe))
                                  (cons __tmp193777 __tmp193773)))))
                      (let _lp188983_ ((_rest188985_ _clauses188977_)
                                       (_rest-ids188986_ _clause-ids188978_)
                                       (_bindings188987_ '()))
                        (let* ((_rest188988188996_ _rest188985_)
                               (_else188990189004_
                                (lambda () _bindings188987_))
                               (_K188992189066_
                                (lambda (_rest189007_ _clause189008_)
                                  (let* ((_rest-ids189009189016_
                                          _rest-ids188986_)
                                         (_E189011189020_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids189009189016_)))
                                         (_K189012189054_
                                          (lambda (_rest-ids189023_
                                                   _clause-id189024_)
                                            (let* ((_rest-ids189025189033_
                                                    _rest-ids189023_)
                                                   (_else189027189041_
                                                    (lambda ()
                                                      (let ((__tmp193778
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1188981_
                        _clause189008_
                        _clause-id189024_
                        _E188979_))))
                (declare (not safe))
                (cons __tmp193778 _bindings188987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K189029189046_
                                                    (lambda (_next-clause-id189044_)
                                                      (let ((__tmp193779
                                                             (let ((__tmp193780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1188981_
                               _clause189008_
                               _clause-id189024_
                               _next-clause-id189044_))))
                       (declare (not safe))
                       (cons __tmp193780 _bindings188987_))))
                (declare (not safe))
                (_lp188983_ _rest189007_ _rest-ids189023_ __tmp193779)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids189025189033_))
                                                  (let* ((_hd189030189049_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids189025189033_)))
                                                         (_next-clause-id189052_
                                                          _hd189030189049_))
                                                    (declare (not safe))
                                                    (_K189029189046_
                                                     _next-clause-id189052_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else189027189041_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids189009189016_))
                                        (let ((_hd189013189057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids189009189016_)))
                                              (_tl189014189059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids189009189016_))))
                                          (let* ((_clause-id189062_
                                                  _hd189013189057_)
                                                 (_rest-ids189064_
                                                  _tl189014189059_))
                                            (declare (not safe))
                                            (_K189012189054_
                                             _rest-ids189064_
                                             _clause-id189062_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E189011189020_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest188988188996_))
                              (let ((_hd188993189069_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest188988188996_)))
                                    (_tl188994189071_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest188988188996_))))
                                (let* ((_clause189074_ _hd188993189069_)
                                       (_rest189076_ _tl188994189071_))
                                  (declare (not safe))
                                  (_K188992189066_
                                   _rest189076_
                                   _clause189074_)))
                              (let ()
                                (declare (not safe))
                                (_else188990189004_))))))))
                 (_generate-body188381_
                  (lambda (_bindings188935_ _body188936_)
                    (let _recur188938_ ((_rest188940_ _bindings188935_))
                      (let* ((_rest188941188949_ _rest188940_)
                             (_else188943188957_ (lambda () _body188936_))
                             (_K188945188963_
                              (lambda (_rest188960_ _hd188961_)
                                (let ((__tmp193782
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd188961_ '())))
                                      (__tmp193781
                                       (let ()
                                         (declare (not safe))
                                         (_recur188938_ _rest188960_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp193782
                                   __tmp193781)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest188941188949_))
                            (let ((_hd188946188966_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest188941188949_)))
                                  (_tl188947188968_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest188941188949_))))
                              (let* ((_hd188971_ _hd188946188966_)
                                     (_rest188973_ _tl188947188968_))
                                (declare (not safe))
                                (_K188945188963_ _rest188973_ _hd188971_)))
                            (let ()
                              (declare (not safe))
                              (_else188943188957_)))))))
                 (_generate-clause188382_
                  (lambda (_target188798_ _ids188799_ _clause188800_ _E188801_)
                    (letrec ((_generate1188803_
                              (lambda (_hd188890_ _fender188891_ _body188892_)
                                (let ((_g193783_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause188384_
                                          _hd188890_
                                          _ids188799_))))
                                  (begin
                                    (let ((_g193784_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g193783_)
                                                 (##vector-length _g193783_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g193784_ 2)))
                                          (error "Context expects 2 values"
                                                 _g193784_)))
                                    (let ((_e188894_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193783_ 0)))
                                          (_mvars188895_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g193783_ 1))))
                                      (let* ((_pvars188897_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars188895_))))
                                             (_E188899_
                                              (let ((__tmp193785
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target188798_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E188801_ __tmp193785)))
                                             (_K188932_
                                              (let ((__tmp193786
                                                     (let ((__tmp193788
                                                            (map (lambda (_mvar188901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar188902_)
                           (let* ((_mvar188903188910_ _mvar188901_)
                                  (_E188905188914_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar188903188910_)))
                                  (_K188906188920_
                                   (lambda (_depth188917_ _id188918_)
                                     (let ((__tmp193789
                                            (let ((__tmp193790
                                                   (let ((__tmp193792
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id188918_)))
                                                         (__tmp193791
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar188902_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp193792
                                                      __tmp193791
                                                      _depth188917_))))
                                              (declare (not safe))
                                              (cons __tmp193790 '()))))
                                       (declare (not safe))
                                       (cons _id188918_ __tmp193789)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar188903188910_))
                                 (let ((_hd188907188923_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar188903188910_)))
                                       (_tl188908188925_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar188903188910_))))
                                   (let* ((_id188928_ _hd188907188923_)
                                          (_depth188930_ _tl188908188925_))
                                     (declare (not safe))
                                     (_K188906188920_
                                      _depth188930_
                                      _id188928_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E188905188914_)))))
                         _mvars188895_
                         _pvars188897_))
                   (__tmp193787
                    (if (let () (declare (not safe)) (eq? _fender188891_ '#t))
                        _body188892_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender188891_
                           _body188892_
                           _E188899_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp193788 __tmp193787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars188897_
                                                 __tmp193786))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match188383_
                                           _hd188890_
                                           _target188798_
                                           _e188894_
                                           _mvars188895_
                                           _K188932_
                                           _E188899_)))))))))
                      (let* ((_e188804188824_ _clause188800_)
                             (_E188813188828_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e188804188824_))))
                             (_E188806188862_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e188804188824_))
                                    (let ((_e188814188832_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e188804188824_))))
                                      (let ((_hd188815188835_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e188814188832_)))
                                            (_tl188816188837_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e188814188832_))))
                                        (let ((_hd188840_ _hd188815188835_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl188816188837_))
                                              (let ((_e188817188842_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl188816188837_))))
                                                (let ((_hd188818188845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e188817188842_)))
                                                      (_tl188819188847_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e188817188842_))))
                                                  (let ((_fender188850_
                                                         _hd188818188845_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl188819188847_))
                                                        (let ((_e188820188852_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl188819188847_))))
                  (let ((_hd188821188855_
                         (let () (declare (not safe)) (##car _e188820188852_)))
                        (_tl188822188857_
                         (let ()
                           (declare (not safe))
                           (##cdr _e188820188852_))))
                    (let ((_body188860_ _hd188821188855_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl188822188857_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1188803_
                                 _hd188840_
                                 _fender188850_
                                 _body188860_))
                              (let () (declare (not safe)) (_E188813188828_)))
                          (let () (declare (not safe)) (_E188813188828_))))))
                (let () (declare (not safe)) (_E188813188828_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E188813188828_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E188813188828_)))))
                             (_E188805188886_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e188804188824_))
                                    (let ((_e188807188866_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e188804188824_))))
                                      (let ((_hd188808188869_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e188807188866_)))
                                            (_tl188809188871_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e188807188866_))))
                                        (let ((_hd188874_ _hd188808188869_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl188809188871_))
                                              (let ((_e188810188876_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl188809188871_))))
                                                (let ((_hd188811188879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e188810188876_)))
                                                      (_tl188812188881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e188810188876_))))
                                                  (let ((_body188884_
                                                         _hd188811188879_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl188812188881_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1188803_
                                                               _hd188874_
                                                               '#t
                                                               _body188884_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E188806188862_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E188806188862_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E188806188862_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E188806188862_))))))
                        (let () (declare (not safe)) (_E188805188886_))))))
                 (_generate-match188383_
                  (lambda (_where188547_
                           _target188548_
                           _hd188549_
                           _mvars188550_
                           _K188551_
                           _E188552_)
                    (letrec ((_BUG188554_
                              (lambda (_q188796_)
                                (error '"BUG: syntax-case; generate"
                                       _stx188375_
                                       _hd188549_
                                       _q188796_)))
                             (_recur188555_
                              (lambda (_e188646_
                                       _vars188647_
                                       _target188648_
                                       _E188649_
                                       _k188650_)
                                (let* ((_e188651188658_ _e188646_)
                                       (_E188653188662_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e188651188658_)))
                                       (_K188654188784_
                                        (lambda (_body188665_ _tag188666_)
                                          (let ((_$e188668_ _tag188666_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e188668_))
                                                (_k188650_ _vars188647_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e188668_))
                                                    (let ((__tmp193899
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target188648_)))
                                                          (__tmp193895
                                                           (let ((__tmp193897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193898
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e188378_
                                    _body188665_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?188376_
                             __tmp193898
                             _target188648_)))
                         (__tmp193896 (_k188650_ _vars188647_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp193897 __tmp193896 _E188649_))))
              (declare (not safe))
              (gx#core-list 'if __tmp193899 __tmp193895 _E188649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e188668_))
                                                        (_k188650_
                                                         (let ((__tmp193894
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body188665_ _target188648_))))
                   (declare (not safe))
                   (cons __tmp193894 _vars188647_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e188668_))
                    (let ((_$e188671_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd188672_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl188673_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp193893
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target188648_)))
                            (__tmp193874
                             (let ((__tmp193888
                                    (let ((__tmp193889
                                           (let ((__tmp193892
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e188671_ '())))
                                                 (__tmp193890
                                                  (let ((__tmp193891
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e188377_
                                                            _target188648_))))
                                                    (declare (not safe))
                                                    (cons __tmp193891 '()))))
                                             (declare (not safe))
                                             (cons __tmp193892 __tmp193890))))
                                      (declare (not safe))
                                      (cons __tmp193889 '())))
                                   (__tmp193875
                                    (let ((__tmp193878
                                           (let ((__tmp193884
                                                  (let ((__tmp193887
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd188672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp193885
                 (let ((__tmp193886
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e188671_))))
                   (declare (not safe))
                   (cons __tmp193886 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193887
                                                          __tmp193885)))
                                                 (__tmp193879
                                                  (let ((__tmp193880
                                                         (let ((__tmp193883
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl188673_ '())))
                       (__tmp193881
                        (let ((__tmp193882
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e188671_))))
                          (declare (not safe))
                          (cons __tmp193882 '()))))
                   (declare (not safe))
                   (cons __tmp193883 __tmp193881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193880 '()))))
                                             (declare (not safe))
                                             (cons __tmp193884 __tmp193879)))
                                          (__tmp193876
                                           (let* ((_body188674188681_
                                                   _body188665_)
                                                  (_E188676188685_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body188674188681_)))
                                                  (_K188677188693_
                                                   (lambda (_tl188688_
                                                            _hd188689_)
                                                     (let ((__tmp193877
                                                            (lambda (_vars188691_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur188555_
                         _tl188688_
                         _vars188691_
                         _$tl188673_
                         _E188649_
                         _k188650_)))))
               (declare (not safe))
               (_recur188555_
                _hd188689_
                _vars188647_
                _$hd188672_
                _E188649_
                __tmp193877)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body188674188681_))
                                                 (let ((_hd188678188696_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body188674188681_)))
                                                       (_tl188679188698_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body188674188681_))))
                                                   (let* ((_hd188701_
                                                           _hd188678188696_)
                                                          (_tl188703_
                                                           _tl188679188698_))
                                                     (declare (not safe))
                                                     (_K188677188693_
                                                      _tl188703_
                                                      _hd188701_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E188676188685_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp193878
                                       __tmp193876))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp193888
                                __tmp193875))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp193893 __tmp193874 _E188649_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e188668_))
                        (let* ((_body188704188711_ _body188665_)
                               (_E188706188715_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body188704188711_)))
                               (_K188707188766_
                                (lambda (_tl188718_ _hd188719_)
                                  (let* ((_rlen188721_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen188556_ _tl188718_)))
                                         (_$target188723_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd188725_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl188727_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp188729_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e188731_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd188733_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl188735_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars188737_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars188557_ _hd188719_)))
                                         (_lvars188739_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars188737_)))
                                         (_tlvars188741_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars188737_)))
                                         (_linit188745_
                                          (map (lambda (_var188743_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars188739_)))
                                    (letrec ((_make-loop188748_
                                              (lambda (_vars188752_)
                                                (let ((__tmp193825
                                                       (let ((__tmp193826
                                                              (let ((__tmp193862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp188729_ '())))
                            (__tmp193827
                             (let ((__tmp193828
                                    (let ((__tmp193861
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd188725_ _lvars188739_)))
                                          (__tmp193829
                                           (let ((__tmp193860
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd188725_)))
                                                 (__tmp193838
                                                  (let ((__tmp193855
                                                         (let ((__tmp193856
                                                                (let ((__tmp193859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e188731_ '())))
                              (__tmp193857
                               (let ((__tmp193858
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e188377_
                                         _$hd188725_))))
                                 (declare (not safe))
                                 (cons __tmp193858 '()))))
                          (declare (not safe))
                          (cons __tmp193859 __tmp193857))))
                   (declare (not safe))
                   (cons __tmp193856 '())))
                (__tmp193839
                 (let ((__tmp193845
                        (let ((__tmp193851
                               (let ((__tmp193854
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd188733_ '())))
                                     (__tmp193852
                                      (let ((__tmp193853
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e188731_))))
                                        (declare (not safe))
                                        (cons __tmp193853 '()))))
                                 (declare (not safe))
                                 (cons __tmp193854 __tmp193852)))
                              (__tmp193846
                               (let ((__tmp193847
                                      (let ((__tmp193850
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl188735_ '())))
                                            (__tmp193848
                                             (let ((__tmp193849
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e188731_))))
                                               (declare (not safe))
                                               (cons __tmp193849 '()))))
                                        (declare (not safe))
                                        (cons __tmp193850 __tmp193848))))
                                 (declare (not safe))
                                 (cons __tmp193847 '()))))
                          (declare (not safe))
                          (cons __tmp193851 __tmp193846)))
                       (__tmp193840
                        (let ((__tmp193841
                               (lambda (_hdvars188754_)
                                 (let ((__tmp193842
                                        (let ((__tmp193843
                                               (map (lambda (_svar188756_
                                                             _lvar188757_)
                                                      (let ((__tmp193844
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar188756_ _hdvars188754_ _BUG188554_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp193844 _lvar188757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars188737_
                                                    _lvars188739_)))
                                          (declare (not safe))
                                          (cons _$lp-tl188735_ __tmp193843))))
                                   (declare (not safe))
                                   (cons _$lp188729_ __tmp193842)))))
                          (declare (not safe))
                          (_recur188555_
                           _hd188719_
                           '()
                           _$lp-hd188733_
                           _E188649_
                           __tmp193841))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp193845 __tmp193840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp193855
                                                     __tmp193839)))
                                                 (__tmp193830
                                                  (let ((__tmp193834
                                                         (map (lambda (_lvar188759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar188760_)
                        (let ((__tmp193837
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar188760_ '())))
                              (__tmp193835
                               (let ((__tmp193836
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar188759_))))
                                 (declare (not safe))
                                 (cons __tmp193836 '()))))
                          (declare (not safe))
                          (cons __tmp193837 __tmp193835)))
                      _lvars188739_
                      _tlvars188741_))
                (__tmp193831
                 (_k188650_
                  (let ((__tmp193832
                         (lambda (_svar188762_ _tlvar188763_ _r188764_)
                           (let ((__tmp193833
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar188762_ _tlvar188763_))))
                             (declare (not safe))
                             (cons __tmp193833 _r188764_)))))
                    (declare (not safe))
                    (foldl2 __tmp193832
                            _vars188752_
                            _svars188737_
                            _tlvars188741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp193834
                                                     __tmp193831))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp193860
                                              __tmp193838
                                              __tmp193830))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp193861
                                       __tmp193829))))
                               (declare (not safe))
                               (cons __tmp193828 '()))))
                        (declare (not safe))
                        (cons __tmp193862 __tmp193827))))
                 (declare (not safe))
                 (cons __tmp193826 '())))
              (__tmp193823
               (let ((__tmp193824
                      (let ()
                        (declare (not safe))
                        (cons _$target188723_ _linit188745_))))
                 (declare (not safe))
                 (cons _$lp188729_ __tmp193824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp193825
                                                   __tmp193823)))))
                                      (let ((_body188750_
                                             (let ((__tmp193864
                                                    (let ((__tmp193865
                                                           (let ((__tmp193868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193869
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl188727_ '()))))
                            (declare (not safe))
                            (cons _$target188723_ __tmp193869)))
                         (__tmp193866
                          (let ((__tmp193867
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target188648_
                                    _rlen188721_))))
                            (declare (not safe))
                            (cons __tmp193867 '()))))
                     (declare (not safe))
                     (cons __tmp193868 __tmp193866))))
              (declare (not safe))
              (cons __tmp193865 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp193863
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur188555_
                                                       _tl188718_
                                                       _vars188647_
                                                       _$tl188727_
                                                       _E188649_
                                                       _make-loop188748_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp193864
                                                __tmp193863))))
                                        (let ((__tmp193873
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target188648_)))
                                              (__tmp193870
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen188721_))
                                                   _body188750_
                                                   (let ((__tmp193871
                                                          (let ((__tmp193872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target188648_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp193872 _rlen188721_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp193871
                                                      _body188750_
                                                      _E188649_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp193873
                                           __tmp193870
                                           _E188649_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body188704188711_))
                              (let ((_hd188708188769_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body188704188711_)))
                                    (_tl188709188771_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body188704188711_))))
                                (let* ((_hd188774_ _hd188708188769_)
                                       (_tl188776_ _tl188709188771_))
                                  (declare (not safe))
                                  (_K188707188766_ _tl188776_ _hd188774_)))
                              (let () (declare (not safe)) (_E188706188715_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e188668_))
                            (let ((__tmp193822
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target188648_)))
                                  (__tmp193821 (_k188650_ _vars188647_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp193822
                               __tmp193821
                               _E188649_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e188668_))
                                (let ((_$e188778_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp193820
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target188648_)))
                                        (__tmp193812
                                         (let ((__tmp193814
                                                (let ((__tmp193815
                                                       (let ((__tmp193819
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e188778_ '())))
                     (__tmp193816
                      (let ((__tmp193817
                             (let ((__tmp193818
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e188377_
                                       _target188648_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp193818))))
                        (declare (not safe))
                        (cons __tmp193817 '()))))
                 (declare (not safe))
                 (cons __tmp193819 __tmp193816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp193815 '())))
                                               (__tmp193813
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur188555_
                                                   _body188665_
                                                   _vars188647_
                                                   _$e188778_
                                                   _E188649_
                                                   _k188650_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp193814
                                            __tmp193813))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp193820
                                     __tmp193812
                                     _E188649_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e188668_))
                                    (let ((_$e188780_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp193811
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target188648_)))
                                            (__tmp193803
                                             (let ((__tmp193805
                                                    (let ((__tmp193806
                                                           (let ((__tmp193810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e188780_ '())))
                         (__tmp193807
                          (let ((__tmp193808
                                 (let ((__tmp193809
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e188377_
                                           _target188648_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp193809))))
                            (declare (not safe))
                            (cons __tmp193808 '()))))
                     (declare (not safe))
                     (cons __tmp193810 __tmp193807))))
              (declare (not safe))
              (cons __tmp193806 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp193804
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur188555_
                                                       _body188665_
                                                       _vars188647_
                                                       _$e188780_
                                                       _E188649_
                                                       _k188650_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp193805
                                                __tmp193804))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp193811
                                         __tmp193803
                                         _E188649_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e188668_))
                                        (let ((_$e188782_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp193802
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target188648_)))
                                                (__tmp193793
                                                 (let ((__tmp193797
                                                        (let ((__tmp193798
                                                               (let ((__tmp193801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e188782_ '())))
                             (__tmp193799
                              (let ((__tmp193800
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target188648_))))
                                (declare (not safe))
                                (cons __tmp193800 '()))))
                         (declare (not safe))
                         (cons __tmp193801 __tmp193799))))
                  (declare (not safe))
                  (cons __tmp193798 '())))
               (__tmp193794
                (let ((__tmp193796
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e188782_ _body188665_)))
                      (__tmp193795 (_k188650_ _vars188647_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp193796 __tmp193795 _E188649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp193797
                                                    __tmp193794))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp193802
                                             __tmp193793
                                             _E188649_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG188554_ _e188646_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e188651188658_))
                                      (let ((_hd188655188787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e188651188658_)))
                                            (_tl188656188789_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e188651188658_))))
                                        (let* ((_tag188792_ _hd188655188787_)
                                               (_body188794_ _tl188656188789_))
                                          (declare (not safe))
                                          (_K188654188784_
                                           _body188794_
                                           _tag188792_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E188653188662_))))))
                             (_splice-rlen188556_
                              (lambda (_e188608_)
                                (let _lp188610_ ((_e188612_ _e188608_)
                                                 (_n188613_ '0))
                                  (let* ((_e188614188621_ _e188612_)
                                         (_E188616188625_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e188614188621_)))
                                         (_K188617188634_
                                          (lambda (_body188628_ _tag188629_)
                                            (let ((_$e188631_ _tag188629_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e188631_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx188375_
                                                     _where188547_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e188631_))
                                                      (let ((__tmp193901
                                                             (cdr _body188628_))
                                                            (__tmp193900
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n188613_ '1))))
                (declare (not safe))
                (_lp188610_ __tmp193901 __tmp193900))
              _n188613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e188614188621_))
                                        (let ((_hd188618188637_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e188614188621_)))
                                              (_tl188619188639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e188614188621_))))
                                          (let* ((_tag188642_ _hd188618188637_)
                                                 (_body188644_
                                                  _tl188619188639_))
                                            (declare (not safe))
                                            (_K188617188634_
                                             _body188644_
                                             _tag188642_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E188616188625_)))))))
                             (_splice-vars188557_
                              (lambda (_e188564_)
                                (let _recur188566_ ((_e188568_ _e188564_)
                                                    (_vars188569_ '()))
                                  (let* ((_e188570188577_ _e188568_)
                                         (_E188572188581_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e188570188577_)))
                                         (_K188573188596_
                                          (lambda (_body188584_ _tag188585_)
                                            (let ((_$e188587_ _tag188585_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e188587_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body188584_
                                                          _vars188569_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e188587_))
                  (let () (declare (not safe)) (eq? 'splice _$e188587_)))
              (let ((__tmp193904 (cdr _body188584_))
                    (__tmp193902
                     (let ((__tmp193903 (car _body188584_)))
                       (declare (not safe))
                       (_recur188566_ __tmp193903 _vars188569_))))
                (declare (not safe))
                (_recur188566_ __tmp193904 __tmp193902))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e188587_))
                      (let () (declare (not safe)) (eq? 'box _$e188587_)))
                  (let ()
                    (declare (not safe))
                    (_recur188566_ _body188584_ _vars188569_))
                  _vars188569_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e188570188577_))
                                        (let ((_hd188574188599_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e188570188577_)))
                                              (_tl188575188601_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e188570188577_))))
                                          (let* ((_tag188604_ _hd188574188599_)
                                                 (_body188606_
                                                  _tl188575188601_))
                                            (declare (not safe))
                                            (_K188573188596_
                                             _body188606_
                                             _tag188604_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E188572188581_)))))))
                             (_make-body188558_
                              (lambda (_vars188560_)
                                (let ((__tmp193905
                                       (map (lambda (_mvar188562_)
                                              (let ((__tmp193906
                                                     (car _mvar188562_)))
                                                (declare (not safe))
                                                (assgetq __tmp193906
                                                         _vars188560_
                                                         _BUG188554_)))
                                            _mvars188550_)))
                                  (declare (not safe))
                                  (cons _K188551_ __tmp193905)))))
                      (let ()
                        (declare (not safe))
                        (_recur188555_
                         _hd188549_
                         '()
                         _target188548_
                         _E188552_
                         _make-body188558_)))))
                 (_parse-clause188384_
                  (lambda (_hd188453_ _ids188454_)
                    (let _recur188456_ ((_e188458_ _hd188453_)
                                        (_vars188459_ '())
                                        (_depth188460_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e188458_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e188458_))
                              (values '(any) _vars188459_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e188458_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx188375_
                                     _hd188453_))
                                  (if (let ((__tmp193922
                                             (lambda (_id188462_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e188458_
                                                  _id188462_)))))
                                        (declare (not safe))
                                        (find __tmp193922 _ids188454_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e188458_))
                                              _vars188459_)
                                      (if (let ((__tmp193920
                                                 (lambda (_var188464_)
                                                   (let ((__tmp193921
                                                          (car _var188464_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e188458_
                                                      __tmp193921)))))
                                            (declare (not safe))
                                            (find __tmp193920 _vars188459_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx188375_
                                             _e188458_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e188458_))
                                                  (let ((__tmp193919
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e188458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth188460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193919
                                                          _vars188459_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e188458_))
                              (let* ((_e188465188472_ _e188458_)
                                     (_E188467188476_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e188465188472_))))
                                     (_E188466188537_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e188465188472_))
                                            (let ((_e188468188480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e188465188472_))))
                                              (let ((_hd188469188483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e188468188480_)))
                                                    (_tl188470188485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e188468188480_))))
                                                (let* ((_hd188488_
                                                        _hd188469188483_)
                                                       (_rest188490_
                                                        _tl188470188485_))
                                                  (if '#t
                                                      (let* ((_make-pair188505_
                                                              (lambda (_tag188492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd188493_
                               _tl188494_)
                        (let* ((_hd-depth188496_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag188492_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth188460_ '1))
                                    _depth188460_))
                               (_g193914_
                                (let ()
                                  (declare (not safe))
                                  (_recur188456_
                                   _hd188493_
                                   _vars188459_
                                   _hd-depth188496_))))
                          (begin
                            (let ((_g193915_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g193914_)
                                         (##vector-length _g193914_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g193915_ 2)))
                                  (error "Context expects 2 values"
                                         _g193915_)))
                            (let ((_hd188498_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g193914_ 0)))
                                  (_vars188499_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g193914_ 1))))
                              (let ((_g193916_
                                     (let ()
                                       (declare (not safe))
                                       (_recur188456_
                                        _tl188494_
                                        _vars188499_
                                        _depth188460_))))
                                (begin
                                  (let ((_g193917_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g193916_)
                                               (##vector-length _g193916_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g193917_ 2)))
                                        (error "Context expects 2 values"
                                               _g193917_)))
                                  (let ((_tl188501_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g193916_ 0)))
                                        (_vars188502_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g193916_ 1))))
                                    (let ()
                                      (values (let ((__tmp193918
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd188498_
                                                             _tl188501_))))
                                                (declare (not safe))
                                                (cons _tag188492_ __tmp193918))
                                              _vars188502_))))))))))
                     (_e188506188513_ _rest188490_)
                     (_E188508188517_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair188505_ 'cons _hd188488_ _rest188490_))))
                     (_E188507188533_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e188506188513_))
                            (let ((_e188509188521_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e188506188513_))))
                              (let ((_hd188510188524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e188509188521_)))
                                    (_tl188511188526_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e188509188521_))))
                                (let* ((_rest-hd188529_ _hd188510188524_)
                                       (_rest-tl188531_ _tl188511188526_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd188529_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair188505_
                                             'splice
                                             _hd188488_
                                             _rest-tl188531_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair188505_
                                             'cons
                                             _hd188488_
                                             _rest188490_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E188508188517_))))))
                            (let () (declare (not safe)) (_E188508188517_))))))
                (let () (declare (not safe)) (_E188507188533_)))
              (let () (declare (not safe)) (_E188467188476_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E188467188476_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E188466188537_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e188458_))
                                  (values '(null) _vars188459_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e188458_))
                                      (let ((_g193911_
                                             (let ((__tmp193913
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e188458_)))))
                                               (declare (not safe))
                                               (_recur188456_
                                                __tmp193913
                                                _vars188459_
                                                _depth188460_))))
                                        (begin
                                          (let ((_g193912_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g193911_)
                                                       (##vector-length
                                                        _g193911_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g193912_ 2)))
                                                (error "Context expects 2 values"
                                                       _g193912_)))
                                          (let ((_e188541_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g193911_ 0)))
                                                (_vars188542_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g193911_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e188541_))
                                                    _vars188542_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e188458_))
                                          (let ((_g193908_
                                                 (let ((__tmp193910
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e188458_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur188456_
                                                    __tmp193910
                                                    _vars188459_
                                                    _depth188460_))))
                                            (begin
                                              (let ((_g193909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g193908_)
                                                           (##vector-length
                                                            _g193908_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g193909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g193909_)))
                                              (let ((_e188544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g193908_
                                                        0)))
                                                    (_vars188545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g193908_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e188544_))
                                                        _vars188545_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e188458_))
                                              (values (let ((__tmp193907
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e188458_))))
                (declare (not safe))
                (cons 'datum __tmp193907))
              _vars188459_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx188375_
                                                 _e188458_))))))))))))
          (let* ((_e188385188398_ _stx188375_)
                 (_E188387188402_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e188385188398_))))
                 (_E188386188449_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e188385188398_))
                        (let ((_e188388188406_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e188385188398_))))
                          (let ((_hd188389188409_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e188388188406_)))
                                (_tl188390188411_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e188388188406_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl188390188411_))
                                (let ((_e188391188414_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl188390188411_))))
                                  (let ((_hd188392188417_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e188391188414_)))
                                        (_tl188393188419_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e188391188414_))))
                                    (let ((_expr188422_ _hd188392188417_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl188393188419_))
                                          (let ((_e188394188424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl188393188419_))))
                                            (let ((_hd188395188427_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e188394188424_)))
                                                  (_tl188396188429_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e188394188424_))))
                                              (let* ((_ids188432_
                                                      _hd188395188427_)
                                                     (_clauses188434_
                                                      _tl188396188429_))
                                                (if '#t
                                                    (if (let ((__tmp193940
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids188432_))))
                  (declare (not safe))
                  (not __tmp193940))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx188375_
                   _ids188432_))
                (if (let ((__tmp193939
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses188434_))))
                      (declare (not safe))
                      (not __tmp193939))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx188375_))
                    (let* ((_ids188436_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids188432_)))
                           (_clauses188438_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses188434_)))
                           (_clause-ids188440_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses188438_)))
                           (_E188442_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target188444_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first188446_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses188438_))
                                _E188442_
                                (car _clause-ids188440_))))
                      (let ((__tmp193924
                             (let ((__tmp193925
                                    (let ((__tmp193927
                                           (let ((__tmp193932
                                                  (let ((__tmp193933
                                                         (let ((__tmp193938
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E188442_ '())))
                       (__tmp193934
                        (let ((__tmp193935
                               (let ((__tmp193937
                                      (let ()
                                        (declare (not safe))
                                        (cons _target188444_ '())))
                                     (__tmp193936
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target188444_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp193937
                                  __tmp193936))))
                          (declare (not safe))
                          (cons __tmp193935 '()))))
                   (declare (not safe))
                   (cons __tmp193938 __tmp193934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193933 '())))
                                                 (__tmp193928
                                                  (let ((__tmp193931
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings188380_
                                                            _target188444_
                                                            _ids188436_
                                                            _clauses188438_
                                                            _clause-ids188440_
                                                            _E188442_)))
                                                        (__tmp193929
                                                         (let ((__tmp193930
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr188422_ '()))))
                   (declare (not safe))
                   (cons _first188446_ __tmp193930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body188381_
                                                     __tmp193931
                                                     __tmp193929))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp193932
                                              __tmp193928)))
                                          (__tmp193926
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx188375_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp193927
                                       __tmp193926))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp193925)))
                            (__tmp193923
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx188375_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp193924 __tmp193923)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E188387188402_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E188387188402_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E188387188402_)))))
                        (let () (declare (not safe)) (_E188387188402_))))))
            (let () (declare (not safe)) (_E188386188449_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx189085_)
        (let* ((_identifier=?189087_ 'free-identifier=?)
               (_unwrap-e189089_ 'syntax-e)
               (_wrap-e189091_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189085_
           _identifier=?189087_
           _unwrap-e189089_
           _wrap-e189091_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx189093_ _identifier=?189094_)
        (let* ((_unwrap-e189096_ 'syntax-e) (_wrap-e189098_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189093_
           _identifier=?189094_
           _unwrap-e189096_
           _wrap-e189098_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx189100_ _identifier=?189101_ _unwrap-e189102_)
        (let ((_wrap-e189104_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx189100_
           _identifier=?189101_
           _unwrap-e189102_
           _wrap-e189104_))))
    (define gx#macro-expand-syntax-case
      (lambda _g193942_
        (let ((_g193941_ (let () (declare (not safe)) (##length _g193942_))))
          (cond ((let () (declare (not safe)) (##fx= _g193941_ 1))
                 (apply (lambda (_stx189085_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx189085_)))
                        _g193942_))
                ((let () (declare (not safe)) (##fx= _g193941_ 2))
                 (apply (lambda (_stx189093_ _identifier=?189094_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx189093_
                             _identifier=?189094_)))
                        _g193942_))
                ((let () (declare (not safe)) (##fx= _g193941_ 3))
                 (apply (lambda (_stx189100_
                                 _identifier=?189101_
                                 _unwrap-e189102_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx189100_
                             _identifier=?189101_
                             _unwrap-e189102_)))
                        _g193942_))
                ((let () (declare (not safe)) (##fx= _g193941_ 4))
                 (apply (lambda (_stx189106_
                                 _identifier=?189107_
                                 _unwrap-e189108_
                                 _wrap-e189109_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx189106_
                             _identifier=?189107_
                             _unwrap-e189108_
                             _wrap-e189109_)))
                        _g193942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g193942_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx188372_)
        (if (let () (declare (not safe)) (gx#identifier? _stx188372_))
            (let ((__tmp193943
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx188372_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp193943 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd188330_ . _rest188331_)
        (let ((_len188333_ (length _hd188330_)))
          (let _lp188335_ ((_rest188337_ _rest188331_))
            (let* ((_rest188338188346_ _rest188337_)
                   (_else188340188354_ (lambda () '#!void))
                   (_K188342188360_
                    (lambda (_rest188357_ _hd188358_)
                      (if (fx= _len188333_ (length _hd188358_))
                          (let ()
                            (declare (not safe))
                            (_lp188335_ _rest188357_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd188358_))))))
              (if (let () (declare (not safe)) (##pair? _rest188338188346_))
                  (let ((_hd188343188363_
                         (let ()
                           (declare (not safe))
                           (##car _rest188338188346_)))
                        (_tl188344188365_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest188338188346_))))
                    (let* ((_hd188368_ _hd188343188363_)
                           (_rest188370_ _tl188344188365_))
                      (declare (not safe))
                      (_K188342188360_ _rest188370_ _hd188368_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx188288_ _n188289_)
        (let _lp188291_ ((_rest188293_ _stx188288_) (_r188294_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest188293_))
              (let* ((_g188295188302_
                      (let () (declare (not safe)) (gx#syntax-e _rest188293_)))
                     (_E188297188306_
                      (lambda ()
                        (error '"No clause matching" _g188295188302_)))
                     (_K188298188312_
                      (lambda (_rest188309_ _hd188310_)
                        (let ((__tmp193948
                               (let ()
                                 (declare (not safe))
                                 (cons _hd188310_ _r188294_))))
                          (declare (not safe))
                          (_lp188291_ _rest188309_ __tmp193948)))))
                (if (let () (declare (not safe)) (##pair? _g188295188302_))
                    (let ((_hd188299188315_
                           (let ()
                             (declare (not safe))
                             (##car _g188295188302_)))
                          (_tl188300188317_
                           (let ()
                             (declare (not safe))
                             (##cdr _g188295188302_))))
                      (let* ((_hd188320_ _hd188299188315_)
                             (_rest188322_ _tl188300188317_))
                        (declare (not safe))
                        (_K188298188312_ _rest188322_ _hd188320_)))
                    (let () (declare (not safe)) (_E188297188306_))))
              (let _lp188324_ ((_n188326_ _n188289_)
                               (_l188327_ _r188294_)
                               (_r188328_ _rest188293_))
                (if (let () (declare (not safe)) (null? _l188327_))
                    (values _l188327_ _r188328_)
                    (if (fxpositive? _n188326_)
                        (let ((__tmp193947
                               (let ()
                                 (declare (not safe))
                                 (fx- _n188326_ '1)))
                              (__tmp193946 (cdr _l188327_))
                              (__tmp193944
                               (let ((__tmp193945 (car _l188327_)))
                                 (declare (not safe))
                                 (cons __tmp193945 _r188328_))))
                          (declare (not safe))
                          (_lp188324_ __tmp193947 __tmp193946 __tmp193944))
                        (values (reverse _l188327_) _r188328_))))))))))
