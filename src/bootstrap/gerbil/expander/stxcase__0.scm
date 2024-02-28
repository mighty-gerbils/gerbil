(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709111636)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96912 (list gx#expander::t))
            (__tmp96910
             (let ((__tmp96911
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96911 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96912
         '(id depth)
         __tmp96910
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96907_
        (apply make-instance gx#syntax-pattern::t _$args96907_)))
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
      (lambda (_self96904_ _stx96905_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96905_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96386_)
        (letrec ((_generate96388_
                  (lambda (_e96615_)
                    (letrec ((_BUG96617_
                              (lambda (_q96779_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96386_
                                         _e96615_
                                         _q96779_))))
                             (_local-pattern-e96618_
                              (lambda (_pat96777_)
                                (let ((__tmp96913
                                       (##structure-ref
                                        _pat96777_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96913))))
                             (_getvar96619_
                              (lambda (_q96774_ _vars96775_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96774_
                                   _vars96775_
                                   _BUG96617_))))
                             (_getarg96620_
                              (lambda (_arg96740_ _vars96741_)
                                (let* ((_arg9674296749_ _arg96740_)
                                       (_E9674496753_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9674296749_))))
                                       (_K9674596762_
                                        (lambda (_e96756_ _tag96757_)
                                          (let ((_$e96759_ _tag96757_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96759_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar96619_
                                                   _e96756_
                                                   _vars96741_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96759_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e96618_
                                                       _e96756_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG96617_
                                                       _arg96740_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9674296749_))
                                      (let ((_hd9674696765_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9674296749_)))
                                            (_tl9674796767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9674296749_))))
                                        (let* ((_tag96770_ _hd9674696765_)
                                               (_e96772_ _tl9674796767_))
                                          (declare (not safe))
                                          (_K9674596762_ _e96772_ _tag96770_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9674496753_)))))))
                      (let _recur96622_ ((_e96624_ _e96615_) (_vars96625_ '()))
                        (let* ((_e9662696633_ _e96624_)
                               (_E9662896637_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9662696633_))))
                               (_K9662996728_
                                (lambda (_body96640_ _tag96641_)
                                  (let ((_$e96643_ _tag96641_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96643_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body96640_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e96643_))
                                            (let ((_id96646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body96640_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id96646_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks96648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id96646_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks96648_))
                                                        (let ((__tmp96941
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body96640_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96941))
                (let ((__tmp96940
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body96640_)))
                      (__tmp96939
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body96640_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96940
                   __tmp96939
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id96646_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body96640_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG96617_
                                                         _e96624_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e96643_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e96618_
                                                   _body96640_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e96643_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar96619_
                                                       _body96640_
                                                       _vars96625_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e96643_))
                                                        (let ((__tmp96937
                                                               (let ((__tmp96938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body96640_)))
                         (declare (not safe))
                         (_recur96622_ __tmp96938 _vars96625_)))
                      (__tmp96935
                       (let ((__tmp96936 (cdr _body96640_)))
                         (declare (not safe))
                         (_recur96622_ __tmp96936 _vars96625_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96937 __tmp96935))
                (if (let () (declare (not safe)) (eq? 'vector _$e96643_))
                    (let ((__tmp96934
                           (let ()
                             (declare (not safe))
                             (_recur96622_ _body96640_ _vars96625_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96934))
                    (if (let () (declare (not safe)) (eq? 'box _$e96643_))
                        (let ((__tmp96933
                               (let ()
                                 (declare (not safe))
                                 (_recur96622_ _body96640_ _vars96625_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96933))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e96643_))
                            (let* ((_body9664996660_ _body96640_)
                                   (_E9665196664_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9664996660_))))
                                   (_K9665296702_
                                    (lambda (_args96667_
                                             _iv96668_
                                             _hd96669_
                                             _depth96670_)
                                      (let* ((_targets96676_
                                              (map (lambda (_g9667196673_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg96620_
                                                        _g9667196673_
                                                        _vars96625_)))
                                                   _args96667_))
                                             (_fold-in96678_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96667_)))
                                             (_fold-out96680_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96682_
                                              (let ((__tmp96914
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96680_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96914
                                                        _fold-in96678_)))
                                             (_lambda-body96699_
                                              (if (fx> _depth96670_ '1)
                                                  (let ((_r-args96690_
                                                         (map (lambda (_arg96684_)
                                                                (let ((__tmp96919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96684_)))
                          (declare (not safe))
                          (cons 'ref __tmp96919)))
                      _args96667_))
                (_r-vars96691_
                 (let ((__tmp96920
                        (lambda (_arg96686_ _var96687_ _r96688_)
                          (let ((__tmp96921
                                 (let ((__tmp96922 (cdr _arg96686_)))
                                   (declare (not safe))
                                   (cons __tmp96922 _var96687_))))
                            (declare (not safe))
                            (cons __tmp96921 _r96688_)))))
                   (declare (not safe))
                   (foldr2 __tmp96920
                           _vars96625_
                           _args96667_
                           _fold-in96678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96923
                                                           (let ((__tmp96924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96928
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96670_ '1)))
                                (__tmp96925
                                 (let ((__tmp96926
                                        (let ((__tmp96927
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96680_))))
                                          (declare (not safe))
                                          (cons __tmp96927 _r-args96690_))))
                                   (declare (not safe))
                                   (cons _hd96669_ __tmp96926))))
                            (declare (not safe))
                            (cons __tmp96928 __tmp96925))))
                     (declare (not safe))
                     (cons 'splice __tmp96924))))
              (declare (not safe))
              (_recur96622_ __tmp96923 _r-vars96691_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96697_
                                                          (let ((__tmp96915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96693_ _var96694_ _r96695_)
                           (let ((__tmp96916
                                  (let ((__tmp96917 (cdr _arg96693_)))
                                    (declare (not safe))
                                    (cons __tmp96917 _var96694_))))
                             (declare (not safe))
                             (cons __tmp96916 _r96695_)))))
                    (declare (not safe))
                    (foldr2 __tmp96915
                            _vars96625_
                            _args96667_
                            _fold-in96678_)))
                 (__tmp96918
                  (let ()
                    (declare (not safe))
                    (_recur96622_ _hd96669_ _hd-vars96697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96918
                                                     _fold-out96680_)))))
                                        (let ((__tmp96932
                                               (if (fx> (length _targets96676_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96676_))
                                                   '#!void))
                                              (__tmp96929
                                               (let ((__tmp96931
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96682_
                                                         _lambda-body96699_)))
                                                     (__tmp96930
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur96622_
                                                         _iv96668_
                                                         _vars96625_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96931
                                                  __tmp96930
                                                  _targets96676_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96932
                                           __tmp96929))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9664996660_))
                                  (let ((_hd9665396705_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9664996660_)))
                                        (_tl9665496707_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9664996660_))))
                                    (let ((_depth96710_ _hd9665396705_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9665496707_))
                                          (let ((_hd9665596712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9665496707_)))
                                                (_tl9665696714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9665496707_))))
                                            (let ((_hd96717_ _hd9665596712_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9665696714_))
                                                  (let ((_hd9665796719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9665696714_)))
                                                        (_tl9665896721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9665696714_))))
                                                    (let* ((_iv96724_
                                                            _hd9665796719_)
                                                           (_args96726_
                                                            _tl9665896721_))
                                                      (declare (not safe))
                                                      (_K9665296702_
                                                       _args96726_
                                                       _iv96724_
                                                       _hd96717_
                                                       _depth96710_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9665196664_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9665196664_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9665196664_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e96643_))
                                _body96640_
                                (let ()
                                  (declare (not safe))
                                  (_BUG96617_ _e96624_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9662696633_))
                              (let ((_hd9663096731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9662696633_)))
                                    (_tl9663196733_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9662696633_))))
                                (let* ((_tag96736_ _hd9663096731_)
                                       (_body96738_ _tl9663196733_))
                                  (declare (not safe))
                                  (_K9662996728_ _body96738_ _tag96736_)))
                              (let ()
                                (declare (not safe))
                                (_E9662896637_))))))))
                 (_parse96389_
                  (lambda (_e96430_)
                    (letrec ((_make-cons96432_
                              (lambda (_hd96607_ _tl96608_)
                                (let ((_g96942_ _hd96607_)
                                      (_g96944_ _tl96608_))
                                  (begin
                                    (let ((_g96943_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96942_)
                                                 (##vector-length _g96942_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96943_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96943_)))
                                    (let ((_g96945_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96944_)
                                                 (##vector-length _g96944_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96945_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96945_)))
                                    (let ((_hd-e96610_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96942_ 0)))
                                          (_hd-vars96611_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96942_ 1))))
                                      (let ((_tl-e96612_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96944_ 0)))
                                            (_tl-vars96613_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96944_ 1))))
                                        (values (let ((__tmp96946
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e96610_
                                                               _tl-e96612_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96946))
                                                (append _hd-vars96611_
                                                        _tl-vars96613_))))))))
                             (_make-splice96433_
                              (lambda (_where96546_
                                       _depth96547_
                                       _hd96548_
                                       _tl96549_)
                                (let ((_g96947_ _hd96548_)
                                      (_g96949_ _tl96549_))
                                  (begin
                                    (let ((_g96948_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96947_)
                                                 (##vector-length _g96947_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96948_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96948_)))
                                    (let ((_g96950_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96949_)
                                                 (##vector-length _g96949_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96950_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96950_)))
                                    (let ((_hd-e96551_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96947_ 0)))
                                          (_hd-vars96552_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96947_ 1))))
                                      (let ((_tl-e96553_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96949_ 0)))
                                            (_tl-vars96554_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96949_ 1))))
                                        (let _lp96556_ ((_rest96558_
                                                         _hd-vars96552_)
                                                        (_targets96559_ '())
                                                        (_vars96560_
                                                         _tl-vars96554_))
                                          (let* ((_rest9656196571_ _rest96558_)
                                                 (_else9656396579_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96559_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96386_
                                                           _where96546_))
                                                        (values (let ((__tmp96951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96952
                                      (let ((__tmp96953
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96553_
                                                     _targets96559_))))
                                        (declare (not safe))
                                        (cons _hd-e96551_ __tmp96953))))
                                 (declare (not safe))
                                 (cons _depth96547_ __tmp96952))))
                          (declare (not safe))
                          (cons 'splice __tmp96951))
                        _vars96560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9656596588_
                                                  (lambda (_rest96582_
                                                           _hd-pat96583_
                                                           _hd-depth*96584_)
                                                    (let ((_hd-depth96586_
                                                           (fx- _hd-depth*96584_
                                                                _depth96547_)))
                                                      (if (fxpositive?
                                                           _hd-depth96586_)
                                                          (let ((__tmp96958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96959
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96583_))))
                           (declare (not safe))
                           (cons __tmp96959 _targets96559_)))
                        (__tmp96956
                         (let ((__tmp96957
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth96586_ _hd-pat96583_))))
                           (declare (not safe))
                           (cons __tmp96957 _vars96560_))))
                    (declare (not safe))
                    (_lp96556_ _rest96582_ __tmp96958 __tmp96956))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth96586_))
                      (let ((__tmp96954
                             (let ((__tmp96955
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96583_))))
                               (declare (not safe))
                               (cons __tmp96955 _targets96559_))))
                        (declare (not safe))
                        (_lp96556_ _rest96582_ __tmp96954 _vars96560_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96386_
                         _where96546_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9656196571_))
                                                (let ((_hd9656696591_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9656196571_)))
                                                      (_tl9656796593_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9656196571_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9656696591_))
                                                      (let ((_hd9656896596_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9656696591_)))
                    (_tl9656996598_
                     (let () (declare (not safe)) (##cdr _hd9656696591_))))
                (let* ((_hd-depth*96601_ _hd9656896596_)
                       (_hd-pat96603_ _tl9656996598_)
                       (_rest96605_ _tl9656796593_))
                  (declare (not safe))
                  (_K9656596588_ _rest96605_ _hd-pat96603_ _hd-depth*96601_)))
              (let () (declare (not safe)) (_else9656396579_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9656396579_)))))))))))
                             (_recur96434_
                              (lambda (_e96439_ _is-e?96440_)
                                (if (_is-e?96440_ _e96439_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96386_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96439_))
                                        (let* ((_pat96442_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96439_)))
                                               (_depth96444_
                                                (##structure-ref
                                                 _pat96442_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96444_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96442_))
                                                      (let ((__tmp96975
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96444_ _pat96442_))))
                (declare (not safe))
                (cons __tmp96975 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96442_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96439_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96439_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96439_))
                                                (let* ((_e9644696453_ _e96439_)
                                                       (_E9644896457_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9644696453_))))
                                                       (_E9644796536_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9644696453_))
                      (let ((_e9644996461_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9644696453_))))
                        (let ((_hd9645096464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9644996461_)))
                              (_tl9645196466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9644996461_))))
                          (let* ((_hd96469_ _hd9645096464_)
                                 (_rest96471_ _tl9645196466_))
                            (if '#t
                                (if (_is-e?96440_ _hd96469_)
                                    (let* ((_e9647296479_ _rest96471_)
                                           (_E9647496483_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96386_
                                                 _e96439_))))
                                           (_E9647396497_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9647296479_))
                                                  (let ((_e9647596487_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9647296479_))))
                                                    (let ((_hd9647696490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9647596487_)))
                                                          (_tl9647796492_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9647596487_))))
                                                      (let ((_rest96495_
                                                             _hd9647696490_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9647796492_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96434_ _rest96495_ false))
                        (let () (declare (not safe)) (_E9647496483_)))
                    (let () (declare (not safe)) (_E9647496483_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9647496483_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9647396497_)))
                                    (let _lp96501_ ((_rest96503_ _rest96471_)
                                                    (_depth96504_ '0))
                                      (let* ((_e9650596512_ _rest96503_)
                                             (_E9650796516_
                                              (lambda ()
                                                (if (fxpositive? _depth96504_)
                                                    (let ((__tmp96969
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96434_
                                                              _hd96469_
                                                              _is-e?96440_)))
                                                          (__tmp96968
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96434_
                                                              _rest96503_
                                                              _is-e?96440_))))
                                                      (declare (not safe))
                                                      (_make-splice96433_
                                                       _e96439_
                                                       _depth96504_
                                                       __tmp96969
                                                       __tmp96968))
                                                    (let ((__tmp96967
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96434_
                                                              _hd96469_
                                                              _is-e?96440_)))
                                                          (__tmp96966
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96434_
                                                              _rest96503_
                                                              _is-e?96440_))))
                                                      (declare (not safe))
                                                      (_make-cons96432_
                                                       __tmp96967
                                                       __tmp96966)))))
                                             (_E9650696532_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9650596512_))
                                                    (let ((_e9650896520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9650596512_))))
                                                      (let ((_hd9650996523_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9650896520_)))
                    (_tl9651096525_
                     (let () (declare (not safe)) (##cdr _e9650896520_))))
                (let* ((_rest-hd96528_ _hd9650996523_)
                       (_rest-tl96530_ _tl9651096525_))
                  (if '#t
                      (if (_is-e?96440_ _rest-hd96528_)
                          (let ((__tmp96974
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96504_ '1))))
                            (declare (not safe))
                            (_lp96501_ _rest-tl96530_ __tmp96974))
                          (if (fxpositive? _depth96504_)
                              (let ((__tmp96973
                                     (let ()
                                       (declare (not safe))
                                       (_recur96434_ _hd96469_ _is-e?96440_)))
                                    (__tmp96972
                                     (let ()
                                       (declare (not safe))
                                       (_recur96434_
                                        _rest96503_
                                        _is-e?96440_))))
                                (declare (not safe))
                                (_make-splice96433_
                                 _e96439_
                                 _depth96504_
                                 __tmp96973
                                 __tmp96972))
                              (let ((__tmp96971
                                     (let ()
                                       (declare (not safe))
                                       (_recur96434_ _hd96469_ _is-e?96440_)))
                                    (__tmp96970
                                     (let ()
                                       (declare (not safe))
                                       (_recur96434_
                                        _rest96503_
                                        _is-e?96440_))))
                                (declare (not safe))
                                (_make-cons96432_ __tmp96971 __tmp96970))))
                      (let () (declare (not safe)) (_E9650796516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9650796516_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9650696532_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9644896457_))))))
                      (let () (declare (not safe)) (_E9644896457_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9644796536_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96439_))
                                                    (let ((_g96963_
                                                           (let ((__tmp96965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96439_)))))
                     (declare (not safe))
                     (_recur96434_ __tmp96965 _is-e?96440_))))
              (begin
                (let ((_g96964_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96963_)
                             (##vector-length _g96963_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96964_ 2)))
                      (error "Context expects 2 values" _g96964_)))
                (let ((_e96540_
                       (let () (declare (not safe)) (##vector-ref _g96963_ 0)))
                      (_vars96541_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96963_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96540_))
                          _vars96541_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96439_))
                                                        (let ((_g96960_
                                                               (let ((__tmp96962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96439_)))))
                         (declare (not safe))
                         (_recur96434_ __tmp96962 _is-e?96440_))))
                  (begin
                    (let ((_g96961_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96960_)
                                 (##vector-length _g96960_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96961_ 2)))
                          (error "Context expects 2 values" _g96961_)))
                    (let ((_e96543_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96960_ 0)))
                          (_vars96544_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96960_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96543_))
                              _vars96544_))))
                (values (let () (declare (not safe)) (cons 'datum _e96439_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96976_
                             (let ()
                               (declare (not safe))
                               (_recur96434_ _e96430_ gx#ellipsis?))))
                        (begin
                          (let ((_g96977_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96976_)
                                       (##vector-length _g96976_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96977_ 2)))
                                (error "Context expects 2 values" _g96977_)))
                          (let ((_tree96436_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96976_ 0)))
                                (_vars96437_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96976_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96437_))
                                _tree96436_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96386_
                                   _vars96437_))))))))))
          (let* ((_e9639096400_ _stx96386_)
                 (_E9639296404_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96386_))))
                 (_E9639196426_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9639096400_))
                        (let ((_e9639396408_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9639096400_))))
                          (let ((_hd9639496411_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9639396408_)))
                                (_tl9639596413_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9639396408_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9639596413_))
                                (let ((_e9639696416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9639596413_))))
                                  (let ((_hd9639796419_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9639696416_)))
                                        (_tl9639896421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9639696416_))))
                                    (let ((_form96424_ _hd9639796419_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9639896421_))
                                          (if '#t
                                              (let ((__tmp96979
                                                     (let ((__tmp96980
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96389_
                                                               _form96424_))))
                                                       (declare (not safe))
                                                       (_generate96388_
                                                        __tmp96980)))
                                                    (__tmp96978
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96386_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96979
                                                 __tmp96978))
                                              (let ()
                                                (declare (not safe))
                                                (_E9639296404_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9639296404_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9639296404_)))))
                        (let () (declare (not safe)) (_E9639296404_))))))
            (let () (declare (not safe)) (_E9639196426_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx95650_ _identifier=?95651_ _unwrap-e95652_ _wrap-e95653_)
        (letrec ((_generate-bindings95655_
                  (lambda (_target96250_
                           _ids96251_
                           _clauses96252_
                           _clause-ids96253_
                           _E96254_)
                    (letrec ((_generate196256_
                              (lambda (_clause96353_ _clause-id96354_ _E96355_)
                                (let ((__tmp96985
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96354_ '())))
                                      (__tmp96981
                                       (let ((__tmp96982
                                              (let ((__tmp96984
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96250_
                                                             '())))
                                                    (__tmp96983
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95657_
                                                        _target96250_
                                                        _ids96251_
                                                        _clause96353_
                                                        _E96355_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96984
                                                 __tmp96983))))
                                         (declare (not safe))
                                         (cons __tmp96982 '()))))
                                  (declare (not safe))
                                  (cons __tmp96985 __tmp96981)))))
                      (let _lp96258_ ((_rest96260_ _clauses96252_)
                                      (_rest-ids96261_ _clause-ids96253_)
                                      (_bindings96262_ '()))
                        (let* ((_rest9626396271_ _rest96260_)
                               (_else9626596279_ (lambda () _bindings96262_))
                               (_K9626796341_
                                (lambda (_rest96282_ _clause96283_)
                                  (let* ((_rest-ids9628496291_ _rest-ids96261_)
                                         (_E9628696295_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9628496291_))))
                                         (_K9628796329_
                                          (lambda (_rest-ids96298_
                                                   _clause-id96299_)
                                            (let* ((_rest-ids9630096308_
                                                    _rest-ids96298_)
                                                   (_else9630296316_
                                                    (lambda ()
                                                      (let ((__tmp96986
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196256_
                        _clause96283_
                        _clause-id96299_
                        _E96254_))))
                (declare (not safe))
                (cons __tmp96986 _bindings96262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9630496321_
                                                    (lambda (_next-clause-id96319_)
                                                      (let ((__tmp96987
                                                             (let ((__tmp96988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196256_
                               _clause96283_
                               _clause-id96299_
                               _next-clause-id96319_))))
                       (declare (not safe))
                       (cons __tmp96988 _bindings96262_))))
                (declare (not safe))
                (_lp96258_ _rest96282_ _rest-ids96298_ __tmp96987)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9630096308_))
                                                  (let* ((_hd9630596324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9630096308_)))
                                                         (_next-clause-id96327_
                                                          _hd9630596324_))
                                                    (declare (not safe))
                                                    (_K9630496321_
                                                     _next-clause-id96327_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9630296316_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9628496291_))
                                        (let ((_hd9628896332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9628496291_)))
                                              (_tl9628996334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9628496291_))))
                                          (let* ((_clause-id96337_
                                                  _hd9628896332_)
                                                 (_rest-ids96339_
                                                  _tl9628996334_))
                                            (declare (not safe))
                                            (_K9628796329_
                                             _rest-ids96339_
                                             _clause-id96337_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9628696295_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9626396271_))
                              (let ((_hd9626896344_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9626396271_)))
                                    (_tl9626996346_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9626396271_))))
                                (let* ((_clause96349_ _hd9626896344_)
                                       (_rest96351_ _tl9626996346_))
                                  (declare (not safe))
                                  (_K9626796341_ _rest96351_ _clause96349_)))
                              (let ()
                                (declare (not safe))
                                (_else9626596279_))))))))
                 (_generate-body95656_
                  (lambda (_bindings96210_ _body96211_)
                    (let _recur96213_ ((_rest96215_ _bindings96210_))
                      (let* ((_rest9621696224_ _rest96215_)
                             (_else9621896232_ (lambda () _body96211_))
                             (_K9622096238_
                              (lambda (_rest96235_ _hd96236_)
                                (let ((__tmp96990
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96236_ '())))
                                      (__tmp96989
                                       (let ()
                                         (declare (not safe))
                                         (_recur96213_ _rest96235_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96990
                                   __tmp96989)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9621696224_))
                            (let ((_hd9622196241_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9621696224_)))
                                  (_tl9622296243_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9621696224_))))
                              (let* ((_hd96246_ _hd9622196241_)
                                     (_rest96248_ _tl9622296243_))
                                (declare (not safe))
                                (_K9622096238_ _rest96248_ _hd96246_)))
                            (let ()
                              (declare (not safe))
                              (_else9621896232_)))))))
                 (_generate-clause95657_
                  (lambda (_target96073_ _ids96074_ _clause96075_ _E96076_)
                    (letrec ((_generate196078_
                              (lambda (_hd96165_ _fender96166_ _body96167_)
                                (let ((_g96991_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95659_
                                          _hd96165_
                                          _ids96074_))))
                                  (begin
                                    (let ((_g96992_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96991_)
                                                 (##vector-length _g96991_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96992_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96992_)))
                                    (let ((_e96169_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96991_ 0)))
                                          (_mvars96170_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96991_ 1))))
                                      (let* ((_pvars96172_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96170_))))
                                             (_E96174_
                                              (let ((__tmp96993
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96073_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96076_ __tmp96993)))
                                             (_K96207_
                                              (let ((__tmp96994
                                                     (let ((__tmp96996
                                                            (map (lambda (_mvar96176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96177_)
                           (let* ((_mvar9617896185_ _mvar96176_)
                                  (_E9618096189_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9617896185_))))
                                  (_K9618196195_
                                   (lambda (_depth96192_ _id96193_)
                                     (let ((__tmp96997
                                            (let ((__tmp96998
                                                   (let ((__tmp97000
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96193_)))
                                                         (__tmp96999
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96177_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97000
                                                      __tmp96999
                                                      _depth96192_))))
                                              (declare (not safe))
                                              (cons __tmp96998 '()))))
                                       (declare (not safe))
                                       (cons _id96193_ __tmp96997)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9617896185_))
                                 (let ((_hd9618296198_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9617896185_)))
                                       (_tl9618396200_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9617896185_))))
                                   (let* ((_id96203_ _hd9618296198_)
                                          (_depth96205_ _tl9618396200_))
                                     (declare (not safe))
                                     (_K9618196195_ _depth96205_ _id96203_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9618096189_)))))
                         _mvars96170_
                         _pvars96172_))
                   (__tmp96995
                    (if (let () (declare (not safe)) (eq? _fender96166_ '#t))
                        _body96167_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96166_
                           _body96167_
                           _E96174_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96996 __tmp96995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96172_
                                                 __tmp96994))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95658_
                                           _hd96165_
                                           _target96073_
                                           _e96169_
                                           _mvars96170_
                                           _K96207_
                                           _E96174_)))))))))
                      (let* ((_e9607996099_ _clause96075_)
                             (_E9608896103_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9607996099_))))
                             (_E9608196137_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9607996099_))
                                    (let ((_e9608996107_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9607996099_))))
                                      (let ((_hd9609096110_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9608996107_)))
                                            (_tl9609196112_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9608996107_))))
                                        (let ((_hd96115_ _hd9609096110_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9609196112_))
                                              (let ((_e9609296117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9609196112_))))
                                                (let ((_hd9609396120_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9609296117_)))
                                                      (_tl9609496122_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9609296117_))))
                                                  (let ((_fender96125_
                                                         _hd9609396120_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9609496122_))
                                                        (let ((_e9609596127_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9609496122_))))
                  (let ((_hd9609696130_
                         (let () (declare (not safe)) (##car _e9609596127_)))
                        (_tl9609796132_
                         (let () (declare (not safe)) (##cdr _e9609596127_))))
                    (let ((_body96135_ _hd9609696130_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9609796132_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196078_
                                 _hd96115_
                                 _fender96125_
                                 _body96135_))
                              (let () (declare (not safe)) (_E9608896103_)))
                          (let () (declare (not safe)) (_E9608896103_))))))
                (let () (declare (not safe)) (_E9608896103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9608896103_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9608896103_)))))
                             (_E9608096161_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9607996099_))
                                    (let ((_e9608296141_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9607996099_))))
                                      (let ((_hd9608396144_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9608296141_)))
                                            (_tl9608496146_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9608296141_))))
                                        (let ((_hd96149_ _hd9608396144_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9608496146_))
                                              (let ((_e9608596151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9608496146_))))
                                                (let ((_hd9608696154_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9608596151_)))
                                                      (_tl9608796156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9608596151_))))
                                                  (let ((_body96159_
                                                         _hd9608696154_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9608796156_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196078_
                                                               _hd96149_
                                                               '#t
                                                               _body96159_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9608196137_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9608196137_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9608196137_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9608196137_))))))
                        (let () (declare (not safe)) (_E9608096161_))))))
                 (_generate-match95658_
                  (lambda (_where95822_
                           _target95823_
                           _hd95824_
                           _mvars95825_
                           _K95826_
                           _E95827_)
                    (letrec ((_BUG95829_
                              (lambda (_q96071_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx95650_
                                         _hd95824_
                                         _q96071_))))
                             (_recur95830_
                              (lambda (_e95921_
                                       _vars95922_
                                       _target95923_
                                       _E95924_
                                       _k95925_)
                                (let* ((_e9592695933_ _e95921_)
                                       (_E9592895937_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9592695933_))))
                                       (_K9592996059_
                                        (lambda (_body95940_ _tag95941_)
                                          (let ((_$e95943_ _tag95941_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95943_))
                                                (_k95925_ _vars95922_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95943_))
                                                    (let ((__tmp97107
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95923_)))
                                                          (__tmp97103
                                                           (let ((__tmp97105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97106
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95653_ _body95940_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?95651_
                             __tmp97106
                             _target95923_)))
                         (__tmp97104 (_k95925_ _vars95922_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97105 __tmp97104 _E95924_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97107 __tmp97103 _E95924_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95943_))
                                                        (_k95925_
                                                         (let ((__tmp97102
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95940_ _target95923_))))
                   (declare (not safe))
                   (cons __tmp97102 _vars95922_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95943_))
                    (let ((_$e95946_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95947_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95948_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97101
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95923_)))
                            (__tmp97082
                             (let ((__tmp97096
                                    (let ((__tmp97097
                                           (let ((__tmp97100
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95946_ '())))
                                                 (__tmp97098
                                                  (let ((__tmp97099
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95652_
                                                            _target95923_))))
                                                    (declare (not safe))
                                                    (cons __tmp97099 '()))))
                                             (declare (not safe))
                                             (cons __tmp97100 __tmp97098))))
                                      (declare (not safe))
                                      (cons __tmp97097 '())))
                                   (__tmp97083
                                    (let ((__tmp97086
                                           (let ((__tmp97092
                                                  (let ((__tmp97095
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97093
                 (let ((__tmp97094
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95946_))))
                   (declare (not safe))
                   (cons __tmp97094 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97095
                                                          __tmp97093)))
                                                 (__tmp97087
                                                  (let ((__tmp97088
                                                         (let ((__tmp97091
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95948_ '())))
                       (__tmp97089
                        (let ((__tmp97090
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95946_))))
                          (declare (not safe))
                          (cons __tmp97090 '()))))
                   (declare (not safe))
                   (cons __tmp97091 __tmp97089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97088 '()))))
                                             (declare (not safe))
                                             (cons __tmp97092 __tmp97087)))
                                          (__tmp97084
                                           (let* ((_body9594995956_
                                                   _body95940_)
                                                  (_E9595195960_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9594995956_))))
                                                  (_K9595295968_
                                                   (lambda (_tl95963_
                                                            _hd95964_)
                                                     (let ((__tmp97085
                                                            (lambda (_vars95966_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95830_
                         _tl95963_
                         _vars95966_
                         _$tl95948_
                         _E95924_
                         _k95925_)))))
               (declare (not safe))
               (_recur95830_
                _hd95964_
                _vars95922_
                _$hd95947_
                _E95924_
                __tmp97085)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9594995956_))
                                                 (let ((_hd9595395971_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9594995956_)))
                                                       (_tl9595495973_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9594995956_))))
                                                   (let* ((_hd95976_
                                                           _hd9595395971_)
                                                          (_tl95978_
                                                           _tl9595495973_))
                                                     (declare (not safe))
                                                     (_K9595295968_
                                                      _tl95978_
                                                      _hd95976_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9595195960_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97086
                                       __tmp97084))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97096
                                __tmp97083))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97101 __tmp97082 _E95924_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95943_))
                        (let* ((_body9597995986_ _body95940_)
                               (_E9598195990_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9597995986_))))
                               (_K9598296041_
                                (lambda (_tl95993_ _hd95994_)
                                  (let* ((_rlen95996_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95831_ _tl95993_)))
                                         (_$target95998_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96000_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96002_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96004_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96006_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96008_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96010_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96012_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95832_ _hd95994_)))
                                         (_lvars96014_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96012_)))
                                         (_tlvars96016_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96012_)))
                                         (_linit96020_
                                          (map (lambda (_var96018_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96014_)))
                                    (letrec ((_make-loop96023_
                                              (lambda (_vars96027_)
                                                (let ((__tmp97033
                                                       (let ((__tmp97034
                                                              (let ((__tmp97070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96004_ '())))
                            (__tmp97035
                             (let ((__tmp97036
                                    (let ((__tmp97069
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96000_ _lvars96014_)))
                                          (__tmp97037
                                           (let ((__tmp97068
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96000_)))
                                                 (__tmp97046
                                                  (let ((__tmp97063
                                                         (let ((__tmp97064
                                                                (let ((__tmp97067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96006_ '())))
                              (__tmp97065
                               (let ((__tmp97066
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95652_
                                         _$hd96000_))))
                                 (declare (not safe))
                                 (cons __tmp97066 '()))))
                          (declare (not safe))
                          (cons __tmp97067 __tmp97065))))
                   (declare (not safe))
                   (cons __tmp97064 '())))
                (__tmp97047
                 (let ((__tmp97053
                        (let ((__tmp97059
                               (let ((__tmp97062
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96008_ '())))
                                     (__tmp97060
                                      (let ((__tmp97061
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96006_))))
                                        (declare (not safe))
                                        (cons __tmp97061 '()))))
                                 (declare (not safe))
                                 (cons __tmp97062 __tmp97060)))
                              (__tmp97054
                               (let ((__tmp97055
                                      (let ((__tmp97058
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96010_ '())))
                                            (__tmp97056
                                             (let ((__tmp97057
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96006_))))
                                               (declare (not safe))
                                               (cons __tmp97057 '()))))
                                        (declare (not safe))
                                        (cons __tmp97058 __tmp97056))))
                                 (declare (not safe))
                                 (cons __tmp97055 '()))))
                          (declare (not safe))
                          (cons __tmp97059 __tmp97054)))
                       (__tmp97048
                        (let ((__tmp97049
                               (lambda (_hdvars96029_)
                                 (let ((__tmp97050
                                        (let ((__tmp97051
                                               (map (lambda (_svar96031_
                                                             _lvar96032_)
                                                      (let ((__tmp97052
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96031_ _hdvars96029_ _BUG95829_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97052 _lvar96032_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96012_
                                                    _lvars96014_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96010_ __tmp97051))))
                                   (declare (not safe))
                                   (cons _$lp96004_ __tmp97050)))))
                          (declare (not safe))
                          (_recur95830_
                           _hd95994_
                           '()
                           _$lp-hd96008_
                           _E95924_
                           __tmp97049))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97053 __tmp97048))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97063
                                                     __tmp97047)))
                                                 (__tmp97038
                                                  (let ((__tmp97042
                                                         (map (lambda (_lvar96034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96035_)
                        (let ((__tmp97045
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96035_ '())))
                              (__tmp97043
                               (let ((__tmp97044
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96034_))))
                                 (declare (not safe))
                                 (cons __tmp97044 '()))))
                          (declare (not safe))
                          (cons __tmp97045 __tmp97043)))
                      _lvars96014_
                      _tlvars96016_))
                (__tmp97039
                 (_k95925_
                  (let ((__tmp97040
                         (lambda (_svar96037_ _tlvar96038_ _r96039_)
                           (let ((__tmp97041
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96037_ _tlvar96038_))))
                             (declare (not safe))
                             (cons __tmp97041 _r96039_)))))
                    (declare (not safe))
                    (foldl2 __tmp97040
                            _vars96027_
                            _svars96012_
                            _tlvars96016_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97042
                                                     __tmp97039))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97068
                                              __tmp97046
                                              __tmp97038))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97069
                                       __tmp97037))))
                               (declare (not safe))
                               (cons __tmp97036 '()))))
                        (declare (not safe))
                        (cons __tmp97070 __tmp97035))))
                 (declare (not safe))
                 (cons __tmp97034 '())))
              (__tmp97031
               (let ((__tmp97032
                      (let ()
                        (declare (not safe))
                        (cons _$target95998_ _linit96020_))))
                 (declare (not safe))
                 (cons _$lp96004_ __tmp97032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97033
                                                   __tmp97031)))))
                                      (let ((_body96025_
                                             (let ((__tmp97072
                                                    (let ((__tmp97073
                                                           (let ((__tmp97076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97077
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96002_ '()))))
                            (declare (not safe))
                            (cons _$target95998_ __tmp97077)))
                         (__tmp97074
                          (let ((__tmp97075
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95923_
                                    _rlen95996_))))
                            (declare (not safe))
                            (cons __tmp97075 '()))))
                     (declare (not safe))
                     (cons __tmp97076 __tmp97074))))
              (declare (not safe))
              (cons __tmp97073 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97071
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95830_
                                                       _tl95993_
                                                       _vars95922_
                                                       _$tl96002_
                                                       _E95924_
                                                       _make-loop96023_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97072
                                                __tmp97071))))
                                        (let ((__tmp97081
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95923_)))
                                              (__tmp97078
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95996_))
                                                   _body96025_
                                                   (let ((__tmp97079
                                                          (let ((__tmp97080
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95923_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97080 _rlen95996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97079
                                                      _body96025_
                                                      _E95924_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97081
                                           __tmp97078
                                           _E95924_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9597995986_))
                              (let ((_hd9598396044_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9597995986_)))
                                    (_tl9598496046_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9597995986_))))
                                (let* ((_hd96049_ _hd9598396044_)
                                       (_tl96051_ _tl9598496046_))
                                  (declare (not safe))
                                  (_K9598296041_ _tl96051_ _hd96049_)))
                              (let () (declare (not safe)) (_E9598195990_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95943_))
                            (let ((__tmp97030
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95923_)))
                                  (__tmp97029 (_k95925_ _vars95922_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97030
                               __tmp97029
                               _E95924_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95943_))
                                (let ((_$e96053_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97028
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95923_)))
                                        (__tmp97020
                                         (let ((__tmp97022
                                                (let ((__tmp97023
                                                       (let ((__tmp97027
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96053_ '())))
                     (__tmp97024
                      (let ((__tmp97025
                             (let ((__tmp97026
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95652_
                                       _target95923_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97026))))
                        (declare (not safe))
                        (cons __tmp97025 '()))))
                 (declare (not safe))
                 (cons __tmp97027 __tmp97024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97023 '())))
                                               (__tmp97021
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95830_
                                                   _body95940_
                                                   _vars95922_
                                                   _$e96053_
                                                   _E95924_
                                                   _k95925_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97022
                                            __tmp97021))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97028
                                     __tmp97020
                                     _E95924_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95943_))
                                    (let ((_$e96055_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97019
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95923_)))
                                            (__tmp97011
                                             (let ((__tmp97013
                                                    (let ((__tmp97014
                                                           (let ((__tmp97018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96055_ '())))
                         (__tmp97015
                          (let ((__tmp97016
                                 (let ((__tmp97017
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95652_
                                           _target95923_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97017))))
                            (declare (not safe))
                            (cons __tmp97016 '()))))
                     (declare (not safe))
                     (cons __tmp97018 __tmp97015))))
              (declare (not safe))
              (cons __tmp97014 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97012
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95830_
                                                       _body95940_
                                                       _vars95922_
                                                       _$e96055_
                                                       _E95924_
                                                       _k95925_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97013
                                                __tmp97012))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97019
                                         __tmp97011
                                         _E95924_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95943_))
                                        (let ((_$e96057_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97010
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95923_)))
                                                (__tmp97001
                                                 (let ((__tmp97005
                                                        (let ((__tmp97006
                                                               (let ((__tmp97009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96057_ '())))
                             (__tmp97007
                              (let ((__tmp97008
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95923_))))
                                (declare (not safe))
                                (cons __tmp97008 '()))))
                         (declare (not safe))
                         (cons __tmp97009 __tmp97007))))
                  (declare (not safe))
                  (cons __tmp97006 '())))
               (__tmp97002
                (let ((__tmp97004
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96057_ _body95940_)))
                      (__tmp97003 (_k95925_ _vars95922_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97004 __tmp97003 _E95924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97005
                                                    __tmp97002))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97010
                                             __tmp97001
                                             _E95924_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95829_ _e95921_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9592695933_))
                                      (let ((_hd9593096062_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9592695933_)))
                                            (_tl9593196064_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9592695933_))))
                                        (let* ((_tag96067_ _hd9593096062_)
                                               (_body96069_ _tl9593196064_))
                                          (declare (not safe))
                                          (_K9592996059_
                                           _body96069_
                                           _tag96067_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9592895937_))))))
                             (_splice-rlen95831_
                              (lambda (_e95883_)
                                (let _lp95885_ ((_e95887_ _e95883_)
                                                (_n95888_ '0))
                                  (let* ((_e9588995896_ _e95887_)
                                         (_E9589195900_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9588995896_))))
                                         (_K9589295909_
                                          (lambda (_body95903_ _tag95904_)
                                            (let ((_$e95906_ _tag95904_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95906_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx95650_
                                                     _where95822_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95906_))
                                                      (let ((__tmp97109
                                                             (cdr _body95903_))
                                                            (__tmp97108
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95888_ '1))))
                (declare (not safe))
                (_lp95885_ __tmp97109 __tmp97108))
              _n95888_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9588995896_))
                                        (let ((_hd9589395912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9588995896_)))
                                              (_tl9589495914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9588995896_))))
                                          (let* ((_tag95917_ _hd9589395912_)
                                                 (_body95919_ _tl9589495914_))
                                            (declare (not safe))
                                            (_K9589295909_
                                             _body95919_
                                             _tag95917_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9589195900_)))))))
                             (_splice-vars95832_
                              (lambda (_e95839_)
                                (let _recur95841_ ((_e95843_ _e95839_)
                                                   (_vars95844_ '()))
                                  (let* ((_e9584595852_ _e95843_)
                                         (_E9584795856_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9584595852_))))
                                         (_K9584895871_
                                          (lambda (_body95859_ _tag95860_)
                                            (let ((_$e95862_ _tag95860_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95862_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95859_
                                                          _vars95844_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95862_))
                  (let () (declare (not safe)) (eq? 'splice _$e95862_)))
              (let ((__tmp97112 (cdr _body95859_))
                    (__tmp97110
                     (let ((__tmp97111 (car _body95859_)))
                       (declare (not safe))
                       (_recur95841_ __tmp97111 _vars95844_))))
                (declare (not safe))
                (_recur95841_ __tmp97112 __tmp97110))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95862_))
                      (let () (declare (not safe)) (eq? 'box _$e95862_)))
                  (let ()
                    (declare (not safe))
                    (_recur95841_ _body95859_ _vars95844_))
                  _vars95844_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9584595852_))
                                        (let ((_hd9584995874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9584595852_)))
                                              (_tl9585095876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9584595852_))))
                                          (let* ((_tag95879_ _hd9584995874_)
                                                 (_body95881_ _tl9585095876_))
                                            (declare (not safe))
                                            (_K9584895871_
                                             _body95881_
                                             _tag95879_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9584795856_)))))))
                             (_make-body95833_
                              (lambda (_vars95835_)
                                (let ((__tmp97113
                                       (map (lambda (_mvar95837_)
                                              (let ((__tmp97114
                                                     (car _mvar95837_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97114
                                                 _vars95835_
                                                 _BUG95829_)))
                                            _mvars95825_)))
                                  (declare (not safe))
                                  (cons _K95826_ __tmp97113)))))
                      (let ()
                        (declare (not safe))
                        (_recur95830_
                         _hd95824_
                         '()
                         _target95823_
                         _E95827_
                         _make-body95833_)))))
                 (_parse-clause95659_
                  (lambda (_hd95728_ _ids95729_)
                    (let _recur95731_ ((_e95733_ _hd95728_)
                                       (_vars95734_ '())
                                       (_depth95735_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95733_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95733_))
                              (values '(any) _vars95734_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95733_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx95650_
                                     _hd95728_))
                                  (if (let ((__tmp97130
                                             (lambda (_id95737_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95733_
                                                  _id95737_)))))
                                        (declare (not safe))
                                        (find __tmp97130 _ids95729_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95733_))
                                              _vars95734_)
                                      (if (let ((__tmp97128
                                                 (lambda (_var95739_)
                                                   (let ((__tmp97129
                                                          (car _var95739_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95733_
                                                      __tmp97129)))))
                                            (declare (not safe))
                                            (find __tmp97128 _vars95734_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx95650_
                                             _e95733_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95733_))
                                                  (let ((__tmp97127
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97127
                                                          _vars95734_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95733_))
                              (let* ((_e9574095747_ _e95733_)
                                     (_E9574295751_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9574095747_))))
                                     (_E9574195812_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9574095747_))
                                            (let ((_e9574395755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9574095747_))))
                                              (let ((_hd9574495758_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9574395755_)))
                                                    (_tl9574595760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9574395755_))))
                                                (let* ((_hd95763_
                                                        _hd9574495758_)
                                                       (_rest95765_
                                                        _tl9574595760_))
                                                  (if '#t
                                                      (let* ((_make-pair95780_
                                                              (lambda (_tag95767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95768_
                               _tl95769_)
                        (let* ((_hd-depth95771_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95767_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95735_ '1))
                                    _depth95735_))
                               (_g97122_
                                (let ()
                                  (declare (not safe))
                                  (_recur95731_
                                   _hd95768_
                                   _vars95734_
                                   _hd-depth95771_))))
                          (begin
                            (let ((_g97123_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97122_)
                                         (##vector-length _g97122_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97123_ 2)))
                                  (error "Context expects 2 values" _g97123_)))
                            (let ((_hd95773_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97122_ 0)))
                                  (_vars95774_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97122_ 1))))
                              (let ((_g97124_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95731_
                                        _tl95769_
                                        _vars95774_
                                        _depth95735_))))
                                (begin
                                  (let ((_g97125_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97124_)
                                               (##vector-length _g97124_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97125_ 2)))
                                        (error "Context expects 2 values"
                                               _g97125_)))
                                  (let ((_tl95776_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97124_ 0)))
                                        (_vars95777_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97124_ 1))))
                                    (let ()
                                      (values (let ((__tmp97126
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95773_
                                                             _tl95776_))))
                                                (declare (not safe))
                                                (cons _tag95767_ __tmp97126))
                                              _vars95777_))))))))))
                     (_e9578195788_ _rest95765_)
                     (_E9578395792_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95780_ 'cons _hd95763_ _rest95765_))))
                     (_E9578295808_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9578195788_))
                            (let ((_e9578495796_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9578195788_))))
                              (let ((_hd9578595799_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9578495796_)))
                                    (_tl9578695801_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9578495796_))))
                                (let* ((_rest-hd95804_ _hd9578595799_)
                                       (_rest-tl95806_ _tl9578695801_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95804_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95780_
                                             'splice
                                             _hd95763_
                                             _rest-tl95806_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95780_
                                             'cons
                                             _hd95763_
                                             _rest95765_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9578395792_))))))
                            (let () (declare (not safe)) (_E9578395792_))))))
                (let () (declare (not safe)) (_E9578295808_)))
              (let () (declare (not safe)) (_E9574295751_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9574295751_))))))
                                (let () (declare (not safe)) (_E9574195812_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95733_))
                                  (values '(null) _vars95734_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95733_))
                                      (let ((_g97119_
                                             (let ((__tmp97121
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95733_)))))
                                               (declare (not safe))
                                               (_recur95731_
                                                __tmp97121
                                                _vars95734_
                                                _depth95735_))))
                                        (begin
                                          (let ((_g97120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97119_)
                                                       (##vector-length
                                                        _g97119_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97120_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97120_)))
                                          (let ((_e95816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97119_ 0)))
                                                (_vars95817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97119_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95816_))
                                                    _vars95817_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95733_))
                                          (let ((_g97116_
                                                 (let ((__tmp97118
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95731_
                                                    __tmp97118
                                                    _vars95734_
                                                    _depth95735_))))
                                            (begin
                                              (let ((_g97117_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97116_)
                                                           (##vector-length
                                                            _g97116_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97117_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97117_)))
                                              (let ((_e95819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97116_
                                                        0)))
                                                    (_vars95820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97116_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95819_))
                                                        _vars95820_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95733_))
                                              (values (let ((__tmp97115
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95733_))))
                (declare (not safe))
                (cons 'datum __tmp97115))
              _vars95734_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx95650_
                                                 _e95733_))))))))))))
          (let* ((_e9566095673_ _stx95650_)
                 (_E9566295677_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9566095673_))))
                 (_E9566195724_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9566095673_))
                        (let ((_e9566395681_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9566095673_))))
                          (let ((_hd9566495684_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9566395681_)))
                                (_tl9566595686_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9566395681_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9566595686_))
                                (let ((_e9566695689_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9566595686_))))
                                  (let ((_hd9566795692_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9566695689_)))
                                        (_tl9566895694_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9566695689_))))
                                    (let ((_expr95697_ _hd9566795692_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9566895694_))
                                          (let ((_e9566995699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9566895694_))))
                                            (let ((_hd9567095702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9566995699_)))
                                                  (_tl9567195704_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9566995699_))))
                                              (let* ((_ids95707_
                                                      _hd9567095702_)
                                                     (_clauses95709_
                                                      _tl9567195704_))
                                                (if '#t
                                                    (if (let ((__tmp97148
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95707_))))
                  (declare (not safe))
                  (not __tmp97148))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx95650_
                   _ids95707_))
                (if (let ((__tmp97147
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95709_))))
                      (declare (not safe))
                      (not __tmp97147))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx95650_))
                    (let* ((_ids95711_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95707_)))
                           (_clauses95713_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95709_)))
                           (_clause-ids95715_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95713_)))
                           (_E95717_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95719_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95721_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95713_))
                                _E95717_
                                (car _clause-ids95715_))))
                      (let ((__tmp97132
                             (let ((__tmp97133
                                    (let ((__tmp97135
                                           (let ((__tmp97140
                                                  (let ((__tmp97141
                                                         (let ((__tmp97146
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95717_ '())))
                       (__tmp97142
                        (let ((__tmp97143
                               (let ((__tmp97145
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95719_ '())))
                                     (__tmp97144
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95719_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97145
                                  __tmp97144))))
                          (declare (not safe))
                          (cons __tmp97143 '()))))
                   (declare (not safe))
                   (cons __tmp97146 __tmp97142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97141 '())))
                                                 (__tmp97136
                                                  (let ((__tmp97139
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95655_
                                                            _target95719_
                                                            _ids95711_
                                                            _clauses95713_
                                                            _clause-ids95715_
                                                            _E95717_)))
                                                        (__tmp97137
                                                         (let ((__tmp97138
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95697_ '()))))
                   (declare (not safe))
                   (cons _first95721_ __tmp97138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95656_
                                                     __tmp97139
                                                     __tmp97137))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97140
                                              __tmp97136)))
                                          (__tmp97134
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx95650_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97135
                                       __tmp97134))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97133)))
                            (__tmp97131
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx95650_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97132 __tmp97131)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9566295677_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9566295677_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9566295677_)))))
                        (let () (declare (not safe)) (_E9566295677_))))))
            (let () (declare (not safe)) (_E9566195724_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96360_)
        (let* ((_identifier=?96362_ 'free-identifier=?)
               (_unwrap-e96364_ 'syntax-e)
               (_wrap-e96366_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96360_
           _identifier=?96362_
           _unwrap-e96364_
           _wrap-e96366_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96368_ _identifier=?96369_)
        (let* ((_unwrap-e96371_ 'syntax-e) (_wrap-e96373_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96368_
           _identifier=?96369_
           _unwrap-e96371_
           _wrap-e96373_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96375_ _identifier=?96376_ _unwrap-e96377_)
        (let ((_wrap-e96379_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96375_
           _identifier=?96376_
           _unwrap-e96377_
           _wrap-e96379_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97150_
        (let ((_g97149_ (let () (declare (not safe)) (##length _g97150_))))
          (cond ((let () (declare (not safe)) (##fx= _g97149_ 1))
                 (apply (lambda (_stx96360_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96360_)))
                        _g97150_))
                ((let () (declare (not safe)) (##fx= _g97149_ 2))
                 (apply (lambda (_stx96368_ _identifier=?96369_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96368_
                             _identifier=?96369_)))
                        _g97150_))
                ((let () (declare (not safe)) (##fx= _g97149_ 3))
                 (apply (lambda (_stx96375_
                                 _identifier=?96376_
                                 _unwrap-e96377_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96375_
                             _identifier=?96376_
                             _unwrap-e96377_)))
                        _g97150_))
                ((let () (declare (not safe)) (##fx= _g97149_ 4))
                 (apply (lambda (_stx96381_
                                 _identifier=?96382_
                                 _unwrap-e96383_
                                 _wrap-e96384_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96381_
                             _identifier=?96382_
                             _unwrap-e96383_
                             _wrap-e96384_)))
                        _g97150_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97150_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx95647_)
        (if (let () (declare (not safe)) (gx#identifier? _stx95647_))
            (let ((__tmp97151
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx95647_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97151 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd95605_ . _rest95606_)
        (let ((_len95608_ (length _hd95605_)))
          (let _lp95610_ ((_rest95612_ _rest95606_))
            (let* ((_rest9561395621_ _rest95612_)
                   (_else9561595629_ (lambda () '#!void))
                   (_K9561795635_
                    (lambda (_rest95632_ _hd95633_)
                      (if (fx= _len95608_ (length _hd95633_))
                          (let () (declare (not safe)) (_lp95610_ _rest95632_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd95633_))))))
              (if (let () (declare (not safe)) (##pair? _rest9561395621_))
                  (let ((_hd9561895638_
                         (let ()
                           (declare (not safe))
                           (##car _rest9561395621_)))
                        (_tl9561995640_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9561395621_))))
                    (let* ((_hd95643_ _hd9561895638_)
                           (_rest95645_ _tl9561995640_))
                      (declare (not safe))
                      (_K9561795635_ _rest95645_ _hd95643_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95563_ _n95564_)
        (let _lp95566_ ((_rest95568_ _stx95563_) (_r95569_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95568_))
              (let* ((_g9557095577_
                      (let () (declare (not safe)) (gx#syntax-e _rest95568_)))
                     (_E9557295581_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9557095577_))))
                     (_K9557395587_
                      (lambda (_rest95584_ _hd95585_)
                        (let ((__tmp97156
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95585_ _r95569_))))
                          (declare (not safe))
                          (_lp95566_ _rest95584_ __tmp97156)))))
                (if (let () (declare (not safe)) (##pair? _g9557095577_))
                    (let ((_hd9557495590_
                           (let () (declare (not safe)) (##car _g9557095577_)))
                          (_tl9557595592_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9557095577_))))
                      (let* ((_hd95595_ _hd9557495590_)
                             (_rest95597_ _tl9557595592_))
                        (declare (not safe))
                        (_K9557395587_ _rest95597_ _hd95595_)))
                    (let () (declare (not safe)) (_E9557295581_))))
              (let _lp95599_ ((_n95601_ _n95564_)
                              (_l95602_ _r95569_)
                              (_r95603_ _rest95568_))
                (if (let () (declare (not safe)) (null? _l95602_))
                    (values _l95602_ _r95603_)
                    (if (fxpositive? _n95601_)
                        (let ((__tmp97155
                               (let () (declare (not safe)) (fx- _n95601_ '1)))
                              (__tmp97154 (cdr _l95602_))
                              (__tmp97152
                               (let ((__tmp97153 (car _l95602_)))
                                 (declare (not safe))
                                 (cons __tmp97153 _r95603_))))
                          (declare (not safe))
                          (_lp95599_ __tmp97155 __tmp97154 __tmp97152))
                        (values (reverse _l95602_) _r95603_))))))))))
