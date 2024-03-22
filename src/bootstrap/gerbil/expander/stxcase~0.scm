(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1711108655)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98643 (list gx#expander::t))
            (__tmp98641
             (let ((__tmp98642
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98642 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98643
         '(id depth)
         __tmp98641
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98638_
        (apply make-instance gx#syntax-pattern::t _$args98638_)))
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
      (lambda (_self98635_ _stx98636_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98636_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx98117_)
        (letrec ((_generate98119_
                  (lambda (_e98346_)
                    (letrec ((_BUG98348_
                              (lambda (_q98510_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx98117_
                                         _e98346_
                                         _q98510_))))
                             (_local-pattern-e98349_
                              (lambda (_pat98508_)
                                (let ((__tmp98644
                                       (##structure-ref
                                        _pat98508_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98644))))
                             (_getvar98350_
                              (lambda (_q98505_ _vars98506_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98505_
                                   _vars98506_
                                   _BUG98348_))))
                             (_getarg98351_
                              (lambda (_arg98471_ _vars98472_)
                                (let* ((_arg9847398480_ _arg98471_)
                                       (_E9847598484_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9847398480_))))
                                       (_K9847698493_
                                        (lambda (_e98487_ _tag98488_)
                                          (let ((_$e98490_ _tag98488_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98490_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98350_
                                                   _e98487_
                                                   _vars98472_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98490_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98349_
                                                       _e98487_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98348_
                                                       _arg98471_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9847398480_))
                                      (let ((_hd9847798496_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9847398480_)))
                                            (_tl9847898498_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9847398480_))))
                                        (let* ((_tag98501_ _hd9847798496_)
                                               (_e98503_ _tl9847898498_))
                                          (declare (not safe))
                                          (_K9847698493_ _e98503_ _tag98501_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9847598484_)))))))
                      (let _recur98353_ ((_e98355_ _e98346_) (_vars98356_ '()))
                        (let* ((_e9835798364_ _e98355_)
                               (_E9835998368_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9835798364_))))
                               (_K9836098459_
                                (lambda (_body98371_ _tag98372_)
                                  (let ((_$e98374_ _tag98372_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98374_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98371_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98374_))
                                            (let ((_id98377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98371_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98377_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98379_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98377_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98379_))
                                                        (let ((__tmp98672
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98371_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98672))
                (let ((__tmp98671
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98371_)))
                      (__tmp98670
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98371_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98671
                   __tmp98670
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98377_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98371_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98348_
                                                         _e98355_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98374_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98349_
                                                   _body98371_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98374_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98350_
                                                       _body98371_
                                                       _vars98356_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98374_))
                                                        (let ((__tmp98668
                                                               (let ((__tmp98669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98371_)))
                         (declare (not safe))
                         (_recur98353_ __tmp98669 _vars98356_)))
                      (__tmp98666
                       (let ((__tmp98667 (cdr _body98371_)))
                         (declare (not safe))
                         (_recur98353_ __tmp98667 _vars98356_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98668 __tmp98666))
                (if (let () (declare (not safe)) (eq? 'vector _$e98374_))
                    (let ((__tmp98665
                           (let ()
                             (declare (not safe))
                             (_recur98353_ _body98371_ _vars98356_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98665))
                    (if (let () (declare (not safe)) (eq? 'box _$e98374_))
                        (let ((__tmp98664
                               (let ()
                                 (declare (not safe))
                                 (_recur98353_ _body98371_ _vars98356_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98664))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98374_))
                            (let* ((_body9838098391_ _body98371_)
                                   (_E9838298395_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9838098391_))))
                                   (_K9838398433_
                                    (lambda (_args98398_
                                             _iv98399_
                                             _hd98400_
                                             _depth98401_)
                                      (let* ((_targets98407_
                                              (map (lambda (_g9840298404_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98351_
                                                        _g9840298404_
                                                        _vars98356_)))
                                                   _args98398_))
                                             (_fold-in98409_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98398_)))
                                             (_fold-out98411_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98413_
                                              (let ((__tmp98645
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98411_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98645
                                                        _fold-in98409_)))
                                             (_lambda-body98430_
                                              (if (fx> _depth98401_ '1)
                                                  (let ((_r-args98421_
                                                         (map (lambda (_arg98415_)
                                                                (let ((__tmp98650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98415_)))
                          (declare (not safe))
                          (cons 'ref __tmp98650)))
                      _args98398_))
                (_r-vars98422_
                 (let ((__tmp98651
                        (lambda (_arg98417_ _var98418_ _r98419_)
                          (let ((__tmp98652
                                 (let ((__tmp98653 (cdr _arg98417_)))
                                   (declare (not safe))
                                   (cons __tmp98653 _var98418_))))
                            (declare (not safe))
                            (cons __tmp98652 _r98419_)))))
                   (declare (not safe))
                   (foldr2 __tmp98651
                           _vars98356_
                           _args98398_
                           _fold-in98409_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98654
                                                           (let ((__tmp98655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98659
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98401_ '1)))
                                (__tmp98656
                                 (let ((__tmp98657
                                        (let ((__tmp98658
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98411_))))
                                          (declare (not safe))
                                          (cons __tmp98658 _r-args98421_))))
                                   (declare (not safe))
                                   (cons _hd98400_ __tmp98657))))
                            (declare (not safe))
                            (cons __tmp98659 __tmp98656))))
                     (declare (not safe))
                     (cons 'splice __tmp98655))))
              (declare (not safe))
              (_recur98353_ __tmp98654 _r-vars98422_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98428_
                                                          (let ((__tmp98646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98424_ _var98425_ _r98426_)
                           (let ((__tmp98647
                                  (let ((__tmp98648 (cdr _arg98424_)))
                                    (declare (not safe))
                                    (cons __tmp98648 _var98425_))))
                             (declare (not safe))
                             (cons __tmp98647 _r98426_)))))
                    (declare (not safe))
                    (foldr2 __tmp98646
                            _vars98356_
                            _args98398_
                            _fold-in98409_)))
                 (__tmp98649
                  (let ()
                    (declare (not safe))
                    (_recur98353_ _hd98400_ _hd-vars98428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98649
                                                     _fold-out98411_)))))
                                        (let ((__tmp98663
                                               (if (fx> (length _targets98407_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98407_))
                                                   '#!void))
                                              (__tmp98660
                                               (let ((__tmp98662
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98413_
                                                         _lambda-body98430_)))
                                                     (__tmp98661
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98353_
                                                         _iv98399_
                                                         _vars98356_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98662
                                                  __tmp98661
                                                  _targets98407_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98663
                                           __tmp98660))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9838098391_))
                                  (let ((_hd9838498436_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9838098391_)))
                                        (_tl9838598438_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9838098391_))))
                                    (let ((_depth98441_ _hd9838498436_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9838598438_))
                                          (let ((_hd9838698443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9838598438_)))
                                                (_tl9838798445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9838598438_))))
                                            (let ((_hd98448_ _hd9838698443_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9838798445_))
                                                  (let ((_hd9838898450_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9838798445_)))
                                                        (_tl9838998452_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9838798445_))))
                                                    (let* ((_iv98455_
                                                            _hd9838898450_)
                                                           (_args98457_
                                                            _tl9838998452_))
                                                      (declare (not safe))
                                                      (_K9838398433_
                                                       _args98457_
                                                       _iv98455_
                                                       _hd98448_
                                                       _depth98441_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9838298395_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9838298395_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9838298395_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98374_))
                                _body98371_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98348_ _e98355_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9835798364_))
                              (let ((_hd9836198462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9835798364_)))
                                    (_tl9836298464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9835798364_))))
                                (let* ((_tag98467_ _hd9836198462_)
                                       (_body98469_ _tl9836298464_))
                                  (declare (not safe))
                                  (_K9836098459_ _body98469_ _tag98467_)))
                              (let ()
                                (declare (not safe))
                                (_E9835998368_))))))))
                 (_parse98120_
                  (lambda (_e98161_)
                    (letrec ((_make-cons98163_
                              (lambda (_hd98338_ _tl98339_)
                                (let ((_g98673_ _hd98338_)
                                      (_g98675_ _tl98339_))
                                  (begin
                                    (let ((_g98674_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98673_)
                                                 (##vector-length _g98673_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98674_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98674_)))
                                    (let ((_g98676_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98675_)
                                                 (##vector-length _g98675_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98676_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98676_)))
                                    (let ((_hd-e98341_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98673_ 0)))
                                          (_hd-vars98342_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98673_ 1))))
                                      (let ((_tl-e98343_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98675_ 0)))
                                            (_tl-vars98344_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98675_ 1))))
                                        (values (let ((__tmp98677
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98341_
                                                               _tl-e98343_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98677))
                                                (append _hd-vars98342_
                                                        _tl-vars98344_))))))))
                             (_make-splice98164_
                              (lambda (_where98277_
                                       _depth98278_
                                       _hd98279_
                                       _tl98280_)
                                (let ((_g98678_ _hd98279_)
                                      (_g98680_ _tl98280_))
                                  (begin
                                    (let ((_g98679_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98678_)
                                                 (##vector-length _g98678_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98679_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98679_)))
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
                                    (let ((_hd-e98282_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98678_ 0)))
                                          (_hd-vars98283_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98678_ 1))))
                                      (let ((_tl-e98284_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98680_ 0)))
                                            (_tl-vars98285_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98680_ 1))))
                                        (let _lp98287_ ((_rest98289_
                                                         _hd-vars98283_)
                                                        (_targets98290_ '())
                                                        (_vars98291_
                                                         _tl-vars98285_))
                                          (let* ((_rest9829298302_ _rest98289_)
                                                 (_else9829498310_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98290_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx98117_
                                                           _where98277_))
                                                        (values (let ((__tmp98682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98683
                                      (let ((__tmp98684
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e98284_
                                                     _targets98290_))))
                                        (declare (not safe))
                                        (cons _hd-e98282_ __tmp98684))))
                                 (declare (not safe))
                                 (cons _depth98278_ __tmp98683))))
                          (declare (not safe))
                          (cons 'splice __tmp98682))
                        _vars98291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9829698319_
                                                  (lambda (_rest98313_
                                                           _hd-pat98314_
                                                           _hd-depth*98315_)
                                                    (let ((_hd-depth98317_
                                                           (fx- _hd-depth*98315_
                                                                _depth98278_)))
                                                      (if (fxpositive?
                                                           _hd-depth98317_)
                                                          (let ((__tmp98689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98690
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98314_))))
                           (declare (not safe))
                           (cons __tmp98690 _targets98290_)))
                        (__tmp98687
                         (let ((__tmp98688
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98317_ _hd-pat98314_))))
                           (declare (not safe))
                           (cons __tmp98688 _vars98291_))))
                    (declare (not safe))
                    (_lp98287_ _rest98313_ __tmp98689 __tmp98687))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98317_))
                      (let ((__tmp98685
                             (let ((__tmp98686
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98314_))))
                               (declare (not safe))
                               (cons __tmp98686 _targets98290_))))
                        (declare (not safe))
                        (_lp98287_ _rest98313_ __tmp98685 _vars98291_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx98117_
                         _where98277_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9829298302_))
                                                (let ((_hd9829798322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9829298302_)))
                                                      (_tl9829898324_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9829298302_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9829798322_))
                                                      (let ((_hd9829998327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9829798322_)))
                    (_tl9830098329_
                     (let () (declare (not safe)) (##cdr _hd9829798322_))))
                (let* ((_hd-depth*98332_ _hd9829998327_)
                       (_hd-pat98334_ _tl9830098329_)
                       (_rest98336_ _tl9829898324_))
                  (declare (not safe))
                  (_K9829698319_ _rest98336_ _hd-pat98334_ _hd-depth*98332_)))
              (let () (declare (not safe)) (_else9829498310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9829498310_)))))))))))
                             (_recur98165_
                              (lambda (_e98170_ _is-e?98171_)
                                (if (_is-e?98171_ _e98170_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx98117_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e98170_))
                                        (let* ((_pat98173_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e98170_)))
                                               (_depth98175_
                                                (##structure-ref
                                                 _pat98173_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth98175_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat98173_))
                                                      (let ((__tmp98706
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth98175_ _pat98173_))))
                (declare (not safe))
                (cons __tmp98706 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat98173_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e98170_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e98170_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e98170_))
                                                (let* ((_e9817798184_ _e98170_)
                                                       (_E9817998188_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9817798184_))))
                                                       (_E9817898267_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9817798184_))
                      (let ((_e9818098192_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9817798184_))))
                        (let ((_hd9818198195_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9818098192_)))
                              (_tl9818298197_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9818098192_))))
                          (let* ((_hd98200_ _hd9818198195_)
                                 (_rest98202_ _tl9818298197_))
                            (if '#t
                                (if (_is-e?98171_ _hd98200_)
                                    (let* ((_e9820398210_ _rest98202_)
                                           (_E9820598214_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx98117_
                                                 _e98170_))))
                                           (_E9820498228_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9820398210_))
                                                  (let ((_e9820698218_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9820398210_))))
                                                    (let ((_hd9820798221_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9820698218_)))
                                                          (_tl9820898223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9820698218_))))
                                                      (let ((_rest98226_
                                                             _hd9820798221_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9820898223_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur98165_ _rest98226_ false))
                        (let () (declare (not safe)) (_E9820598214_)))
                    (let () (declare (not safe)) (_E9820598214_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9820598214_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9820498228_)))
                                    (let _lp98232_ ((_rest98234_ _rest98202_)
                                                    (_depth98235_ '0))
                                      (let* ((_e9823698243_ _rest98234_)
                                             (_E9823898247_
                                              (lambda ()
                                                (if (fxpositive? _depth98235_)
                                                    (let ((__tmp98700
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98165_
                                                              _hd98200_
                                                              _is-e?98171_)))
                                                          (__tmp98699
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98165_
                                                              _rest98234_
                                                              _is-e?98171_))))
                                                      (declare (not safe))
                                                      (_make-splice98164_
                                                       _e98170_
                                                       _depth98235_
                                                       __tmp98700
                                                       __tmp98699))
                                                    (let ((__tmp98698
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98165_
                                                              _hd98200_
                                                              _is-e?98171_)))
                                                          (__tmp98697
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98165_
                                                              _rest98234_
                                                              _is-e?98171_))))
                                                      (declare (not safe))
                                                      (_make-cons98163_
                                                       __tmp98698
                                                       __tmp98697)))))
                                             (_E9823798263_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9823698243_))
                                                    (let ((_e9823998251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9823698243_))))
                                                      (let ((_hd9824098254_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9823998251_)))
                    (_tl9824198256_
                     (let () (declare (not safe)) (##cdr _e9823998251_))))
                (let* ((_rest-hd98259_ _hd9824098254_)
                       (_rest-tl98261_ _tl9824198256_))
                  (if '#t
                      (if (_is-e?98171_ _rest-hd98259_)
                          (let ((__tmp98705
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth98235_ '1))))
                            (declare (not safe))
                            (_lp98232_ _rest-tl98261_ __tmp98705))
                          (if (fxpositive? _depth98235_)
                              (let ((__tmp98704
                                     (let ()
                                       (declare (not safe))
                                       (_recur98165_ _hd98200_ _is-e?98171_)))
                                    (__tmp98703
                                     (let ()
                                       (declare (not safe))
                                       (_recur98165_
                                        _rest98234_
                                        _is-e?98171_))))
                                (declare (not safe))
                                (_make-splice98164_
                                 _e98170_
                                 _depth98235_
                                 __tmp98704
                                 __tmp98703))
                              (let ((__tmp98702
                                     (let ()
                                       (declare (not safe))
                                       (_recur98165_ _hd98200_ _is-e?98171_)))
                                    (__tmp98701
                                     (let ()
                                       (declare (not safe))
                                       (_recur98165_
                                        _rest98234_
                                        _is-e?98171_))))
                                (declare (not safe))
                                (_make-cons98163_ __tmp98702 __tmp98701))))
                      (let () (declare (not safe)) (_E9823898247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9823898247_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9823798263_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9817998188_))))))
                      (let () (declare (not safe)) (_E9817998188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9817898267_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e98170_))
                                                    (let ((_g98694_
                                                           (let ((__tmp98696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e98170_)))))
                     (declare (not safe))
                     (_recur98165_ __tmp98696 _is-e?98171_))))
              (begin
                (let ((_g98695_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98694_)
                             (##vector-length _g98694_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98695_ 2)))
                      (error "Context expects 2 values" _g98695_)))
                (let ((_e98271_
                       (let () (declare (not safe)) (##vector-ref _g98694_ 0)))
                      (_vars98272_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98694_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e98271_))
                          _vars98272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e98170_))
                                                        (let ((_g98691_
                                                               (let ((__tmp98693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e98170_)))))
                         (declare (not safe))
                         (_recur98165_ __tmp98693 _is-e?98171_))))
                  (begin
                    (let ((_g98692_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98691_)
                                 (##vector-length _g98691_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98692_ 2)))
                          (error "Context expects 2 values" _g98692_)))
                    (let ((_e98274_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98691_ 0)))
                          (_vars98275_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98691_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e98274_))
                              _vars98275_))))
                (values (let () (declare (not safe)) (cons 'datum _e98170_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98707_
                             (let ()
                               (declare (not safe))
                               (_recur98165_ _e98161_ gx#ellipsis?))))
                        (begin
                          (let ((_g98708_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98707_)
                                       (##vector-length _g98707_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98708_ 2)))
                                (error "Context expects 2 values" _g98708_)))
                          (let ((_tree98167_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98707_ 0)))
                                (_vars98168_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98707_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars98168_))
                                _tree98167_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx98117_
                                   _vars98168_))))))))))
          (let* ((_e9812198131_ _stx98117_)
                 (_E9812398135_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx98117_))))
                 (_E9812298157_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9812198131_))
                        (let ((_e9812498139_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9812198131_))))
                          (let ((_hd9812598142_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9812498139_)))
                                (_tl9812698144_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9812498139_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9812698144_))
                                (let ((_e9812798147_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9812698144_))))
                                  (let ((_hd9812898150_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9812798147_)))
                                        (_tl9812998152_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9812798147_))))
                                    (let ((_form98155_ _hd9812898150_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9812998152_))
                                          (if '#t
                                              (let ((__tmp98710
                                                     (let ((__tmp98711
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse98120_
                                                               _form98155_))))
                                                       (declare (not safe))
                                                       (_generate98119_
                                                        __tmp98711)))
                                                    (__tmp98709
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx98117_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98710
                                                 __tmp98709))
                                              (let ()
                                                (declare (not safe))
                                                (_E9812398135_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9812398135_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9812398135_)))))
                        (let () (declare (not safe)) (_E9812398135_))))))
            (let () (declare (not safe)) (_E9812298157_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97381_ _identifier=?97382_ _unwrap-e97383_ _wrap-e97384_)
        (letrec ((_generate-bindings97386_
                  (lambda (_target97981_
                           _ids97982_
                           _clauses97983_
                           _clause-ids97984_
                           _E97985_)
                    (letrec ((_generate197987_
                              (lambda (_clause98084_ _clause-id98085_ _E98086_)
                                (let ((__tmp98716
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id98085_ '())))
                                      (__tmp98712
                                       (let ((__tmp98713
                                              (let ((__tmp98715
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97981_
                                                             '())))
                                                    (__tmp98714
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97388_
                                                        _target97981_
                                                        _ids97982_
                                                        _clause98084_
                                                        _E98086_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98715
                                                 __tmp98714))))
                                         (declare (not safe))
                                         (cons __tmp98713 '()))))
                                  (declare (not safe))
                                  (cons __tmp98716 __tmp98712)))))
                      (let _lp97989_ ((_rest97991_ _clauses97983_)
                                      (_rest-ids97992_ _clause-ids97984_)
                                      (_bindings97993_ '()))
                        (let* ((_rest9799498002_ _rest97991_)
                               (_else9799698010_ (lambda () _bindings97993_))
                               (_K9799898072_
                                (lambda (_rest98013_ _clause98014_)
                                  (let* ((_rest-ids9801598022_ _rest-ids97992_)
                                         (_E9801798026_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9801598022_))))
                                         (_K9801898060_
                                          (lambda (_rest-ids98029_
                                                   _clause-id98030_)
                                            (let* ((_rest-ids9803198039_
                                                    _rest-ids98029_)
                                                   (_else9803398047_
                                                    (lambda ()
                                                      (let ((__tmp98717
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197987_
                        _clause98014_
                        _clause-id98030_
                        _E97985_))))
                (declare (not safe))
                (cons __tmp98717 _bindings97993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9803598052_
                                                    (lambda (_next-clause-id98050_)
                                                      (let ((__tmp98718
                                                             (let ((__tmp98719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197987_
                               _clause98014_
                               _clause-id98030_
                               _next-clause-id98050_))))
                       (declare (not safe))
                       (cons __tmp98719 _bindings97993_))))
                (declare (not safe))
                (_lp97989_ _rest98013_ _rest-ids98029_ __tmp98718)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9803198039_))
                                                  (let* ((_hd9803698055_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9803198039_)))
                                                         (_next-clause-id98058_
                                                          _hd9803698055_))
                                                    (declare (not safe))
                                                    (_K9803598052_
                                                     _next-clause-id98058_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9803398047_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9801598022_))
                                        (let ((_hd9801998063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9801598022_)))
                                              (_tl9802098065_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9801598022_))))
                                          (let* ((_clause-id98068_
                                                  _hd9801998063_)
                                                 (_rest-ids98070_
                                                  _tl9802098065_))
                                            (declare (not safe))
                                            (_K9801898060_
                                             _rest-ids98070_
                                             _clause-id98068_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9801798026_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9799498002_))
                              (let ((_hd9799998075_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9799498002_)))
                                    (_tl9800098077_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9799498002_))))
                                (let* ((_clause98080_ _hd9799998075_)
                                       (_rest98082_ _tl9800098077_))
                                  (declare (not safe))
                                  (_K9799898072_ _rest98082_ _clause98080_)))
                              (let ()
                                (declare (not safe))
                                (_else9799698010_))))))))
                 (_generate-body97387_
                  (lambda (_bindings97941_ _body97942_)
                    (let _recur97944_ ((_rest97946_ _bindings97941_))
                      (let* ((_rest9794797955_ _rest97946_)
                             (_else9794997963_ (lambda () _body97942_))
                             (_K9795197969_
                              (lambda (_rest97966_ _hd97967_)
                                (let ((__tmp98721
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97967_ '())))
                                      (__tmp98720
                                       (let ()
                                         (declare (not safe))
                                         (_recur97944_ _rest97966_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98721
                                   __tmp98720)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9794797955_))
                            (let ((_hd9795297972_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9794797955_)))
                                  (_tl9795397974_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9794797955_))))
                              (let* ((_hd97977_ _hd9795297972_)
                                     (_rest97979_ _tl9795397974_))
                                (declare (not safe))
                                (_K9795197969_ _rest97979_ _hd97977_)))
                            (let ()
                              (declare (not safe))
                              (_else9794997963_)))))))
                 (_generate-clause97388_
                  (lambda (_target97804_ _ids97805_ _clause97806_ _E97807_)
                    (letrec ((_generate197809_
                              (lambda (_hd97896_ _fender97897_ _body97898_)
                                (let ((_g98722_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97390_
                                          _hd97896_
                                          _ids97805_))))
                                  (begin
                                    (let ((_g98723_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98722_)
                                                 (##vector-length _g98722_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98723_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98723_)))
                                    (let ((_e97900_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98722_ 0)))
                                          (_mvars97901_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98722_ 1))))
                                      (let* ((_pvars97903_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97901_))))
                                             (_E97905_
                                              (let ((__tmp98724
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97804_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97807_ __tmp98724)))
                                             (_K97938_
                                              (let ((__tmp98725
                                                     (let ((__tmp98727
                                                            (map (lambda (_mvar97907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97908_)
                           (let* ((_mvar9790997916_ _mvar97907_)
                                  (_E9791197920_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9790997916_))))
                                  (_K9791297926_
                                   (lambda (_depth97923_ _id97924_)
                                     (let ((__tmp98728
                                            (let ((__tmp98729
                                                   (let ((__tmp98731
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97924_)))
                                                         (__tmp98730
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97908_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98731
                                                      __tmp98730
                                                      _depth97923_))))
                                              (declare (not safe))
                                              (cons __tmp98729 '()))))
                                       (declare (not safe))
                                       (cons _id97924_ __tmp98728)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9790997916_))
                                 (let ((_hd9791397929_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9790997916_)))
                                       (_tl9791497931_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9790997916_))))
                                   (let* ((_id97934_ _hd9791397929_)
                                          (_depth97936_ _tl9791497931_))
                                     (declare (not safe))
                                     (_K9791297926_ _depth97936_ _id97934_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9791197920_)))))
                         _mvars97901_
                         _pvars97903_))
                   (__tmp98726
                    (if (let () (declare (not safe)) (eq? _fender97897_ '#t))
                        _body97898_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97897_
                           _body97898_
                           _E97905_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98727 __tmp98726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97903_
                                                 __tmp98725))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97389_
                                           _hd97896_
                                           _target97804_
                                           _e97900_
                                           _mvars97901_
                                           _K97938_
                                           _E97905_)))))))))
                      (let* ((_e9781097830_ _clause97806_)
                             (_E9781997834_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9781097830_))))
                             (_E9781297868_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9781097830_))
                                    (let ((_e9782097838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9781097830_))))
                                      (let ((_hd9782197841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9782097838_)))
                                            (_tl9782297843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9782097838_))))
                                        (let ((_hd97846_ _hd9782197841_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9782297843_))
                                              (let ((_e9782397848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9782297843_))))
                                                (let ((_hd9782497851_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9782397848_)))
                                                      (_tl9782597853_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9782397848_))))
                                                  (let ((_fender97856_
                                                         _hd9782497851_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9782597853_))
                                                        (let ((_e9782697858_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9782597853_))))
                  (let ((_hd9782797861_
                         (let () (declare (not safe)) (##car _e9782697858_)))
                        (_tl9782897863_
                         (let () (declare (not safe)) (##cdr _e9782697858_))))
                    (let ((_body97866_ _hd9782797861_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9782897863_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197809_
                                 _hd97846_
                                 _fender97856_
                                 _body97866_))
                              (let () (declare (not safe)) (_E9781997834_)))
                          (let () (declare (not safe)) (_E9781997834_))))))
                (let () (declare (not safe)) (_E9781997834_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9781997834_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9781997834_)))))
                             (_E9781197892_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9781097830_))
                                    (let ((_e9781397872_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9781097830_))))
                                      (let ((_hd9781497875_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9781397872_)))
                                            (_tl9781597877_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9781397872_))))
                                        (let ((_hd97880_ _hd9781497875_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9781597877_))
                                              (let ((_e9781697882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9781597877_))))
                                                (let ((_hd9781797885_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9781697882_)))
                                                      (_tl9781897887_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9781697882_))))
                                                  (let ((_body97890_
                                                         _hd9781797885_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9781897887_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197809_
                                                               _hd97880_
                                                               '#t
                                                               _body97890_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9781297868_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9781297868_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9781297868_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9781297868_))))))
                        (let () (declare (not safe)) (_E9781197892_))))))
                 (_generate-match97389_
                  (lambda (_where97553_
                           _target97554_
                           _hd97555_
                           _mvars97556_
                           _K97557_
                           _E97558_)
                    (letrec ((_BUG97560_
                              (lambda (_q97802_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97381_
                                         _hd97555_
                                         _q97802_))))
                             (_recur97561_
                              (lambda (_e97652_
                                       _vars97653_
                                       _target97654_
                                       _E97655_
                                       _k97656_)
                                (let* ((_e9765797664_ _e97652_)
                                       (_E9765997668_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9765797664_))))
                                       (_K9766097790_
                                        (lambda (_body97671_ _tag97672_)
                                          (let ((_$e97674_ _tag97672_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97674_))
                                                (_k97656_ _vars97653_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97674_))
                                                    (let ((__tmp98838
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97654_)))
                                                          (__tmp98834
                                                           (let ((__tmp98836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98837
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97384_ _body97671_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97382_
                             __tmp98837
                             _target97654_)))
                         (__tmp98835 (_k97656_ _vars97653_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98836 __tmp98835 _E97655_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98838 __tmp98834 _E97655_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97674_))
                                                        (_k97656_
                                                         (let ((__tmp98833
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97671_ _target97654_))))
                   (declare (not safe))
                   (cons __tmp98833 _vars97653_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97674_))
                    (let ((_$e97677_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97678_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97679_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98832
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97654_)))
                            (__tmp98813
                             (let ((__tmp98827
                                    (let ((__tmp98828
                                           (let ((__tmp98831
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97677_ '())))
                                                 (__tmp98829
                                                  (let ((__tmp98830
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97383_
                                                            _target97654_))))
                                                    (declare (not safe))
                                                    (cons __tmp98830 '()))))
                                             (declare (not safe))
                                             (cons __tmp98831 __tmp98829))))
                                      (declare (not safe))
                                      (cons __tmp98828 '())))
                                   (__tmp98814
                                    (let ((__tmp98817
                                           (let ((__tmp98823
                                                  (let ((__tmp98826
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98824
                 (let ((__tmp98825
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97677_))))
                   (declare (not safe))
                   (cons __tmp98825 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98826
                                                          __tmp98824)))
                                                 (__tmp98818
                                                  (let ((__tmp98819
                                                         (let ((__tmp98822
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97679_ '())))
                       (__tmp98820
                        (let ((__tmp98821
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97677_))))
                          (declare (not safe))
                          (cons __tmp98821 '()))))
                   (declare (not safe))
                   (cons __tmp98822 __tmp98820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98819 '()))))
                                             (declare (not safe))
                                             (cons __tmp98823 __tmp98818)))
                                          (__tmp98815
                                           (let* ((_body9768097687_
                                                   _body97671_)
                                                  (_E9768297691_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9768097687_))))
                                                  (_K9768397699_
                                                   (lambda (_tl97694_
                                                            _hd97695_)
                                                     (let ((__tmp98816
                                                            (lambda (_vars97697_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97561_
                         _tl97694_
                         _vars97697_
                         _$tl97679_
                         _E97655_
                         _k97656_)))))
               (declare (not safe))
               (_recur97561_
                _hd97695_
                _vars97653_
                _$hd97678_
                _E97655_
                __tmp98816)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9768097687_))
                                                 (let ((_hd9768497702_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9768097687_)))
                                                       (_tl9768597704_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9768097687_))))
                                                   (let* ((_hd97707_
                                                           _hd9768497702_)
                                                          (_tl97709_
                                                           _tl9768597704_))
                                                     (declare (not safe))
                                                     (_K9768397699_
                                                      _tl97709_
                                                      _hd97707_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9768297691_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98817
                                       __tmp98815))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98827
                                __tmp98814))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98832 __tmp98813 _E97655_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97674_))
                        (let* ((_body9771097717_ _body97671_)
                               (_E9771297721_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9771097717_))))
                               (_K9771397772_
                                (lambda (_tl97724_ _hd97725_)
                                  (let* ((_rlen97727_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97562_ _tl97724_)))
                                         (_$target97729_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97731_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97733_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97735_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97737_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97739_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97741_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97743_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97563_ _hd97725_)))
                                         (_lvars97745_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97743_)))
                                         (_tlvars97747_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97743_)))
                                         (_linit97751_
                                          (map (lambda (_var97749_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97745_)))
                                    (letrec ((_make-loop97754_
                                              (lambda (_vars97758_)
                                                (let ((__tmp98764
                                                       (let ((__tmp98765
                                                              (let ((__tmp98801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97735_ '())))
                            (__tmp98766
                             (let ((__tmp98767
                                    (let ((__tmp98800
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97731_ _lvars97745_)))
                                          (__tmp98768
                                           (let ((__tmp98799
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97731_)))
                                                 (__tmp98777
                                                  (let ((__tmp98794
                                                         (let ((__tmp98795
                                                                (let ((__tmp98798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97737_ '())))
                              (__tmp98796
                               (let ((__tmp98797
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97383_
                                         _$hd97731_))))
                                 (declare (not safe))
                                 (cons __tmp98797 '()))))
                          (declare (not safe))
                          (cons __tmp98798 __tmp98796))))
                   (declare (not safe))
                   (cons __tmp98795 '())))
                (__tmp98778
                 (let ((__tmp98784
                        (let ((__tmp98790
                               (let ((__tmp98793
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97739_ '())))
                                     (__tmp98791
                                      (let ((__tmp98792
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97737_))))
                                        (declare (not safe))
                                        (cons __tmp98792 '()))))
                                 (declare (not safe))
                                 (cons __tmp98793 __tmp98791)))
                              (__tmp98785
                               (let ((__tmp98786
                                      (let ((__tmp98789
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97741_ '())))
                                            (__tmp98787
                                             (let ((__tmp98788
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97737_))))
                                               (declare (not safe))
                                               (cons __tmp98788 '()))))
                                        (declare (not safe))
                                        (cons __tmp98789 __tmp98787))))
                                 (declare (not safe))
                                 (cons __tmp98786 '()))))
                          (declare (not safe))
                          (cons __tmp98790 __tmp98785)))
                       (__tmp98779
                        (let ((__tmp98780
                               (lambda (_hdvars97760_)
                                 (let ((__tmp98781
                                        (let ((__tmp98782
                                               (map (lambda (_svar97762_
                                                             _lvar97763_)
                                                      (let ((__tmp98783
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97762_ _hdvars97760_ _BUG97560_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98783 _lvar97763_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97743_
                                                    _lvars97745_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97741_ __tmp98782))))
                                   (declare (not safe))
                                   (cons _$lp97735_ __tmp98781)))))
                          (declare (not safe))
                          (_recur97561_
                           _hd97725_
                           '()
                           _$lp-hd97739_
                           _E97655_
                           __tmp98780))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98784 __tmp98779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98794
                                                     __tmp98778)))
                                                 (__tmp98769
                                                  (let ((__tmp98773
                                                         (map (lambda (_lvar97765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97766_)
                        (let ((__tmp98776
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97766_ '())))
                              (__tmp98774
                               (let ((__tmp98775
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97765_))))
                                 (declare (not safe))
                                 (cons __tmp98775 '()))))
                          (declare (not safe))
                          (cons __tmp98776 __tmp98774)))
                      _lvars97745_
                      _tlvars97747_))
                (__tmp98770
                 (_k97656_
                  (let ((__tmp98771
                         (lambda (_svar97768_ _tlvar97769_ _r97770_)
                           (let ((__tmp98772
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97768_ _tlvar97769_))))
                             (declare (not safe))
                             (cons __tmp98772 _r97770_)))))
                    (declare (not safe))
                    (foldl2 __tmp98771
                            _vars97758_
                            _svars97743_
                            _tlvars97747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98773
                                                     __tmp98770))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98799
                                              __tmp98777
                                              __tmp98769))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98800
                                       __tmp98768))))
                               (declare (not safe))
                               (cons __tmp98767 '()))))
                        (declare (not safe))
                        (cons __tmp98801 __tmp98766))))
                 (declare (not safe))
                 (cons __tmp98765 '())))
              (__tmp98762
               (let ((__tmp98763
                      (let ()
                        (declare (not safe))
                        (cons _$target97729_ _linit97751_))))
                 (declare (not safe))
                 (cons _$lp97735_ __tmp98763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98764
                                                   __tmp98762)))))
                                      (let ((_body97756_
                                             (let ((__tmp98803
                                                    (let ((__tmp98804
                                                           (let ((__tmp98807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98808
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97733_ '()))))
                            (declare (not safe))
                            (cons _$target97729_ __tmp98808)))
                         (__tmp98805
                          (let ((__tmp98806
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97654_
                                    _rlen97727_))))
                            (declare (not safe))
                            (cons __tmp98806 '()))))
                     (declare (not safe))
                     (cons __tmp98807 __tmp98805))))
              (declare (not safe))
              (cons __tmp98804 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98802
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97561_
                                                       _tl97724_
                                                       _vars97653_
                                                       _$tl97733_
                                                       _E97655_
                                                       _make-loop97754_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98803
                                                __tmp98802))))
                                        (let ((__tmp98812
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97654_)))
                                              (__tmp98809
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97727_))
                                                   _body97756_
                                                   (let ((__tmp98810
                                                          (let ((__tmp98811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97654_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98811 _rlen97727_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98810
                                                      _body97756_
                                                      _E97655_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98812
                                           __tmp98809
                                           _E97655_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9771097717_))
                              (let ((_hd9771497775_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9771097717_)))
                                    (_tl9771597777_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9771097717_))))
                                (let* ((_hd97780_ _hd9771497775_)
                                       (_tl97782_ _tl9771597777_))
                                  (declare (not safe))
                                  (_K9771397772_ _tl97782_ _hd97780_)))
                              (let () (declare (not safe)) (_E9771297721_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97674_))
                            (let ((__tmp98761
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97654_)))
                                  (__tmp98760 (_k97656_ _vars97653_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98761
                               __tmp98760
                               _E97655_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97674_))
                                (let ((_$e97784_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98759
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97654_)))
                                        (__tmp98751
                                         (let ((__tmp98753
                                                (let ((__tmp98754
                                                       (let ((__tmp98758
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97784_ '())))
                     (__tmp98755
                      (let ((__tmp98756
                             (let ((__tmp98757
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97383_
                                       _target97654_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98757))))
                        (declare (not safe))
                        (cons __tmp98756 '()))))
                 (declare (not safe))
                 (cons __tmp98758 __tmp98755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98754 '())))
                                               (__tmp98752
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97561_
                                                   _body97671_
                                                   _vars97653_
                                                   _$e97784_
                                                   _E97655_
                                                   _k97656_))))
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
                                     _E97655_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97674_))
                                    (let ((_$e97786_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98750
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97654_)))
                                            (__tmp98742
                                             (let ((__tmp98744
                                                    (let ((__tmp98745
                                                           (let ((__tmp98749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97786_ '())))
                         (__tmp98746
                          (let ((__tmp98747
                                 (let ((__tmp98748
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97383_
                                           _target97654_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98748))))
                            (declare (not safe))
                            (cons __tmp98747 '()))))
                     (declare (not safe))
                     (cons __tmp98749 __tmp98746))))
              (declare (not safe))
              (cons __tmp98745 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98743
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97561_
                                                       _body97671_
                                                       _vars97653_
                                                       _$e97786_
                                                       _E97655_
                                                       _k97656_))))
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
                                         _E97655_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97674_))
                                        (let ((_$e97788_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98741
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97654_)))
                                                (__tmp98732
                                                 (let ((__tmp98736
                                                        (let ((__tmp98737
                                                               (let ((__tmp98740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97788_ '())))
                             (__tmp98738
                              (let ((__tmp98739
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97654_))))
                                (declare (not safe))
                                (cons __tmp98739 '()))))
                         (declare (not safe))
                         (cons __tmp98740 __tmp98738))))
                  (declare (not safe))
                  (cons __tmp98737 '())))
               (__tmp98733
                (let ((__tmp98735
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97788_ _body97671_)))
                      (__tmp98734 (_k97656_ _vars97653_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98735 __tmp98734 _E97655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98736
                                                    __tmp98733))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98741
                                             __tmp98732
                                             _E97655_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97560_ _e97652_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9765797664_))
                                      (let ((_hd9766197793_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9765797664_)))
                                            (_tl9766297795_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9765797664_))))
                                        (let* ((_tag97798_ _hd9766197793_)
                                               (_body97800_ _tl9766297795_))
                                          (declare (not safe))
                                          (_K9766097790_
                                           _body97800_
                                           _tag97798_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9765997668_))))))
                             (_splice-rlen97562_
                              (lambda (_e97614_)
                                (let _lp97616_ ((_e97618_ _e97614_)
                                                (_n97619_ '0))
                                  (let* ((_e9762097627_ _e97618_)
                                         (_E9762297631_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9762097627_))))
                                         (_K9762397640_
                                          (lambda (_body97634_ _tag97635_)
                                            (let ((_$e97637_ _tag97635_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97637_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97381_
                                                     _where97553_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97637_))
                                                      (let ((__tmp98840
                                                             (cdr _body97634_))
                                                            (__tmp98839
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97619_ '1))))
                (declare (not safe))
                (_lp97616_ __tmp98840 __tmp98839))
              _n97619_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9762097627_))
                                        (let ((_hd9762497643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9762097627_)))
                                              (_tl9762597645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9762097627_))))
                                          (let* ((_tag97648_ _hd9762497643_)
                                                 (_body97650_ _tl9762597645_))
                                            (declare (not safe))
                                            (_K9762397640_
                                             _body97650_
                                             _tag97648_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9762297631_)))))))
                             (_splice-vars97563_
                              (lambda (_e97570_)
                                (let _recur97572_ ((_e97574_ _e97570_)
                                                   (_vars97575_ '()))
                                  (let* ((_e9757697583_ _e97574_)
                                         (_E9757897587_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9757697583_))))
                                         (_K9757997602_
                                          (lambda (_body97590_ _tag97591_)
                                            (let ((_$e97593_ _tag97591_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97593_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97590_
                                                          _vars97575_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97593_))
                  (let () (declare (not safe)) (eq? 'splice _$e97593_)))
              (let ((__tmp98843 (cdr _body97590_))
                    (__tmp98841
                     (let ((__tmp98842 (car _body97590_)))
                       (declare (not safe))
                       (_recur97572_ __tmp98842 _vars97575_))))
                (declare (not safe))
                (_recur97572_ __tmp98843 __tmp98841))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97593_))
                      (let () (declare (not safe)) (eq? 'box _$e97593_)))
                  (let ()
                    (declare (not safe))
                    (_recur97572_ _body97590_ _vars97575_))
                  _vars97575_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9757697583_))
                                        (let ((_hd9758097605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9757697583_)))
                                              (_tl9758197607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9757697583_))))
                                          (let* ((_tag97610_ _hd9758097605_)
                                                 (_body97612_ _tl9758197607_))
                                            (declare (not safe))
                                            (_K9757997602_
                                             _body97612_
                                             _tag97610_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9757897587_)))))))
                             (_make-body97564_
                              (lambda (_vars97566_)
                                (let ((__tmp98844
                                       (map (lambda (_mvar97568_)
                                              (let ((__tmp98845
                                                     (car _mvar97568_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98845
                                                 _vars97566_
                                                 _BUG97560_)))
                                            _mvars97556_)))
                                  (declare (not safe))
                                  (cons _K97557_ __tmp98844)))))
                      (let ()
                        (declare (not safe))
                        (_recur97561_
                         _hd97555_
                         '()
                         _target97554_
                         _E97558_
                         _make-body97564_)))))
                 (_parse-clause97390_
                  (lambda (_hd97459_ _ids97460_)
                    (let _recur97462_ ((_e97464_ _hd97459_)
                                       (_vars97465_ '())
                                       (_depth97466_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97464_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97464_))
                              (values '(any) _vars97465_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97464_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97381_
                                     _hd97459_))
                                  (if (let ((__tmp98861
                                             (lambda (_id97468_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97464_
                                                  _id97468_)))))
                                        (declare (not safe))
                                        (find __tmp98861 _ids97460_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97464_))
                                              _vars97465_)
                                      (if (let ((__tmp98859
                                                 (lambda (_var97470_)
                                                   (let ((__tmp98860
                                                          (car _var97470_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97464_
                                                      __tmp98860)))))
                                            (declare (not safe))
                                            (find __tmp98859 _vars97465_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97381_
                                             _e97464_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97464_))
                                                  (let ((__tmp98858
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98858
                                                          _vars97465_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97464_))
                              (let* ((_e9747197478_ _e97464_)
                                     (_E9747397482_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9747197478_))))
                                     (_E9747297543_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9747197478_))
                                            (let ((_e9747497486_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9747197478_))))
                                              (let ((_hd9747597489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9747497486_)))
                                                    (_tl9747697491_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9747497486_))))
                                                (let* ((_hd97494_
                                                        _hd9747597489_)
                                                       (_rest97496_
                                                        _tl9747697491_))
                                                  (if '#t
                                                      (let* ((_make-pair97511_
                                                              (lambda (_tag97498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97499_
                               _tl97500_)
                        (let* ((_hd-depth97502_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97498_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97466_ '1))
                                    _depth97466_))
                               (_g98853_
                                (let ()
                                  (declare (not safe))
                                  (_recur97462_
                                   _hd97499_
                                   _vars97465_
                                   _hd-depth97502_))))
                          (begin
                            (let ((_g98854_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98853_)
                                         (##vector-length _g98853_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98854_ 2)))
                                  (error "Context expects 2 values" _g98854_)))
                            (let ((_hd97504_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98853_ 0)))
                                  (_vars97505_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98853_ 1))))
                              (let ((_g98855_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97462_
                                        _tl97500_
                                        _vars97505_
                                        _depth97466_))))
                                (begin
                                  (let ((_g98856_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98855_)
                                               (##vector-length _g98855_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98856_ 2)))
                                        (error "Context expects 2 values"
                                               _g98856_)))
                                  (let ((_tl97507_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98855_ 0)))
                                        (_vars97508_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98855_ 1))))
                                    (let ()
                                      (values (let ((__tmp98857
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97504_
                                                             _tl97507_))))
                                                (declare (not safe))
                                                (cons _tag97498_ __tmp98857))
                                              _vars97508_))))))))))
                     (_e9751297519_ _rest97496_)
                     (_E9751497523_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97511_ 'cons _hd97494_ _rest97496_))))
                     (_E9751397539_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9751297519_))
                            (let ((_e9751597527_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9751297519_))))
                              (let ((_hd9751697530_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9751597527_)))
                                    (_tl9751797532_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9751597527_))))
                                (let* ((_rest-hd97535_ _hd9751697530_)
                                       (_rest-tl97537_ _tl9751797532_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97535_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97511_
                                             'splice
                                             _hd97494_
                                             _rest-tl97537_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97511_
                                             'cons
                                             _hd97494_
                                             _rest97496_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9751497523_))))))
                            (let () (declare (not safe)) (_E9751497523_))))))
                (let () (declare (not safe)) (_E9751397539_)))
              (let () (declare (not safe)) (_E9747397482_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9747397482_))))))
                                (let () (declare (not safe)) (_E9747297543_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97464_))
                                  (values '(null) _vars97465_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97464_))
                                      (let ((_g98850_
                                             (let ((__tmp98852
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97464_)))))
                                               (declare (not safe))
                                               (_recur97462_
                                                __tmp98852
                                                _vars97465_
                                                _depth97466_))))
                                        (begin
                                          (let ((_g98851_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98850_)
                                                       (##vector-length
                                                        _g98850_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98851_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98851_)))
                                          (let ((_e97547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98850_ 0)))
                                                (_vars97548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98850_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97547_))
                                                    _vars97548_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97464_))
                                          (let ((_g98847_
                                                 (let ((__tmp98849
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97464_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97462_
                                                    __tmp98849
                                                    _vars97465_
                                                    _depth97466_))))
                                            (begin
                                              (let ((_g98848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98847_)
                                                           (##vector-length
                                                            _g98847_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98848_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98848_)))
                                              (let ((_e97550_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98847_
                                                        0)))
                                                    (_vars97551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98847_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97550_))
                                                        _vars97551_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97464_))
                                              (values (let ((__tmp98846
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97464_))))
                (declare (not safe))
                (cons 'datum __tmp98846))
              _vars97465_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97381_
                                                 _e97464_))))))))))))
          (let* ((_e9739197404_ _stx97381_)
                 (_E9739397408_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9739197404_))))
                 (_E9739297455_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9739197404_))
                        (let ((_e9739497412_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9739197404_))))
                          (let ((_hd9739597415_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9739497412_)))
                                (_tl9739697417_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9739497412_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9739697417_))
                                (let ((_e9739797420_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9739697417_))))
                                  (let ((_hd9739897423_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9739797420_)))
                                        (_tl9739997425_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9739797420_))))
                                    (let ((_expr97428_ _hd9739897423_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9739997425_))
                                          (let ((_e9740097430_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9739997425_))))
                                            (let ((_hd9740197433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9740097430_)))
                                                  (_tl9740297435_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9740097430_))))
                                              (let* ((_ids97438_
                                                      _hd9740197433_)
                                                     (_clauses97440_
                                                      _tl9740297435_))
                                                (if '#t
                                                    (if (let ((__tmp98879
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97438_))))
                  (declare (not safe))
                  (not __tmp98879))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97381_
                   _ids97438_))
                (if (let ((__tmp98878
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97440_))))
                      (declare (not safe))
                      (not __tmp98878))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97381_))
                    (let* ((_ids97442_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97438_)))
                           (_clauses97444_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97440_)))
                           (_clause-ids97446_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97444_)))
                           (_E97448_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97450_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97452_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97444_))
                                _E97448_
                                (car _clause-ids97446_))))
                      (let ((__tmp98863
                             (let ((__tmp98864
                                    (let ((__tmp98866
                                           (let ((__tmp98871
                                                  (let ((__tmp98872
                                                         (let ((__tmp98877
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97448_ '())))
                       (__tmp98873
                        (let ((__tmp98874
                               (let ((__tmp98876
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97450_ '())))
                                     (__tmp98875
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97450_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98876
                                  __tmp98875))))
                          (declare (not safe))
                          (cons __tmp98874 '()))))
                   (declare (not safe))
                   (cons __tmp98877 __tmp98873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98872 '())))
                                                 (__tmp98867
                                                  (let ((__tmp98870
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97386_
                                                            _target97450_
                                                            _ids97442_
                                                            _clauses97444_
                                                            _clause-ids97446_
                                                            _E97448_)))
                                                        (__tmp98868
                                                         (let ((__tmp98869
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97428_ '()))))
                   (declare (not safe))
                   (cons _first97452_ __tmp98869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97387_
                                                     __tmp98870
                                                     __tmp98868))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98871
                                              __tmp98867)))
                                          (__tmp98865
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97381_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98866
                                       __tmp98865))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98864)))
                            (__tmp98862
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97381_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98863 __tmp98862)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9739397408_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9739397408_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9739397408_)))))
                        (let () (declare (not safe)) (_E9739397408_))))))
            (let () (declare (not safe)) (_E9739297455_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx98091_)
        (let* ((_identifier=?98093_ 'free-identifier=?)
               (_unwrap-e98095_ 'syntax-e)
               (_wrap-e98097_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98091_
           _identifier=?98093_
           _unwrap-e98095_
           _wrap-e98097_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx98099_ _identifier=?98100_)
        (let* ((_unwrap-e98102_ 'syntax-e) (_wrap-e98104_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98099_
           _identifier=?98100_
           _unwrap-e98102_
           _wrap-e98104_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx98106_ _identifier=?98107_ _unwrap-e98108_)
        (let ((_wrap-e98110_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98106_
           _identifier=?98107_
           _unwrap-e98108_
           _wrap-e98110_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98881_
        (let ((_g98880_ (let () (declare (not safe)) (##length _g98881_))))
          (cond ((let () (declare (not safe)) (##fx= _g98880_ 1))
                 (apply (lambda (_stx98091_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx98091_)))
                        _g98881_))
                ((let () (declare (not safe)) (##fx= _g98880_ 2))
                 (apply (lambda (_stx98099_ _identifier=?98100_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx98099_
                             _identifier=?98100_)))
                        _g98881_))
                ((let () (declare (not safe)) (##fx= _g98880_ 3))
                 (apply (lambda (_stx98106_
                                 _identifier=?98107_
                                 _unwrap-e98108_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx98106_
                             _identifier=?98107_
                             _unwrap-e98108_)))
                        _g98881_))
                ((let () (declare (not safe)) (##fx= _g98880_ 4))
                 (apply (lambda (_stx98112_
                                 _identifier=?98113_
                                 _unwrap-e98114_
                                 _wrap-e98115_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx98112_
                             _identifier=?98113_
                             _unwrap-e98114_
                             _wrap-e98115_)))
                        _g98881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98881_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97378_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97378_))
            (let ((__tmp98882
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97378_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98882 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97336_ . _rest97337_)
        (let ((_len97339_ (length _hd97336_)))
          (let _lp97341_ ((_rest97343_ _rest97337_))
            (let* ((_rest9734497352_ _rest97343_)
                   (_else9734697360_ (lambda () '#!void))
                   (_K9734897366_
                    (lambda (_rest97363_ _hd97364_)
                      (if (fx= _len97339_ (length _hd97364_))
                          (let () (declare (not safe)) (_lp97341_ _rest97363_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97364_))))))
              (if (let () (declare (not safe)) (##pair? _rest9734497352_))
                  (let ((_hd9734997369_
                         (let ()
                           (declare (not safe))
                           (##car _rest9734497352_)))
                        (_tl9735097371_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9734497352_))))
                    (let* ((_hd97374_ _hd9734997369_)
                           (_rest97376_ _tl9735097371_))
                      (declare (not safe))
                      (_K9734897366_ _rest97376_ _hd97374_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97294_ _n97295_)
        (let _lp97297_ ((_rest97299_ _stx97294_) (_r97300_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97299_))
              (let* ((_g9730197308_
                      (let () (declare (not safe)) (gx#syntax-e _rest97299_)))
                     (_E9730397312_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9730197308_))))
                     (_K9730497318_
                      (lambda (_rest97315_ _hd97316_)
                        (let ((__tmp98887
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97316_ _r97300_))))
                          (declare (not safe))
                          (_lp97297_ _rest97315_ __tmp98887)))))
                (if (let () (declare (not safe)) (##pair? _g9730197308_))
                    (let ((_hd9730597321_
                           (let () (declare (not safe)) (##car _g9730197308_)))
                          (_tl9730697323_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9730197308_))))
                      (let* ((_hd97326_ _hd9730597321_)
                             (_rest97328_ _tl9730697323_))
                        (declare (not safe))
                        (_K9730497318_ _rest97328_ _hd97326_)))
                    (let () (declare (not safe)) (_E9730397312_))))
              (let _lp97330_ ((_n97332_ _n97295_)
                              (_l97333_ _r97300_)
                              (_r97334_ _rest97299_))
                (if (let () (declare (not safe)) (null? _l97333_))
                    (values _l97333_ _r97334_)
                    (if (fxpositive? _n97332_)
                        (let ((__tmp98886
                               (let () (declare (not safe)) (fx- _n97332_ '1)))
                              (__tmp98885 (cdr _l97333_))
                              (__tmp98883
                               (let ((__tmp98884 (car _l97333_)))
                                 (declare (not safe))
                                 (cons __tmp98884 _r97334_))))
                          (declare (not safe))
                          (_lp97330_ __tmp98886 __tmp98885 __tmp98883))
                        (values (reverse _l97333_) _r97334_))))))))))
