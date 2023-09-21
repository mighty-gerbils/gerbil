(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1695292397)
  (begin
    (define gx#syntax-pattern::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         gx#expander::t
         '2
         'syntax-pattern
         '()
         '#f
         '(id depth))))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args20472_
        (apply make-struct-instance gx#syntax-pattern::t _$args20472_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gx#syntax-pattern::t '0)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gx#syntax-pattern::t '1)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gx#syntax-pattern::t '0)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gx#syntax-pattern::t '1)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self20469_ _stx20470_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx20470_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx19951_)
        (letrec ((_generate19953_
                  (lambda (_e20180_)
                    (letrec ((_BUG20182_
                              (lambda (_q20344_)
                                (error '"BUG: syntax; generate"
                                       _stx19951_
                                       _e20180_
                                       _q20344_)))
                             (_local-pattern-e20183_
                              (lambda (_pat20342_)
                                (let ((__tmp20474
                                       (##structure-ref
                                        _pat20342_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp20474))))
                             (_getvar20184_
                              (lambda (_q20339_ _vars20340_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q20339_ _vars20340_ _BUG20182_))))
                             (_getarg20185_
                              (lambda (_arg20305_ _vars20306_)
                                (let* ((_arg2030720314_ _arg20305_)
                                       (_E2030920318_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg2030720314_)))
                                       (_K2031020327_
                                        (lambda (_e20321_ _tag20322_)
                                          (let ((_$e20324_ _tag20322_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e20324_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar20184_
                                                   _e20321_
                                                   _vars20306_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e20324_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e20183_
                                                       _e20321_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG20182_
                                                       _arg20305_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg2030720314_))
                                      (let ((_hd2031120330_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg2030720314_)))
                                            (_tl2031220332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg2030720314_))))
                                        (let* ((_tag20335_ _hd2031120330_)
                                               (_e20337_ _tl2031220332_))
                                          (declare (not safe))
                                          (_K2031020327_ _e20337_ _tag20335_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E2030920318_)))))))
                      (let _recur20187_ ((_e20189_ _e20180_) (_vars20190_ '()))
                        (let* ((_e2019120198_ _e20189_)
                               (_E2019320202_
                                (lambda ()
                                  (error '"No clause matching" _e2019120198_)))
                               (_K2019420293_
                                (lambda (_body20205_ _tag20206_)
                                  (let ((_$e20208_ _tag20206_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e20208_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body20205_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e20208_))
                                            (let ((_id20211_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body20205_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id20211_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks20213_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id20211_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks20213_))
                                                        (let ((__tmp20504
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body20205_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp20504))
                (let ((__tmp20503
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body20205_)))
                      (__tmp20502
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body20205_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp20503
                   __tmp20502
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id20211_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body20205_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG20182_
                                                         _e20189_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e20208_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e20183_
                                                   _body20205_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e20208_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar20184_
                                                       _body20205_
                                                       _vars20190_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e20208_))
                                                        (let ((__tmp20500
                                                               (let ((__tmp20501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let () (declare (not safe)) (car _body20205_))))
                         (declare (not safe))
                         (_recur20187_ __tmp20501 _vars20190_)))
                      (__tmp20498
                       (let ((__tmp20499
                              (let () (declare (not safe)) (cdr _body20205_))))
                         (declare (not safe))
                         (_recur20187_ __tmp20499 _vars20190_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp20500 __tmp20498))
                (if (let () (declare (not safe)) (eq? 'vector _$e20208_))
                    (let ((__tmp20497
                           (let ()
                             (declare (not safe))
                             (_recur20187_ _body20205_ _vars20190_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp20497))
                    (if (let () (declare (not safe)) (eq? 'box _$e20208_))
                        (let ((__tmp20496
                               (let ()
                                 (declare (not safe))
                                 (_recur20187_ _body20205_ _vars20190_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp20496))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e20208_))
                            (let* ((_body2021420225_ _body20205_)
                                   (_E2021620229_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body2021420225_)))
                                   (_K2021720267_
                                    (lambda (_args20232_
                                             _iv20233_
                                             _hd20234_
                                             _depth20235_)
                                      (let* ((_targets20241_
                                              (let ((__tmp20475
                                                     (lambda (_g2023620238_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_getarg20185_
                                                          _g2023620238_
                                                          _vars20190_)))))
                                                (declare (not safe))
                                                (map __tmp20475 _args20232_)))
                                             (_fold-in20243_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args20232_)))
                                             (_fold-out20245_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args20247_
                                              (let ((__tmp20476
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out20245_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp20476
                                                        _fold-in20243_)))
                                             (_lambda-body20264_
                                              (if (fx> _depth20235_ '1)
                                                  (let ((_r-args20255_
                                                         (let ((__tmp20481
                                                                (lambda (_arg20249_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp20482
                                 (let ()
                                   (declare (not safe))
                                   (cdr _arg20249_))))
                            (declare (not safe))
                            (cons 'ref __tmp20482)))))
                   (declare (not safe))
                   (map __tmp20481 _args20232_)))
                (_r-vars20256_
                 (let ((__tmp20483
                        (lambda (_arg20251_ _var20252_ _r20253_)
                          (let ((__tmp20484
                                 (let ((__tmp20485
                                        (let ()
                                          (declare (not safe))
                                          (cdr _arg20251_))))
                                   (declare (not safe))
                                   (cons __tmp20485 _var20252_))))
                            (declare (not safe))
                            (cons __tmp20484 _r20253_)))))
                   (declare (not safe))
                   (foldr2 __tmp20483
                           _vars20190_
                           _args20232_
                           _fold-in20243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp20486
                                                           (let ((__tmp20487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp20491
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth20235_ '1)))
                                (__tmp20488
                                 (let ((__tmp20489
                                        (let ((__tmp20490
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out20245_))))
                                          (declare (not safe))
                                          (cons __tmp20490 _r-args20255_))))
                                   (declare (not safe))
                                   (cons _hd20234_ __tmp20489))))
                            (declare (not safe))
                            (cons __tmp20491 __tmp20488))))
                     (declare (not safe))
                     (cons 'splice __tmp20487))))
              (declare (not safe))
              (_recur20187_ __tmp20486 _r-vars20256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars20262_
                                                          (let ((__tmp20477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg20258_ _var20259_ _r20260_)
                           (let ((__tmp20478
                                  (let ((__tmp20479
                                         (let ()
                                           (declare (not safe))
                                           (cdr _arg20258_))))
                                    (declare (not safe))
                                    (cons __tmp20479 _var20259_))))
                             (declare (not safe))
                             (cons __tmp20478 _r20260_)))))
                    (declare (not safe))
                    (foldr2 __tmp20477
                            _vars20190_
                            _args20232_
                            _fold-in20243_)))
                 (__tmp20480
                  (let ()
                    (declare (not safe))
                    (_recur20187_ _hd20234_ _hd-vars20262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp20480
                                                     _fold-out20245_)))))
                                        (let ((__tmp20495
                                               (if (fx> (length _targets20241_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets20241_))
                                                   '#!void))
                                              (__tmp20492
                                               (let ((__tmp20494
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args20247_
                                                         _lambda-body20264_)))
                                                     (__tmp20493
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur20187_
                                                         _iv20233_
                                                         _vars20190_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp20494
                                                  __tmp20493
                                                  _targets20241_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp20495
                                           __tmp20492))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body2021420225_))
                                  (let ((_hd2021820270_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body2021420225_)))
                                        (_tl2021920272_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body2021420225_))))
                                    (let ((_depth20275_ _hd2021820270_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl2021920272_))
                                          (let ((_hd2022020277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl2021920272_)))
                                                (_tl2022120279_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl2021920272_))))
                                            (let ((_hd20282_ _hd2022020277_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl2022120279_))
                                                  (let ((_hd2022220284_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl2022120279_)))
                                                        (_tl2022320286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl2022120279_))))
                                                    (let* ((_iv20289_
                                                            _hd2022220284_)
                                                           (_args20291_
                                                            _tl2022320286_))
                                                      (declare (not safe))
                                                      (_K2021720267_
                                                       _args20291_
                                                       _iv20289_
                                                       _hd20282_
                                                       _depth20275_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E2021620229_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E2021620229_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E2021620229_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e20208_))
                                _body20205_
                                (let ()
                                  (declare (not safe))
                                  (_BUG20182_ _e20189_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e2019120198_))
                              (let ((_hd2019520296_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2019120198_)))
                                    (_tl2019620298_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2019120198_))))
                                (let* ((_tag20301_ _hd2019520296_)
                                       (_body20303_ _tl2019620298_))
                                  (declare (not safe))
                                  (_K2019420293_ _body20303_ _tag20301_)))
                              (let ()
                                (declare (not safe))
                                (_E2019320202_))))))))
                 (_parse19954_
                  (lambda (_e19995_)
                    (letrec ((_make-cons19997_
                              (lambda (_hd20172_ _tl20173_)
                                (let ((_g20505_ _hd20172_)
                                      (_g20507_ _tl20173_))
                                  (begin
                                    (let ((_g20506_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20505_)
                                                 (##vector-length _g20505_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20506_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20506_)))
                                    (let ((_g20508_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20507_)
                                                 (##vector-length _g20507_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20508_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20508_)))
                                    (let ((_hd-e20175_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20505_ 0)))
                                          (_hd-vars20176_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20505_ 1))))
                                      (let ((_tl-e20177_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20507_ 0)))
                                            (_tl-vars20178_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20507_ 1))))
                                        (values (let ((__tmp20509
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e20175_
                                                               _tl-e20177_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp20509))
                                                (append _hd-vars20176_
                                                        _tl-vars20178_))))))))
                             (_make-splice19998_
                              (lambda (_where20111_
                                       _depth20112_
                                       _hd20113_
                                       _tl20114_)
                                (let ((_g20510_ _hd20113_)
                                      (_g20512_ _tl20114_))
                                  (begin
                                    (let ((_g20511_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20510_)
                                                 (##vector-length _g20510_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20511_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20511_)))
                                    (let ((_g20513_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20512_)
                                                 (##vector-length _g20512_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20513_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20513_)))
                                    (let ((_hd-e20116_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20510_ 0)))
                                          (_hd-vars20117_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20510_ 1))))
                                      (let ((_tl-e20118_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20512_ 0)))
                                            (_tl-vars20119_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g20512_ 1))))
                                        (let _lp20121_ ((_rest20123_
                                                         _hd-vars20117_)
                                                        (_targets20124_ '())
                                                        (_vars20125_
                                                         _tl-vars20119_))
                                          (let* ((_rest2012620136_ _rest20123_)
                                                 (_else2012820144_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets20124_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx19951_
                                                           _where20111_))
                                                        (values (let ((__tmp20514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp20515
                                      (let ((__tmp20516
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e20118_
                                                     _targets20124_))))
                                        (declare (not safe))
                                        (cons _hd-e20116_ __tmp20516))))
                                 (declare (not safe))
                                 (cons _depth20112_ __tmp20515))))
                          (declare (not safe))
                          (cons 'splice __tmp20514))
                        _vars20125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K2013020153_
                                                  (lambda (_rest20147_
                                                           _hd-pat20148_
                                                           _hd-depth*20149_)
                                                    (let ((_hd-depth20151_
                                                           (fx- _hd-depth*20149_
                                                                _depth20112_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (fxpositive?
                                                             _hd-depth20151_))
                                                          (let ((__tmp20521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp20522
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat20148_))))
                           (declare (not safe))
                           (cons __tmp20522 _targets20124_)))
                        (__tmp20519
                         (let ((__tmp20520
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth20151_ _hd-pat20148_))))
                           (declare (not safe))
                           (cons __tmp20520 _vars20125_))))
                    (declare (not safe))
                    (_lp20121_ _rest20147_ __tmp20521 __tmp20519))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth20151_))
                      (let ((__tmp20517
                             (let ((__tmp20518
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat20148_))))
                               (declare (not safe))
                               (cons __tmp20518 _targets20124_))))
                        (declare (not safe))
                        (_lp20121_ _rest20147_ __tmp20517 _vars20125_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx19951_
                         _where20111_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest2012620136_))
                                                (let ((_hd2013120156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest2012620136_)))
                                                      (_tl2013220158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest2012620136_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd2013120156_))
                                                      (let ((_hd2013320161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd2013120156_)))
                    (_tl2013420163_
                     (let () (declare (not safe)) (##cdr _hd2013120156_))))
                (let* ((_hd-depth*20166_ _hd2013320161_)
                       (_hd-pat20168_ _tl2013420163_)
                       (_rest20170_ _tl2013220158_))
                  (declare (not safe))
                  (_K2013020153_ _rest20170_ _hd-pat20168_ _hd-depth*20166_)))
              (let () (declare (not safe)) (_else2012820144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else2012820144_)))))))))))
                             (_recur19999_
                              (lambda (_e20004_ _is-e?20005_)
                                (if (_is-e?20005_ _e20004_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx19951_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e20004_))
                                        (let* ((_pat20007_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e20004_)))
                                               (_depth20009_
                                                (##structure-ref
                                                 _pat20007_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (let ()
                                                (declare (not safe))
                                                (fxpositive? _depth20009_))
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat20007_))
                                                      (let ((__tmp20540
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth20009_ _pat20007_))))
                (declare (not safe))
                (cons __tmp20540 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat20007_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e20004_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e20004_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e20004_))
                                                (let* ((_e2001120018_ _e20004_)
                                                       (_E2001320022_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e2001120018_))))
                                                       (_E2001220101_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e2001120018_))
                      (let ((_e2001420026_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e2001120018_))))
                        (let ((_hd2001520029_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2001420026_)))
                              (_tl2001620031_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2001420026_))))
                          (let* ((_hd20034_ _hd2001520029_)
                                 (_rest20036_ _tl2001620031_))
                            (if '#t
                                (if (_is-e?20005_ _hd20034_)
                                    (let* ((_e2003720044_ _rest20036_)
                                           (_E2003920048_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx19951_
                                                 _e20004_))))
                                           (_E2003820062_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e2003720044_))
                                                  (let ((_e2004020052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e2003720044_))))
                                                    (let ((_hd2004120055_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2004020052_)))
                                                          (_tl2004220057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2004020052_))))
                                                      (let ((_rest20060_
                                                             _hd2004120055_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl2004220057_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur19999_ _rest20060_ false))
                        (let () (declare (not safe)) (_E2003920048_)))
                    (let () (declare (not safe)) (_E2003920048_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E2003920048_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E2003820062_)))
                                    (let _lp20066_ ((_rest20068_ _rest20036_)
                                                    (_depth20069_ '0))
                                      (let* ((_e2007020077_ _rest20068_)
                                             (_E2007220081_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxpositive?
                                                       _depth20069_))
                                                    (let ((__tmp20534
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur19999_
                                                              _hd20034_
                                                              _is-e?20005_)))
                                                          (__tmp20533
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur19999_
                                                              _rest20068_
                                                              _is-e?20005_))))
                                                      (declare (not safe))
                                                      (_make-splice19998_
                                                       _e20004_
                                                       _depth20069_
                                                       __tmp20534
                                                       __tmp20533))
                                                    (let ((__tmp20532
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur19999_
                                                              _hd20034_
                                                              _is-e?20005_)))
                                                          (__tmp20531
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur19999_
                                                              _rest20068_
                                                              _is-e?20005_))))
                                                      (declare (not safe))
                                                      (_make-cons19997_
                                                       __tmp20532
                                                       __tmp20531)))))
                                             (_E2007120097_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e2007020077_))
                                                    (let ((_e2007320085_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e2007020077_))))
                                                      (let ((_hd2007420088_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e2007320085_)))
                    (_tl2007520090_
                     (let () (declare (not safe)) (##cdr _e2007320085_))))
                (let* ((_rest-hd20093_ _hd2007420088_)
                       (_rest-tl20095_ _tl2007520090_))
                  (if '#t
                      (if (_is-e?20005_ _rest-hd20093_)
                          (let ((__tmp20539
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth20069_ '1))))
                            (declare (not safe))
                            (_lp20066_ _rest-tl20095_ __tmp20539))
                          (if (let ()
                                (declare (not safe))
                                (fxpositive? _depth20069_))
                              (let ((__tmp20538
                                     (let ()
                                       (declare (not safe))
                                       (_recur19999_ _hd20034_ _is-e?20005_)))
                                    (__tmp20537
                                     (let ()
                                       (declare (not safe))
                                       (_recur19999_
                                        _rest20068_
                                        _is-e?20005_))))
                                (declare (not safe))
                                (_make-splice19998_
                                 _e20004_
                                 _depth20069_
                                 __tmp20538
                                 __tmp20537))
                              (let ((__tmp20536
                                     (let ()
                                       (declare (not safe))
                                       (_recur19999_ _hd20034_ _is-e?20005_)))
                                    (__tmp20535
                                     (let ()
                                       (declare (not safe))
                                       (_recur19999_
                                        _rest20068_
                                        _is-e?20005_))))
                                (declare (not safe))
                                (_make-cons19997_ __tmp20536 __tmp20535))))
                      (let () (declare (not safe)) (_E2007220081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E2007220081_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E2007120097_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E2001320022_))))))
                      (let () (declare (not safe)) (_E2001320022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E2001220101_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e20004_))
                                                    (let ((_g20527_
                                                           (let ((__tmp20529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp20530
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-unwrap__0 _e20004_))))
                            (declare (not safe))
                            (vector->list __tmp20530))))
                     (declare (not safe))
                     (_recur19999_ __tmp20529 _is-e?20005_))))
              (begin
                (let ((_g20528_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g20527_)
                             (##vector-length _g20527_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g20528_ 2)))
                      (error "Context expects 2 values" _g20528_)))
                (let ((_e20105_
                       (let () (declare (not safe)) (##vector-ref _g20527_ 0)))
                      (_vars20106_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g20527_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e20105_))
                          _vars20106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e20004_))
                                                        (let ((_g20523_
                                                               (let ((__tmp20525
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp20526
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e20004_))))
                                (declare (not safe))
                                (unbox __tmp20526))))
                         (declare (not safe))
                         (_recur19999_ __tmp20525 _is-e?20005_))))
                  (begin
                    (let ((_g20524_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g20523_)
                                 (##vector-length _g20523_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g20524_ 2)))
                          (error "Context expects 2 values" _g20524_)))
                    (let ((_e20108_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g20523_ 0)))
                          (_vars20109_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g20523_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e20108_))
                              _vars20109_))))
                (values (let () (declare (not safe)) (cons 'datum _e20004_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g20541_
                             (let ()
                               (declare (not safe))
                               (_recur19999_ _e19995_ gx#ellipsis?))))
                        (begin
                          (let ((_g20542_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g20541_)
                                       (##vector-length _g20541_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g20542_ 2)))
                                (error "Context expects 2 values" _g20542_)))
                          (let ((_tree20001_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g20541_ 0)))
                                (_vars20002_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g20541_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars20002_))
                                _tree20001_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx19951_
                                   _vars20002_))))))))))
          (let* ((_e1995519965_ _stx19951_)
                 (_E1995719969_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _stx19951_))))
                 (_E1995619991_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e1995519965_))
                        (let ((_e1995819973_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e1995519965_))))
                          (let ((_hd1995919976_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1995819973_)))
                                (_tl1996019978_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1995819973_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1996019978_))
                                (let ((_e1996119981_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl1996019978_))))
                                  (let ((_hd1996219984_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1996119981_)))
                                        (_tl1996319986_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1996119981_))))
                                    (let ((_form19989_ _hd1996219984_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl1996319986_))
                                          (if '#t
                                              (let ((__tmp20544
                                                     (let ((__tmp20545
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse19954_
                                                               _form19989_))))
                                                       (declare (not safe))
                                                       (_generate19953_
                                                        __tmp20545)))
                                                    (__tmp20543
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx19951_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp20544
                                                 __tmp20543))
                                              (let ()
                                                (declare (not safe))
                                                (_E1995719969_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E1995719969_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E1995719969_)))))
                        (let () (declare (not safe)) (_E1995719969_))))))
            (let () (declare (not safe)) (_E1995619991_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx19215_ _identifier=?19216_ _unwrap-e19217_ _wrap-e19218_)
        (letrec ((_generate-bindings19220_
                  (lambda (_target19815_
                           _ids19816_
                           _clauses19817_
                           _clause-ids19818_
                           _E19819_)
                    (letrec ((_generate119821_
                              (lambda (_clause19918_ _clause-id19919_ _E19920_)
                                (let ((__tmp20550
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id19919_ '())))
                                      (__tmp20546
                                       (let ((__tmp20547
                                              (let ((__tmp20549
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target19815_
                                                             '())))
                                                    (__tmp20548
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause19222_
                                                        _target19815_
                                                        _ids19816_
                                                        _clause19918_
                                                        _E19920_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp20549
                                                 __tmp20548))))
                                         (declare (not safe))
                                         (cons __tmp20547 '()))))
                                  (declare (not safe))
                                  (cons __tmp20550 __tmp20546)))))
                      (let _lp19823_ ((_rest19825_ _clauses19817_)
                                      (_rest-ids19826_ _clause-ids19818_)
                                      (_bindings19827_ '()))
                        (let* ((_rest1982819836_ _rest19825_)
                               (_else1983019844_ (lambda () _bindings19827_))
                               (_K1983219906_
                                (lambda (_rest19847_ _clause19848_)
                                  (let* ((_rest-ids1984919856_ _rest-ids19826_)
                                         (_E1985119860_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1984919856_)))
                                         (_K1985219894_
                                          (lambda (_rest-ids19863_
                                                   _clause-id19864_)
                                            (let* ((_rest-ids1986519873_
                                                    _rest-ids19863_)
                                                   (_else1986719881_
                                                    (lambda ()
                                                      (let ((__tmp20551
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate119821_
                        _clause19848_
                        _clause-id19864_
                        _E19819_))))
                (declare (not safe))
                (cons __tmp20551 _bindings19827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K1986919886_
                                                    (lambda (_next-clause-id19884_)
                                                      (let ((__tmp20552
                                                             (let ((__tmp20553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate119821_
                               _clause19848_
                               _clause-id19864_
                               _next-clause-id19884_))))
                       (declare (not safe))
                       (cons __tmp20553 _bindings19827_))))
                (declare (not safe))
                (_lp19823_ _rest19847_ _rest-ids19863_ __tmp20552)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids1986519873_))
                                                  (let* ((_hd1987019889_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids1986519873_)))
                                                         (_next-clause-id19892_
                                                          _hd1987019889_))
                                                    (declare (not safe))
                                                    (_K1986919886_
                                                     _next-clause-id19892_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else1986719881_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids1984919856_))
                                        (let ((_hd1985319897_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids1984919856_)))
                                              (_tl1985419899_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids1984919856_))))
                                          (let* ((_clause-id19902_
                                                  _hd1985319897_)
                                                 (_rest-ids19904_
                                                  _tl1985419899_))
                                            (declare (not safe))
                                            (_K1985219894_
                                             _rest-ids19904_
                                             _clause-id19902_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E1985119860_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest1982819836_))
                              (let ((_hd1983319909_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest1982819836_)))
                                    (_tl1983419911_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest1982819836_))))
                                (let* ((_clause19914_ _hd1983319909_)
                                       (_rest19916_ _tl1983419911_))
                                  (declare (not safe))
                                  (_K1983219906_ _rest19916_ _clause19914_)))
                              (let ()
                                (declare (not safe))
                                (_else1983019844_))))))))
                 (_generate-body19221_
                  (lambda (_bindings19775_ _body19776_)
                    (let _recur19778_ ((_rest19780_ _bindings19775_))
                      (let* ((_rest1978119789_ _rest19780_)
                             (_else1978319797_ (lambda () _body19776_))
                             (_K1978519803_
                              (lambda (_rest19800_ _hd19801_)
                                (let ((__tmp20555
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd19801_ '())))
                                      (__tmp20554
                                       (let ()
                                         (declare (not safe))
                                         (_recur19778_ _rest19800_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp20555
                                   __tmp20554)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest1978119789_))
                            (let ((_hd1978619806_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest1978119789_)))
                                  (_tl1978719808_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest1978119789_))))
                              (let* ((_hd19811_ _hd1978619806_)
                                     (_rest19813_ _tl1978719808_))
                                (declare (not safe))
                                (_K1978519803_ _rest19813_ _hd19811_)))
                            (let ()
                              (declare (not safe))
                              (_else1978319797_)))))))
                 (_generate-clause19222_
                  (lambda (_target19638_ _ids19639_ _clause19640_ _E19641_)
                    (letrec ((_generate119643_
                              (lambda (_hd19730_ _fender19731_ _body19732_)
                                (let ((_g20556_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause19224_
                                          _hd19730_
                                          _ids19639_))))
                                  (begin
                                    (let ((_g20557_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g20556_)
                                                 (##vector-length _g20556_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g20557_ 2)))
                                          (error "Context expects 2 values"
                                                 _g20557_)))
                                    (let ((_e19734_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20556_ 0)))
                                          (_mvars19735_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g20556_ 1))))
                                      (let* ((_pvars19737_
                                              (let ((__tmp20558
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#gentemps
                                                        _mvars19735_))))
                                                (declare (not safe))
                                                (map gx#syntax-local-rewrap
                                                     __tmp20558)))
                                             (_E19739_
                                              (let ((__tmp20559
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target19638_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E19641_ __tmp20559)))
                                             (_K19772_
                                              (let ((__tmp20560
                                                     (let ((__tmp20562
                                                            (let ((__tmp20563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_mvar19741_ _pvar19742_)
                             (let* ((_mvar1974319750_ _mvar19741_)
                                    (_E1974519754_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _mvar1974319750_)))
                                    (_K1974619760_
                                     (lambda (_depth19757_ _id19758_)
                                       (let ((__tmp20564
                                              (let ((__tmp20565
                                                     (let ((__tmp20567
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#core-list
                                                               'quote
                                                               _id19758_)))
                                                           (__tmp20566
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#core-list
                                                               'quote
                                                               _pvar19742_))))
                                                       (declare (not safe))
                                                       (gx#core-list
                                                        'make-syntax-pattern
                                                        __tmp20567
                                                        __tmp20566
                                                        _depth19757_))))
                                                (declare (not safe))
                                                (cons __tmp20565 '()))))
                                         (declare (not safe))
                                         (cons _id19758_ __tmp20564)))))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _mvar1974319750_))
                                   (let ((_hd1974719763_
                                          (let ()
                                            (declare (not safe))
                                            (##car _mvar1974319750_)))
                                         (_tl1974819765_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _mvar1974319750_))))
                                     (let* ((_id19768_ _hd1974719763_)
                                            (_depth19770_ _tl1974819765_))
                                       (declare (not safe))
                                       (_K1974619760_ _depth19770_ _id19768_)))
                                   (let ()
                                     (declare (not safe))
                                     (_E1974519754_)))))))
                      (declare (not safe))
                      (map __tmp20563 _mvars19735_ _pvars19737_)))
                   (__tmp20561
                    (if (let () (declare (not safe)) (eq? _fender19731_ '#t))
                        _body19732_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender19731_
                           _body19732_
                           _E19739_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp20562 __tmp20561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars19737_
                                                 __tmp20560))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match19223_
                                           _hd19730_
                                           _target19638_
                                           _e19734_
                                           _mvars19735_
                                           _K19772_
                                           _E19739_)))))))))
                      (let* ((_e1964419664_ _clause19640_)
                             (_E1965319668_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e1964419664_))))
                             (_E1964619702_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e1964419664_))
                                    (let ((_e1965419672_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e1964419664_))))
                                      (let ((_hd1965519675_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1965419672_)))
                                            (_tl1965619677_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1965419672_))))
                                        (let ((_hd19680_ _hd1965519675_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1965619677_))
                                              (let ((_e1965719682_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl1965619677_))))
                                                (let ((_hd1965819685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1965719682_)))
                                                      (_tl1965919687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1965719682_))))
                                                  (let ((_fender19690_
                                                         _hd1965819685_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl1965919687_))
                                                        (let ((_e1966019692_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl1965919687_))))
                  (let ((_hd1966119695_
                         (let () (declare (not safe)) (##car _e1966019692_)))
                        (_tl1966219697_
                         (let () (declare (not safe)) (##cdr _e1966019692_))))
                    (let ((_body19700_ _hd1966119695_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl1966219697_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate119643_
                                 _hd19680_
                                 _fender19690_
                                 _body19700_))
                              (let () (declare (not safe)) (_E1965319668_)))
                          (let () (declare (not safe)) (_E1965319668_))))))
                (let () (declare (not safe)) (_E1965319668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E1965319668_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E1965319668_)))))
                             (_E1964519726_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e1964419664_))
                                    (let ((_e1964719706_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e1964419664_))))
                                      (let ((_hd1964819709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1964719706_)))
                                            (_tl1964919711_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1964719706_))))
                                        (let ((_hd19714_ _hd1964819709_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl1964919711_))
                                              (let ((_e1965019716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl1964919711_))))
                                                (let ((_hd1965119719_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1965019716_)))
                                                      (_tl1965219721_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1965019716_))))
                                                  (let ((_body19724_
                                                         _hd1965119719_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl1965219721_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate119643_
                                                               _hd19714_
                                                               '#t
                                                               _body19724_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E1964619702_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E1964619702_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E1964619702_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E1964619702_))))))
                        (let () (declare (not safe)) (_E1964519726_))))))
                 (_generate-match19223_
                  (lambda (_where19387_
                           _target19388_
                           _hd19389_
                           _mvars19390_
                           _K19391_
                           _E19392_)
                    (letrec ((_BUG19394_
                              (lambda (_q19636_)
                                (error '"BUG: syntax-case; generate"
                                       _stx19215_
                                       _hd19389_
                                       _q19636_)))
                             (_recur19395_
                              (lambda (_e19486_
                                       _vars19487_
                                       _target19488_
                                       _E19489_
                                       _k19490_)
                                (let* ((_e1949119498_ _e19486_)
                                       (_E1949319502_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1949119498_)))
                                       (_K1949419624_
                                        (lambda (_body19505_ _tag19506_)
                                          (let ((_$e19508_ _tag19506_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e19508_))
                                                (_k19490_ _vars19487_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e19508_))
                                                    (let ((__tmp20677
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target19488_)))
                                                          (__tmp20673
                                                           (let ((__tmp20675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp20676
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e19218_ _body19505_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?19216_
                             __tmp20676
                             _target19488_)))
                         (__tmp20674 (_k19490_ _vars19487_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp20675 __tmp20674 _E19489_))))
              (declare (not safe))
              (gx#core-list 'if __tmp20677 __tmp20673 _E19489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e19508_))
                                                        (_k19490_
                                                         (let ((__tmp20672
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body19505_ _target19488_))))
                   (declare (not safe))
                   (cons __tmp20672 _vars19487_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e19508_))
                    (let ((_$e19511_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd19512_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl19513_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp20671
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target19488_)))
                            (__tmp20652
                             (let ((__tmp20666
                                    (let ((__tmp20667
                                           (let ((__tmp20670
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e19511_ '())))
                                                 (__tmp20668
                                                  (let ((__tmp20669
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e19217_
                                                            _target19488_))))
                                                    (declare (not safe))
                                                    (cons __tmp20669 '()))))
                                             (declare (not safe))
                                             (cons __tmp20670 __tmp20668))))
                                      (declare (not safe))
                                      (cons __tmp20667 '())))
                                   (__tmp20653
                                    (let ((__tmp20656
                                           (let ((__tmp20662
                                                  (let ((__tmp20665
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd19512_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp20663
                 (let ((__tmp20664
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e19511_))))
                   (declare (not safe))
                   (cons __tmp20664 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp20665
                                                          __tmp20663)))
                                                 (__tmp20657
                                                  (let ((__tmp20658
                                                         (let ((__tmp20661
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl19513_ '())))
                       (__tmp20659
                        (let ((__tmp20660
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e19511_))))
                          (declare (not safe))
                          (cons __tmp20660 '()))))
                   (declare (not safe))
                   (cons __tmp20661 __tmp20659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp20658 '()))))
                                             (declare (not safe))
                                             (cons __tmp20662 __tmp20657)))
                                          (__tmp20654
                                           (let* ((_body1951419521_
                                                   _body19505_)
                                                  (_E1951619525_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body1951419521_)))
                                                  (_K1951719533_
                                                   (lambda (_tl19528_
                                                            _hd19529_)
                                                     (let ((__tmp20655
                                                            (lambda (_vars19531_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur19395_
                         _tl19528_
                         _vars19531_
                         _$tl19513_
                         _E19489_
                         _k19490_)))))
               (declare (not safe))
               (_recur19395_
                _hd19529_
                _vars19487_
                _$hd19512_
                _E19489_
                __tmp20655)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body1951419521_))
                                                 (let ((_hd1951819536_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body1951419521_)))
                                                       (_tl1951919538_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body1951419521_))))
                                                   (let* ((_hd19541_
                                                           _hd1951819536_)
                                                          (_tl19543_
                                                           _tl1951919538_))
                                                     (declare (not safe))
                                                     (_K1951719533_
                                                      _tl19543_
                                                      _hd19541_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E1951619525_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp20656
                                       __tmp20654))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp20666
                                __tmp20653))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp20671 __tmp20652 _E19489_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e19508_))
                        (let* ((_body1954419551_ _body19505_)
                               (_E1954619555_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body1954419551_)))
                               (_K1954719606_
                                (lambda (_tl19558_ _hd19559_)
                                  (let* ((_rlen19561_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen19396_ _tl19558_)))
                                         (_$target19563_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd19565_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl19567_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp19569_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e19571_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd19573_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl19575_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars19577_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars19397_ _hd19559_)))
                                         (_lvars19579_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars19577_)))
                                         (_tlvars19581_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars19577_)))
                                         (_linit19585_
                                          (let ((__tmp20598
                                                 (lambda (_var19583_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'quote
                                                      '())))))
                                            (declare (not safe))
                                            (map __tmp20598 _lvars19579_))))
                                    (letrec ((_make-loop19588_
                                              (lambda (_vars19592_)
                                                (let ((__tmp20601
                                                       (let ((__tmp20602
                                                              (let ((__tmp20640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp19569_ '())))
                            (__tmp20603
                             (let ((__tmp20604
                                    (let ((__tmp20639
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd19565_ _lvars19579_)))
                                          (__tmp20605
                                           (let ((__tmp20638
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd19565_)))
                                                 (__tmp20615
                                                  (let ((__tmp20633
                                                         (let ((__tmp20634
                                                                (let ((__tmp20637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e19571_ '())))
                              (__tmp20635
                               (let ((__tmp20636
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e19217_
                                         _$hd19565_))))
                                 (declare (not safe))
                                 (cons __tmp20636 '()))))
                          (declare (not safe))
                          (cons __tmp20637 __tmp20635))))
                   (declare (not safe))
                   (cons __tmp20634 '())))
                (__tmp20616
                 (let ((__tmp20623
                        (let ((__tmp20629
                               (let ((__tmp20632
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd19573_ '())))
                                     (__tmp20630
                                      (let ((__tmp20631
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e19571_))))
                                        (declare (not safe))
                                        (cons __tmp20631 '()))))
                                 (declare (not safe))
                                 (cons __tmp20632 __tmp20630)))
                              (__tmp20624
                               (let ((__tmp20625
                                      (let ((__tmp20628
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl19575_ '())))
                                            (__tmp20626
                                             (let ((__tmp20627
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e19571_))))
                                               (declare (not safe))
                                               (cons __tmp20627 '()))))
                                        (declare (not safe))
                                        (cons __tmp20628 __tmp20626))))
                                 (declare (not safe))
                                 (cons __tmp20625 '()))))
                          (declare (not safe))
                          (cons __tmp20629 __tmp20624)))
                       (__tmp20617
                        (let ((__tmp20618
                               (lambda (_hdvars19594_)
                                 (let ((__tmp20619
                                        (let ((__tmp20620
                                               (let ((__tmp20621
                                                      (lambda (_svar19596_
                                                               _lvar19597_)
                                                        (let ((__tmp20622
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (assgetq _svar19596_ _hdvars19594_ _BUG19394_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp20622 _lvar19597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (map __tmp20621
                                                      _svars19577_
                                                      _lvars19579_))))
                                          (declare (not safe))
                                          (cons _$lp-tl19575_ __tmp20620))))
                                   (declare (not safe))
                                   (cons _$lp19569_ __tmp20619)))))
                          (declare (not safe))
                          (_recur19395_
                           _hd19559_
                           '()
                           _$lp-hd19573_
                           _E19489_
                           __tmp20618))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp20623 __tmp20617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp20633
                                                     __tmp20616)))
                                                 (__tmp20606
                                                  (let ((__tmp20610
                                                         (let ((__tmp20611
                                                                (lambda (_lvar19599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tlvar19600_)
                          (let ((__tmp20614
                                 (let ()
                                   (declare (not safe))
                                   (cons _tlvar19600_ '())))
                                (__tmp20612
                                 (let ((__tmp20613
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           'reverse
                                           _lvar19599_))))
                                   (declare (not safe))
                                   (cons __tmp20613 '()))))
                            (declare (not safe))
                            (cons __tmp20614 __tmp20612)))))
                   (declare (not safe))
                   (map __tmp20611 _lvars19579_ _tlvars19581_)))
                (__tmp20607
                 (_k19490_
                  (let ((__tmp20608
                         (lambda (_svar19602_ _tlvar19603_ _r19604_)
                           (let ((__tmp20609
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar19602_ _tlvar19603_))))
                             (declare (not safe))
                             (cons __tmp20609 _r19604_)))))
                    (declare (not safe))
                    (foldl2 __tmp20608
                            _vars19592_
                            _svars19577_
                            _tlvars19581_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp20610
                                                     __tmp20607))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp20638
                                              __tmp20615
                                              __tmp20606))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp20639
                                       __tmp20605))))
                               (declare (not safe))
                               (cons __tmp20604 '()))))
                        (declare (not safe))
                        (cons __tmp20640 __tmp20603))))
                 (declare (not safe))
                 (cons __tmp20602 '())))
              (__tmp20599
               (let ((__tmp20600
                      (let ()
                        (declare (not safe))
                        (cons _$target19563_ _linit19585_))))
                 (declare (not safe))
                 (cons _$lp19569_ __tmp20600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp20601
                                                   __tmp20599)))))
                                      (let ((_body19590_
                                             (let ((__tmp20642
                                                    (let ((__tmp20643
                                                           (let ((__tmp20646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp20647
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl19567_ '()))))
                            (declare (not safe))
                            (cons _$target19563_ __tmp20647)))
                         (__tmp20644
                          (let ((__tmp20645
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target19488_
                                    _rlen19561_))))
                            (declare (not safe))
                            (cons __tmp20645 '()))))
                     (declare (not safe))
                     (cons __tmp20646 __tmp20644))))
              (declare (not safe))
              (cons __tmp20643 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp20641
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur19395_
                                                       _tl19558_
                                                       _vars19487_
                                                       _$tl19567_
                                                       _E19489_
                                                       _make-loop19588_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp20642
                                                __tmp20641))))
                                        (let ((__tmp20651
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target19488_)))
                                              (__tmp20648
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen19561_))
                                                   _body19590_
                                                   (let ((__tmp20649
                                                          (let ((__tmp20650
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target19488_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp20650 _rlen19561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp20649
                                                      _body19590_
                                                      _E19489_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp20651
                                           __tmp20648
                                           _E19489_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body1954419551_))
                              (let ((_hd1954819609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body1954419551_)))
                                    (_tl1954919611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body1954419551_))))
                                (let* ((_hd19614_ _hd1954819609_)
                                       (_tl19616_ _tl1954919611_))
                                  (declare (not safe))
                                  (_K1954719606_ _tl19616_ _hd19614_)))
                              (let () (declare (not safe)) (_E1954619555_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e19508_))
                            (let ((__tmp20597
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target19488_)))
                                  (__tmp20596 (_k19490_ _vars19487_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp20597
                               __tmp20596
                               _E19489_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e19508_))
                                (let ((_$e19618_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp20595
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target19488_)))
                                        (__tmp20587
                                         (let ((__tmp20589
                                                (let ((__tmp20590
                                                       (let ((__tmp20594
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e19618_ '())))
                     (__tmp20591
                      (let ((__tmp20592
                             (let ((__tmp20593
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e19217_
                                       _target19488_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp20593))))
                        (declare (not safe))
                        (cons __tmp20592 '()))))
                 (declare (not safe))
                 (cons __tmp20594 __tmp20591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp20590 '())))
                                               (__tmp20588
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur19395_
                                                   _body19505_
                                                   _vars19487_
                                                   _$e19618_
                                                   _E19489_
                                                   _k19490_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp20589
                                            __tmp20588))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp20595
                                     __tmp20587
                                     _E19489_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e19508_))
                                    (let ((_$e19620_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp20586
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target19488_)))
                                            (__tmp20578
                                             (let ((__tmp20580
                                                    (let ((__tmp20581
                                                           (let ((__tmp20585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e19620_ '())))
                         (__tmp20582
                          (let ((__tmp20583
                                 (let ((__tmp20584
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e19217_
                                           _target19488_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp20584))))
                            (declare (not safe))
                            (cons __tmp20583 '()))))
                     (declare (not safe))
                     (cons __tmp20585 __tmp20582))))
              (declare (not safe))
              (cons __tmp20581 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp20579
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur19395_
                                                       _body19505_
                                                       _vars19487_
                                                       _$e19620_
                                                       _E19489_
                                                       _k19490_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp20580
                                                __tmp20579))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp20586
                                         __tmp20578
                                         _E19489_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e19508_))
                                        (let ((_$e19622_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp20577
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target19488_)))
                                                (__tmp20568
                                                 (let ((__tmp20572
                                                        (let ((__tmp20573
                                                               (let ((__tmp20576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e19622_ '())))
                             (__tmp20574
                              (let ((__tmp20575
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target19488_))))
                                (declare (not safe))
                                (cons __tmp20575 '()))))
                         (declare (not safe))
                         (cons __tmp20576 __tmp20574))))
                  (declare (not safe))
                  (cons __tmp20573 '())))
               (__tmp20569
                (let ((__tmp20571
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e19622_ _body19505_)))
                      (__tmp20570 (_k19490_ _vars19487_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp20571 __tmp20570 _E19489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp20572
                                                    __tmp20569))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp20577
                                             __tmp20568
                                             _E19489_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG19394_ _e19486_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e1949119498_))
                                      (let ((_hd1949519627_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1949119498_)))
                                            (_tl1949619629_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1949119498_))))
                                        (let* ((_tag19632_ _hd1949519627_)
                                               (_body19634_ _tl1949619629_))
                                          (declare (not safe))
                                          (_K1949419624_
                                           _body19634_
                                           _tag19632_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E1949319502_))))))
                             (_splice-rlen19396_
                              (lambda (_e19448_)
                                (let _lp19450_ ((_e19452_ _e19448_)
                                                (_n19453_ '0))
                                  (let* ((_e1945419461_ _e19452_)
                                         (_E1945619465_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1945419461_)))
                                         (_K1945719474_
                                          (lambda (_body19468_ _tag19469_)
                                            (let ((_$e19471_ _tag19469_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e19471_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx19215_
                                                     _where19387_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e19471_))
                                                      (let ((__tmp20679
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cdr _body19468_)))
                    (__tmp20678
                     (let () (declare (not safe)) (fx+ _n19453_ '1))))
                (declare (not safe))
                (_lp19450_ __tmp20679 __tmp20678))
              _n19453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e1945419461_))
                                        (let ((_hd1945819477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1945419461_)))
                                              (_tl1945919479_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1945419461_))))
                                          (let* ((_tag19482_ _hd1945819477_)
                                                 (_body19484_ _tl1945919479_))
                                            (declare (not safe))
                                            (_K1945719474_
                                             _body19484_
                                             _tag19482_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E1945619465_)))))))
                             (_splice-vars19397_
                              (lambda (_e19404_)
                                (let _recur19406_ ((_e19408_ _e19404_)
                                                   (_vars19409_ '()))
                                  (let* ((_e1941019417_ _e19408_)
                                         (_E1941219421_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e1941019417_)))
                                         (_K1941319436_
                                          (lambda (_body19424_ _tag19425_)
                                            (let ((_$e19427_ _tag19425_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e19427_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body19424_
                                                          _vars19409_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e19427_))
                  (let () (declare (not safe)) (eq? 'splice _$e19427_)))
              (let ((__tmp20682
                     (let () (declare (not safe)) (cdr _body19424_)))
                    (__tmp20680
                     (let ((__tmp20681
                            (let () (declare (not safe)) (car _body19424_))))
                       (declare (not safe))
                       (_recur19406_ __tmp20681 _vars19409_))))
                (declare (not safe))
                (_recur19406_ __tmp20682 __tmp20680))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e19427_))
                      (let () (declare (not safe)) (eq? 'box _$e19427_)))
                  (let ()
                    (declare (not safe))
                    (_recur19406_ _body19424_ _vars19409_))
                  _vars19409_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e1941019417_))
                                        (let ((_hd1941419439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1941019417_)))
                                              (_tl1941519441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1941019417_))))
                                          (let* ((_tag19444_ _hd1941419439_)
                                                 (_body19446_ _tl1941519441_))
                                            (declare (not safe))
                                            (_K1941319436_
                                             _body19446_
                                             _tag19444_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E1941219421_)))))))
                             (_make-body19398_
                              (lambda (_vars19400_)
                                (let ((__tmp20683
                                       (let ((__tmp20684
                                              (lambda (_mvar19402_)
                                                (let ((__tmp20685
                                                       (let ()
                                                         (declare (not safe))
                                                         (car _mvar19402_))))
                                                  (declare (not safe))
                                                  (assgetq __tmp20685
                                                           _vars19400_
                                                           _BUG19394_)))))
                                         (declare (not safe))
                                         (map __tmp20684 _mvars19390_))))
                                  (declare (not safe))
                                  (cons _K19391_ __tmp20683)))))
                      (let ()
                        (declare (not safe))
                        (_recur19395_
                         _hd19389_
                         '()
                         _target19388_
                         _E19392_
                         _make-body19398_)))))
                 (_parse-clause19224_
                  (lambda (_hd19293_ _ids19294_)
                    (let _recur19296_ ((_e19298_ _hd19293_)
                                       (_vars19299_ '())
                                       (_depth19300_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e19298_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e19298_))
                              (values '(any) _vars19299_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e19298_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx19215_
                                     _hd19293_))
                                  (if (let ((__tmp20703
                                             (lambda (_id19302_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e19298_
                                                  _id19302_)))))
                                        (declare (not safe))
                                        (find __tmp20703 _ids19294_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e19298_))
                                              _vars19299_)
                                      (if (let ((__tmp20701
                                                 (lambda (_var19304_)
                                                   (let ((__tmp20702
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (car _var19304_))))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e19298_
                                                      __tmp20702)))))
                                            (declare (not safe))
                                            (find __tmp20701 _vars19299_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx19215_
                                             _e19298_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e19298_))
                                                  (let ((__tmp20700
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e19298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth19300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp20700
                                                          _vars19299_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e19298_))
                              (let* ((_e1930519312_ _e19298_)
                                     (_E1930719316_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _e1930519312_))))
                                     (_E1930619377_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e1930519312_))
                                            (let ((_e1930819320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e1930519312_))))
                                              (let ((_hd1930919323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1930819320_)))
                                                    (_tl1931019325_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1930819320_))))
                                                (let* ((_hd19328_
                                                        _hd1930919323_)
                                                       (_rest19330_
                                                        _tl1931019325_))
                                                  (if '#t
                                                      (let* ((_make-pair19345_
                                                              (lambda (_tag19332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd19333_
                               _tl19334_)
                        (let* ((_hd-depth19336_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag19332_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth19300_ '1))
                                    _depth19300_))
                               (_g20695_
                                (let ()
                                  (declare (not safe))
                                  (_recur19296_
                                   _hd19333_
                                   _vars19299_
                                   _hd-depth19336_))))
                          (begin
                            (let ((_g20696_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g20695_)
                                         (##vector-length _g20695_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g20696_ 2)))
                                  (error "Context expects 2 values" _g20696_)))
                            (let ((_hd19338_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g20695_ 0)))
                                  (_vars19339_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g20695_ 1))))
                              (let ((_g20697_
                                     (let ()
                                       (declare (not safe))
                                       (_recur19296_
                                        _tl19334_
                                        _vars19339_
                                        _depth19300_))))
                                (begin
                                  (let ((_g20698_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g20697_)
                                               (##vector-length _g20697_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g20698_ 2)))
                                        (error "Context expects 2 values"
                                               _g20698_)))
                                  (let ((_tl19341_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20697_ 0)))
                                        (_vars19342_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g20697_ 1))))
                                    (let ()
                                      (values (let ((__tmp20699
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd19338_
                                                             _tl19341_))))
                                                (declare (not safe))
                                                (cons _tag19332_ __tmp20699))
                                              _vars19342_))))))))))
                     (_e1934619353_ _rest19330_)
                     (_E1934819357_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair19345_ 'cons _hd19328_ _rest19330_))))
                     (_E1934719373_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e1934619353_))
                            (let ((_e1934919361_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e1934619353_))))
                              (let ((_hd1935019364_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1934919361_)))
                                    (_tl1935119366_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1934919361_))))
                                (let* ((_rest-hd19369_ _hd1935019364_)
                                       (_rest-tl19371_ _tl1935119366_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd19369_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair19345_
                                             'splice
                                             _hd19328_
                                             _rest-tl19371_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair19345_
                                             'cons
                                             _hd19328_
                                             _rest19330_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E1934819357_))))))
                            (let () (declare (not safe)) (_E1934819357_))))))
                (let () (declare (not safe)) (_E1934719373_)))
              (let () (declare (not safe)) (_E1930719316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E1930719316_))))))
                                (let () (declare (not safe)) (_E1930619377_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e19298_))
                                  (values '(null) _vars19299_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e19298_))
                                      (let ((_g20691_
                                             (let ((__tmp20693
                                                    (let ((__tmp20694
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e19298_))))
                                                      (declare (not safe))
                                                      (vector->list
                                                       __tmp20694))))
                                               (declare (not safe))
                                               (_recur19296_
                                                __tmp20693
                                                _vars19299_
                                                _depth19300_))))
                                        (begin
                                          (let ((_g20692_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g20691_)
                                                       (##vector-length
                                                        _g20691_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g20692_ 2)))
                                                (error "Context expects 2 values"
                                                       _g20692_)))
                                          (let ((_e19381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20691_ 0)))
                                                (_vars19382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g20691_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e19381_))
                                                    _vars19382_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e19298_))
                                          (let ((_g20687_
                                                 (let ((__tmp20689
                                                        (let ((__tmp20690
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e19298_))))
                  (declare (not safe))
                  (unbox __tmp20690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur19296_
                                                    __tmp20689
                                                    _vars19299_
                                                    _depth19300_))))
                                            (begin
                                              (let ((_g20688_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g20687_)
                                                           (##vector-length
                                                            _g20687_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g20688_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g20688_)))
                                              (let ((_e19384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20687_
                                                        0)))
                                                    (_vars19385_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g20687_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e19384_))
                                                        _vars19385_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e19298_))
                                              (values (let ((__tmp20686
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e19298_))))
                (declare (not safe))
                (cons 'datum __tmp20686))
              _vars19299_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx19215_
                                                 _e19298_))))))))))))
          (let* ((_e1922519238_ _stx19215_)
                 (_E1922719242_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       _e1922519238_))))
                 (_E1922619289_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e1922519238_))
                        (let ((_e1922819246_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e1922519238_))))
                          (let ((_hd1922919249_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1922819246_)))
                                (_tl1923019251_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1922819246_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl1923019251_))
                                (let ((_e1923119254_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl1923019251_))))
                                  (let ((_hd1923219257_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1923119254_)))
                                        (_tl1923319259_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1923119254_))))
                                    (let ((_expr19262_ _hd1923219257_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl1923319259_))
                                          (let ((_e1923419264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl1923319259_))))
                                            (let ((_hd1923519267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1923419264_)))
                                                  (_tl1923619269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1923419264_))))
                                              (let* ((_ids19272_
                                                      _hd1923519267_)
                                                     (_clauses19274_
                                                      _tl1923619269_))
                                                (if '#t
                                                    (if (let ((__tmp20721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids19272_))))
                  (declare (not safe))
                  (not __tmp20721))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx19215_
                   _ids19272_))
                (if (let ((__tmp20720
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses19274_))))
                      (declare (not safe))
                      (not __tmp20720))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error '#f '"Bad syntax" _stx19215_))
                    (let* ((_ids19276_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids19272_)))
                           (_clauses19278_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses19274_)))
                           (_clause-ids19280_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses19278_)))
                           (_E19282_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target19284_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first19286_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses19278_))
                                _E19282_
                                (let ()
                                  (declare (not safe))
                                  (car _clause-ids19280_)))))
                      (let ((__tmp20705
                             (let ((__tmp20706
                                    (let ((__tmp20708
                                           (let ((__tmp20713
                                                  (let ((__tmp20714
                                                         (let ((__tmp20719
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E19282_ '())))
                       (__tmp20715
                        (let ((__tmp20716
                               (let ((__tmp20718
                                      (let ()
                                        (declare (not safe))
                                        (cons _target19284_ '())))
                                     (__tmp20717
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _target19284_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp20718
                                  __tmp20717))))
                          (declare (not safe))
                          (cons __tmp20716 '()))))
                   (declare (not safe))
                   (cons __tmp20719 __tmp20715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp20714 '())))
                                                 (__tmp20709
                                                  (let ((__tmp20712
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings19220_
                                                            _target19284_
                                                            _ids19276_
                                                            _clauses19278_
                                                            _clause-ids19280_
                                                            _E19282_)))
                                                        (__tmp20710
                                                         (let ((__tmp20711
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr19262_ '()))))
                   (declare (not safe))
                   (cons _first19286_ __tmp20711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body19221_
                                                     __tmp20712
                                                     __tmp20710))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp20713
                                              __tmp20709)))
                                          (__tmp20707
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx19215_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp20708
                                       __tmp20707))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp20706)))
                            (__tmp20704
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx19215_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp20705 __tmp20704)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E1922719242_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E1922719242_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E1922719242_)))))
                        (let () (declare (not safe)) (_E1922719242_))))))
            (let () (declare (not safe)) (_E1922619289_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx19925_)
        (let* ((_identifier=?19927_ 'free-identifier=?)
               (_unwrap-e19929_ 'syntax-e)
               (_wrap-e19931_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx19925_
           _identifier=?19927_
           _unwrap-e19929_
           _wrap-e19931_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx19933_ _identifier=?19934_)
        (let* ((_unwrap-e19936_ 'syntax-e) (_wrap-e19938_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx19933_
           _identifier=?19934_
           _unwrap-e19936_
           _wrap-e19938_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx19940_ _identifier=?19941_ _unwrap-e19942_)
        (let ((_wrap-e19944_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx19940_
           _identifier=?19941_
           _unwrap-e19942_
           _wrap-e19944_))))
    (define gx#macro-expand-syntax-case
      (lambda _g20723_
        (let ((_g20722_ (let () (declare (not safe)) (##length _g20723_))))
          (cond ((let () (declare (not safe)) (##fx= _g20722_ 1))
                 (apply (lambda (_stx19925_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx19925_)))
                        _g20723_))
                ((let () (declare (not safe)) (##fx= _g20722_ 2))
                 (apply (lambda (_stx19933_ _identifier=?19934_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx19933_
                             _identifier=?19934_)))
                        _g20723_))
                ((let () (declare (not safe)) (##fx= _g20722_ 3))
                 (apply (lambda (_stx19940_
                                 _identifier=?19941_
                                 _unwrap-e19942_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx19940_
                             _identifier=?19941_
                             _unwrap-e19942_)))
                        _g20723_))
                ((let () (declare (not safe)) (##fx= _g20722_ 4))
                 (apply (lambda (_stx19946_
                                 _identifier=?19947_
                                 _unwrap-e19948_
                                 _wrap-e19949_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx19946_
                             _identifier=?19947_
                             _unwrap-e19948_
                             _wrap-e19949_)))
                        _g20723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g20723_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx19212_)
        (if (let () (declare (not safe)) (gx#identifier? _stx19212_))
            (let ((__tmp20724
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx19212_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp20724 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd19170_ . _rest19171_)
        (let ((_len19173_ (length _hd19170_)))
          (let _lp19175_ ((_rest19177_ _rest19171_))
            (let* ((_rest1917819186_ _rest19177_)
                   (_else1918019194_ (lambda () '#!void))
                   (_K1918219200_
                    (lambda (_rest19197_ _hd19198_)
                      (if (fx= _len19173_ (length _hd19198_))
                          (let () (declare (not safe)) (_lp19175_ _rest19197_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd19198_))))))
              (if (let () (declare (not safe)) (##pair? _rest1917819186_))
                  (let ((_hd1918319203_
                         (let ()
                           (declare (not safe))
                           (##car _rest1917819186_)))
                        (_tl1918419205_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest1917819186_))))
                    (let* ((_hd19208_ _hd1918319203_)
                           (_rest19210_ _tl1918419205_))
                      (declare (not safe))
                      (_K1918219200_ _rest19210_ _hd19208_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx19128_ _n19129_)
        (let _lp19131_ ((_rest19133_ _stx19128_) (_r19134_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest19133_))
              (let* ((_g1913519142_
                      (let () (declare (not safe)) (gx#syntax-e _rest19133_)))
                     (_E1913719146_
                      (lambda () (error '"No clause matching" _g1913519142_)))
                     (_K1913819152_
                      (lambda (_rest19149_ _hd19150_)
                        (let ((__tmp20729
                               (let ()
                                 (declare (not safe))
                                 (cons _hd19150_ _r19134_))))
                          (declare (not safe))
                          (_lp19131_ _rest19149_ __tmp20729)))))
                (if (let () (declare (not safe)) (##pair? _g1913519142_))
                    (let ((_hd1913919155_
                           (let () (declare (not safe)) (##car _g1913519142_)))
                          (_tl1914019157_
                           (let ()
                             (declare (not safe))
                             (##cdr _g1913519142_))))
                      (let* ((_hd19160_ _hd1913919155_)
                             (_rest19162_ _tl1914019157_))
                        (declare (not safe))
                        (_K1913819152_ _rest19162_ _hd19160_)))
                    (let () (declare (not safe)) (_E1913719146_))))
              (let _lp19164_ ((_n19166_ _n19129_)
                              (_l19167_ _r19134_)
                              (_r19168_ _rest19133_))
                (if (let () (declare (not safe)) (null? _l19167_))
                    (values _l19167_ _r19168_)
                    (if (let () (declare (not safe)) (fxpositive? _n19166_))
                        (let ((__tmp20728
                               (let () (declare (not safe)) (fx- _n19166_ '1)))
                              (__tmp20727
                               (let () (declare (not safe)) (cdr _l19167_)))
                              (__tmp20725
                               (let ((__tmp20726
                                      (let ()
                                        (declare (not safe))
                                        (car _l19167_))))
                                 (declare (not safe))
                                 (cons __tmp20726 _r19168_))))
                          (declare (not safe))
                          (_lp19164_ __tmp20728 __tmp20727 __tmp20725))
                        (values (let ()
                                  (declare (not safe))
                                  (reverse _l19167_))
                                _r19168_))))))))))
