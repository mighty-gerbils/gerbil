(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710617603)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp95666 (list gx#expander::t))
            (__tmp95664
             (let ((__tmp95665
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp95665 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp95666
         '(id depth)
         __tmp95664
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args95661_
        (apply make-instance gx#syntax-pattern::t _$args95661_)))
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
      (lambda (_self95658_ _stx95659_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx95659_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx95140_)
        (letrec ((_generate95142_
                  (lambda (_e95369_)
                    (letrec ((_BUG95371_
                              (lambda (_q95533_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx95140_
                                         _e95369_
                                         _q95533_))))
                             (_local-pattern-e95372_
                              (lambda (_pat95531_)
                                (let ((__tmp95667
                                       (##structure-ref
                                        _pat95531_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp95667))))
                             (_getvar95373_
                              (lambda (_q95528_ _vars95529_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q95528_
                                   _vars95529_
                                   _BUG95371_))))
                             (_getarg95374_
                              (lambda (_arg95494_ _vars95495_)
                                (let* ((_arg9549695503_ _arg95494_)
                                       (_E9549895507_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9549695503_))))
                                       (_K9549995516_
                                        (lambda (_e95510_ _tag95511_)
                                          (let ((_$e95513_ _tag95511_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e95513_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar95373_
                                                   _e95510_
                                                   _vars95495_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e95513_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e95372_
                                                       _e95510_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG95371_
                                                       _arg95494_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9549695503_))
                                      (let ((_hd9550095519_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9549695503_)))
                                            (_tl9550195521_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9549695503_))))
                                        (let* ((_tag95524_ _hd9550095519_)
                                               (_e95526_ _tl9550195521_))
                                          (declare (not safe))
                                          (_K9549995516_ _e95526_ _tag95524_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9549895507_)))))))
                      (let _recur95376_ ((_e95378_ _e95369_) (_vars95379_ '()))
                        (let* ((_e9538095387_ _e95378_)
                               (_E9538295391_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9538095387_))))
                               (_K9538395482_
                                (lambda (_body95394_ _tag95395_)
                                  (let ((_$e95397_ _tag95395_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95397_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body95394_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e95397_))
                                            (let ((_id95400_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body95394_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id95400_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks95402_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id95400_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks95402_))
                                                        (let ((__tmp95668
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body95394_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp95668))
                (let ((__tmp95670
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body95394_)))
                      (__tmp95669
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body95394_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp95670
                   __tmp95669
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id95400_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body95394_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG95371_
                                                         _e95378_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e95397_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e95372_
                                                   _body95394_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e95397_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar95373_
                                                       _body95394_
                                                       _vars95379_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e95397_))
                                                        (let ((__tmp95673
                                                               (let ((__tmp95674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body95394_)))
                         (declare (not safe))
                         (_recur95376_ __tmp95674 _vars95379_)))
                      (__tmp95671
                       (let ((__tmp95672 (cdr _body95394_)))
                         (declare (not safe))
                         (_recur95376_ __tmp95672 _vars95379_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp95673 __tmp95671))
                (if (let () (declare (not safe)) (eq? 'vector _$e95397_))
                    (let ((__tmp95675
                           (let ()
                             (declare (not safe))
                             (_recur95376_ _body95394_ _vars95379_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp95675))
                    (if (let () (declare (not safe)) (eq? 'box _$e95397_))
                        (let ((__tmp95676
                               (let ()
                                 (declare (not safe))
                                 (_recur95376_ _body95394_ _vars95379_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp95676))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e95397_))
                            (let* ((_body9540395414_ _body95394_)
                                   (_E9540595418_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9540395414_))))
                                   (_K9540695456_
                                    (lambda (_args95421_
                                             _iv95422_
                                             _hd95423_
                                             _depth95424_)
                                      (let* ((_targets95430_
                                              (map (lambda (_g9542595427_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg95374_
                                                        _g9542595427_
                                                        _vars95379_)))
                                                   _args95421_))
                                             (_fold-in95432_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args95421_)))
                                             (_fold-out95434_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args95436_
                                              (let ((__tmp95677
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out95434_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp95677
                                                        _fold-in95432_)))
                                             (_lambda-body95453_
                                              (if (fx> _depth95424_ '1)
                                                  (let ((_r-args95444_
                                                         (map (lambda (_arg95438_)
                                                                (let ((__tmp95678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg95438_)))
                          (declare (not safe))
                          (cons 'ref __tmp95678)))
                      _args95421_))
                (_r-vars95445_
                 (let ((__tmp95679
                        (lambda (_arg95440_ _var95441_ _r95442_)
                          (let ((__tmp95680
                                 (let ((__tmp95681 (cdr _arg95440_)))
                                   (declare (not safe))
                                   (cons __tmp95681 _var95441_))))
                            (declare (not safe))
                            (cons __tmp95680 _r95442_)))))
                   (declare (not safe))
                   (foldr2 __tmp95679
                           _vars95379_
                           _args95421_
                           _fold-in95432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp95682
                                                           (let ((__tmp95683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95687
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth95424_ '1)))
                                (__tmp95684
                                 (let ((__tmp95685
                                        (let ((__tmp95686
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out95434_))))
                                          (declare (not safe))
                                          (cons __tmp95686 _r-args95444_))))
                                   (declare (not safe))
                                   (cons _hd95423_ __tmp95685))))
                            (declare (not safe))
                            (cons __tmp95687 __tmp95684))))
                     (declare (not safe))
                     (cons 'splice __tmp95683))))
              (declare (not safe))
              (_recur95376_ __tmp95682 _r-vars95445_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars95451_
                                                          (let ((__tmp95688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg95447_ _var95448_ _r95449_)
                           (let ((__tmp95689
                                  (let ((__tmp95690 (cdr _arg95447_)))
                                    (declare (not safe))
                                    (cons __tmp95690 _var95448_))))
                             (declare (not safe))
                             (cons __tmp95689 _r95449_)))))
                    (declare (not safe))
                    (foldr2 __tmp95688
                            _vars95379_
                            _args95421_
                            _fold-in95432_)))
                 (__tmp95691
                  (let ()
                    (declare (not safe))
                    (_recur95376_ _hd95423_ _hd-vars95451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp95691
                                                     _fold-out95434_)))))
                                        (let ((__tmp95695
                                               (if (fx> (length _targets95430_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets95430_))
                                                   '#!void))
                                              (__tmp95692
                                               (let ((__tmp95694
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args95436_
                                                         _lambda-body95453_)))
                                                     (__tmp95693
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur95376_
                                                         _iv95422_
                                                         _vars95379_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp95694
                                                  __tmp95693
                                                  _targets95430_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp95695
                                           __tmp95692))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9540395414_))
                                  (let ((_hd9540795459_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9540395414_)))
                                        (_tl9540895461_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9540395414_))))
                                    (let ((_depth95464_ _hd9540795459_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9540895461_))
                                          (let ((_hd9540995466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9540895461_)))
                                                (_tl9541095468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9540895461_))))
                                            (let ((_hd95471_ _hd9540995466_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9541095468_))
                                                  (let ((_hd9541195473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9541095468_)))
                                                        (_tl9541295475_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9541095468_))))
                                                    (let* ((_iv95478_
                                                            _hd9541195473_)
                                                           (_args95480_
                                                            _tl9541295475_))
                                                      (declare (not safe))
                                                      (_K9540695456_
                                                       _args95480_
                                                       _iv95478_
                                                       _hd95471_
                                                       _depth95464_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9540595418_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9540595418_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9540595418_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e95397_))
                                _body95394_
                                (let ()
                                  (declare (not safe))
                                  (_BUG95371_ _e95378_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9538095387_))
                              (let ((_hd9538495485_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9538095387_)))
                                    (_tl9538595487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9538095387_))))
                                (let* ((_tag95490_ _hd9538495485_)
                                       (_body95492_ _tl9538595487_))
                                  (declare (not safe))
                                  (_K9538395482_ _body95492_ _tag95490_)))
                              (let ()
                                (declare (not safe))
                                (_E9538295391_))))))))
                 (_parse95143_
                  (lambda (_e95184_)
                    (letrec ((_make-cons95186_
                              (lambda (_hd95361_ _tl95362_)
                                (let ((_g95696_ _hd95361_)
                                      (_g95698_ _tl95362_))
                                  (begin
                                    (let ((_g95697_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95696_)
                                                 (##vector-length _g95696_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95697_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95697_)))
                                    (let ((_g95699_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95698_)
                                                 (##vector-length _g95698_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95699_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95699_)))
                                    (let ((_hd-e95364_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95696_ 0)))
                                          (_hd-vars95365_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95696_ 1))))
                                      (let ((_tl-e95366_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95698_ 0)))
                                            (_tl-vars95367_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95698_ 1))))
                                        (values (let ((__tmp95700
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e95364_
                                                               _tl-e95366_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp95700))
                                                (append _hd-vars95365_
                                                        _tl-vars95367_))))))))
                             (_make-splice95187_
                              (lambda (_where95300_
                                       _depth95301_
                                       _hd95302_
                                       _tl95303_)
                                (let ((_g95701_ _hd95302_)
                                      (_g95703_ _tl95303_))
                                  (begin
                                    (let ((_g95702_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95701_)
                                                 (##vector-length _g95701_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95702_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95702_)))
                                    (let ((_g95704_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95703_)
                                                 (##vector-length _g95703_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95704_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95704_)))
                                    (let ((_hd-e95305_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95701_ 0)))
                                          (_hd-vars95306_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95701_ 1))))
                                      (let ((_tl-e95307_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95703_ 0)))
                                            (_tl-vars95308_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95703_ 1))))
                                        (let _lp95310_ ((_rest95312_
                                                         _hd-vars95306_)
                                                        (_targets95313_ '())
                                                        (_vars95314_
                                                         _tl-vars95308_))
                                          (let* ((_rest9531595325_ _rest95312_)
                                                 (_else9531795333_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets95313_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx95140_
                                                           _where95300_))
                                                        (values (let ((__tmp95705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp95706
                                      (let ((__tmp95707
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e95307_
                                                     _targets95313_))))
                                        (declare (not safe))
                                        (cons _hd-e95305_ __tmp95707))))
                                 (declare (not safe))
                                 (cons _depth95301_ __tmp95706))))
                          (declare (not safe))
                          (cons 'splice __tmp95705))
                        _vars95314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9531995342_
                                                  (lambda (_rest95336_
                                                           _hd-pat95337_
                                                           _hd-depth*95338_)
                                                    (let ((_hd-depth95340_
                                                           (fx- _hd-depth*95338_
                                                                _depth95301_)))
                                                      (if (fxpositive?
                                                           _hd-depth95340_)
                                                          (let ((__tmp95710
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp95711
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat95337_))))
                           (declare (not safe))
                           (cons __tmp95711 _targets95313_)))
                        (__tmp95708
                         (let ((__tmp95709
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth95340_ _hd-pat95337_))))
                           (declare (not safe))
                           (cons __tmp95709 _vars95314_))))
                    (declare (not safe))
                    (_lp95310_ _rest95336_ __tmp95710 __tmp95708))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth95340_))
                      (let ((__tmp95712
                             (let ((__tmp95713
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat95337_))))
                               (declare (not safe))
                               (cons __tmp95713 _targets95313_))))
                        (declare (not safe))
                        (_lp95310_ _rest95336_ __tmp95712 _vars95314_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx95140_
                         _where95300_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9531595325_))
                                                (let ((_hd9532095345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9531595325_)))
                                                      (_tl9532195347_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9531595325_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9532095345_))
                                                      (let ((_hd9532295350_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9532095345_)))
                    (_tl9532395352_
                     (let () (declare (not safe)) (##cdr _hd9532095345_))))
                (let* ((_hd-depth*95355_ _hd9532295350_)
                       (_hd-pat95357_ _tl9532395352_)
                       (_rest95359_ _tl9532195347_))
                  (declare (not safe))
                  (_K9531995342_ _rest95359_ _hd-pat95357_ _hd-depth*95355_)))
              (let () (declare (not safe)) (_else9531795333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9531795333_)))))))))))
                             (_recur95188_
                              (lambda (_e95193_ _is-e?95194_)
                                (if (_is-e?95194_ _e95193_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx95140_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e95193_))
                                        (let* ((_pat95196_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e95193_)))
                                               (_depth95198_
                                                (##structure-ref
                                                 _pat95196_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth95198_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat95196_))
                                                      (let ((__tmp95714
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth95198_ _pat95196_))))
                (declare (not safe))
                (cons __tmp95714 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat95196_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e95193_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e95193_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e95193_))
                                                (let* ((_e9520095207_ _e95193_)
                                                       (_E9520295211_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9520095207_))))
                                                       (_E9520195290_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9520095207_))
                      (let ((_e9520395215_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9520095207_))))
                        (let ((_hd9520495218_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9520395215_)))
                              (_tl9520595220_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9520395215_))))
                          (let* ((_hd95223_ _hd9520495218_)
                                 (_rest95225_ _tl9520595220_))
                            (if '#t
                                (if (_is-e?95194_ _hd95223_)
                                    (let* ((_e9522695233_ _rest95225_)
                                           (_E9522895237_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx95140_
                                                 _e95193_))))
                                           (_E9522795251_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9522695233_))
                                                  (let ((_e9522995241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9522695233_))))
                                                    (let ((_hd9523095244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9522995241_)))
                                                          (_tl9523195246_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9522995241_))))
                                                      (let ((_rest95249_
                                                             _hd9523095244_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9523195246_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur95188_ _rest95249_ false))
                        (let () (declare (not safe)) (_E9522895237_)))
                    (let () (declare (not safe)) (_E9522895237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9522895237_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9522795251_)))
                                    (let _lp95255_ ((_rest95257_ _rest95225_)
                                                    (_depth95258_ '0))
                                      (let* ((_e9525995266_ _rest95257_)
                                             (_E9526195270_
                                              (lambda ()
                                                (if (fxpositive? _depth95258_)
                                                    (let ((__tmp95716
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95188_
                                                              _hd95223_
                                                              _is-e?95194_)))
                                                          (__tmp95715
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95188_
                                                              _rest95257_
                                                              _is-e?95194_))))
                                                      (declare (not safe))
                                                      (_make-splice95187_
                                                       _e95193_
                                                       _depth95258_
                                                       __tmp95716
                                                       __tmp95715))
                                                    (let ((__tmp95718
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95188_
                                                              _hd95223_
                                                              _is-e?95194_)))
                                                          (__tmp95717
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95188_
                                                              _rest95257_
                                                              _is-e?95194_))))
                                                      (declare (not safe))
                                                      (_make-cons95186_
                                                       __tmp95718
                                                       __tmp95717)))))
                                             (_E9526095286_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9525995266_))
                                                    (let ((_e9526295274_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9525995266_))))
                                                      (let ((_hd9526395277_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9526295274_)))
                    (_tl9526495279_
                     (let () (declare (not safe)) (##cdr _e9526295274_))))
                (let* ((_rest-hd95282_ _hd9526395277_)
                       (_rest-tl95284_ _tl9526495279_))
                  (if '#t
                      (if (_is-e?95194_ _rest-hd95282_)
                          (let ((__tmp95719
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth95258_ '1))))
                            (declare (not safe))
                            (_lp95255_ _rest-tl95284_ __tmp95719))
                          (if (fxpositive? _depth95258_)
                              (let ((__tmp95721
                                     (let ()
                                       (declare (not safe))
                                       (_recur95188_ _hd95223_ _is-e?95194_)))
                                    (__tmp95720
                                     (let ()
                                       (declare (not safe))
                                       (_recur95188_
                                        _rest95257_
                                        _is-e?95194_))))
                                (declare (not safe))
                                (_make-splice95187_
                                 _e95193_
                                 _depth95258_
                                 __tmp95721
                                 __tmp95720))
                              (let ((__tmp95723
                                     (let ()
                                       (declare (not safe))
                                       (_recur95188_ _hd95223_ _is-e?95194_)))
                                    (__tmp95722
                                     (let ()
                                       (declare (not safe))
                                       (_recur95188_
                                        _rest95257_
                                        _is-e?95194_))))
                                (declare (not safe))
                                (_make-cons95186_ __tmp95723 __tmp95722))))
                      (let () (declare (not safe)) (_E9526195270_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9526195270_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9526095286_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9520295211_))))))
                      (let () (declare (not safe)) (_E9520295211_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9520195290_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e95193_))
                                                    (let ((_g95724_
                                                           (let ((__tmp95726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e95193_)))))
                     (declare (not safe))
                     (_recur95188_ __tmp95726 _is-e?95194_))))
              (begin
                (let ((_g95725_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g95724_)
                             (##vector-length _g95724_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g95725_ 2)))
                      (error "Context expects 2 values" _g95725_)))
                (let ((_e95294_
                       (let () (declare (not safe)) (##vector-ref _g95724_ 0)))
                      (_vars95295_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g95724_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e95294_))
                          _vars95295_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e95193_))
                                                        (let ((_g95727_
                                                               (let ((__tmp95729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e95193_)))))
                         (declare (not safe))
                         (_recur95188_ __tmp95729 _is-e?95194_))))
                  (begin
                    (let ((_g95728_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g95727_)
                                 (##vector-length _g95727_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g95728_ 2)))
                          (error "Context expects 2 values" _g95728_)))
                    (let ((_e95297_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g95727_ 0)))
                          (_vars95298_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g95727_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e95297_))
                              _vars95298_))))
                (values (let () (declare (not safe)) (cons 'datum _e95193_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g95730_
                             (let ()
                               (declare (not safe))
                               (_recur95188_ _e95184_ gx#ellipsis?))))
                        (begin
                          (let ((_g95731_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g95730_)
                                       (##vector-length _g95730_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g95731_ 2)))
                                (error "Context expects 2 values" _g95731_)))
                          (let ((_tree95190_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g95730_ 0)))
                                (_vars95191_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g95730_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars95191_))
                                _tree95190_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx95140_
                                   _vars95191_))))))))))
          (let* ((_e9514495154_ _stx95140_)
                 (_E9514695158_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx95140_))))
                 (_E9514595180_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9514495154_))
                        (let ((_e9514795162_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9514495154_))))
                          (let ((_hd9514895165_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9514795162_)))
                                (_tl9514995167_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9514795162_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9514995167_))
                                (let ((_e9515095170_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9514995167_))))
                                  (let ((_hd9515195173_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9515095170_)))
                                        (_tl9515295175_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9515095170_))))
                                    (let ((_form95178_ _hd9515195173_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9515295175_))
                                          (if '#t
                                              (let ((__tmp95733
                                                     (let ((__tmp95734
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse95143_
                                                               _form95178_))))
                                                       (declare (not safe))
                                                       (_generate95142_
                                                        __tmp95734)))
                                                    (__tmp95732
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx95140_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp95733
                                                 __tmp95732))
                                              (let ()
                                                (declare (not safe))
                                                (_E9514695158_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9514695158_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9514695158_)))))
                        (let () (declare (not safe)) (_E9514695158_))))))
            (let () (declare (not safe)) (_E9514595180_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx94404_ _identifier=?94405_ _unwrap-e94406_ _wrap-e94407_)
        (letrec ((_generate-bindings94409_
                  (lambda (_target95004_
                           _ids95005_
                           _clauses95006_
                           _clause-ids95007_
                           _E95008_)
                    (letrec ((_generate195010_
                              (lambda (_clause95107_ _clause-id95108_ _E95109_)
                                (let ((__tmp95739
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id95108_ '())))
                                      (__tmp95735
                                       (let ((__tmp95736
                                              (let ((__tmp95738
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95004_
                                                             '())))
                                                    (__tmp95737
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause94411_
                                                        _target95004_
                                                        _ids95005_
                                                        _clause95107_
                                                        _E95109_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp95738
                                                 __tmp95737))))
                                         (declare (not safe))
                                         (cons __tmp95736 '()))))
                                  (declare (not safe))
                                  (cons __tmp95739 __tmp95735)))))
                      (let _lp95012_ ((_rest95014_ _clauses95006_)
                                      (_rest-ids95015_ _clause-ids95007_)
                                      (_bindings95016_ '()))
                        (let* ((_rest9501795025_ _rest95014_)
                               (_else9501995033_ (lambda () _bindings95016_))
                               (_K9502195095_
                                (lambda (_rest95036_ _clause95037_)
                                  (let* ((_rest-ids9503895045_ _rest-ids95015_)
                                         (_E9504095049_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9503895045_))))
                                         (_K9504195083_
                                          (lambda (_rest-ids95052_
                                                   _clause-id95053_)
                                            (let* ((_rest-ids9505495062_
                                                    _rest-ids95052_)
                                                   (_else9505695070_
                                                    (lambda ()
                                                      (let ((__tmp95740
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate195010_
                        _clause95037_
                        _clause-id95053_
                        _E95008_))))
                (declare (not safe))
                (cons __tmp95740 _bindings95016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9505895075_
                                                    (lambda (_next-clause-id95073_)
                                                      (let ((__tmp95741
                                                             (let ((__tmp95742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate195010_
                               _clause95037_
                               _clause-id95053_
                               _next-clause-id95073_))))
                       (declare (not safe))
                       (cons __tmp95742 _bindings95016_))))
                (declare (not safe))
                (_lp95012_ _rest95036_ _rest-ids95052_ __tmp95741)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9505495062_))
                                                  (let* ((_hd9505995078_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9505495062_)))
                                                         (_next-clause-id95081_
                                                          _hd9505995078_))
                                                    (declare (not safe))
                                                    (_K9505895075_
                                                     _next-clause-id95081_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9505695070_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9503895045_))
                                        (let ((_hd9504295086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9503895045_)))
                                              (_tl9504395088_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9503895045_))))
                                          (let* ((_clause-id95091_
                                                  _hd9504295086_)
                                                 (_rest-ids95093_
                                                  _tl9504395088_))
                                            (declare (not safe))
                                            (_K9504195083_
                                             _rest-ids95093_
                                             _clause-id95091_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9504095049_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9501795025_))
                              (let ((_hd9502295098_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9501795025_)))
                                    (_tl9502395100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9501795025_))))
                                (let* ((_clause95103_ _hd9502295098_)
                                       (_rest95105_ _tl9502395100_))
                                  (declare (not safe))
                                  (_K9502195095_ _rest95105_ _clause95103_)))
                              (let ()
                                (declare (not safe))
                                (_else9501995033_))))))))
                 (_generate-body94410_
                  (lambda (_bindings94964_ _body94965_)
                    (let _recur94967_ ((_rest94969_ _bindings94964_))
                      (let* ((_rest9497094978_ _rest94969_)
                             (_else9497294986_ (lambda () _body94965_))
                             (_K9497494992_
                              (lambda (_rest94989_ _hd94990_)
                                (let ((__tmp95744
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd94990_ '())))
                                      (__tmp95743
                                       (let ()
                                         (declare (not safe))
                                         (_recur94967_ _rest94989_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp95744
                                   __tmp95743)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9497094978_))
                            (let ((_hd9497594995_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9497094978_)))
                                  (_tl9497694997_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9497094978_))))
                              (let* ((_hd95000_ _hd9497594995_)
                                     (_rest95002_ _tl9497694997_))
                                (declare (not safe))
                                (_K9497494992_ _rest95002_ _hd95000_)))
                            (let ()
                              (declare (not safe))
                              (_else9497294986_)))))))
                 (_generate-clause94411_
                  (lambda (_target94827_ _ids94828_ _clause94829_ _E94830_)
                    (letrec ((_generate194832_
                              (lambda (_hd94919_ _fender94920_ _body94921_)
                                (let ((_g95745_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause94413_
                                          _hd94919_
                                          _ids94828_))))
                                  (begin
                                    (let ((_g95746_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95745_)
                                                 (##vector-length _g95745_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95746_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95746_)))
                                    (let ((_e94923_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95745_ 0)))
                                          (_mvars94924_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95745_ 1))))
                                      (let* ((_pvars94926_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars94924_))))
                                             (_E94928_
                                              (let ((__tmp95747
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target94827_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E94830_ __tmp95747)))
                                             (_K94961_
                                              (let ((__tmp95748
                                                     (let ((__tmp95750
                                                            (map (lambda (_mvar94930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar94931_)
                           (let* ((_mvar9493294939_ _mvar94930_)
                                  (_E9493494943_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9493294939_))))
                                  (_K9493594949_
                                   (lambda (_depth94946_ _id94947_)
                                     (let ((__tmp95751
                                            (let ((__tmp95752
                                                   (let ((__tmp95754
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id94947_)))
                                                         (__tmp95753
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar94931_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp95754
                                                      __tmp95753
                                                      _depth94946_))))
                                              (declare (not safe))
                                              (cons __tmp95752 '()))))
                                       (declare (not safe))
                                       (cons _id94947_ __tmp95751)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9493294939_))
                                 (let ((_hd9493694952_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9493294939_)))
                                       (_tl9493794954_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9493294939_))))
                                   (let* ((_id94957_ _hd9493694952_)
                                          (_depth94959_ _tl9493794954_))
                                     (declare (not safe))
                                     (_K9493594949_ _depth94959_ _id94957_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9493494943_)))))
                         _mvars94924_
                         _pvars94926_))
                   (__tmp95749
                    (if (let () (declare (not safe)) (eq? _fender94920_ '#t))
                        _body94921_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender94920_
                           _body94921_
                           _E94928_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp95750 __tmp95749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars94926_
                                                 __tmp95748))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match94412_
                                           _hd94919_
                                           _target94827_
                                           _e94923_
                                           _mvars94924_
                                           _K94961_
                                           _E94928_)))))))))
                      (let* ((_e9483394853_ _clause94829_)
                             (_E9484294857_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9483394853_))))
                             (_E9483594891_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9483394853_))
                                    (let ((_e9484394861_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9483394853_))))
                                      (let ((_hd9484494864_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9484394861_)))
                                            (_tl9484594866_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9484394861_))))
                                        (let ((_hd94869_ _hd9484494864_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9484594866_))
                                              (let ((_e9484694871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9484594866_))))
                                                (let ((_hd9484794874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9484694871_)))
                                                      (_tl9484894876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9484694871_))))
                                                  (let ((_fender94879_
                                                         _hd9484794874_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9484894876_))
                                                        (let ((_e9484994881_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9484894876_))))
                  (let ((_hd9485094884_
                         (let () (declare (not safe)) (##car _e9484994881_)))
                        (_tl9485194886_
                         (let () (declare (not safe)) (##cdr _e9484994881_))))
                    (let ((_body94889_ _hd9485094884_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9485194886_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate194832_
                                 _hd94869_
                                 _fender94879_
                                 _body94889_))
                              (let () (declare (not safe)) (_E9484294857_)))
                          (let () (declare (not safe)) (_E9484294857_))))))
                (let () (declare (not safe)) (_E9484294857_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9484294857_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9484294857_)))))
                             (_E9483494915_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9483394853_))
                                    (let ((_e9483694895_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9483394853_))))
                                      (let ((_hd9483794898_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9483694895_)))
                                            (_tl9483894900_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9483694895_))))
                                        (let ((_hd94903_ _hd9483794898_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9483894900_))
                                              (let ((_e9483994905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9483894900_))))
                                                (let ((_hd9484094908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9483994905_)))
                                                      (_tl9484194910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9483994905_))))
                                                  (let ((_body94913_
                                                         _hd9484094908_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9484194910_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate194832_
                                                               _hd94903_
                                                               '#t
                                                               _body94913_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9483594891_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9483594891_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9483594891_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9483594891_))))))
                        (let () (declare (not safe)) (_E9483494915_))))))
                 (_generate-match94412_
                  (lambda (_where94576_
                           _target94577_
                           _hd94578_
                           _mvars94579_
                           _K94580_
                           _E94581_)
                    (letrec ((_BUG94583_
                              (lambda (_q94825_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx94404_
                                         _hd94578_
                                         _q94825_))))
                             (_recur94584_
                              (lambda (_e94675_
                                       _vars94676_
                                       _target94677_
                                       _E94678_
                                       _k94679_)
                                (let* ((_e9468094687_ _e94675_)
                                       (_E9468294691_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9468094687_))))
                                       (_K9468394813_
                                        (lambda (_body94694_ _tag94695_)
                                          (let ((_$e94697_ _tag94695_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e94697_))
                                                (_k94679_ _vars94676_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e94697_))
                                                    (let ((__tmp95759
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target94677_)))
                                                          (__tmp95755
                                                           (let ((__tmp95757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95758
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e94407_ _body94694_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?94405_
                             __tmp95758
                             _target94677_)))
                         (__tmp95756 (_k94679_ _vars94676_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp95757 __tmp95756 _E94678_))))
              (declare (not safe))
              (gx#core-list 'if __tmp95759 __tmp95755 _E94678_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e94697_))
                                                        (_k94679_
                                                         (let ((__tmp95760
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body94694_ _target94677_))))
                   (declare (not safe))
                   (cons __tmp95760 _vars94676_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e94697_))
                    (let ((_$e94700_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd94701_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl94702_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp95780
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target94677_)))
                            (__tmp95761
                             (let ((__tmp95775
                                    (let ((__tmp95776
                                           (let ((__tmp95779
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e94700_ '())))
                                                 (__tmp95777
                                                  (let ((__tmp95778
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e94406_
                                                            _target94677_))))
                                                    (declare (not safe))
                                                    (cons __tmp95778 '()))))
                                             (declare (not safe))
                                             (cons __tmp95779 __tmp95777))))
                                      (declare (not safe))
                                      (cons __tmp95776 '())))
                                   (__tmp95762
                                    (let ((__tmp95765
                                           (let ((__tmp95771
                                                  (let ((__tmp95774
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd94701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp95772
                 (let ((__tmp95773
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e94700_))))
                   (declare (not safe))
                   (cons __tmp95773 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95774
                                                          __tmp95772)))
                                                 (__tmp95766
                                                  (let ((__tmp95767
                                                         (let ((__tmp95770
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl94702_ '())))
                       (__tmp95768
                        (let ((__tmp95769
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e94700_))))
                          (declare (not safe))
                          (cons __tmp95769 '()))))
                   (declare (not safe))
                   (cons __tmp95770 __tmp95768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95767 '()))))
                                             (declare (not safe))
                                             (cons __tmp95771 __tmp95766)))
                                          (__tmp95763
                                           (let* ((_body9470394710_
                                                   _body94694_)
                                                  (_E9470594714_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9470394710_))))
                                                  (_K9470694722_
                                                   (lambda (_tl94717_
                                                            _hd94718_)
                                                     (let ((__tmp95764
                                                            (lambda (_vars94720_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur94584_
                         _tl94717_
                         _vars94720_
                         _$tl94702_
                         _E94678_
                         _k94679_)))))
               (declare (not safe))
               (_recur94584_
                _hd94718_
                _vars94676_
                _$hd94701_
                _E94678_
                __tmp95764)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9470394710_))
                                                 (let ((_hd9470794725_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9470394710_)))
                                                       (_tl9470894727_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9470394710_))))
                                                   (let* ((_hd94730_
                                                           _hd9470794725_)
                                                          (_tl94732_
                                                           _tl9470894727_))
                                                     (declare (not safe))
                                                     (_K9470694722_
                                                      _tl94732_
                                                      _hd94730_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9470594714_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp95765
                                       __tmp95763))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp95775
                                __tmp95762))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp95780 __tmp95761 _E94678_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e94697_))
                        (let* ((_body9473394740_ _body94694_)
                               (_E9473594744_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9473394740_))))
                               (_K9473694795_
                                (lambda (_tl94747_ _hd94748_)
                                  (let* ((_rlen94750_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen94585_ _tl94747_)))
                                         (_$target94752_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd94754_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl94756_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp94758_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e94760_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd94762_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl94764_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars94766_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars94586_ _hd94748_)))
                                         (_lvars94768_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars94766_)))
                                         (_tlvars94770_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars94766_)))
                                         (_linit94774_
                                          (map (lambda (_var94772_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars94768_)))
                                    (letrec ((_make-loop94777_
                                              (lambda (_vars94781_)
                                                (let ((__tmp95783
                                                       (let ((__tmp95784
                                                              (let ((__tmp95820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp94758_ '())))
                            (__tmp95785
                             (let ((__tmp95786
                                    (let ((__tmp95819
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd94754_ _lvars94768_)))
                                          (__tmp95787
                                           (let ((__tmp95818
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd94754_)))
                                                 (__tmp95796
                                                  (let ((__tmp95813
                                                         (let ((__tmp95814
                                                                (let ((__tmp95817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e94760_ '())))
                              (__tmp95815
                               (let ((__tmp95816
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e94406_
                                         _$hd94754_))))
                                 (declare (not safe))
                                 (cons __tmp95816 '()))))
                          (declare (not safe))
                          (cons __tmp95817 __tmp95815))))
                   (declare (not safe))
                   (cons __tmp95814 '())))
                (__tmp95797
                 (let ((__tmp95803
                        (let ((__tmp95809
                               (let ((__tmp95812
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd94762_ '())))
                                     (__tmp95810
                                      (let ((__tmp95811
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e94760_))))
                                        (declare (not safe))
                                        (cons __tmp95811 '()))))
                                 (declare (not safe))
                                 (cons __tmp95812 __tmp95810)))
                              (__tmp95804
                               (let ((__tmp95805
                                      (let ((__tmp95808
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl94764_ '())))
                                            (__tmp95806
                                             (let ((__tmp95807
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e94760_))))
                                               (declare (not safe))
                                               (cons __tmp95807 '()))))
                                        (declare (not safe))
                                        (cons __tmp95808 __tmp95806))))
                                 (declare (not safe))
                                 (cons __tmp95805 '()))))
                          (declare (not safe))
                          (cons __tmp95809 __tmp95804)))
                       (__tmp95798
                        (let ((__tmp95799
                               (lambda (_hdvars94783_)
                                 (let ((__tmp95800
                                        (let ((__tmp95801
                                               (map (lambda (_svar94785_
                                                             _lvar94786_)
                                                      (let ((__tmp95802
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar94785_ _hdvars94783_ _BUG94583_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp95802 _lvar94786_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars94766_
                                                    _lvars94768_)))
                                          (declare (not safe))
                                          (cons _$lp-tl94764_ __tmp95801))))
                                   (declare (not safe))
                                   (cons _$lp94758_ __tmp95800)))))
                          (declare (not safe))
                          (_recur94584_
                           _hd94748_
                           '()
                           _$lp-hd94762_
                           _E94678_
                           __tmp95799))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp95803 __tmp95798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp95813
                                                     __tmp95797)))
                                                 (__tmp95788
                                                  (let ((__tmp95792
                                                         (map (lambda (_lvar94788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar94789_)
                        (let ((__tmp95795
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar94789_ '())))
                              (__tmp95793
                               (let ((__tmp95794
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar94788_))))
                                 (declare (not safe))
                                 (cons __tmp95794 '()))))
                          (declare (not safe))
                          (cons __tmp95795 __tmp95793)))
                      _lvars94768_
                      _tlvars94770_))
                (__tmp95789
                 (_k94679_
                  (let ((__tmp95790
                         (lambda (_svar94791_ _tlvar94792_ _r94793_)
                           (let ((__tmp95791
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar94791_ _tlvar94792_))))
                             (declare (not safe))
                             (cons __tmp95791 _r94793_)))))
                    (declare (not safe))
                    (foldl2 __tmp95790
                            _vars94781_
                            _svars94766_
                            _tlvars94770_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp95792
                                                     __tmp95789))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp95818
                                              __tmp95796
                                              __tmp95788))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp95819
                                       __tmp95787))))
                               (declare (not safe))
                               (cons __tmp95786 '()))))
                        (declare (not safe))
                        (cons __tmp95820 __tmp95785))))
                 (declare (not safe))
                 (cons __tmp95784 '())))
              (__tmp95781
               (let ((__tmp95782
                      (let ()
                        (declare (not safe))
                        (cons _$target94752_ _linit94774_))))
                 (declare (not safe))
                 (cons _$lp94758_ __tmp95782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp95783
                                                   __tmp95781)))))
                                      (let ((_body94779_
                                             (let ((__tmp95822
                                                    (let ((__tmp95823
                                                           (let ((__tmp95826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95827
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl94756_ '()))))
                            (declare (not safe))
                            (cons _$target94752_ __tmp95827)))
                         (__tmp95824
                          (let ((__tmp95825
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target94677_
                                    _rlen94750_))))
                            (declare (not safe))
                            (cons __tmp95825 '()))))
                     (declare (not safe))
                     (cons __tmp95826 __tmp95824))))
              (declare (not safe))
              (cons __tmp95823 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp95821
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur94584_
                                                       _tl94747_
                                                       _vars94676_
                                                       _$tl94756_
                                                       _E94678_
                                                       _make-loop94777_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp95822
                                                __tmp95821))))
                                        (let ((__tmp95831
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target94677_)))
                                              (__tmp95828
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen94750_))
                                                   _body94779_
                                                   (let ((__tmp95829
                                                          (let ((__tmp95830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target94677_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp95830 _rlen94750_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp95829
                                                      _body94779_
                                                      _E94678_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp95831
                                           __tmp95828
                                           _E94678_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9473394740_))
                              (let ((_hd9473794798_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9473394740_)))
                                    (_tl9473894800_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9473394740_))))
                                (let* ((_hd94803_ _hd9473794798_)
                                       (_tl94805_ _tl9473894800_))
                                  (declare (not safe))
                                  (_K9473694795_ _tl94805_ _hd94803_)))
                              (let () (declare (not safe)) (_E9473594744_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e94697_))
                            (let ((__tmp95833
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target94677_)))
                                  (__tmp95832 (_k94679_ _vars94676_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp95833
                               __tmp95832
                               _E94678_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e94697_))
                                (let ((_$e94807_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp95842
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target94677_)))
                                        (__tmp95834
                                         (let ((__tmp95836
                                                (let ((__tmp95837
                                                       (let ((__tmp95841
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e94807_ '())))
                     (__tmp95838
                      (let ((__tmp95839
                             (let ((__tmp95840
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e94406_
                                       _target94677_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp95840))))
                        (declare (not safe))
                        (cons __tmp95839 '()))))
                 (declare (not safe))
                 (cons __tmp95841 __tmp95838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp95837 '())))
                                               (__tmp95835
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur94584_
                                                   _body94694_
                                                   _vars94676_
                                                   _$e94807_
                                                   _E94678_
                                                   _k94679_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp95836
                                            __tmp95835))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp95842
                                     __tmp95834
                                     _E94678_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e94697_))
                                    (let ((_$e94809_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp95851
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target94677_)))
                                            (__tmp95843
                                             (let ((__tmp95845
                                                    (let ((__tmp95846
                                                           (let ((__tmp95850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e94809_ '())))
                         (__tmp95847
                          (let ((__tmp95848
                                 (let ((__tmp95849
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e94406_
                                           _target94677_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp95849))))
                            (declare (not safe))
                            (cons __tmp95848 '()))))
                     (declare (not safe))
                     (cons __tmp95850 __tmp95847))))
              (declare (not safe))
              (cons __tmp95846 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp95844
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur94584_
                                                       _body94694_
                                                       _vars94676_
                                                       _$e94809_
                                                       _E94678_
                                                       _k94679_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp95845
                                                __tmp95844))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp95851
                                         __tmp95843
                                         _E94678_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e94697_))
                                        (let ((_$e94811_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp95861
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target94677_)))
                                                (__tmp95852
                                                 (let ((__tmp95856
                                                        (let ((__tmp95857
                                                               (let ((__tmp95860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e94811_ '())))
                             (__tmp95858
                              (let ((__tmp95859
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target94677_))))
                                (declare (not safe))
                                (cons __tmp95859 '()))))
                         (declare (not safe))
                         (cons __tmp95860 __tmp95858))))
                  (declare (not safe))
                  (cons __tmp95857 '())))
               (__tmp95853
                (let ((__tmp95855
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e94811_ _body94694_)))
                      (__tmp95854 (_k94679_ _vars94676_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp95855 __tmp95854 _E94678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp95856
                                                    __tmp95853))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp95861
                                             __tmp95852
                                             _E94678_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG94583_ _e94675_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9468094687_))
                                      (let ((_hd9468494816_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9468094687_)))
                                            (_tl9468594818_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9468094687_))))
                                        (let* ((_tag94821_ _hd9468494816_)
                                               (_body94823_ _tl9468594818_))
                                          (declare (not safe))
                                          (_K9468394813_
                                           _body94823_
                                           _tag94821_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9468294691_))))))
                             (_splice-rlen94585_
                              (lambda (_e94637_)
                                (let _lp94639_ ((_e94641_ _e94637_)
                                                (_n94642_ '0))
                                  (let* ((_e9464394650_ _e94641_)
                                         (_E9464594654_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9464394650_))))
                                         (_K9464694663_
                                          (lambda (_body94657_ _tag94658_)
                                            (let ((_$e94660_ _tag94658_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e94660_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx94404_
                                                     _where94576_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e94660_))
                                                      (let ((__tmp95863
                                                             (cdr _body94657_))
                                                            (__tmp95862
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n94642_ '1))))
                (declare (not safe))
                (_lp94639_ __tmp95863 __tmp95862))
              _n94642_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9464394650_))
                                        (let ((_hd9464794666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9464394650_)))
                                              (_tl9464894668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9464394650_))))
                                          (let* ((_tag94671_ _hd9464794666_)
                                                 (_body94673_ _tl9464894668_))
                                            (declare (not safe))
                                            (_K9464694663_
                                             _body94673_
                                             _tag94671_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9464594654_)))))))
                             (_splice-vars94586_
                              (lambda (_e94593_)
                                (let _recur94595_ ((_e94597_ _e94593_)
                                                   (_vars94598_ '()))
                                  (let* ((_e9459994606_ _e94597_)
                                         (_E9460194610_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9459994606_))))
                                         (_K9460294625_
                                          (lambda (_body94613_ _tag94614_)
                                            (let ((_$e94616_ _tag94614_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e94616_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body94613_
                                                          _vars94598_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e94616_))
                  (let () (declare (not safe)) (eq? 'splice _$e94616_)))
              (let ((__tmp95866 (cdr _body94613_))
                    (__tmp95864
                     (let ((__tmp95865 (car _body94613_)))
                       (declare (not safe))
                       (_recur94595_ __tmp95865 _vars94598_))))
                (declare (not safe))
                (_recur94595_ __tmp95866 __tmp95864))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e94616_))
                      (let () (declare (not safe)) (eq? 'box _$e94616_)))
                  (let ()
                    (declare (not safe))
                    (_recur94595_ _body94613_ _vars94598_))
                  _vars94598_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9459994606_))
                                        (let ((_hd9460394628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9459994606_)))
                                              (_tl9460494630_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9459994606_))))
                                          (let* ((_tag94633_ _hd9460394628_)
                                                 (_body94635_ _tl9460494630_))
                                            (declare (not safe))
                                            (_K9460294625_
                                             _body94635_
                                             _tag94633_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9460194610_)))))))
                             (_make-body94587_
                              (lambda (_vars94589_)
                                (let ((__tmp95867
                                       (map (lambda (_mvar94591_)
                                              (let ((__tmp95868
                                                     (car _mvar94591_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp95868
                                                 _vars94589_
                                                 _BUG94583_)))
                                            _mvars94579_)))
                                  (declare (not safe))
                                  (cons _K94580_ __tmp95867)))))
                      (let ()
                        (declare (not safe))
                        (_recur94584_
                         _hd94578_
                         '()
                         _target94577_
                         _E94581_
                         _make-body94587_)))))
                 (_parse-clause94413_
                  (lambda (_hd94482_ _ids94483_)
                    (let _recur94485_ ((_e94487_ _hd94482_)
                                       (_vars94488_ '())
                                       (_depth94489_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e94487_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e94487_))
                              (values '(any) _vars94488_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e94487_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx94404_
                                     _hd94482_))
                                  (if (let ((__tmp95869
                                             (lambda (_id94491_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e94487_
                                                  _id94491_)))))
                                        (declare (not safe))
                                        (find __tmp95869 _ids94483_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e94487_))
                                              _vars94488_)
                                      (if (let ((__tmp95870
                                                 (lambda (_var94493_)
                                                   (let ((__tmp95871
                                                          (car _var94493_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e94487_
                                                      __tmp95871)))))
                                            (declare (not safe))
                                            (find __tmp95870 _vars94488_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx94404_
                                             _e94487_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e94487_))
                                                  (let ((__tmp95872
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e94487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth94489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95872
                                                          _vars94488_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e94487_))
                              (let* ((_e9449494501_ _e94487_)
                                     (_E9449694505_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9449494501_))))
                                     (_E9449594566_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9449494501_))
                                            (let ((_e9449794509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9449494501_))))
                                              (let ((_hd9449894512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9449794509_)))
                                                    (_tl9449994514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9449794509_))))
                                                (let* ((_hd94517_
                                                        _hd9449894512_)
                                                       (_rest94519_
                                                        _tl9449994514_))
                                                  (if '#t
                                                      (let* ((_make-pair94534_
                                                              (lambda (_tag94521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd94522_
                               _tl94523_)
                        (let* ((_hd-depth94525_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag94521_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth94489_ '1))
                                    _depth94489_))
                               (_g95873_
                                (let ()
                                  (declare (not safe))
                                  (_recur94485_
                                   _hd94522_
                                   _vars94488_
                                   _hd-depth94525_))))
                          (begin
                            (let ((_g95874_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g95873_)
                                         (##vector-length _g95873_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g95874_ 2)))
                                  (error "Context expects 2 values" _g95874_)))
                            (let ((_hd94527_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g95873_ 0)))
                                  (_vars94528_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g95873_ 1))))
                              (let ((_g95875_
                                     (let ()
                                       (declare (not safe))
                                       (_recur94485_
                                        _tl94523_
                                        _vars94528_
                                        _depth94489_))))
                                (begin
                                  (let ((_g95876_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95875_)
                                               (##vector-length _g95875_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95876_ 2)))
                                        (error "Context expects 2 values"
                                               _g95876_)))
                                  (let ((_tl94530_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g95875_ 0)))
                                        (_vars94531_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g95875_ 1))))
                                    (let ()
                                      (values (let ((__tmp95877
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd94527_
                                                             _tl94530_))))
                                                (declare (not safe))
                                                (cons _tag94521_ __tmp95877))
                                              _vars94531_))))))))))
                     (_e9453594542_ _rest94519_)
                     (_E9453794546_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair94534_ 'cons _hd94517_ _rest94519_))))
                     (_E9453694562_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9453594542_))
                            (let ((_e9453894550_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9453594542_))))
                              (let ((_hd9453994553_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9453894550_)))
                                    (_tl9454094555_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9453894550_))))
                                (let* ((_rest-hd94558_ _hd9453994553_)
                                       (_rest-tl94560_ _tl9454094555_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd94558_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair94534_
                                             'splice
                                             _hd94517_
                                             _rest-tl94560_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair94534_
                                             'cons
                                             _hd94517_
                                             _rest94519_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9453794546_))))))
                            (let () (declare (not safe)) (_E9453794546_))))))
                (let () (declare (not safe)) (_E9453694562_)))
              (let () (declare (not safe)) (_E9449694505_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9449694505_))))))
                                (let () (declare (not safe)) (_E9449594566_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e94487_))
                                  (values '(null) _vars94488_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e94487_))
                                      (let ((_g95878_
                                             (let ((__tmp95880
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e94487_)))))
                                               (declare (not safe))
                                               (_recur94485_
                                                __tmp95880
                                                _vars94488_
                                                _depth94489_))))
                                        (begin
                                          (let ((_g95879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g95878_)
                                                       (##vector-length
                                                        _g95878_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g95879_ 2)))
                                                (error "Context expects 2 values"
                                                       _g95879_)))
                                          (let ((_e94570_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95878_ 0)))
                                                (_vars94571_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95878_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e94570_))
                                                    _vars94571_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e94487_))
                                          (let ((_g95881_
                                                 (let ((__tmp95883
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e94487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur94485_
                                                    __tmp95883
                                                    _vars94488_
                                                    _depth94489_))))
                                            (begin
                                              (let ((_g95882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g95881_)
                                                           (##vector-length
                                                            _g95881_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g95882_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g95882_)))
                                              (let ((_e94573_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g95881_
                                                        0)))
                                                    (_vars94574_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g95881_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e94573_))
                                                        _vars94574_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e94487_))
                                              (values (let ((__tmp95884
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e94487_))))
                (declare (not safe))
                (cons 'datum __tmp95884))
              _vars94488_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx94404_
                                                 _e94487_))))))))))))
          (let* ((_e9441494427_ _stx94404_)
                 (_E9441694431_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9441494427_))))
                 (_E9441594478_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9441494427_))
                        (let ((_e9441794435_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9441494427_))))
                          (let ((_hd9441894438_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9441794435_)))
                                (_tl9441994440_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9441794435_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9441994440_))
                                (let ((_e9442094443_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9441994440_))))
                                  (let ((_hd9442194446_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9442094443_)))
                                        (_tl9442294448_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9442094443_))))
                                    (let ((_expr94451_ _hd9442194446_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9442294448_))
                                          (let ((_e9442394453_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9442294448_))))
                                            (let ((_hd9442494456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9442394453_)))
                                                  (_tl9442594458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9442394453_))))
                                              (let* ((_ids94461_
                                                      _hd9442494456_)
                                                     (_clauses94463_
                                                      _tl9442594458_))
                                                (if '#t
                                                    (if (let ((__tmp95885
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids94461_))))
                  (declare (not safe))
                  (not __tmp95885))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx94404_
                   _ids94461_))
                (if (let ((__tmp95886
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses94463_))))
                      (declare (not safe))
                      (not __tmp95886))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx94404_))
                    (let* ((_ids94465_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids94461_)))
                           (_clauses94467_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses94463_)))
                           (_clause-ids94469_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses94467_)))
                           (_E94471_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target94473_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first94475_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses94467_))
                                _E94471_
                                (car _clause-ids94469_))))
                      (let ((__tmp95888
                             (let ((__tmp95889
                                    (let ((__tmp95891
                                           (let ((__tmp95896
                                                  (let ((__tmp95897
                                                         (let ((__tmp95902
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E94471_ '())))
                       (__tmp95898
                        (let ((__tmp95899
                               (let ((__tmp95901
                                      (let ()
                                        (declare (not safe))
                                        (cons _target94473_ '())))
                                     (__tmp95900
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target94473_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp95901
                                  __tmp95900))))
                          (declare (not safe))
                          (cons __tmp95899 '()))))
                   (declare (not safe))
                   (cons __tmp95902 __tmp95898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95897 '())))
                                                 (__tmp95892
                                                  (let ((__tmp95895
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings94409_
                                                            _target94473_
                                                            _ids94465_
                                                            _clauses94467_
                                                            _clause-ids94469_
                                                            _E94471_)))
                                                        (__tmp95893
                                                         (let ((__tmp95894
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr94451_ '()))))
                   (declare (not safe))
                   (cons _first94475_ __tmp95894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body94410_
                                                     __tmp95895
                                                     __tmp95893))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp95896
                                              __tmp95892)))
                                          (__tmp95890
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx94404_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp95891
                                       __tmp95890))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp95889)))
                            (__tmp95887
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx94404_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp95888 __tmp95887)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9441694431_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9441694431_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9441694431_)))))
                        (let () (declare (not safe)) (_E9441694431_))))))
            (let () (declare (not safe)) (_E9441594478_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx95114_)
        (let* ((_identifier=?95116_ 'free-identifier=?)
               (_unwrap-e95118_ 'syntax-e)
               (_wrap-e95120_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95114_
           _identifier=?95116_
           _unwrap-e95118_
           _wrap-e95120_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx95122_ _identifier=?95123_)
        (let* ((_unwrap-e95125_ 'syntax-e) (_wrap-e95127_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95122_
           _identifier=?95123_
           _unwrap-e95125_
           _wrap-e95127_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx95129_ _identifier=?95130_ _unwrap-e95131_)
        (let ((_wrap-e95133_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95129_
           _identifier=?95130_
           _unwrap-e95131_
           _wrap-e95133_))))
    (define gx#macro-expand-syntax-case
      (lambda _g95904_
        (let ((_g95903_ (let () (declare (not safe)) (##length _g95904_))))
          (cond ((let () (declare (not safe)) (##fx= _g95903_ 1))
                 (apply (lambda (_stx95114_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx95114_)))
                        _g95904_))
                ((let () (declare (not safe)) (##fx= _g95903_ 2))
                 (apply (lambda (_stx95122_ _identifier=?95123_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx95122_
                             _identifier=?95123_)))
                        _g95904_))
                ((let () (declare (not safe)) (##fx= _g95903_ 3))
                 (apply (lambda (_stx95129_
                                 _identifier=?95130_
                                 _unwrap-e95131_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx95129_
                             _identifier=?95130_
                             _unwrap-e95131_)))
                        _g95904_))
                ((let () (declare (not safe)) (##fx= _g95903_ 4))
                 (apply (lambda (_stx95135_
                                 _identifier=?95136_
                                 _unwrap-e95137_
                                 _wrap-e95138_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx95135_
                             _identifier=?95136_
                             _unwrap-e95137_
                             _wrap-e95138_)))
                        _g95904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g95904_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx94401_)
        (if (let () (declare (not safe)) (gx#identifier? _stx94401_))
            (let ((__tmp95905
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx94401_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp95905 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd94359_ . _rest94360_)
        (let ((_len94362_ (length _hd94359_)))
          (let _lp94364_ ((_rest94366_ _rest94360_))
            (let* ((_rest9436794375_ _rest94366_)
                   (_else9436994383_ (lambda () '#!void))
                   (_K9437194389_
                    (lambda (_rest94386_ _hd94387_)
                      (if (fx= _len94362_ (length _hd94387_))
                          (let () (declare (not safe)) (_lp94364_ _rest94386_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd94387_))))))
              (if (let () (declare (not safe)) (##pair? _rest9436794375_))
                  (let ((_hd9437294392_
                         (let ()
                           (declare (not safe))
                           (##car _rest9436794375_)))
                        (_tl9437394394_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9436794375_))))
                    (let* ((_hd94397_ _hd9437294392_)
                           (_rest94399_ _tl9437394394_))
                      (declare (not safe))
                      (_K9437194389_ _rest94399_ _hd94397_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx94317_ _n94318_)
        (let _lp94320_ ((_rest94322_ _stx94317_) (_r94323_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest94322_))
              (let* ((_g9432494331_
                      (let () (declare (not safe)) (gx#syntax-e _rest94322_)))
                     (_E9432694335_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9432494331_))))
                     (_K9432794341_
                      (lambda (_rest94338_ _hd94339_)
                        (let ((__tmp95906
                               (let ()
                                 (declare (not safe))
                                 (cons _hd94339_ _r94323_))))
                          (declare (not safe))
                          (_lp94320_ _rest94338_ __tmp95906)))))
                (if (let () (declare (not safe)) (##pair? _g9432494331_))
                    (let ((_hd9432894344_
                           (let () (declare (not safe)) (##car _g9432494331_)))
                          (_tl9432994346_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9432494331_))))
                      (let* ((_hd94349_ _hd9432894344_)
                             (_rest94351_ _tl9432994346_))
                        (declare (not safe))
                        (_K9432794341_ _rest94351_ _hd94349_)))
                    (let () (declare (not safe)) (_E9432694335_))))
              (let _lp94353_ ((_n94355_ _n94318_)
                              (_l94356_ _r94323_)
                              (_r94357_ _rest94322_))
                (if (let () (declare (not safe)) (null? _l94356_))
                    (values _l94356_ _r94357_)
                    (if (fxpositive? _n94355_)
                        (let ((__tmp95910
                               (let () (declare (not safe)) (fx- _n94355_ '1)))
                              (__tmp95909 (cdr _l94356_))
                              (__tmp95907
                               (let ((__tmp95908 (car _l94356_)))
                                 (declare (not safe))
                                 (cons __tmp95908 _r94357_))))
                          (declare (not safe))
                          (_lp94353_ __tmp95910 __tmp95909 __tmp95907))
                        (values (reverse _l94356_) _r94357_))))))))))
