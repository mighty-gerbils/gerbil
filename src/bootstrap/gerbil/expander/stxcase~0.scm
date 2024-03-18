(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710781149)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp98648 (list gx#expander::t))
            (__tmp98646
             (let ((__tmp98647
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98647 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp98648
         '(id depth)
         __tmp98646
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args98643_
        (apply make-instance gx#syntax-pattern::t _$args98643_)))
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
      (lambda (_self98640_ _stx98641_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx98641_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx98122_)
        (letrec ((_generate98124_
                  (lambda (_e98351_)
                    (letrec ((_BUG98353_
                              (lambda (_q98515_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx98122_
                                         _e98351_
                                         _q98515_))))
                             (_local-pattern-e98354_
                              (lambda (_pat98513_)
                                (let ((__tmp98649
                                       (##structure-ref
                                        _pat98513_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp98649))))
                             (_getvar98355_
                              (lambda (_q98510_ _vars98511_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q98510_
                                   _vars98511_
                                   _BUG98353_))))
                             (_getarg98356_
                              (lambda (_arg98476_ _vars98477_)
                                (let* ((_arg9847898485_ _arg98476_)
                                       (_E9848098489_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9847898485_))))
                                       (_K9848198498_
                                        (lambda (_e98492_ _tag98493_)
                                          (let ((_$e98495_ _tag98493_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e98495_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar98355_
                                                   _e98492_
                                                   _vars98477_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e98495_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e98354_
                                                       _e98492_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG98353_
                                                       _arg98476_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9847898485_))
                                      (let ((_hd9848298501_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9847898485_)))
                                            (_tl9848398503_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9847898485_))))
                                        (let* ((_tag98506_ _hd9848298501_)
                                               (_e98508_ _tl9848398503_))
                                          (declare (not safe))
                                          (_K9848198498_ _e98508_ _tag98506_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9848098489_)))))))
                      (let _recur98358_ ((_e98360_ _e98351_) (_vars98361_ '()))
                        (let* ((_e9836298369_ _e98360_)
                               (_E9836498373_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9836298369_))))
                               (_K9836598464_
                                (lambda (_body98376_ _tag98377_)
                                  (let ((_$e98379_ _tag98377_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e98379_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body98376_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e98379_))
                                            (let ((_id98382_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body98376_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id98382_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks98384_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id98382_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks98384_))
                                                        (let ((__tmp98677
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body98376_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp98677))
                (let ((__tmp98676
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body98376_)))
                      (__tmp98675
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body98376_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp98676
                   __tmp98675
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id98382_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body98376_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG98353_
                                                         _e98360_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e98379_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e98354_
                                                   _body98376_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e98379_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar98355_
                                                       _body98376_
                                                       _vars98361_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e98379_))
                                                        (let ((__tmp98673
                                                               (let ((__tmp98674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body98376_)))
                         (declare (not safe))
                         (_recur98358_ __tmp98674 _vars98361_)))
                      (__tmp98671
                       (let ((__tmp98672 (cdr _body98376_)))
                         (declare (not safe))
                         (_recur98358_ __tmp98672 _vars98361_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp98673 __tmp98671))
                (if (let () (declare (not safe)) (eq? 'vector _$e98379_))
                    (let ((__tmp98670
                           (let ()
                             (declare (not safe))
                             (_recur98358_ _body98376_ _vars98361_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp98670))
                    (if (let () (declare (not safe)) (eq? 'box _$e98379_))
                        (let ((__tmp98669
                               (let ()
                                 (declare (not safe))
                                 (_recur98358_ _body98376_ _vars98361_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp98669))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e98379_))
                            (let* ((_body9838598396_ _body98376_)
                                   (_E9838798400_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9838598396_))))
                                   (_K9838898438_
                                    (lambda (_args98403_
                                             _iv98404_
                                             _hd98405_
                                             _depth98406_)
                                      (let* ((_targets98412_
                                              (map (lambda (_g9840798409_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg98356_
                                                        _g9840798409_
                                                        _vars98361_)))
                                                   _args98403_))
                                             (_fold-in98414_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args98403_)))
                                             (_fold-out98416_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args98418_
                                              (let ((__tmp98650
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out98416_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp98650
                                                        _fold-in98414_)))
                                             (_lambda-body98435_
                                              (if (fx> _depth98406_ '1)
                                                  (let ((_r-args98426_
                                                         (map (lambda (_arg98420_)
                                                                (let ((__tmp98655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg98420_)))
                          (declare (not safe))
                          (cons 'ref __tmp98655)))
                      _args98403_))
                (_r-vars98427_
                 (let ((__tmp98656
                        (lambda (_arg98422_ _var98423_ _r98424_)
                          (let ((__tmp98657
                                 (let ((__tmp98658 (cdr _arg98422_)))
                                   (declare (not safe))
                                   (cons __tmp98658 _var98423_))))
                            (declare (not safe))
                            (cons __tmp98657 _r98424_)))))
                   (declare (not safe))
                   (foldr2 __tmp98656
                           _vars98361_
                           _args98403_
                           _fold-in98414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp98659
                                                           (let ((__tmp98660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98664
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth98406_ '1)))
                                (__tmp98661
                                 (let ((__tmp98662
                                        (let ((__tmp98663
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out98416_))))
                                          (declare (not safe))
                                          (cons __tmp98663 _r-args98426_))))
                                   (declare (not safe))
                                   (cons _hd98405_ __tmp98662))))
                            (declare (not safe))
                            (cons __tmp98664 __tmp98661))))
                     (declare (not safe))
                     (cons 'splice __tmp98660))))
              (declare (not safe))
              (_recur98358_ __tmp98659 _r-vars98427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars98433_
                                                          (let ((__tmp98651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg98429_ _var98430_ _r98431_)
                           (let ((__tmp98652
                                  (let ((__tmp98653 (cdr _arg98429_)))
                                    (declare (not safe))
                                    (cons __tmp98653 _var98430_))))
                             (declare (not safe))
                             (cons __tmp98652 _r98431_)))))
                    (declare (not safe))
                    (foldr2 __tmp98651
                            _vars98361_
                            _args98403_
                            _fold-in98414_)))
                 (__tmp98654
                  (let ()
                    (declare (not safe))
                    (_recur98358_ _hd98405_ _hd-vars98433_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp98654
                                                     _fold-out98416_)))))
                                        (let ((__tmp98668
                                               (if (fx> (length _targets98412_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets98412_))
                                                   '#!void))
                                              (__tmp98665
                                               (let ((__tmp98667
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args98418_
                                                         _lambda-body98435_)))
                                                     (__tmp98666
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur98358_
                                                         _iv98404_
                                                         _vars98361_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp98667
                                                  __tmp98666
                                                  _targets98412_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp98668
                                           __tmp98665))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9838598396_))
                                  (let ((_hd9838998441_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9838598396_)))
                                        (_tl9839098443_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9838598396_))))
                                    (let ((_depth98446_ _hd9838998441_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9839098443_))
                                          (let ((_hd9839198448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9839098443_)))
                                                (_tl9839298450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9839098443_))))
                                            (let ((_hd98453_ _hd9839198448_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9839298450_))
                                                  (let ((_hd9839398455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9839298450_)))
                                                        (_tl9839498457_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9839298450_))))
                                                    (let* ((_iv98460_
                                                            _hd9839398455_)
                                                           (_args98462_
                                                            _tl9839498457_))
                                                      (declare (not safe))
                                                      (_K9838898438_
                                                       _args98462_
                                                       _iv98460_
                                                       _hd98453_
                                                       _depth98446_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9838798400_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9838798400_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9838798400_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e98379_))
                                _body98376_
                                (let ()
                                  (declare (not safe))
                                  (_BUG98353_ _e98360_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9836298369_))
                              (let ((_hd9836698467_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9836298369_)))
                                    (_tl9836798469_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9836298369_))))
                                (let* ((_tag98472_ _hd9836698467_)
                                       (_body98474_ _tl9836798469_))
                                  (declare (not safe))
                                  (_K9836598464_ _body98474_ _tag98472_)))
                              (let ()
                                (declare (not safe))
                                (_E9836498373_))))))))
                 (_parse98125_
                  (lambda (_e98166_)
                    (letrec ((_make-cons98168_
                              (lambda (_hd98343_ _tl98344_)
                                (let ((_g98678_ _hd98343_)
                                      (_g98680_ _tl98344_))
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
                                    (let ((_hd-e98346_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98678_ 0)))
                                          (_hd-vars98347_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98678_ 1))))
                                      (let ((_tl-e98348_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98680_ 0)))
                                            (_tl-vars98349_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98680_ 1))))
                                        (values (let ((__tmp98682
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e98346_
                                                               _tl-e98348_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp98682))
                                                (append _hd-vars98347_
                                                        _tl-vars98349_))))))))
                             (_make-splice98169_
                              (lambda (_where98282_
                                       _depth98283_
                                       _hd98284_
                                       _tl98285_)
                                (let ((_g98683_ _hd98284_)
                                      (_g98685_ _tl98285_))
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
                                    (let ((_hd-e98287_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98683_ 0)))
                                          (_hd-vars98288_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98683_ 1))))
                                      (let ((_tl-e98289_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98685_ 0)))
                                            (_tl-vars98290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g98685_ 1))))
                                        (let _lp98292_ ((_rest98294_
                                                         _hd-vars98288_)
                                                        (_targets98295_ '())
                                                        (_vars98296_
                                                         _tl-vars98290_))
                                          (let* ((_rest9829798307_ _rest98294_)
                                                 (_else9829998315_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets98295_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx98122_
                                                           _where98282_))
                                                        (values (let ((__tmp98687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp98688
                                      (let ((__tmp98689
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e98289_
                                                     _targets98295_))))
                                        (declare (not safe))
                                        (cons _hd-e98287_ __tmp98689))))
                                 (declare (not safe))
                                 (cons _depth98283_ __tmp98688))))
                          (declare (not safe))
                          (cons 'splice __tmp98687))
                        _vars98296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9830198324_
                                                  (lambda (_rest98318_
                                                           _hd-pat98319_
                                                           _hd-depth*98320_)
                                                    (let ((_hd-depth98322_
                                                           (fx- _hd-depth*98320_
                                                                _depth98283_)))
                                                      (if (fxpositive?
                                                           _hd-depth98322_)
                                                          (let ((__tmp98694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp98695
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat98319_))))
                           (declare (not safe))
                           (cons __tmp98695 _targets98295_)))
                        (__tmp98692
                         (let ((__tmp98693
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth98322_ _hd-pat98319_))))
                           (declare (not safe))
                           (cons __tmp98693 _vars98296_))))
                    (declare (not safe))
                    (_lp98292_ _rest98318_ __tmp98694 __tmp98692))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth98322_))
                      (let ((__tmp98690
                             (let ((__tmp98691
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat98319_))))
                               (declare (not safe))
                               (cons __tmp98691 _targets98295_))))
                        (declare (not safe))
                        (_lp98292_ _rest98318_ __tmp98690 _vars98296_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx98122_
                         _where98282_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9829798307_))
                                                (let ((_hd9830298327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9829798307_)))
                                                      (_tl9830398329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9829798307_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9830298327_))
                                                      (let ((_hd9830498332_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9830298327_)))
                    (_tl9830598334_
                     (let () (declare (not safe)) (##cdr _hd9830298327_))))
                (let* ((_hd-depth*98337_ _hd9830498332_)
                       (_hd-pat98339_ _tl9830598334_)
                       (_rest98341_ _tl9830398329_))
                  (declare (not safe))
                  (_K9830198324_ _rest98341_ _hd-pat98339_ _hd-depth*98337_)))
              (let () (declare (not safe)) (_else9829998315_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9829998315_)))))))))))
                             (_recur98170_
                              (lambda (_e98175_ _is-e?98176_)
                                (if (_is-e?98176_ _e98175_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx98122_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e98175_))
                                        (let* ((_pat98178_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e98175_)))
                                               (_depth98180_
                                                (##structure-ref
                                                 _pat98178_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth98180_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat98178_))
                                                      (let ((__tmp98711
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth98180_ _pat98178_))))
                (declare (not safe))
                (cons __tmp98711 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat98178_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e98175_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e98175_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e98175_))
                                                (let* ((_e9818298189_ _e98175_)
                                                       (_E9818498193_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9818298189_))))
                                                       (_E9818398272_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9818298189_))
                      (let ((_e9818598197_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9818298189_))))
                        (let ((_hd9818698200_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9818598197_)))
                              (_tl9818798202_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9818598197_))))
                          (let* ((_hd98205_ _hd9818698200_)
                                 (_rest98207_ _tl9818798202_))
                            (if '#t
                                (if (_is-e?98176_ _hd98205_)
                                    (let* ((_e9820898215_ _rest98207_)
                                           (_E9821098219_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx98122_
                                                 _e98175_))))
                                           (_E9820998233_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9820898215_))
                                                  (let ((_e9821198223_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9820898215_))))
                                                    (let ((_hd9821298226_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9821198223_)))
                                                          (_tl9821398228_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9821198223_))))
                                                      (let ((_rest98231_
                                                             _hd9821298226_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9821398228_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur98170_ _rest98231_ false))
                        (let () (declare (not safe)) (_E9821098219_)))
                    (let () (declare (not safe)) (_E9821098219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9821098219_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9820998233_)))
                                    (let _lp98237_ ((_rest98239_ _rest98207_)
                                                    (_depth98240_ '0))
                                      (let* ((_e9824198248_ _rest98239_)
                                             (_E9824398252_
                                              (lambda ()
                                                (if (fxpositive? _depth98240_)
                                                    (let ((__tmp98705
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98170_
                                                              _hd98205_
                                                              _is-e?98176_)))
                                                          (__tmp98704
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98170_
                                                              _rest98239_
                                                              _is-e?98176_))))
                                                      (declare (not safe))
                                                      (_make-splice98169_
                                                       _e98175_
                                                       _depth98240_
                                                       __tmp98705
                                                       __tmp98704))
                                                    (let ((__tmp98703
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98170_
                                                              _hd98205_
                                                              _is-e?98176_)))
                                                          (__tmp98702
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur98170_
                                                              _rest98239_
                                                              _is-e?98176_))))
                                                      (declare (not safe))
                                                      (_make-cons98168_
                                                       __tmp98703
                                                       __tmp98702)))))
                                             (_E9824298268_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9824198248_))
                                                    (let ((_e9824498256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9824198248_))))
                                                      (let ((_hd9824598259_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9824498256_)))
                    (_tl9824698261_
                     (let () (declare (not safe)) (##cdr _e9824498256_))))
                (let* ((_rest-hd98264_ _hd9824598259_)
                       (_rest-tl98266_ _tl9824698261_))
                  (if '#t
                      (if (_is-e?98176_ _rest-hd98264_)
                          (let ((__tmp98710
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth98240_ '1))))
                            (declare (not safe))
                            (_lp98237_ _rest-tl98266_ __tmp98710))
                          (if (fxpositive? _depth98240_)
                              (let ((__tmp98709
                                     (let ()
                                       (declare (not safe))
                                       (_recur98170_ _hd98205_ _is-e?98176_)))
                                    (__tmp98708
                                     (let ()
                                       (declare (not safe))
                                       (_recur98170_
                                        _rest98239_
                                        _is-e?98176_))))
                                (declare (not safe))
                                (_make-splice98169_
                                 _e98175_
                                 _depth98240_
                                 __tmp98709
                                 __tmp98708))
                              (let ((__tmp98707
                                     (let ()
                                       (declare (not safe))
                                       (_recur98170_ _hd98205_ _is-e?98176_)))
                                    (__tmp98706
                                     (let ()
                                       (declare (not safe))
                                       (_recur98170_
                                        _rest98239_
                                        _is-e?98176_))))
                                (declare (not safe))
                                (_make-cons98168_ __tmp98707 __tmp98706))))
                      (let () (declare (not safe)) (_E9824398252_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9824398252_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9824298268_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9818498193_))))))
                      (let () (declare (not safe)) (_E9818498193_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9818398272_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e98175_))
                                                    (let ((_g98699_
                                                           (let ((__tmp98701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e98175_)))))
                     (declare (not safe))
                     (_recur98170_ __tmp98701 _is-e?98176_))))
              (begin
                (let ((_g98700_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g98699_)
                             (##vector-length _g98699_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g98700_ 2)))
                      (error "Context expects 2 values" _g98700_)))
                (let ((_e98276_
                       (let () (declare (not safe)) (##vector-ref _g98699_ 0)))
                      (_vars98277_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g98699_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e98276_))
                          _vars98277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e98175_))
                                                        (let ((_g98696_
                                                               (let ((__tmp98698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e98175_)))))
                         (declare (not safe))
                         (_recur98170_ __tmp98698 _is-e?98176_))))
                  (begin
                    (let ((_g98697_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98696_)
                                 (##vector-length _g98696_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98697_ 2)))
                          (error "Context expects 2 values" _g98697_)))
                    (let ((_e98279_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98696_ 0)))
                          (_vars98280_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98696_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e98279_))
                              _vars98280_))))
                (values (let () (declare (not safe)) (cons 'datum _e98175_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g98712_
                             (let ()
                               (declare (not safe))
                               (_recur98170_ _e98166_ gx#ellipsis?))))
                        (begin
                          (let ((_g98713_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98712_)
                                       (##vector-length _g98712_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98713_ 2)))
                                (error "Context expects 2 values" _g98713_)))
                          (let ((_tree98172_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98712_ 0)))
                                (_vars98173_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98712_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars98173_))
                                _tree98172_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx98122_
                                   _vars98173_))))))))))
          (let* ((_e9812698136_ _stx98122_)
                 (_E9812898140_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx98122_))))
                 (_E9812798162_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9812698136_))
                        (let ((_e9812998144_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9812698136_))))
                          (let ((_hd9813098147_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9812998144_)))
                                (_tl9813198149_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9812998144_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9813198149_))
                                (let ((_e9813298152_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9813198149_))))
                                  (let ((_hd9813398155_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9813298152_)))
                                        (_tl9813498157_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9813298152_))))
                                    (let ((_form98160_ _hd9813398155_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9813498157_))
                                          (if '#t
                                              (let ((__tmp98715
                                                     (let ((__tmp98716
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse98125_
                                                               _form98160_))))
                                                       (declare (not safe))
                                                       (_generate98124_
                                                        __tmp98716)))
                                                    (__tmp98714
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx98122_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp98715
                                                 __tmp98714))
                                              (let ()
                                                (declare (not safe))
                                                (_E9812898140_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9812898140_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9812898140_)))))
                        (let () (declare (not safe)) (_E9812898140_))))))
            (let () (declare (not safe)) (_E9812798162_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx97386_ _identifier=?97387_ _unwrap-e97388_ _wrap-e97389_)
        (letrec ((_generate-bindings97391_
                  (lambda (_target97986_
                           _ids97987_
                           _clauses97988_
                           _clause-ids97989_
                           _E97990_)
                    (letrec ((_generate197992_
                              (lambda (_clause98089_ _clause-id98090_ _E98091_)
                                (let ((__tmp98721
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id98090_ '())))
                                      (__tmp98717
                                       (let ((__tmp98718
                                              (let ((__tmp98720
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97986_
                                                             '())))
                                                    (__tmp98719
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause97393_
                                                        _target97986_
                                                        _ids97987_
                                                        _clause98089_
                                                        _E98091_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp98720
                                                 __tmp98719))))
                                         (declare (not safe))
                                         (cons __tmp98718 '()))))
                                  (declare (not safe))
                                  (cons __tmp98721 __tmp98717)))))
                      (let _lp97994_ ((_rest97996_ _clauses97988_)
                                      (_rest-ids97997_ _clause-ids97989_)
                                      (_bindings97998_ '()))
                        (let* ((_rest9799998007_ _rest97996_)
                               (_else9800198015_ (lambda () _bindings97998_))
                               (_K9800398077_
                                (lambda (_rest98018_ _clause98019_)
                                  (let* ((_rest-ids9802098027_ _rest-ids97997_)
                                         (_E9802298031_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9802098027_))))
                                         (_K9802398065_
                                          (lambda (_rest-ids98034_
                                                   _clause-id98035_)
                                            (let* ((_rest-ids9803698044_
                                                    _rest-ids98034_)
                                                   (_else9803898052_
                                                    (lambda ()
                                                      (let ((__tmp98722
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate197992_
                        _clause98019_
                        _clause-id98035_
                        _E97990_))))
                (declare (not safe))
                (cons __tmp98722 _bindings97998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9804098057_
                                                    (lambda (_next-clause-id98055_)
                                                      (let ((__tmp98723
                                                             (let ((__tmp98724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate197992_
                               _clause98019_
                               _clause-id98035_
                               _next-clause-id98055_))))
                       (declare (not safe))
                       (cons __tmp98724 _bindings97998_))))
                (declare (not safe))
                (_lp97994_ _rest98018_ _rest-ids98034_ __tmp98723)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9803698044_))
                                                  (let* ((_hd9804198060_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9803698044_)))
                                                         (_next-clause-id98063_
                                                          _hd9804198060_))
                                                    (declare (not safe))
                                                    (_K9804098057_
                                                     _next-clause-id98063_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9803898052_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9802098027_))
                                        (let ((_hd9802498068_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9802098027_)))
                                              (_tl9802598070_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9802098027_))))
                                          (let* ((_clause-id98073_
                                                  _hd9802498068_)
                                                 (_rest-ids98075_
                                                  _tl9802598070_))
                                            (declare (not safe))
                                            (_K9802398065_
                                             _rest-ids98075_
                                             _clause-id98073_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9802298031_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9799998007_))
                              (let ((_hd9800498080_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9799998007_)))
                                    (_tl9800598082_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9799998007_))))
                                (let* ((_clause98085_ _hd9800498080_)
                                       (_rest98087_ _tl9800598082_))
                                  (declare (not safe))
                                  (_K9800398077_ _rest98087_ _clause98085_)))
                              (let ()
                                (declare (not safe))
                                (_else9800198015_))))))))
                 (_generate-body97392_
                  (lambda (_bindings97946_ _body97947_)
                    (let _recur97949_ ((_rest97951_ _bindings97946_))
                      (let* ((_rest9795297960_ _rest97951_)
                             (_else9795497968_ (lambda () _body97947_))
                             (_K9795697974_
                              (lambda (_rest97971_ _hd97972_)
                                (let ((__tmp98726
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd97972_ '())))
                                      (__tmp98725
                                       (let ()
                                         (declare (not safe))
                                         (_recur97949_ _rest97971_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp98726
                                   __tmp98725)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9795297960_))
                            (let ((_hd9795797977_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9795297960_)))
                                  (_tl9795897979_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9795297960_))))
                              (let* ((_hd97982_ _hd9795797977_)
                                     (_rest97984_ _tl9795897979_))
                                (declare (not safe))
                                (_K9795697974_ _rest97984_ _hd97982_)))
                            (let ()
                              (declare (not safe))
                              (_else9795497968_)))))))
                 (_generate-clause97393_
                  (lambda (_target97809_ _ids97810_ _clause97811_ _E97812_)
                    (letrec ((_generate197814_
                              (lambda (_hd97901_ _fender97902_ _body97903_)
                                (let ((_g98727_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause97395_
                                          _hd97901_
                                          _ids97810_))))
                                  (begin
                                    (let ((_g98728_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g98727_)
                                                 (##vector-length _g98727_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g98728_ 2)))
                                          (error "Context expects 2 values"
                                                 _g98728_)))
                                    (let ((_e97905_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98727_ 0)))
                                          (_mvars97906_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g98727_ 1))))
                                      (let* ((_pvars97908_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars97906_))))
                                             (_E97910_
                                              (let ((__tmp98729
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target97809_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E97812_ __tmp98729)))
                                             (_K97943_
                                              (let ((__tmp98730
                                                     (let ((__tmp98732
                                                            (map (lambda (_mvar97912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar97913_)
                           (let* ((_mvar9791497921_ _mvar97912_)
                                  (_E9791697925_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9791497921_))))
                                  (_K9791797931_
                                   (lambda (_depth97928_ _id97929_)
                                     (let ((__tmp98733
                                            (let ((__tmp98734
                                                   (let ((__tmp98736
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id97929_)))
                                                         (__tmp98735
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar97913_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp98736
                                                      __tmp98735
                                                      _depth97928_))))
                                              (declare (not safe))
                                              (cons __tmp98734 '()))))
                                       (declare (not safe))
                                       (cons _id97929_ __tmp98733)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9791497921_))
                                 (let ((_hd9791897934_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9791497921_)))
                                       (_tl9791997936_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9791497921_))))
                                   (let* ((_id97939_ _hd9791897934_)
                                          (_depth97941_ _tl9791997936_))
                                     (declare (not safe))
                                     (_K9791797931_ _depth97941_ _id97939_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9791697925_)))))
                         _mvars97906_
                         _pvars97908_))
                   (__tmp98731
                    (if (let () (declare (not safe)) (eq? _fender97902_ '#t))
                        _body97903_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender97902_
                           _body97903_
                           _E97910_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp98732 __tmp98731))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars97908_
                                                 __tmp98730))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match97394_
                                           _hd97901_
                                           _target97809_
                                           _e97905_
                                           _mvars97906_
                                           _K97943_
                                           _E97910_)))))))))
                      (let* ((_e9781597835_ _clause97811_)
                             (_E9782497839_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9781597835_))))
                             (_E9781797873_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9781597835_))
                                    (let ((_e9782597843_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9781597835_))))
                                      (let ((_hd9782697846_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9782597843_)))
                                            (_tl9782797848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9782597843_))))
                                        (let ((_hd97851_ _hd9782697846_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9782797848_))
                                              (let ((_e9782897853_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9782797848_))))
                                                (let ((_hd9782997856_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9782897853_)))
                                                      (_tl9783097858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9782897853_))))
                                                  (let ((_fender97861_
                                                         _hd9782997856_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9783097858_))
                                                        (let ((_e9783197863_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9783097858_))))
                  (let ((_hd9783297866_
                         (let () (declare (not safe)) (##car _e9783197863_)))
                        (_tl9783397868_
                         (let () (declare (not safe)) (##cdr _e9783197863_))))
                    (let ((_body97871_ _hd9783297866_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9783397868_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate197814_
                                 _hd97851_
                                 _fender97861_
                                 _body97871_))
                              (let () (declare (not safe)) (_E9782497839_)))
                          (let () (declare (not safe)) (_E9782497839_))))))
                (let () (declare (not safe)) (_E9782497839_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9782497839_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9782497839_)))))
                             (_E9781697897_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9781597835_))
                                    (let ((_e9781897877_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9781597835_))))
                                      (let ((_hd9781997880_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9781897877_)))
                                            (_tl9782097882_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9781897877_))))
                                        (let ((_hd97885_ _hd9781997880_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9782097882_))
                                              (let ((_e9782197887_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9782097882_))))
                                                (let ((_hd9782297890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9782197887_)))
                                                      (_tl9782397892_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9782197887_))))
                                                  (let ((_body97895_
                                                         _hd9782297890_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9782397892_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate197814_
                                                               _hd97885_
                                                               '#t
                                                               _body97895_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9781797873_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9781797873_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9781797873_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9781797873_))))))
                        (let () (declare (not safe)) (_E9781697897_))))))
                 (_generate-match97394_
                  (lambda (_where97558_
                           _target97559_
                           _hd97560_
                           _mvars97561_
                           _K97562_
                           _E97563_)
                    (letrec ((_BUG97565_
                              (lambda (_q97807_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx97386_
                                         _hd97560_
                                         _q97807_))))
                             (_recur97566_
                              (lambda (_e97657_
                                       _vars97658_
                                       _target97659_
                                       _E97660_
                                       _k97661_)
                                (let* ((_e9766297669_ _e97657_)
                                       (_E9766497673_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9766297669_))))
                                       (_K9766597795_
                                        (lambda (_body97676_ _tag97677_)
                                          (let ((_$e97679_ _tag97677_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e97679_))
                                                (_k97661_ _vars97658_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e97679_))
                                                    (let ((__tmp98843
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target97659_)))
                                                          (__tmp98839
                                                           (let ((__tmp98841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98842
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e97389_ _body97676_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?97387_
                             __tmp98842
                             _target97659_)))
                         (__tmp98840 (_k97661_ _vars97658_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp98841 __tmp98840 _E97660_))))
              (declare (not safe))
              (gx#core-list 'if __tmp98843 __tmp98839 _E97660_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e97679_))
                                                        (_k97661_
                                                         (let ((__tmp98838
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body97676_ _target97659_))))
                   (declare (not safe))
                   (cons __tmp98838 _vars97658_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e97679_))
                    (let ((_$e97682_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd97683_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl97684_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp98837
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target97659_)))
                            (__tmp98818
                             (let ((__tmp98832
                                    (let ((__tmp98833
                                           (let ((__tmp98836
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e97682_ '())))
                                                 (__tmp98834
                                                  (let ((__tmp98835
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e97388_
                                                            _target97659_))))
                                                    (declare (not safe))
                                                    (cons __tmp98835 '()))))
                                             (declare (not safe))
                                             (cons __tmp98836 __tmp98834))))
                                      (declare (not safe))
                                      (cons __tmp98833 '())))
                                   (__tmp98819
                                    (let ((__tmp98822
                                           (let ((__tmp98828
                                                  (let ((__tmp98831
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd97683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp98829
                 (let ((__tmp98830
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e97682_))))
                   (declare (not safe))
                   (cons __tmp98830 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98831
                                                          __tmp98829)))
                                                 (__tmp98823
                                                  (let ((__tmp98824
                                                         (let ((__tmp98827
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl97684_ '())))
                       (__tmp98825
                        (let ((__tmp98826
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e97682_))))
                          (declare (not safe))
                          (cons __tmp98826 '()))))
                   (declare (not safe))
                   (cons __tmp98827 __tmp98825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98824 '()))))
                                             (declare (not safe))
                                             (cons __tmp98828 __tmp98823)))
                                          (__tmp98820
                                           (let* ((_body9768597692_
                                                   _body97676_)
                                                  (_E9768797696_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9768597692_))))
                                                  (_K9768897704_
                                                   (lambda (_tl97699_
                                                            _hd97700_)
                                                     (let ((__tmp98821
                                                            (lambda (_vars97702_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur97566_
                         _tl97699_
                         _vars97702_
                         _$tl97684_
                         _E97660_
                         _k97661_)))))
               (declare (not safe))
               (_recur97566_
                _hd97700_
                _vars97658_
                _$hd97683_
                _E97660_
                __tmp98821)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9768597692_))
                                                 (let ((_hd9768997707_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9768597692_)))
                                                       (_tl9769097709_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9768597692_))))
                                                   (let* ((_hd97712_
                                                           _hd9768997707_)
                                                          (_tl97714_
                                                           _tl9769097709_))
                                                     (declare (not safe))
                                                     (_K9768897704_
                                                      _tl97714_
                                                      _hd97712_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9768797696_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp98822
                                       __tmp98820))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp98832
                                __tmp98819))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp98837 __tmp98818 _E97660_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e97679_))
                        (let* ((_body9771597722_ _body97676_)
                               (_E9771797726_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9771597722_))))
                               (_K9771897777_
                                (lambda (_tl97729_ _hd97730_)
                                  (let* ((_rlen97732_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen97567_ _tl97729_)))
                                         (_$target97734_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd97736_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl97738_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp97740_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e97742_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd97744_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl97746_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars97748_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars97568_ _hd97730_)))
                                         (_lvars97750_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97748_)))
                                         (_tlvars97752_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars97748_)))
                                         (_linit97756_
                                          (map (lambda (_var97754_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars97750_)))
                                    (letrec ((_make-loop97759_
                                              (lambda (_vars97763_)
                                                (let ((__tmp98769
                                                       (let ((__tmp98770
                                                              (let ((__tmp98806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp97740_ '())))
                            (__tmp98771
                             (let ((__tmp98772
                                    (let ((__tmp98805
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd97736_ _lvars97750_)))
                                          (__tmp98773
                                           (let ((__tmp98804
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd97736_)))
                                                 (__tmp98782
                                                  (let ((__tmp98799
                                                         (let ((__tmp98800
                                                                (let ((__tmp98803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e97742_ '())))
                              (__tmp98801
                               (let ((__tmp98802
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e97388_
                                         _$hd97736_))))
                                 (declare (not safe))
                                 (cons __tmp98802 '()))))
                          (declare (not safe))
                          (cons __tmp98803 __tmp98801))))
                   (declare (not safe))
                   (cons __tmp98800 '())))
                (__tmp98783
                 (let ((__tmp98789
                        (let ((__tmp98795
                               (let ((__tmp98798
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd97744_ '())))
                                     (__tmp98796
                                      (let ((__tmp98797
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e97742_))))
                                        (declare (not safe))
                                        (cons __tmp98797 '()))))
                                 (declare (not safe))
                                 (cons __tmp98798 __tmp98796)))
                              (__tmp98790
                               (let ((__tmp98791
                                      (let ((__tmp98794
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl97746_ '())))
                                            (__tmp98792
                                             (let ((__tmp98793
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e97742_))))
                                               (declare (not safe))
                                               (cons __tmp98793 '()))))
                                        (declare (not safe))
                                        (cons __tmp98794 __tmp98792))))
                                 (declare (not safe))
                                 (cons __tmp98791 '()))))
                          (declare (not safe))
                          (cons __tmp98795 __tmp98790)))
                       (__tmp98784
                        (let ((__tmp98785
                               (lambda (_hdvars97765_)
                                 (let ((__tmp98786
                                        (let ((__tmp98787
                                               (map (lambda (_svar97767_
                                                             _lvar97768_)
                                                      (let ((__tmp98788
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar97767_ _hdvars97765_ _BUG97565_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp98788 _lvar97768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars97748_
                                                    _lvars97750_)))
                                          (declare (not safe))
                                          (cons _$lp-tl97746_ __tmp98787))))
                                   (declare (not safe))
                                   (cons _$lp97740_ __tmp98786)))))
                          (declare (not safe))
                          (_recur97566_
                           _hd97730_
                           '()
                           _$lp-hd97744_
                           _E97660_
                           __tmp98785))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp98789 __tmp98784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98799
                                                     __tmp98783)))
                                                 (__tmp98774
                                                  (let ((__tmp98778
                                                         (map (lambda (_lvar97770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar97771_)
                        (let ((__tmp98781
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar97771_ '())))
                              (__tmp98779
                               (let ((__tmp98780
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar97770_))))
                                 (declare (not safe))
                                 (cons __tmp98780 '()))))
                          (declare (not safe))
                          (cons __tmp98781 __tmp98779)))
                      _lvars97750_
                      _tlvars97752_))
                (__tmp98775
                 (_k97661_
                  (let ((__tmp98776
                         (lambda (_svar97773_ _tlvar97774_ _r97775_)
                           (let ((__tmp98777
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar97773_ _tlvar97774_))))
                             (declare (not safe))
                             (cons __tmp98777 _r97775_)))))
                    (declare (not safe))
                    (foldl2 __tmp98776
                            _vars97763_
                            _svars97748_
                            _tlvars97752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp98778
                                                     __tmp98775))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp98804
                                              __tmp98782
                                              __tmp98774))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp98805
                                       __tmp98773))))
                               (declare (not safe))
                               (cons __tmp98772 '()))))
                        (declare (not safe))
                        (cons __tmp98806 __tmp98771))))
                 (declare (not safe))
                 (cons __tmp98770 '())))
              (__tmp98767
               (let ((__tmp98768
                      (let ()
                        (declare (not safe))
                        (cons _$target97734_ _linit97756_))))
                 (declare (not safe))
                 (cons _$lp97740_ __tmp98768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp98769
                                                   __tmp98767)))))
                                      (let ((_body97761_
                                             (let ((__tmp98808
                                                    (let ((__tmp98809
                                                           (let ((__tmp98812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp98813
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl97738_ '()))))
                            (declare (not safe))
                            (cons _$target97734_ __tmp98813)))
                         (__tmp98810
                          (let ((__tmp98811
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target97659_
                                    _rlen97732_))))
                            (declare (not safe))
                            (cons __tmp98811 '()))))
                     (declare (not safe))
                     (cons __tmp98812 __tmp98810))))
              (declare (not safe))
              (cons __tmp98809 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98807
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97566_
                                                       _tl97729_
                                                       _vars97658_
                                                       _$tl97738_
                                                       _E97660_
                                                       _make-loop97759_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98808
                                                __tmp98807))))
                                        (let ((__tmp98817
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target97659_)))
                                              (__tmp98814
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen97732_))
                                                   _body97761_
                                                   (let ((__tmp98815
                                                          (let ((__tmp98816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target97659_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp98816 _rlen97732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp98815
                                                      _body97761_
                                                      _E97660_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp98817
                                           __tmp98814
                                           _E97660_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9771597722_))
                              (let ((_hd9771997780_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9771597722_)))
                                    (_tl9772097782_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9771597722_))))
                                (let* ((_hd97785_ _hd9771997780_)
                                       (_tl97787_ _tl9772097782_))
                                  (declare (not safe))
                                  (_K9771897777_ _tl97787_ _hd97785_)))
                              (let () (declare (not safe)) (_E9771797726_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e97679_))
                            (let ((__tmp98766
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target97659_)))
                                  (__tmp98765 (_k97661_ _vars97658_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp98766
                               __tmp98765
                               _E97660_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e97679_))
                                (let ((_$e97789_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp98764
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target97659_)))
                                        (__tmp98756
                                         (let ((__tmp98758
                                                (let ((__tmp98759
                                                       (let ((__tmp98763
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e97789_ '())))
                     (__tmp98760
                      (let ((__tmp98761
                             (let ((__tmp98762
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e97388_
                                       _target97659_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp98762))))
                        (declare (not safe))
                        (cons __tmp98761 '()))))
                 (declare (not safe))
                 (cons __tmp98763 __tmp98760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp98759 '())))
                                               (__tmp98757
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur97566_
                                                   _body97676_
                                                   _vars97658_
                                                   _$e97789_
                                                   _E97660_
                                                   _k97661_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp98758
                                            __tmp98757))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp98764
                                     __tmp98756
                                     _E97660_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e97679_))
                                    (let ((_$e97791_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp98755
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target97659_)))
                                            (__tmp98747
                                             (let ((__tmp98749
                                                    (let ((__tmp98750
                                                           (let ((__tmp98754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e97791_ '())))
                         (__tmp98751
                          (let ((__tmp98752
                                 (let ((__tmp98753
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e97388_
                                           _target97659_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp98753))))
                            (declare (not safe))
                            (cons __tmp98752 '()))))
                     (declare (not safe))
                     (cons __tmp98754 __tmp98751))))
              (declare (not safe))
              (cons __tmp98750 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp98748
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur97566_
                                                       _body97676_
                                                       _vars97658_
                                                       _$e97791_
                                                       _E97660_
                                                       _k97661_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp98749
                                                __tmp98748))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp98755
                                         __tmp98747
                                         _E97660_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97679_))
                                        (let ((_$e97793_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp98746
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target97659_)))
                                                (__tmp98737
                                                 (let ((__tmp98741
                                                        (let ((__tmp98742
                                                               (let ((__tmp98745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e97793_ '())))
                             (__tmp98743
                              (let ((__tmp98744
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target97659_))))
                                (declare (not safe))
                                (cons __tmp98744 '()))))
                         (declare (not safe))
                         (cons __tmp98745 __tmp98743))))
                  (declare (not safe))
                  (cons __tmp98742 '())))
               (__tmp98738
                (let ((__tmp98740
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e97793_ _body97676_)))
                      (__tmp98739 (_k97661_ _vars97658_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp98740 __tmp98739 _E97660_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp98741
                                                    __tmp98738))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp98746
                                             __tmp98737
                                             _E97660_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG97565_ _e97657_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9766297669_))
                                      (let ((_hd9766697798_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9766297669_)))
                                            (_tl9766797800_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9766297669_))))
                                        (let* ((_tag97803_ _hd9766697798_)
                                               (_body97805_ _tl9766797800_))
                                          (declare (not safe))
                                          (_K9766597795_
                                           _body97805_
                                           _tag97803_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9766497673_))))))
                             (_splice-rlen97567_
                              (lambda (_e97619_)
                                (let _lp97621_ ((_e97623_ _e97619_)
                                                (_n97624_ '0))
                                  (let* ((_e9762597632_ _e97623_)
                                         (_E9762797636_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9762597632_))))
                                         (_K9762897645_
                                          (lambda (_body97639_ _tag97640_)
                                            (let ((_$e97642_ _tag97640_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e97642_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx97386_
                                                     _where97558_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e97642_))
                                                      (let ((__tmp98845
                                                             (cdr _body97639_))
                                                            (__tmp98844
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n97624_ '1))))
                (declare (not safe))
                (_lp97621_ __tmp98845 __tmp98844))
              _n97624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9762597632_))
                                        (let ((_hd9762997648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9762597632_)))
                                              (_tl9763097650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9762597632_))))
                                          (let* ((_tag97653_ _hd9762997648_)
                                                 (_body97655_ _tl9763097650_))
                                            (declare (not safe))
                                            (_K9762897645_
                                             _body97655_
                                             _tag97653_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9762797636_)))))))
                             (_splice-vars97568_
                              (lambda (_e97575_)
                                (let _recur97577_ ((_e97579_ _e97575_)
                                                   (_vars97580_ '()))
                                  (let* ((_e9758197588_ _e97579_)
                                         (_E9758397592_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9758197588_))))
                                         (_K9758497607_
                                          (lambda (_body97595_ _tag97596_)
                                            (let ((_$e97598_ _tag97596_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e97598_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body97595_
                                                          _vars97580_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e97598_))
                  (let () (declare (not safe)) (eq? 'splice _$e97598_)))
              (let ((__tmp98848 (cdr _body97595_))
                    (__tmp98846
                     (let ((__tmp98847 (car _body97595_)))
                       (declare (not safe))
                       (_recur97577_ __tmp98847 _vars97580_))))
                (declare (not safe))
                (_recur97577_ __tmp98848 __tmp98846))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e97598_))
                      (let () (declare (not safe)) (eq? 'box _$e97598_)))
                  (let ()
                    (declare (not safe))
                    (_recur97577_ _body97595_ _vars97580_))
                  _vars97580_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9758197588_))
                                        (let ((_hd9758597610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9758197588_)))
                                              (_tl9758697612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9758197588_))))
                                          (let* ((_tag97615_ _hd9758597610_)
                                                 (_body97617_ _tl9758697612_))
                                            (declare (not safe))
                                            (_K9758497607_
                                             _body97617_
                                             _tag97615_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9758397592_)))))))
                             (_make-body97569_
                              (lambda (_vars97571_)
                                (let ((__tmp98849
                                       (map (lambda (_mvar97573_)
                                              (let ((__tmp98850
                                                     (car _mvar97573_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp98850
                                                 _vars97571_
                                                 _BUG97565_)))
                                            _mvars97561_)))
                                  (declare (not safe))
                                  (cons _K97562_ __tmp98849)))))
                      (let ()
                        (declare (not safe))
                        (_recur97566_
                         _hd97560_
                         '()
                         _target97559_
                         _E97563_
                         _make-body97569_)))))
                 (_parse-clause97395_
                  (lambda (_hd97464_ _ids97465_)
                    (let _recur97467_ ((_e97469_ _hd97464_)
                                       (_vars97470_ '())
                                       (_depth97471_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e97469_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e97469_))
                              (values '(any) _vars97470_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e97469_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx97386_
                                     _hd97464_))
                                  (if (let ((__tmp98866
                                             (lambda (_id97473_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e97469_
                                                  _id97473_)))))
                                        (declare (not safe))
                                        (find __tmp98866 _ids97465_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e97469_))
                                              _vars97470_)
                                      (if (let ((__tmp98864
                                                 (lambda (_var97475_)
                                                   (let ((__tmp98865
                                                          (car _var97475_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e97469_
                                                      __tmp98865)))))
                                            (declare (not safe))
                                            (find __tmp98864 _vars97470_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx97386_
                                             _e97469_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e97469_))
                                                  (let ((__tmp98863
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e97469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth97471_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98863
                                                          _vars97470_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e97469_))
                              (let* ((_e9747697483_ _e97469_)
                                     (_E9747897487_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9747697483_))))
                                     (_E9747797548_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9747697483_))
                                            (let ((_e9747997491_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9747697483_))))
                                              (let ((_hd9748097494_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9747997491_)))
                                                    (_tl9748197496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9747997491_))))
                                                (let* ((_hd97499_
                                                        _hd9748097494_)
                                                       (_rest97501_
                                                        _tl9748197496_))
                                                  (if '#t
                                                      (let* ((_make-pair97516_
                                                              (lambda (_tag97503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd97504_
                               _tl97505_)
                        (let* ((_hd-depth97507_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag97503_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth97471_ '1))
                                    _depth97471_))
                               (_g98858_
                                (let ()
                                  (declare (not safe))
                                  (_recur97467_
                                   _hd97504_
                                   _vars97470_
                                   _hd-depth97507_))))
                          (begin
                            (let ((_g98859_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g98858_)
                                         (##vector-length _g98858_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g98859_ 2)))
                                  (error "Context expects 2 values" _g98859_)))
                            (let ((_hd97509_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98858_ 0)))
                                  (_vars97510_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g98858_ 1))))
                              (let ((_g98860_
                                     (let ()
                                       (declare (not safe))
                                       (_recur97467_
                                        _tl97505_
                                        _vars97510_
                                        _depth97471_))))
                                (begin
                                  (let ((_g98861_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g98860_)
                                               (##vector-length _g98860_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g98861_ 2)))
                                        (error "Context expects 2 values"
                                               _g98861_)))
                                  (let ((_tl97512_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98860_ 0)))
                                        (_vars97513_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g98860_ 1))))
                                    (let ()
                                      (values (let ((__tmp98862
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd97509_
                                                             _tl97512_))))
                                                (declare (not safe))
                                                (cons _tag97503_ __tmp98862))
                                              _vars97513_))))))))))
                     (_e9751797524_ _rest97501_)
                     (_E9751997528_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair97516_ 'cons _hd97499_ _rest97501_))))
                     (_E9751897544_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9751797524_))
                            (let ((_e9752097532_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9751797524_))))
                              (let ((_hd9752197535_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9752097532_)))
                                    (_tl9752297537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9752097532_))))
                                (let* ((_rest-hd97540_ _hd9752197535_)
                                       (_rest-tl97542_ _tl9752297537_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd97540_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97516_
                                             'splice
                                             _hd97499_
                                             _rest-tl97542_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair97516_
                                             'cons
                                             _hd97499_
                                             _rest97501_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9751997528_))))))
                            (let () (declare (not safe)) (_E9751997528_))))))
                (let () (declare (not safe)) (_E9751897544_)))
              (let () (declare (not safe)) (_E9747897487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9747897487_))))))
                                (let () (declare (not safe)) (_E9747797548_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e97469_))
                                  (values '(null) _vars97470_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e97469_))
                                      (let ((_g98855_
                                             (let ((__tmp98857
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e97469_)))))
                                               (declare (not safe))
                                               (_recur97467_
                                                __tmp98857
                                                _vars97470_
                                                _depth97471_))))
                                        (begin
                                          (let ((_g98856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g98855_)
                                                       (##vector-length
                                                        _g98855_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g98856_ 2)))
                                                (error "Context expects 2 values"
                                                       _g98856_)))
                                          (let ((_e97552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98855_ 0)))
                                                (_vars97553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g98855_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e97552_))
                                                    _vars97553_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e97469_))
                                          (let ((_g98852_
                                                 (let ((__tmp98854
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e97469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur97467_
                                                    __tmp98854
                                                    _vars97470_
                                                    _depth97471_))))
                                            (begin
                                              (let ((_g98853_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g98852_)
                                                           (##vector-length
                                                            _g98852_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g98853_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g98853_)))
                                              (let ((_e97555_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98852_
                                                        0)))
                                                    (_vars97556_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g98852_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e97555_))
                                                        _vars97556_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e97469_))
                                              (values (let ((__tmp98851
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e97469_))))
                (declare (not safe))
                (cons 'datum __tmp98851))
              _vars97470_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx97386_
                                                 _e97469_))))))))))))
          (let* ((_e9739697409_ _stx97386_)
                 (_E9739897413_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9739697409_))))
                 (_E9739797460_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9739697409_))
                        (let ((_e9739997417_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9739697409_))))
                          (let ((_hd9740097420_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9739997417_)))
                                (_tl9740197422_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9739997417_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9740197422_))
                                (let ((_e9740297425_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9740197422_))))
                                  (let ((_hd9740397428_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9740297425_)))
                                        (_tl9740497430_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9740297425_))))
                                    (let ((_expr97433_ _hd9740397428_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9740497430_))
                                          (let ((_e9740597435_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9740497430_))))
                                            (let ((_hd9740697438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9740597435_)))
                                                  (_tl9740797440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9740597435_))))
                                              (let* ((_ids97443_
                                                      _hd9740697438_)
                                                     (_clauses97445_
                                                      _tl9740797440_))
                                                (if '#t
                                                    (if (let ((__tmp98884
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids97443_))))
                  (declare (not safe))
                  (not __tmp98884))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx97386_
                   _ids97443_))
                (if (let ((__tmp98883
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses97445_))))
                      (declare (not safe))
                      (not __tmp98883))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx97386_))
                    (let* ((_ids97447_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids97443_)))
                           (_clauses97449_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses97445_)))
                           (_clause-ids97451_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses97449_)))
                           (_E97453_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target97455_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first97457_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses97449_))
                                _E97453_
                                (car _clause-ids97451_))))
                      (let ((__tmp98868
                             (let ((__tmp98869
                                    (let ((__tmp98871
                                           (let ((__tmp98876
                                                  (let ((__tmp98877
                                                         (let ((__tmp98882
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E97453_ '())))
                       (__tmp98878
                        (let ((__tmp98879
                               (let ((__tmp98881
                                      (let ()
                                        (declare (not safe))
                                        (cons _target97455_ '())))
                                     (__tmp98880
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target97455_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp98881
                                  __tmp98880))))
                          (declare (not safe))
                          (cons __tmp98879 '()))))
                   (declare (not safe))
                   (cons __tmp98882 __tmp98878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp98877 '())))
                                                 (__tmp98872
                                                  (let ((__tmp98875
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings97391_
                                                            _target97455_
                                                            _ids97447_
                                                            _clauses97449_
                                                            _clause-ids97451_
                                                            _E97453_)))
                                                        (__tmp98873
                                                         (let ((__tmp98874
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr97433_ '()))))
                   (declare (not safe))
                   (cons _first97457_ __tmp98874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body97392_
                                                     __tmp98875
                                                     __tmp98873))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp98876
                                              __tmp98872)))
                                          (__tmp98870
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx97386_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp98871
                                       __tmp98870))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp98869)))
                            (__tmp98867
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx97386_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp98868 __tmp98867)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9739897413_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9739897413_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9739897413_)))))
                        (let () (declare (not safe)) (_E9739897413_))))))
            (let () (declare (not safe)) (_E9739797460_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx98096_)
        (let* ((_identifier=?98098_ 'free-identifier=?)
               (_unwrap-e98100_ 'syntax-e)
               (_wrap-e98102_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98096_
           _identifier=?98098_
           _unwrap-e98100_
           _wrap-e98102_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx98104_ _identifier=?98105_)
        (let* ((_unwrap-e98107_ 'syntax-e) (_wrap-e98109_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98104_
           _identifier=?98105_
           _unwrap-e98107_
           _wrap-e98109_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx98111_ _identifier=?98112_ _unwrap-e98113_)
        (let ((_wrap-e98115_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx98111_
           _identifier=?98112_
           _unwrap-e98113_
           _wrap-e98115_))))
    (define gx#macro-expand-syntax-case
      (lambda _g98886_
        (let ((_g98885_ (let () (declare (not safe)) (##length _g98886_))))
          (cond ((let () (declare (not safe)) (##fx= _g98885_ 1))
                 (apply (lambda (_stx98096_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx98096_)))
                        _g98886_))
                ((let () (declare (not safe)) (##fx= _g98885_ 2))
                 (apply (lambda (_stx98104_ _identifier=?98105_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx98104_
                             _identifier=?98105_)))
                        _g98886_))
                ((let () (declare (not safe)) (##fx= _g98885_ 3))
                 (apply (lambda (_stx98111_
                                 _identifier=?98112_
                                 _unwrap-e98113_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx98111_
                             _identifier=?98112_
                             _unwrap-e98113_)))
                        _g98886_))
                ((let () (declare (not safe)) (##fx= _g98885_ 4))
                 (apply (lambda (_stx98117_
                                 _identifier=?98118_
                                 _unwrap-e98119_
                                 _wrap-e98120_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx98117_
                             _identifier=?98118_
                             _unwrap-e98119_
                             _wrap-e98120_)))
                        _g98886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g98886_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx97383_)
        (if (let () (declare (not safe)) (gx#identifier? _stx97383_))
            (let ((__tmp98887
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx97383_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp98887 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd97341_ . _rest97342_)
        (let ((_len97344_ (length _hd97341_)))
          (let _lp97346_ ((_rest97348_ _rest97342_))
            (let* ((_rest9734997357_ _rest97348_)
                   (_else9735197365_ (lambda () '#!void))
                   (_K9735397371_
                    (lambda (_rest97368_ _hd97369_)
                      (if (fx= _len97344_ (length _hd97369_))
                          (let () (declare (not safe)) (_lp97346_ _rest97368_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd97369_))))))
              (if (let () (declare (not safe)) (##pair? _rest9734997357_))
                  (let ((_hd9735497374_
                         (let ()
                           (declare (not safe))
                           (##car _rest9734997357_)))
                        (_tl9735597376_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9734997357_))))
                    (let* ((_hd97379_ _hd9735497374_)
                           (_rest97381_ _tl9735597376_))
                      (declare (not safe))
                      (_K9735397371_ _rest97381_ _hd97379_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx97299_ _n97300_)
        (let _lp97302_ ((_rest97304_ _stx97299_) (_r97305_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest97304_))
              (let* ((_g9730697313_
                      (let () (declare (not safe)) (gx#syntax-e _rest97304_)))
                     (_E9730897317_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9730697313_))))
                     (_K9730997323_
                      (lambda (_rest97320_ _hd97321_)
                        (let ((__tmp98892
                               (let ()
                                 (declare (not safe))
                                 (cons _hd97321_ _r97305_))))
                          (declare (not safe))
                          (_lp97302_ _rest97320_ __tmp98892)))))
                (if (let () (declare (not safe)) (##pair? _g9730697313_))
                    (let ((_hd9731097326_
                           (let () (declare (not safe)) (##car _g9730697313_)))
                          (_tl9731197328_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9730697313_))))
                      (let* ((_hd97331_ _hd9731097326_)
                             (_rest97333_ _tl9731197328_))
                        (declare (not safe))
                        (_K9730997323_ _rest97333_ _hd97331_)))
                    (let () (declare (not safe)) (_E9730897317_))))
              (let _lp97335_ ((_n97337_ _n97300_)
                              (_l97338_ _r97305_)
                              (_r97339_ _rest97304_))
                (if (let () (declare (not safe)) (null? _l97338_))
                    (values _l97338_ _r97339_)
                    (if (fxpositive? _n97337_)
                        (let ((__tmp98891
                               (let () (declare (not safe)) (fx- _n97337_ '1)))
                              (__tmp98890 (cdr _l97338_))
                              (__tmp98888
                               (let ((__tmp98889 (car _l97338_)))
                                 (declare (not safe))
                                 (cons __tmp98889 _r97339_))))
                          (declare (not safe))
                          (_lp97335_ __tmp98891 __tmp98890 __tmp98888))
                        (values (reverse _l97338_) _r97339_))))))))))
