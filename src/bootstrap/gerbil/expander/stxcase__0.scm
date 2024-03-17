(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710694204)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp95615 (list gx#expander::t))
            (__tmp95613
             (let ((__tmp95614
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp95614 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp95615
         '(id depth)
         __tmp95613
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args95610_
        (apply make-instance gx#syntax-pattern::t _$args95610_)))
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
      (lambda (_self95607_ _stx95608_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx95608_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx95089_)
        (letrec ((_generate95091_
                  (lambda (_e95318_)
                    (letrec ((_BUG95320_
                              (lambda (_q95482_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx95089_
                                         _e95318_
                                         _q95482_))))
                             (_local-pattern-e95321_
                              (lambda (_pat95480_)
                                (let ((__tmp95616
                                       (##structure-ref
                                        _pat95480_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp95616))))
                             (_getvar95322_
                              (lambda (_q95477_ _vars95478_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q95477_
                                   _vars95478_
                                   _BUG95320_))))
                             (_getarg95323_
                              (lambda (_arg95443_ _vars95444_)
                                (let* ((_arg9544595452_ _arg95443_)
                                       (_E9544795456_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9544595452_))))
                                       (_K9544895465_
                                        (lambda (_e95459_ _tag95460_)
                                          (let ((_$e95462_ _tag95460_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e95462_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar95322_
                                                   _e95459_
                                                   _vars95444_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e95462_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e95321_
                                                       _e95459_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG95320_
                                                       _arg95443_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9544595452_))
                                      (let ((_hd9544995468_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9544595452_)))
                                            (_tl9545095470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9544595452_))))
                                        (let* ((_tag95473_ _hd9544995468_)
                                               (_e95475_ _tl9545095470_))
                                          (declare (not safe))
                                          (_K9544895465_ _e95475_ _tag95473_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9544795456_)))))))
                      (let _recur95325_ ((_e95327_ _e95318_) (_vars95328_ '()))
                        (let* ((_e9532995336_ _e95327_)
                               (_E9533195340_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9532995336_))))
                               (_K9533295431_
                                (lambda (_body95343_ _tag95344_)
                                  (let ((_$e95346_ _tag95344_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95346_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body95343_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e95346_))
                                            (let ((_id95349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body95343_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id95349_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks95351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id95349_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks95351_))
                                                        (let ((__tmp95617
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body95343_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp95617))
                (let ((__tmp95619
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body95343_)))
                      (__tmp95618
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body95343_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp95619
                   __tmp95618
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id95349_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body95343_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG95320_
                                                         _e95327_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e95346_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e95321_
                                                   _body95343_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e95346_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar95322_
                                                       _body95343_
                                                       _vars95328_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e95346_))
                                                        (let ((__tmp95622
                                                               (let ((__tmp95623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body95343_)))
                         (declare (not safe))
                         (_recur95325_ __tmp95623 _vars95328_)))
                      (__tmp95620
                       (let ((__tmp95621 (cdr _body95343_)))
                         (declare (not safe))
                         (_recur95325_ __tmp95621 _vars95328_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp95622 __tmp95620))
                (if (let () (declare (not safe)) (eq? 'vector _$e95346_))
                    (let ((__tmp95624
                           (let ()
                             (declare (not safe))
                             (_recur95325_ _body95343_ _vars95328_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp95624))
                    (if (let () (declare (not safe)) (eq? 'box _$e95346_))
                        (let ((__tmp95625
                               (let ()
                                 (declare (not safe))
                                 (_recur95325_ _body95343_ _vars95328_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp95625))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e95346_))
                            (let* ((_body9535295363_ _body95343_)
                                   (_E9535495367_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9535295363_))))
                                   (_K9535595405_
                                    (lambda (_args95370_
                                             _iv95371_
                                             _hd95372_
                                             _depth95373_)
                                      (let* ((_targets95379_
                                              (map (lambda (_g9537495376_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg95323_
                                                        _g9537495376_
                                                        _vars95328_)))
                                                   _args95370_))
                                             (_fold-in95381_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args95370_)))
                                             (_fold-out95383_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args95385_
                                              (let ((__tmp95626
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out95383_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp95626
                                                        _fold-in95381_)))
                                             (_lambda-body95402_
                                              (if (fx> _depth95373_ '1)
                                                  (let ((_r-args95393_
                                                         (map (lambda (_arg95387_)
                                                                (let ((__tmp95627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg95387_)))
                          (declare (not safe))
                          (cons 'ref __tmp95627)))
                      _args95370_))
                (_r-vars95394_
                 (let ((__tmp95628
                        (lambda (_arg95389_ _var95390_ _r95391_)
                          (let ((__tmp95629
                                 (let ((__tmp95630 (cdr _arg95389_)))
                                   (declare (not safe))
                                   (cons __tmp95630 _var95390_))))
                            (declare (not safe))
                            (cons __tmp95629 _r95391_)))))
                   (declare (not safe))
                   (foldr2 __tmp95628
                           _vars95328_
                           _args95370_
                           _fold-in95381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp95631
                                                           (let ((__tmp95632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95636
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth95373_ '1)))
                                (__tmp95633
                                 (let ((__tmp95634
                                        (let ((__tmp95635
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out95383_))))
                                          (declare (not safe))
                                          (cons __tmp95635 _r-args95393_))))
                                   (declare (not safe))
                                   (cons _hd95372_ __tmp95634))))
                            (declare (not safe))
                            (cons __tmp95636 __tmp95633))))
                     (declare (not safe))
                     (cons 'splice __tmp95632))))
              (declare (not safe))
              (_recur95325_ __tmp95631 _r-vars95394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars95400_
                                                          (let ((__tmp95637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg95396_ _var95397_ _r95398_)
                           (let ((__tmp95638
                                  (let ((__tmp95639 (cdr _arg95396_)))
                                    (declare (not safe))
                                    (cons __tmp95639 _var95397_))))
                             (declare (not safe))
                             (cons __tmp95638 _r95398_)))))
                    (declare (not safe))
                    (foldr2 __tmp95637
                            _vars95328_
                            _args95370_
                            _fold-in95381_)))
                 (__tmp95640
                  (let ()
                    (declare (not safe))
                    (_recur95325_ _hd95372_ _hd-vars95400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp95640
                                                     _fold-out95383_)))))
                                        (let ((__tmp95644
                                               (if (fx> (length _targets95379_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets95379_))
                                                   '#!void))
                                              (__tmp95641
                                               (let ((__tmp95643
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args95385_
                                                         _lambda-body95402_)))
                                                     (__tmp95642
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur95325_
                                                         _iv95371_
                                                         _vars95328_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp95643
                                                  __tmp95642
                                                  _targets95379_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp95644
                                           __tmp95641))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9535295363_))
                                  (let ((_hd9535695408_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9535295363_)))
                                        (_tl9535795410_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9535295363_))))
                                    (let ((_depth95413_ _hd9535695408_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9535795410_))
                                          (let ((_hd9535895415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9535795410_)))
                                                (_tl9535995417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9535795410_))))
                                            (let ((_hd95420_ _hd9535895415_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9535995417_))
                                                  (let ((_hd9536095422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9535995417_)))
                                                        (_tl9536195424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9535995417_))))
                                                    (let* ((_iv95427_
                                                            _hd9536095422_)
                                                           (_args95429_
                                                            _tl9536195424_))
                                                      (declare (not safe))
                                                      (_K9535595405_
                                                       _args95429_
                                                       _iv95427_
                                                       _hd95420_
                                                       _depth95413_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9535495367_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9535495367_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9535495367_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e95346_))
                                _body95343_
                                (let ()
                                  (declare (not safe))
                                  (_BUG95320_ _e95327_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9532995336_))
                              (let ((_hd9533395434_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9532995336_)))
                                    (_tl9533495436_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9532995336_))))
                                (let* ((_tag95439_ _hd9533395434_)
                                       (_body95441_ _tl9533495436_))
                                  (declare (not safe))
                                  (_K9533295431_ _body95441_ _tag95439_)))
                              (let ()
                                (declare (not safe))
                                (_E9533195340_))))))))
                 (_parse95092_
                  (lambda (_e95133_)
                    (letrec ((_make-cons95135_
                              (lambda (_hd95310_ _tl95311_)
                                (let ((_g95645_ _hd95310_)
                                      (_g95647_ _tl95311_))
                                  (begin
                                    (let ((_g95646_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95645_)
                                                 (##vector-length _g95645_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95646_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95646_)))
                                    (let ((_g95648_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95647_)
                                                 (##vector-length _g95647_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95648_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95648_)))
                                    (let ((_hd-e95313_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95645_ 0)))
                                          (_hd-vars95314_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95645_ 1))))
                                      (let ((_tl-e95315_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95647_ 0)))
                                            (_tl-vars95316_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95647_ 1))))
                                        (values (let ((__tmp95649
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e95313_
                                                               _tl-e95315_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp95649))
                                                (append _hd-vars95314_
                                                        _tl-vars95316_))))))))
                             (_make-splice95136_
                              (lambda (_where95249_
                                       _depth95250_
                                       _hd95251_
                                       _tl95252_)
                                (let ((_g95650_ _hd95251_)
                                      (_g95652_ _tl95252_))
                                  (begin
                                    (let ((_g95651_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95650_)
                                                 (##vector-length _g95650_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95651_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95651_)))
                                    (let ((_g95653_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95652_)
                                                 (##vector-length _g95652_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95653_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95653_)))
                                    (let ((_hd-e95254_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95650_ 0)))
                                          (_hd-vars95255_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95650_ 1))))
                                      (let ((_tl-e95256_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95652_ 0)))
                                            (_tl-vars95257_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g95652_ 1))))
                                        (let _lp95259_ ((_rest95261_
                                                         _hd-vars95255_)
                                                        (_targets95262_ '())
                                                        (_vars95263_
                                                         _tl-vars95257_))
                                          (let* ((_rest9526495274_ _rest95261_)
                                                 (_else9526695282_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets95262_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx95089_
                                                           _where95249_))
                                                        (values (let ((__tmp95654
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp95655
                                      (let ((__tmp95656
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e95256_
                                                     _targets95262_))))
                                        (declare (not safe))
                                        (cons _hd-e95254_ __tmp95656))))
                                 (declare (not safe))
                                 (cons _depth95250_ __tmp95655))))
                          (declare (not safe))
                          (cons 'splice __tmp95654))
                        _vars95263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9526895291_
                                                  (lambda (_rest95285_
                                                           _hd-pat95286_
                                                           _hd-depth*95287_)
                                                    (let ((_hd-depth95289_
                                                           (fx- _hd-depth*95287_
                                                                _depth95250_)))
                                                      (if (fxpositive?
                                                           _hd-depth95289_)
                                                          (let ((__tmp95659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp95660
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat95286_))))
                           (declare (not safe))
                           (cons __tmp95660 _targets95262_)))
                        (__tmp95657
                         (let ((__tmp95658
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth95289_ _hd-pat95286_))))
                           (declare (not safe))
                           (cons __tmp95658 _vars95263_))))
                    (declare (not safe))
                    (_lp95259_ _rest95285_ __tmp95659 __tmp95657))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth95289_))
                      (let ((__tmp95661
                             (let ((__tmp95662
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat95286_))))
                               (declare (not safe))
                               (cons __tmp95662 _targets95262_))))
                        (declare (not safe))
                        (_lp95259_ _rest95285_ __tmp95661 _vars95263_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx95089_
                         _where95249_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9526495274_))
                                                (let ((_hd9526995294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9526495274_)))
                                                      (_tl9527095296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9526495274_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9526995294_))
                                                      (let ((_hd9527195299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9526995294_)))
                    (_tl9527295301_
                     (let () (declare (not safe)) (##cdr _hd9526995294_))))
                (let* ((_hd-depth*95304_ _hd9527195299_)
                       (_hd-pat95306_ _tl9527295301_)
                       (_rest95308_ _tl9527095296_))
                  (declare (not safe))
                  (_K9526895291_ _rest95308_ _hd-pat95306_ _hd-depth*95304_)))
              (let () (declare (not safe)) (_else9526695282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9526695282_)))))))))))
                             (_recur95137_
                              (lambda (_e95142_ _is-e?95143_)
                                (if (_is-e?95143_ _e95142_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx95089_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e95142_))
                                        (let* ((_pat95145_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e95142_)))
                                               (_depth95147_
                                                (##structure-ref
                                                 _pat95145_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth95147_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat95145_))
                                                      (let ((__tmp95663
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth95147_ _pat95145_))))
                (declare (not safe))
                (cons __tmp95663 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat95145_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e95142_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e95142_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e95142_))
                                                (let* ((_e9514995156_ _e95142_)
                                                       (_E9515195160_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9514995156_))))
                                                       (_E9515095239_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9514995156_))
                      (let ((_e9515295164_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9514995156_))))
                        (let ((_hd9515395167_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9515295164_)))
                              (_tl9515495169_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9515295164_))))
                          (let* ((_hd95172_ _hd9515395167_)
                                 (_rest95174_ _tl9515495169_))
                            (if '#t
                                (if (_is-e?95143_ _hd95172_)
                                    (let* ((_e9517595182_ _rest95174_)
                                           (_E9517795186_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx95089_
                                                 _e95142_))))
                                           (_E9517695200_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9517595182_))
                                                  (let ((_e9517895190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9517595182_))))
                                                    (let ((_hd9517995193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9517895190_)))
                                                          (_tl9518095195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9517895190_))))
                                                      (let ((_rest95198_
                                                             _hd9517995193_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9518095195_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur95137_ _rest95198_ false))
                        (let () (declare (not safe)) (_E9517795186_)))
                    (let () (declare (not safe)) (_E9517795186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9517795186_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9517695200_)))
                                    (let _lp95204_ ((_rest95206_ _rest95174_)
                                                    (_depth95207_ '0))
                                      (let* ((_e9520895215_ _rest95206_)
                                             (_E9521095219_
                                              (lambda ()
                                                (if (fxpositive? _depth95207_)
                                                    (let ((__tmp95665
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95137_
                                                              _hd95172_
                                                              _is-e?95143_)))
                                                          (__tmp95664
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95137_
                                                              _rest95206_
                                                              _is-e?95143_))))
                                                      (declare (not safe))
                                                      (_make-splice95136_
                                                       _e95142_
                                                       _depth95207_
                                                       __tmp95665
                                                       __tmp95664))
                                                    (let ((__tmp95667
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95137_
                                                              _hd95172_
                                                              _is-e?95143_)))
                                                          (__tmp95666
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95137_
                                                              _rest95206_
                                                              _is-e?95143_))))
                                                      (declare (not safe))
                                                      (_make-cons95135_
                                                       __tmp95667
                                                       __tmp95666)))))
                                             (_E9520995235_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9520895215_))
                                                    (let ((_e9521195223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9520895215_))))
                                                      (let ((_hd9521295226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9521195223_)))
                    (_tl9521395228_
                     (let () (declare (not safe)) (##cdr _e9521195223_))))
                (let* ((_rest-hd95231_ _hd9521295226_)
                       (_rest-tl95233_ _tl9521395228_))
                  (if '#t
                      (if (_is-e?95143_ _rest-hd95231_)
                          (let ((__tmp95668
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth95207_ '1))))
                            (declare (not safe))
                            (_lp95204_ _rest-tl95233_ __tmp95668))
                          (if (fxpositive? _depth95207_)
                              (let ((__tmp95670
                                     (let ()
                                       (declare (not safe))
                                       (_recur95137_ _hd95172_ _is-e?95143_)))
                                    (__tmp95669
                                     (let ()
                                       (declare (not safe))
                                       (_recur95137_
                                        _rest95206_
                                        _is-e?95143_))))
                                (declare (not safe))
                                (_make-splice95136_
                                 _e95142_
                                 _depth95207_
                                 __tmp95670
                                 __tmp95669))
                              (let ((__tmp95672
                                     (let ()
                                       (declare (not safe))
                                       (_recur95137_ _hd95172_ _is-e?95143_)))
                                    (__tmp95671
                                     (let ()
                                       (declare (not safe))
                                       (_recur95137_
                                        _rest95206_
                                        _is-e?95143_))))
                                (declare (not safe))
                                (_make-cons95135_ __tmp95672 __tmp95671))))
                      (let () (declare (not safe)) (_E9521095219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9521095219_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9520995235_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9515195160_))))))
                      (let () (declare (not safe)) (_E9515195160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9515095239_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e95142_))
                                                    (let ((_g95673_
                                                           (let ((__tmp95675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e95142_)))))
                     (declare (not safe))
                     (_recur95137_ __tmp95675 _is-e?95143_))))
              (begin
                (let ((_g95674_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g95673_)
                             (##vector-length _g95673_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g95674_ 2)))
                      (error "Context expects 2 values" _g95674_)))
                (let ((_e95243_
                       (let () (declare (not safe)) (##vector-ref _g95673_ 0)))
                      (_vars95244_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g95673_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e95243_))
                          _vars95244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e95142_))
                                                        (let ((_g95676_
                                                               (let ((__tmp95678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e95142_)))))
                         (declare (not safe))
                         (_recur95137_ __tmp95678 _is-e?95143_))))
                  (begin
                    (let ((_g95677_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g95676_)
                                 (##vector-length _g95676_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g95677_ 2)))
                          (error "Context expects 2 values" _g95677_)))
                    (let ((_e95246_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g95676_ 0)))
                          (_vars95247_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g95676_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e95246_))
                              _vars95247_))))
                (values (let () (declare (not safe)) (cons 'datum _e95142_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g95679_
                             (let ()
                               (declare (not safe))
                               (_recur95137_ _e95133_ gx#ellipsis?))))
                        (begin
                          (let ((_g95680_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g95679_)
                                       (##vector-length _g95679_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g95680_ 2)))
                                (error "Context expects 2 values" _g95680_)))
                          (let ((_tree95139_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g95679_ 0)))
                                (_vars95140_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g95679_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars95140_))
                                _tree95139_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx95089_
                                   _vars95140_))))))))))
          (let* ((_e9509395103_ _stx95089_)
                 (_E9509595107_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx95089_))))
                 (_E9509495129_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9509395103_))
                        (let ((_e9509695111_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9509395103_))))
                          (let ((_hd9509795114_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9509695111_)))
                                (_tl9509895116_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9509695111_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9509895116_))
                                (let ((_e9509995119_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9509895116_))))
                                  (let ((_hd9510095122_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9509995119_)))
                                        (_tl9510195124_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9509995119_))))
                                    (let ((_form95127_ _hd9510095122_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9510195124_))
                                          (if '#t
                                              (let ((__tmp95682
                                                     (let ((__tmp95683
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse95092_
                                                               _form95127_))))
                                                       (declare (not safe))
                                                       (_generate95091_
                                                        __tmp95683)))
                                                    (__tmp95681
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx95089_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp95682
                                                 __tmp95681))
                                              (let ()
                                                (declare (not safe))
                                                (_E9509595107_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9509595107_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9509595107_)))))
                        (let () (declare (not safe)) (_E9509595107_))))))
            (let () (declare (not safe)) (_E9509495129_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx94353_ _identifier=?94354_ _unwrap-e94355_ _wrap-e94356_)
        (letrec ((_generate-bindings94358_
                  (lambda (_target94953_
                           _ids94954_
                           _clauses94955_
                           _clause-ids94956_
                           _E94957_)
                    (letrec ((_generate194959_
                              (lambda (_clause95056_ _clause-id95057_ _E95058_)
                                (let ((__tmp95688
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id95057_ '())))
                                      (__tmp95684
                                       (let ((__tmp95685
                                              (let ((__tmp95687
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target94953_
                                                             '())))
                                                    (__tmp95686
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause94360_
                                                        _target94953_
                                                        _ids94954_
                                                        _clause95056_
                                                        _E95058_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp95687
                                                 __tmp95686))))
                                         (declare (not safe))
                                         (cons __tmp95685 '()))))
                                  (declare (not safe))
                                  (cons __tmp95688 __tmp95684)))))
                      (let _lp94961_ ((_rest94963_ _clauses94955_)
                                      (_rest-ids94964_ _clause-ids94956_)
                                      (_bindings94965_ '()))
                        (let* ((_rest9496694974_ _rest94963_)
                               (_else9496894982_ (lambda () _bindings94965_))
                               (_K9497095044_
                                (lambda (_rest94985_ _clause94986_)
                                  (let* ((_rest-ids9498794994_ _rest-ids94964_)
                                         (_E9498994998_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9498794994_))))
                                         (_K9499095032_
                                          (lambda (_rest-ids95001_
                                                   _clause-id95002_)
                                            (let* ((_rest-ids9500395011_
                                                    _rest-ids95001_)
                                                   (_else9500595019_
                                                    (lambda ()
                                                      (let ((__tmp95689
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate194959_
                        _clause94986_
                        _clause-id95002_
                        _E94957_))))
                (declare (not safe))
                (cons __tmp95689 _bindings94965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9500795024_
                                                    (lambda (_next-clause-id95022_)
                                                      (let ((__tmp95690
                                                             (let ((__tmp95691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate194959_
                               _clause94986_
                               _clause-id95002_
                               _next-clause-id95022_))))
                       (declare (not safe))
                       (cons __tmp95691 _bindings94965_))))
                (declare (not safe))
                (_lp94961_ _rest94985_ _rest-ids95001_ __tmp95690)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9500395011_))
                                                  (let* ((_hd9500895027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9500395011_)))
                                                         (_next-clause-id95030_
                                                          _hd9500895027_))
                                                    (declare (not safe))
                                                    (_K9500795024_
                                                     _next-clause-id95030_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9500595019_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9498794994_))
                                        (let ((_hd9499195035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9498794994_)))
                                              (_tl9499295037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9498794994_))))
                                          (let* ((_clause-id95040_
                                                  _hd9499195035_)
                                                 (_rest-ids95042_
                                                  _tl9499295037_))
                                            (declare (not safe))
                                            (_K9499095032_
                                             _rest-ids95042_
                                             _clause-id95040_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9498994998_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9496694974_))
                              (let ((_hd9497195047_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9496694974_)))
                                    (_tl9497295049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9496694974_))))
                                (let* ((_clause95052_ _hd9497195047_)
                                       (_rest95054_ _tl9497295049_))
                                  (declare (not safe))
                                  (_K9497095044_ _rest95054_ _clause95052_)))
                              (let ()
                                (declare (not safe))
                                (_else9496894982_))))))))
                 (_generate-body94359_
                  (lambda (_bindings94913_ _body94914_)
                    (let _recur94916_ ((_rest94918_ _bindings94913_))
                      (let* ((_rest9491994927_ _rest94918_)
                             (_else9492194935_ (lambda () _body94914_))
                             (_K9492394941_
                              (lambda (_rest94938_ _hd94939_)
                                (let ((__tmp95693
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd94939_ '())))
                                      (__tmp95692
                                       (let ()
                                         (declare (not safe))
                                         (_recur94916_ _rest94938_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp95693
                                   __tmp95692)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9491994927_))
                            (let ((_hd9492494944_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9491994927_)))
                                  (_tl9492594946_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9491994927_))))
                              (let* ((_hd94949_ _hd9492494944_)
                                     (_rest94951_ _tl9492594946_))
                                (declare (not safe))
                                (_K9492394941_ _rest94951_ _hd94949_)))
                            (let ()
                              (declare (not safe))
                              (_else9492194935_)))))))
                 (_generate-clause94360_
                  (lambda (_target94776_ _ids94777_ _clause94778_ _E94779_)
                    (letrec ((_generate194781_
                              (lambda (_hd94868_ _fender94869_ _body94870_)
                                (let ((_g95694_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause94362_
                                          _hd94868_
                                          _ids94777_))))
                                  (begin
                                    (let ((_g95695_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g95694_)
                                                 (##vector-length _g95694_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g95695_ 2)))
                                          (error "Context expects 2 values"
                                                 _g95695_)))
                                    (let ((_e94872_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95694_ 0)))
                                          (_mvars94873_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g95694_ 1))))
                                      (let* ((_pvars94875_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars94873_))))
                                             (_E94877_
                                              (let ((__tmp95696
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target94776_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E94779_ __tmp95696)))
                                             (_K94910_
                                              (let ((__tmp95697
                                                     (let ((__tmp95699
                                                            (map (lambda (_mvar94879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar94880_)
                           (let* ((_mvar9488194888_ _mvar94879_)
                                  (_E9488394892_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9488194888_))))
                                  (_K9488494898_
                                   (lambda (_depth94895_ _id94896_)
                                     (let ((__tmp95700
                                            (let ((__tmp95701
                                                   (let ((__tmp95703
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id94896_)))
                                                         (__tmp95702
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar94880_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp95703
                                                      __tmp95702
                                                      _depth94895_))))
                                              (declare (not safe))
                                              (cons __tmp95701 '()))))
                                       (declare (not safe))
                                       (cons _id94896_ __tmp95700)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9488194888_))
                                 (let ((_hd9488594901_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9488194888_)))
                                       (_tl9488694903_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9488194888_))))
                                   (let* ((_id94906_ _hd9488594901_)
                                          (_depth94908_ _tl9488694903_))
                                     (declare (not safe))
                                     (_K9488494898_ _depth94908_ _id94906_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9488394892_)))))
                         _mvars94873_
                         _pvars94875_))
                   (__tmp95698
                    (if (let () (declare (not safe)) (eq? _fender94869_ '#t))
                        _body94870_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender94869_
                           _body94870_
                           _E94877_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp95699 __tmp95698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars94875_
                                                 __tmp95697))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match94361_
                                           _hd94868_
                                           _target94776_
                                           _e94872_
                                           _mvars94873_
                                           _K94910_
                                           _E94877_)))))))))
                      (let* ((_e9478294802_ _clause94778_)
                             (_E9479194806_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9478294802_))))
                             (_E9478494840_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9478294802_))
                                    (let ((_e9479294810_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9478294802_))))
                                      (let ((_hd9479394813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9479294810_)))
                                            (_tl9479494815_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9479294810_))))
                                        (let ((_hd94818_ _hd9479394813_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9479494815_))
                                              (let ((_e9479594820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9479494815_))))
                                                (let ((_hd9479694823_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9479594820_)))
                                                      (_tl9479794825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9479594820_))))
                                                  (let ((_fender94828_
                                                         _hd9479694823_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9479794825_))
                                                        (let ((_e9479894830_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9479794825_))))
                  (let ((_hd9479994833_
                         (let () (declare (not safe)) (##car _e9479894830_)))
                        (_tl9480094835_
                         (let () (declare (not safe)) (##cdr _e9479894830_))))
                    (let ((_body94838_ _hd9479994833_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9480094835_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate194781_
                                 _hd94818_
                                 _fender94828_
                                 _body94838_))
                              (let () (declare (not safe)) (_E9479194806_)))
                          (let () (declare (not safe)) (_E9479194806_))))))
                (let () (declare (not safe)) (_E9479194806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9479194806_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9479194806_)))))
                             (_E9478394864_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9478294802_))
                                    (let ((_e9478594844_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9478294802_))))
                                      (let ((_hd9478694847_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9478594844_)))
                                            (_tl9478794849_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9478594844_))))
                                        (let ((_hd94852_ _hd9478694847_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9478794849_))
                                              (let ((_e9478894854_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9478794849_))))
                                                (let ((_hd9478994857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9478894854_)))
                                                      (_tl9479094859_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9478894854_))))
                                                  (let ((_body94862_
                                                         _hd9478994857_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9479094859_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate194781_
                                                               _hd94852_
                                                               '#t
                                                               _body94862_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9478494840_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9478494840_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9478494840_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9478494840_))))))
                        (let () (declare (not safe)) (_E9478394864_))))))
                 (_generate-match94361_
                  (lambda (_where94525_
                           _target94526_
                           _hd94527_
                           _mvars94528_
                           _K94529_
                           _E94530_)
                    (letrec ((_BUG94532_
                              (lambda (_q94774_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx94353_
                                         _hd94527_
                                         _q94774_))))
                             (_recur94533_
                              (lambda (_e94624_
                                       _vars94625_
                                       _target94626_
                                       _E94627_
                                       _k94628_)
                                (let* ((_e9462994636_ _e94624_)
                                       (_E9463194640_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9462994636_))))
                                       (_K9463294762_
                                        (lambda (_body94643_ _tag94644_)
                                          (let ((_$e94646_ _tag94644_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e94646_))
                                                (_k94628_ _vars94625_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e94646_))
                                                    (let ((__tmp95708
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target94626_)))
                                                          (__tmp95704
                                                           (let ((__tmp95706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95707
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e94356_ _body94643_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?94354_
                             __tmp95707
                             _target94626_)))
                         (__tmp95705 (_k94628_ _vars94625_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp95706 __tmp95705 _E94627_))))
              (declare (not safe))
              (gx#core-list 'if __tmp95708 __tmp95704 _E94627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e94646_))
                                                        (_k94628_
                                                         (let ((__tmp95709
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body94643_ _target94626_))))
                   (declare (not safe))
                   (cons __tmp95709 _vars94625_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e94646_))
                    (let ((_$e94649_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd94650_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl94651_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp95729
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target94626_)))
                            (__tmp95710
                             (let ((__tmp95724
                                    (let ((__tmp95725
                                           (let ((__tmp95728
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e94649_ '())))
                                                 (__tmp95726
                                                  (let ((__tmp95727
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e94355_
                                                            _target94626_))))
                                                    (declare (not safe))
                                                    (cons __tmp95727 '()))))
                                             (declare (not safe))
                                             (cons __tmp95728 __tmp95726))))
                                      (declare (not safe))
                                      (cons __tmp95725 '())))
                                   (__tmp95711
                                    (let ((__tmp95714
                                           (let ((__tmp95720
                                                  (let ((__tmp95723
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd94650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp95721
                 (let ((__tmp95722
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e94649_))))
                   (declare (not safe))
                   (cons __tmp95722 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95723
                                                          __tmp95721)))
                                                 (__tmp95715
                                                  (let ((__tmp95716
                                                         (let ((__tmp95719
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl94651_ '())))
                       (__tmp95717
                        (let ((__tmp95718
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e94649_))))
                          (declare (not safe))
                          (cons __tmp95718 '()))))
                   (declare (not safe))
                   (cons __tmp95719 __tmp95717))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95716 '()))))
                                             (declare (not safe))
                                             (cons __tmp95720 __tmp95715)))
                                          (__tmp95712
                                           (let* ((_body9465294659_
                                                   _body94643_)
                                                  (_E9465494663_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9465294659_))))
                                                  (_K9465594671_
                                                   (lambda (_tl94666_
                                                            _hd94667_)
                                                     (let ((__tmp95713
                                                            (lambda (_vars94669_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur94533_
                         _tl94666_
                         _vars94669_
                         _$tl94651_
                         _E94627_
                         _k94628_)))))
               (declare (not safe))
               (_recur94533_
                _hd94667_
                _vars94625_
                _$hd94650_
                _E94627_
                __tmp95713)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9465294659_))
                                                 (let ((_hd9465694674_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9465294659_)))
                                                       (_tl9465794676_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9465294659_))))
                                                   (let* ((_hd94679_
                                                           _hd9465694674_)
                                                          (_tl94681_
                                                           _tl9465794676_))
                                                     (declare (not safe))
                                                     (_K9465594671_
                                                      _tl94681_
                                                      _hd94679_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9465494663_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp95714
                                       __tmp95712))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp95724
                                __tmp95711))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp95729 __tmp95710 _E94627_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e94646_))
                        (let* ((_body9468294689_ _body94643_)
                               (_E9468494693_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9468294689_))))
                               (_K9468594744_
                                (lambda (_tl94696_ _hd94697_)
                                  (let* ((_rlen94699_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen94534_ _tl94696_)))
                                         (_$target94701_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd94703_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl94705_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp94707_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e94709_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd94711_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl94713_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars94715_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars94535_ _hd94697_)))
                                         (_lvars94717_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars94715_)))
                                         (_tlvars94719_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars94715_)))
                                         (_linit94723_
                                          (map (lambda (_var94721_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars94717_)))
                                    (letrec ((_make-loop94726_
                                              (lambda (_vars94730_)
                                                (let ((__tmp95732
                                                       (let ((__tmp95733
                                                              (let ((__tmp95769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp94707_ '())))
                            (__tmp95734
                             (let ((__tmp95735
                                    (let ((__tmp95768
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd94703_ _lvars94717_)))
                                          (__tmp95736
                                           (let ((__tmp95767
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd94703_)))
                                                 (__tmp95745
                                                  (let ((__tmp95762
                                                         (let ((__tmp95763
                                                                (let ((__tmp95766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e94709_ '())))
                              (__tmp95764
                               (let ((__tmp95765
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e94355_
                                         _$hd94703_))))
                                 (declare (not safe))
                                 (cons __tmp95765 '()))))
                          (declare (not safe))
                          (cons __tmp95766 __tmp95764))))
                   (declare (not safe))
                   (cons __tmp95763 '())))
                (__tmp95746
                 (let ((__tmp95752
                        (let ((__tmp95758
                               (let ((__tmp95761
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd94711_ '())))
                                     (__tmp95759
                                      (let ((__tmp95760
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e94709_))))
                                        (declare (not safe))
                                        (cons __tmp95760 '()))))
                                 (declare (not safe))
                                 (cons __tmp95761 __tmp95759)))
                              (__tmp95753
                               (let ((__tmp95754
                                      (let ((__tmp95757
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl94713_ '())))
                                            (__tmp95755
                                             (let ((__tmp95756
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e94709_))))
                                               (declare (not safe))
                                               (cons __tmp95756 '()))))
                                        (declare (not safe))
                                        (cons __tmp95757 __tmp95755))))
                                 (declare (not safe))
                                 (cons __tmp95754 '()))))
                          (declare (not safe))
                          (cons __tmp95758 __tmp95753)))
                       (__tmp95747
                        (let ((__tmp95748
                               (lambda (_hdvars94732_)
                                 (let ((__tmp95749
                                        (let ((__tmp95750
                                               (map (lambda (_svar94734_
                                                             _lvar94735_)
                                                      (let ((__tmp95751
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar94734_ _hdvars94732_ _BUG94532_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp95751 _lvar94735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars94715_
                                                    _lvars94717_)))
                                          (declare (not safe))
                                          (cons _$lp-tl94713_ __tmp95750))))
                                   (declare (not safe))
                                   (cons _$lp94707_ __tmp95749)))))
                          (declare (not safe))
                          (_recur94533_
                           _hd94697_
                           '()
                           _$lp-hd94711_
                           _E94627_
                           __tmp95748))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp95752 __tmp95747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp95762
                                                     __tmp95746)))
                                                 (__tmp95737
                                                  (let ((__tmp95741
                                                         (map (lambda (_lvar94737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar94738_)
                        (let ((__tmp95744
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar94738_ '())))
                              (__tmp95742
                               (let ((__tmp95743
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar94737_))))
                                 (declare (not safe))
                                 (cons __tmp95743 '()))))
                          (declare (not safe))
                          (cons __tmp95744 __tmp95742)))
                      _lvars94717_
                      _tlvars94719_))
                (__tmp95738
                 (_k94628_
                  (let ((__tmp95739
                         (lambda (_svar94740_ _tlvar94741_ _r94742_)
                           (let ((__tmp95740
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar94740_ _tlvar94741_))))
                             (declare (not safe))
                             (cons __tmp95740 _r94742_)))))
                    (declare (not safe))
                    (foldl2 __tmp95739
                            _vars94730_
                            _svars94715_
                            _tlvars94719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp95741
                                                     __tmp95738))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp95767
                                              __tmp95745
                                              __tmp95737))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp95768
                                       __tmp95736))))
                               (declare (not safe))
                               (cons __tmp95735 '()))))
                        (declare (not safe))
                        (cons __tmp95769 __tmp95734))))
                 (declare (not safe))
                 (cons __tmp95733 '())))
              (__tmp95730
               (let ((__tmp95731
                      (let ()
                        (declare (not safe))
                        (cons _$target94701_ _linit94723_))))
                 (declare (not safe))
                 (cons _$lp94707_ __tmp95731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp95732
                                                   __tmp95730)))))
                                      (let ((_body94728_
                                             (let ((__tmp95771
                                                    (let ((__tmp95772
                                                           (let ((__tmp95775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp95776
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl94705_ '()))))
                            (declare (not safe))
                            (cons _$target94701_ __tmp95776)))
                         (__tmp95773
                          (let ((__tmp95774
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target94626_
                                    _rlen94699_))))
                            (declare (not safe))
                            (cons __tmp95774 '()))))
                     (declare (not safe))
                     (cons __tmp95775 __tmp95773))))
              (declare (not safe))
              (cons __tmp95772 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp95770
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur94533_
                                                       _tl94696_
                                                       _vars94625_
                                                       _$tl94705_
                                                       _E94627_
                                                       _make-loop94726_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp95771
                                                __tmp95770))))
                                        (let ((__tmp95780
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target94626_)))
                                              (__tmp95777
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen94699_))
                                                   _body94728_
                                                   (let ((__tmp95778
                                                          (let ((__tmp95779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target94626_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp95779 _rlen94699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp95778
                                                      _body94728_
                                                      _E94627_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp95780
                                           __tmp95777
                                           _E94627_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9468294689_))
                              (let ((_hd9468694747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9468294689_)))
                                    (_tl9468794749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9468294689_))))
                                (let* ((_hd94752_ _hd9468694747_)
                                       (_tl94754_ _tl9468794749_))
                                  (declare (not safe))
                                  (_K9468594744_ _tl94754_ _hd94752_)))
                              (let () (declare (not safe)) (_E9468494693_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e94646_))
                            (let ((__tmp95782
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target94626_)))
                                  (__tmp95781 (_k94628_ _vars94625_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp95782
                               __tmp95781
                               _E94627_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e94646_))
                                (let ((_$e94756_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp95791
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target94626_)))
                                        (__tmp95783
                                         (let ((__tmp95785
                                                (let ((__tmp95786
                                                       (let ((__tmp95790
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e94756_ '())))
                     (__tmp95787
                      (let ((__tmp95788
                             (let ((__tmp95789
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e94355_
                                       _target94626_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp95789))))
                        (declare (not safe))
                        (cons __tmp95788 '()))))
                 (declare (not safe))
                 (cons __tmp95790 __tmp95787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp95786 '())))
                                               (__tmp95784
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur94533_
                                                   _body94643_
                                                   _vars94625_
                                                   _$e94756_
                                                   _E94627_
                                                   _k94628_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp95785
                                            __tmp95784))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp95791
                                     __tmp95783
                                     _E94627_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e94646_))
                                    (let ((_$e94758_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp95800
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target94626_)))
                                            (__tmp95792
                                             (let ((__tmp95794
                                                    (let ((__tmp95795
                                                           (let ((__tmp95799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e94758_ '())))
                         (__tmp95796
                          (let ((__tmp95797
                                 (let ((__tmp95798
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e94355_
                                           _target94626_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp95798))))
                            (declare (not safe))
                            (cons __tmp95797 '()))))
                     (declare (not safe))
                     (cons __tmp95799 __tmp95796))))
              (declare (not safe))
              (cons __tmp95795 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp95793
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur94533_
                                                       _body94643_
                                                       _vars94625_
                                                       _$e94758_
                                                       _E94627_
                                                       _k94628_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp95794
                                                __tmp95793))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp95800
                                         __tmp95792
                                         _E94627_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e94646_))
                                        (let ((_$e94760_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp95810
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target94626_)))
                                                (__tmp95801
                                                 (let ((__tmp95805
                                                        (let ((__tmp95806
                                                               (let ((__tmp95809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e94760_ '())))
                             (__tmp95807
                              (let ((__tmp95808
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target94626_))))
                                (declare (not safe))
                                (cons __tmp95808 '()))))
                         (declare (not safe))
                         (cons __tmp95809 __tmp95807))))
                  (declare (not safe))
                  (cons __tmp95806 '())))
               (__tmp95802
                (let ((__tmp95804
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e94760_ _body94643_)))
                      (__tmp95803 (_k94628_ _vars94625_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp95804 __tmp95803 _E94627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp95805
                                                    __tmp95802))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp95810
                                             __tmp95801
                                             _E94627_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG94532_ _e94624_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9462994636_))
                                      (let ((_hd9463394765_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9462994636_)))
                                            (_tl9463494767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9462994636_))))
                                        (let* ((_tag94770_ _hd9463394765_)
                                               (_body94772_ _tl9463494767_))
                                          (declare (not safe))
                                          (_K9463294762_
                                           _body94772_
                                           _tag94770_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9463194640_))))))
                             (_splice-rlen94534_
                              (lambda (_e94586_)
                                (let _lp94588_ ((_e94590_ _e94586_)
                                                (_n94591_ '0))
                                  (let* ((_e9459294599_ _e94590_)
                                         (_E9459494603_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9459294599_))))
                                         (_K9459594612_
                                          (lambda (_body94606_ _tag94607_)
                                            (let ((_$e94609_ _tag94607_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e94609_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx94353_
                                                     _where94525_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e94609_))
                                                      (let ((__tmp95812
                                                             (cdr _body94606_))
                                                            (__tmp95811
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n94591_ '1))))
                (declare (not safe))
                (_lp94588_ __tmp95812 __tmp95811))
              _n94591_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9459294599_))
                                        (let ((_hd9459694615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9459294599_)))
                                              (_tl9459794617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9459294599_))))
                                          (let* ((_tag94620_ _hd9459694615_)
                                                 (_body94622_ _tl9459794617_))
                                            (declare (not safe))
                                            (_K9459594612_
                                             _body94622_
                                             _tag94620_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9459494603_)))))))
                             (_splice-vars94535_
                              (lambda (_e94542_)
                                (let _recur94544_ ((_e94546_ _e94542_)
                                                   (_vars94547_ '()))
                                  (let* ((_e9454894555_ _e94546_)
                                         (_E9455094559_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9454894555_))))
                                         (_K9455194574_
                                          (lambda (_body94562_ _tag94563_)
                                            (let ((_$e94565_ _tag94563_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e94565_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body94562_
                                                          _vars94547_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e94565_))
                  (let () (declare (not safe)) (eq? 'splice _$e94565_)))
              (let ((__tmp95815 (cdr _body94562_))
                    (__tmp95813
                     (let ((__tmp95814 (car _body94562_)))
                       (declare (not safe))
                       (_recur94544_ __tmp95814 _vars94547_))))
                (declare (not safe))
                (_recur94544_ __tmp95815 __tmp95813))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e94565_))
                      (let () (declare (not safe)) (eq? 'box _$e94565_)))
                  (let ()
                    (declare (not safe))
                    (_recur94544_ _body94562_ _vars94547_))
                  _vars94547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9454894555_))
                                        (let ((_hd9455294577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9454894555_)))
                                              (_tl9455394579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9454894555_))))
                                          (let* ((_tag94582_ _hd9455294577_)
                                                 (_body94584_ _tl9455394579_))
                                            (declare (not safe))
                                            (_K9455194574_
                                             _body94584_
                                             _tag94582_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9455094559_)))))))
                             (_make-body94536_
                              (lambda (_vars94538_)
                                (let ((__tmp95816
                                       (map (lambda (_mvar94540_)
                                              (let ((__tmp95817
                                                     (car _mvar94540_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp95817
                                                 _vars94538_
                                                 _BUG94532_)))
                                            _mvars94528_)))
                                  (declare (not safe))
                                  (cons _K94529_ __tmp95816)))))
                      (let ()
                        (declare (not safe))
                        (_recur94533_
                         _hd94527_
                         '()
                         _target94526_
                         _E94530_
                         _make-body94536_)))))
                 (_parse-clause94362_
                  (lambda (_hd94431_ _ids94432_)
                    (let _recur94434_ ((_e94436_ _hd94431_)
                                       (_vars94437_ '())
                                       (_depth94438_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e94436_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e94436_))
                              (values '(any) _vars94437_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e94436_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx94353_
                                     _hd94431_))
                                  (if (let ((__tmp95818
                                             (lambda (_id94440_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e94436_
                                                  _id94440_)))))
                                        (declare (not safe))
                                        (find __tmp95818 _ids94432_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e94436_))
                                              _vars94437_)
                                      (if (let ((__tmp95819
                                                 (lambda (_var94442_)
                                                   (let ((__tmp95820
                                                          (car _var94442_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e94436_
                                                      __tmp95820)))))
                                            (declare (not safe))
                                            (find __tmp95819 _vars94437_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx94353_
                                             _e94436_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e94436_))
                                                  (let ((__tmp95821
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e94436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth94438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95821
                                                          _vars94437_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e94436_))
                              (let* ((_e9444394450_ _e94436_)
                                     (_E9444594454_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9444394450_))))
                                     (_E9444494515_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9444394450_))
                                            (let ((_e9444694458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9444394450_))))
                                              (let ((_hd9444794461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9444694458_)))
                                                    (_tl9444894463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9444694458_))))
                                                (let* ((_hd94466_
                                                        _hd9444794461_)
                                                       (_rest94468_
                                                        _tl9444894463_))
                                                  (if '#t
                                                      (let* ((_make-pair94483_
                                                              (lambda (_tag94470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd94471_
                               _tl94472_)
                        (let* ((_hd-depth94474_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag94470_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth94438_ '1))
                                    _depth94438_))
                               (_g95822_
                                (let ()
                                  (declare (not safe))
                                  (_recur94434_
                                   _hd94471_
                                   _vars94437_
                                   _hd-depth94474_))))
                          (begin
                            (let ((_g95823_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g95822_)
                                         (##vector-length _g95822_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g95823_ 2)))
                                  (error "Context expects 2 values" _g95823_)))
                            (let ((_hd94476_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g95822_ 0)))
                                  (_vars94477_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g95822_ 1))))
                              (let ((_g95824_
                                     (let ()
                                       (declare (not safe))
                                       (_recur94434_
                                        _tl94472_
                                        _vars94477_
                                        _depth94438_))))
                                (begin
                                  (let ((_g95825_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g95824_)
                                               (##vector-length _g95824_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g95825_ 2)))
                                        (error "Context expects 2 values"
                                               _g95825_)))
                                  (let ((_tl94479_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g95824_ 0)))
                                        (_vars94480_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g95824_ 1))))
                                    (let ()
                                      (values (let ((__tmp95826
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd94476_
                                                             _tl94479_))))
                                                (declare (not safe))
                                                (cons _tag94470_ __tmp95826))
                                              _vars94480_))))))))))
                     (_e9448494491_ _rest94468_)
                     (_E9448694495_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair94483_ 'cons _hd94466_ _rest94468_))))
                     (_E9448594511_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9448494491_))
                            (let ((_e9448794499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9448494491_))))
                              (let ((_hd9448894502_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9448794499_)))
                                    (_tl9448994504_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9448794499_))))
                                (let* ((_rest-hd94507_ _hd9448894502_)
                                       (_rest-tl94509_ _tl9448994504_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd94507_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair94483_
                                             'splice
                                             _hd94466_
                                             _rest-tl94509_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair94483_
                                             'cons
                                             _hd94466_
                                             _rest94468_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9448694495_))))))
                            (let () (declare (not safe)) (_E9448694495_))))))
                (let () (declare (not safe)) (_E9448594511_)))
              (let () (declare (not safe)) (_E9444594454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9444594454_))))))
                                (let () (declare (not safe)) (_E9444494515_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e94436_))
                                  (values '(null) _vars94437_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e94436_))
                                      (let ((_g95827_
                                             (let ((__tmp95829
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e94436_)))))
                                               (declare (not safe))
                                               (_recur94434_
                                                __tmp95829
                                                _vars94437_
                                                _depth94438_))))
                                        (begin
                                          (let ((_g95828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g95827_)
                                                       (##vector-length
                                                        _g95827_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g95828_ 2)))
                                                (error "Context expects 2 values"
                                                       _g95828_)))
                                          (let ((_e94519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95827_ 0)))
                                                (_vars94520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g95827_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e94519_))
                                                    _vars94520_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e94436_))
                                          (let ((_g95830_
                                                 (let ((__tmp95832
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e94436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur94434_
                                                    __tmp95832
                                                    _vars94437_
                                                    _depth94438_))))
                                            (begin
                                              (let ((_g95831_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g95830_)
                                                           (##vector-length
                                                            _g95830_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g95831_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g95831_)))
                                              (let ((_e94522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g95830_
                                                        0)))
                                                    (_vars94523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g95830_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e94522_))
                                                        _vars94523_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e94436_))
                                              (values (let ((__tmp95833
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e94436_))))
                (declare (not safe))
                (cons 'datum __tmp95833))
              _vars94437_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx94353_
                                                 _e94436_))))))))))))
          (let* ((_e9436394376_ _stx94353_)
                 (_E9436594380_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9436394376_))))
                 (_E9436494427_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9436394376_))
                        (let ((_e9436694384_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9436394376_))))
                          (let ((_hd9436794387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9436694384_)))
                                (_tl9436894389_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9436694384_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9436894389_))
                                (let ((_e9436994392_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9436894389_))))
                                  (let ((_hd9437094395_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9436994392_)))
                                        (_tl9437194397_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9436994392_))))
                                    (let ((_expr94400_ _hd9437094395_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9437194397_))
                                          (let ((_e9437294402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9437194397_))))
                                            (let ((_hd9437394405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9437294402_)))
                                                  (_tl9437494407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9437294402_))))
                                              (let* ((_ids94410_
                                                      _hd9437394405_)
                                                     (_clauses94412_
                                                      _tl9437494407_))
                                                (if '#t
                                                    (if (let ((__tmp95834
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids94410_))))
                  (declare (not safe))
                  (not __tmp95834))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx94353_
                   _ids94410_))
                (if (let ((__tmp95835
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses94412_))))
                      (declare (not safe))
                      (not __tmp95835))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx94353_))
                    (let* ((_ids94414_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids94410_)))
                           (_clauses94416_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses94412_)))
                           (_clause-ids94418_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses94416_)))
                           (_E94420_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target94422_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first94424_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses94416_))
                                _E94420_
                                (car _clause-ids94418_))))
                      (let ((__tmp95837
                             (let ((__tmp95838
                                    (let ((__tmp95840
                                           (let ((__tmp95845
                                                  (let ((__tmp95846
                                                         (let ((__tmp95851
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E94420_ '())))
                       (__tmp95847
                        (let ((__tmp95848
                               (let ((__tmp95850
                                      (let ()
                                        (declare (not safe))
                                        (cons _target94422_ '())))
                                     (__tmp95849
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target94422_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp95850
                                  __tmp95849))))
                          (declare (not safe))
                          (cons __tmp95848 '()))))
                   (declare (not safe))
                   (cons __tmp95851 __tmp95847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp95846 '())))
                                                 (__tmp95841
                                                  (let ((__tmp95844
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings94358_
                                                            _target94422_
                                                            _ids94414_
                                                            _clauses94416_
                                                            _clause-ids94418_
                                                            _E94420_)))
                                                        (__tmp95842
                                                         (let ((__tmp95843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr94400_ '()))))
                   (declare (not safe))
                   (cons _first94424_ __tmp95843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body94359_
                                                     __tmp95844
                                                     __tmp95842))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp95845
                                              __tmp95841)))
                                          (__tmp95839
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx94353_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp95840
                                       __tmp95839))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp95838)))
                            (__tmp95836
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx94353_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp95837 __tmp95836)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9436594380_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9436594380_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9436594380_)))))
                        (let () (declare (not safe)) (_E9436594380_))))))
            (let () (declare (not safe)) (_E9436494427_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx95063_)
        (let* ((_identifier=?95065_ 'free-identifier=?)
               (_unwrap-e95067_ 'syntax-e)
               (_wrap-e95069_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95063_
           _identifier=?95065_
           _unwrap-e95067_
           _wrap-e95069_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx95071_ _identifier=?95072_)
        (let* ((_unwrap-e95074_ 'syntax-e) (_wrap-e95076_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95071_
           _identifier=?95072_
           _unwrap-e95074_
           _wrap-e95076_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx95078_ _identifier=?95079_ _unwrap-e95080_)
        (let ((_wrap-e95082_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95078_
           _identifier=?95079_
           _unwrap-e95080_
           _wrap-e95082_))))
    (define gx#macro-expand-syntax-case
      (lambda _g95853_
        (let ((_g95852_ (let () (declare (not safe)) (##length _g95853_))))
          (cond ((let () (declare (not safe)) (##fx= _g95852_ 1))
                 (apply (lambda (_stx95063_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx95063_)))
                        _g95853_))
                ((let () (declare (not safe)) (##fx= _g95852_ 2))
                 (apply (lambda (_stx95071_ _identifier=?95072_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx95071_
                             _identifier=?95072_)))
                        _g95853_))
                ((let () (declare (not safe)) (##fx= _g95852_ 3))
                 (apply (lambda (_stx95078_
                                 _identifier=?95079_
                                 _unwrap-e95080_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx95078_
                             _identifier=?95079_
                             _unwrap-e95080_)))
                        _g95853_))
                ((let () (declare (not safe)) (##fx= _g95852_ 4))
                 (apply (lambda (_stx95084_
                                 _identifier=?95085_
                                 _unwrap-e95086_
                                 _wrap-e95087_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx95084_
                             _identifier=?95085_
                             _unwrap-e95086_
                             _wrap-e95087_)))
                        _g95853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g95853_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx94350_)
        (if (let () (declare (not safe)) (gx#identifier? _stx94350_))
            (let ((__tmp95854
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx94350_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp95854 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd94308_ . _rest94309_)
        (let ((_len94311_ (length _hd94308_)))
          (let _lp94313_ ((_rest94315_ _rest94309_))
            (let* ((_rest9431694324_ _rest94315_)
                   (_else9431894332_ (lambda () '#!void))
                   (_K9432094338_
                    (lambda (_rest94335_ _hd94336_)
                      (if (fx= _len94311_ (length _hd94336_))
                          (let () (declare (not safe)) (_lp94313_ _rest94335_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd94336_))))))
              (if (let () (declare (not safe)) (##pair? _rest9431694324_))
                  (let ((_hd9432194341_
                         (let ()
                           (declare (not safe))
                           (##car _rest9431694324_)))
                        (_tl9432294343_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9431694324_))))
                    (let* ((_hd94346_ _hd9432194341_)
                           (_rest94348_ _tl9432294343_))
                      (declare (not safe))
                      (_K9432094338_ _rest94348_ _hd94346_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx94266_ _n94267_)
        (let _lp94269_ ((_rest94271_ _stx94266_) (_r94272_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest94271_))
              (let* ((_g9427394280_
                      (let () (declare (not safe)) (gx#syntax-e _rest94271_)))
                     (_E9427594284_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9427394280_))))
                     (_K9427694290_
                      (lambda (_rest94287_ _hd94288_)
                        (let ((__tmp95855
                               (let ()
                                 (declare (not safe))
                                 (cons _hd94288_ _r94272_))))
                          (declare (not safe))
                          (_lp94269_ _rest94287_ __tmp95855)))))
                (if (let () (declare (not safe)) (##pair? _g9427394280_))
                    (let ((_hd9427794293_
                           (let () (declare (not safe)) (##car _g9427394280_)))
                          (_tl9427894295_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9427394280_))))
                      (let* ((_hd94298_ _hd9427794293_)
                             (_rest94300_ _tl9427894295_))
                        (declare (not safe))
                        (_K9427694290_ _rest94300_ _hd94298_)))
                    (let () (declare (not safe)) (_E9427594284_))))
              (let _lp94302_ ((_n94304_ _n94267_)
                              (_l94305_ _r94272_)
                              (_r94306_ _rest94271_))
                (if (let () (declare (not safe)) (null? _l94305_))
                    (values _l94305_ _r94306_)
                    (if (fxpositive? _n94304_)
                        (let ((__tmp95859
                               (let () (declare (not safe)) (fx- _n94304_ '1)))
                              (__tmp95858 (cdr _l94305_))
                              (__tmp95856
                               (let ((__tmp95857 (car _l94305_)))
                                 (declare (not safe))
                                 (cons __tmp95857 _r94306_))))
                          (declare (not safe))
                          (_lp94302_ __tmp95859 __tmp95858 __tmp95856))
                        (values (reverse _l94305_) _r94306_))))))))))
