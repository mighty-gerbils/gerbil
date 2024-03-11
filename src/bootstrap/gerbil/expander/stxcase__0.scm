(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710140930)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96856 (list gx#expander::t))
            (__tmp96854
             (let ((__tmp96855
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96855 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96856
         '(id depth)
         __tmp96854
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96851_
        (apply make-instance gx#syntax-pattern::t _$args96851_)))
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
      (lambda (_self96848_ _stx96849_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96849_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96330_)
        (letrec ((_generate96332_
                  (lambda (_e96559_)
                    (letrec ((_BUG96561_
                              (lambda (_q96723_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96330_
                                         _e96559_
                                         _q96723_))))
                             (_local-pattern-e96562_
                              (lambda (_pat96721_)
                                (let ((__tmp96857
                                       (##structure-ref
                                        _pat96721_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96857))))
                             (_getvar96563_
                              (lambda (_q96718_ _vars96719_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96718_
                                   _vars96719_
                                   _BUG96561_))))
                             (_getarg96564_
                              (lambda (_arg96684_ _vars96685_)
                                (let* ((_arg9668696693_ _arg96684_)
                                       (_E9668896697_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9668696693_))))
                                       (_K9668996706_
                                        (lambda (_e96700_ _tag96701_)
                                          (let ((_$e96703_ _tag96701_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96703_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar96563_
                                                   _e96700_
                                                   _vars96685_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96703_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e96562_
                                                       _e96700_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG96561_
                                                       _arg96684_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9668696693_))
                                      (let ((_hd9669096709_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9668696693_)))
                                            (_tl9669196711_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9668696693_))))
                                        (let* ((_tag96714_ _hd9669096709_)
                                               (_e96716_ _tl9669196711_))
                                          (declare (not safe))
                                          (_K9668996706_ _e96716_ _tag96714_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9668896697_)))))))
                      (let _recur96566_ ((_e96568_ _e96559_) (_vars96569_ '()))
                        (let* ((_e9657096577_ _e96568_)
                               (_E9657296581_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9657096577_))))
                               (_K9657396672_
                                (lambda (_body96584_ _tag96585_)
                                  (let ((_$e96587_ _tag96585_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96587_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body96584_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e96587_))
                                            (let ((_id96590_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body96584_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id96590_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks96592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id96590_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks96592_))
                                                        (let ((__tmp96885
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body96584_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96885))
                (let ((__tmp96884
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body96584_)))
                      (__tmp96883
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body96584_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96884
                   __tmp96883
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id96590_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body96584_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG96561_
                                                         _e96568_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e96587_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e96562_
                                                   _body96584_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e96587_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar96563_
                                                       _body96584_
                                                       _vars96569_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e96587_))
                                                        (let ((__tmp96881
                                                               (let ((__tmp96882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body96584_)))
                         (declare (not safe))
                         (_recur96566_ __tmp96882 _vars96569_)))
                      (__tmp96879
                       (let ((__tmp96880 (cdr _body96584_)))
                         (declare (not safe))
                         (_recur96566_ __tmp96880 _vars96569_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96881 __tmp96879))
                (if (let () (declare (not safe)) (eq? 'vector _$e96587_))
                    (let ((__tmp96878
                           (let ()
                             (declare (not safe))
                             (_recur96566_ _body96584_ _vars96569_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96878))
                    (if (let () (declare (not safe)) (eq? 'box _$e96587_))
                        (let ((__tmp96877
                               (let ()
                                 (declare (not safe))
                                 (_recur96566_ _body96584_ _vars96569_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96877))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e96587_))
                            (let* ((_body9659396604_ _body96584_)
                                   (_E9659596608_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9659396604_))))
                                   (_K9659696646_
                                    (lambda (_args96611_
                                             _iv96612_
                                             _hd96613_
                                             _depth96614_)
                                      (let* ((_targets96620_
                                              (map (lambda (_g9661596617_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg96564_
                                                        _g9661596617_
                                                        _vars96569_)))
                                                   _args96611_))
                                             (_fold-in96622_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96611_)))
                                             (_fold-out96624_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96626_
                                              (let ((__tmp96858
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96624_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96858
                                                        _fold-in96622_)))
                                             (_lambda-body96643_
                                              (if (fx> _depth96614_ '1)
                                                  (let ((_r-args96634_
                                                         (map (lambda (_arg96628_)
                                                                (let ((__tmp96863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96628_)))
                          (declare (not safe))
                          (cons 'ref __tmp96863)))
                      _args96611_))
                (_r-vars96635_
                 (let ((__tmp96864
                        (lambda (_arg96630_ _var96631_ _r96632_)
                          (let ((__tmp96865
                                 (let ((__tmp96866 (cdr _arg96630_)))
                                   (declare (not safe))
                                   (cons __tmp96866 _var96631_))))
                            (declare (not safe))
                            (cons __tmp96865 _r96632_)))))
                   (declare (not safe))
                   (foldr2 __tmp96864
                           _vars96569_
                           _args96611_
                           _fold-in96622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96867
                                                           (let ((__tmp96868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96872
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96614_ '1)))
                                (__tmp96869
                                 (let ((__tmp96870
                                        (let ((__tmp96871
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96624_))))
                                          (declare (not safe))
                                          (cons __tmp96871 _r-args96634_))))
                                   (declare (not safe))
                                   (cons _hd96613_ __tmp96870))))
                            (declare (not safe))
                            (cons __tmp96872 __tmp96869))))
                     (declare (not safe))
                     (cons 'splice __tmp96868))))
              (declare (not safe))
              (_recur96566_ __tmp96867 _r-vars96635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96641_
                                                          (let ((__tmp96859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96637_ _var96638_ _r96639_)
                           (let ((__tmp96860
                                  (let ((__tmp96861 (cdr _arg96637_)))
                                    (declare (not safe))
                                    (cons __tmp96861 _var96638_))))
                             (declare (not safe))
                             (cons __tmp96860 _r96639_)))))
                    (declare (not safe))
                    (foldr2 __tmp96859
                            _vars96569_
                            _args96611_
                            _fold-in96622_)))
                 (__tmp96862
                  (let ()
                    (declare (not safe))
                    (_recur96566_ _hd96613_ _hd-vars96641_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96862
                                                     _fold-out96624_)))))
                                        (let ((__tmp96876
                                               (if (fx> (length _targets96620_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96620_))
                                                   '#!void))
                                              (__tmp96873
                                               (let ((__tmp96875
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96626_
                                                         _lambda-body96643_)))
                                                     (__tmp96874
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur96566_
                                                         _iv96612_
                                                         _vars96569_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96875
                                                  __tmp96874
                                                  _targets96620_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96876
                                           __tmp96873))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9659396604_))
                                  (let ((_hd9659796649_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9659396604_)))
                                        (_tl9659896651_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9659396604_))))
                                    (let ((_depth96654_ _hd9659796649_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9659896651_))
                                          (let ((_hd9659996656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9659896651_)))
                                                (_tl9660096658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9659896651_))))
                                            (let ((_hd96661_ _hd9659996656_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9660096658_))
                                                  (let ((_hd9660196663_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9660096658_)))
                                                        (_tl9660296665_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9660096658_))))
                                                    (let* ((_iv96668_
                                                            _hd9660196663_)
                                                           (_args96670_
                                                            _tl9660296665_))
                                                      (declare (not safe))
                                                      (_K9659696646_
                                                       _args96670_
                                                       _iv96668_
                                                       _hd96661_
                                                       _depth96654_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9659596608_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9659596608_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9659596608_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e96587_))
                                _body96584_
                                (let ()
                                  (declare (not safe))
                                  (_BUG96561_ _e96568_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9657096577_))
                              (let ((_hd9657496675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9657096577_)))
                                    (_tl9657596677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9657096577_))))
                                (let* ((_tag96680_ _hd9657496675_)
                                       (_body96682_ _tl9657596677_))
                                  (declare (not safe))
                                  (_K9657396672_ _body96682_ _tag96680_)))
                              (let ()
                                (declare (not safe))
                                (_E9657296581_))))))))
                 (_parse96333_
                  (lambda (_e96374_)
                    (letrec ((_make-cons96376_
                              (lambda (_hd96551_ _tl96552_)
                                (let ((_g96886_ _hd96551_)
                                      (_g96888_ _tl96552_))
                                  (begin
                                    (let ((_g96887_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96886_)
                                                 (##vector-length _g96886_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96887_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96887_)))
                                    (let ((_g96889_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96888_)
                                                 (##vector-length _g96888_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96889_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96889_)))
                                    (let ((_hd-e96554_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96886_ 0)))
                                          (_hd-vars96555_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96886_ 1))))
                                      (let ((_tl-e96556_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96888_ 0)))
                                            (_tl-vars96557_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96888_ 1))))
                                        (values (let ((__tmp96890
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e96554_
                                                               _tl-e96556_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96890))
                                                (append _hd-vars96555_
                                                        _tl-vars96557_))))))))
                             (_make-splice96377_
                              (lambda (_where96490_
                                       _depth96491_
                                       _hd96492_
                                       _tl96493_)
                                (let ((_g96891_ _hd96492_)
                                      (_g96893_ _tl96493_))
                                  (begin
                                    (let ((_g96892_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96891_)
                                                 (##vector-length _g96891_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96892_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96892_)))
                                    (let ((_g96894_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96893_)
                                                 (##vector-length _g96893_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96894_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96894_)))
                                    (let ((_hd-e96495_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96891_ 0)))
                                          (_hd-vars96496_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96891_ 1))))
                                      (let ((_tl-e96497_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96893_ 0)))
                                            (_tl-vars96498_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96893_ 1))))
                                        (let _lp96500_ ((_rest96502_
                                                         _hd-vars96496_)
                                                        (_targets96503_ '())
                                                        (_vars96504_
                                                         _tl-vars96498_))
                                          (let* ((_rest9650596515_ _rest96502_)
                                                 (_else9650796523_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96503_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96330_
                                                           _where96490_))
                                                        (values (let ((__tmp96895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96896
                                      (let ((__tmp96897
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96497_
                                                     _targets96503_))))
                                        (declare (not safe))
                                        (cons _hd-e96495_ __tmp96897))))
                                 (declare (not safe))
                                 (cons _depth96491_ __tmp96896))))
                          (declare (not safe))
                          (cons 'splice __tmp96895))
                        _vars96504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9650996532_
                                                  (lambda (_rest96526_
                                                           _hd-pat96527_
                                                           _hd-depth*96528_)
                                                    (let ((_hd-depth96530_
                                                           (fx- _hd-depth*96528_
                                                                _depth96491_)))
                                                      (if (fxpositive?
                                                           _hd-depth96530_)
                                                          (let ((__tmp96902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96903
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96527_))))
                           (declare (not safe))
                           (cons __tmp96903 _targets96503_)))
                        (__tmp96900
                         (let ((__tmp96901
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth96530_ _hd-pat96527_))))
                           (declare (not safe))
                           (cons __tmp96901 _vars96504_))))
                    (declare (not safe))
                    (_lp96500_ _rest96526_ __tmp96902 __tmp96900))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth96530_))
                      (let ((__tmp96898
                             (let ((__tmp96899
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96527_))))
                               (declare (not safe))
                               (cons __tmp96899 _targets96503_))))
                        (declare (not safe))
                        (_lp96500_ _rest96526_ __tmp96898 _vars96504_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96330_
                         _where96490_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9650596515_))
                                                (let ((_hd9651096535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9650596515_)))
                                                      (_tl9651196537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9650596515_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9651096535_))
                                                      (let ((_hd9651296540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9651096535_)))
                    (_tl9651396542_
                     (let () (declare (not safe)) (##cdr _hd9651096535_))))
                (let* ((_hd-depth*96545_ _hd9651296540_)
                       (_hd-pat96547_ _tl9651396542_)
                       (_rest96549_ _tl9651196537_))
                  (declare (not safe))
                  (_K9650996532_ _rest96549_ _hd-pat96547_ _hd-depth*96545_)))
              (let () (declare (not safe)) (_else9650796523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9650796523_)))))))))))
                             (_recur96378_
                              (lambda (_e96383_ _is-e?96384_)
                                (if (_is-e?96384_ _e96383_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96330_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96383_))
                                        (let* ((_pat96386_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96383_)))
                                               (_depth96388_
                                                (##structure-ref
                                                 _pat96386_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96388_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96386_))
                                                      (let ((__tmp96919
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96388_ _pat96386_))))
                (declare (not safe))
                (cons __tmp96919 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96386_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96383_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96383_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96383_))
                                                (let* ((_e9639096397_ _e96383_)
                                                       (_E9639296401_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9639096397_))))
                                                       (_E9639196480_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9639096397_))
                      (let ((_e9639396405_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9639096397_))))
                        (let ((_hd9639496408_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9639396405_)))
                              (_tl9639596410_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9639396405_))))
                          (let* ((_hd96413_ _hd9639496408_)
                                 (_rest96415_ _tl9639596410_))
                            (if '#t
                                (if (_is-e?96384_ _hd96413_)
                                    (let* ((_e9641696423_ _rest96415_)
                                           (_E9641896427_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96330_
                                                 _e96383_))))
                                           (_E9641796441_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9641696423_))
                                                  (let ((_e9641996431_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9641696423_))))
                                                    (let ((_hd9642096434_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9641996431_)))
                                                          (_tl9642196436_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9641996431_))))
                                                      (let ((_rest96439_
                                                             _hd9642096434_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9642196436_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96378_ _rest96439_ false))
                        (let () (declare (not safe)) (_E9641896427_)))
                    (let () (declare (not safe)) (_E9641896427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9641896427_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9641796441_)))
                                    (let _lp96445_ ((_rest96447_ _rest96415_)
                                                    (_depth96448_ '0))
                                      (let* ((_e9644996456_ _rest96447_)
                                             (_E9645196460_
                                              (lambda ()
                                                (if (fxpositive? _depth96448_)
                                                    (let ((__tmp96913
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96378_
                                                              _hd96413_
                                                              _is-e?96384_)))
                                                          (__tmp96912
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96378_
                                                              _rest96447_
                                                              _is-e?96384_))))
                                                      (declare (not safe))
                                                      (_make-splice96377_
                                                       _e96383_
                                                       _depth96448_
                                                       __tmp96913
                                                       __tmp96912))
                                                    (let ((__tmp96911
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96378_
                                                              _hd96413_
                                                              _is-e?96384_)))
                                                          (__tmp96910
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96378_
                                                              _rest96447_
                                                              _is-e?96384_))))
                                                      (declare (not safe))
                                                      (_make-cons96376_
                                                       __tmp96911
                                                       __tmp96910)))))
                                             (_E9645096476_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9644996456_))
                                                    (let ((_e9645296464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9644996456_))))
                                                      (let ((_hd9645396467_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9645296464_)))
                    (_tl9645496469_
                     (let () (declare (not safe)) (##cdr _e9645296464_))))
                (let* ((_rest-hd96472_ _hd9645396467_)
                       (_rest-tl96474_ _tl9645496469_))
                  (if '#t
                      (if (_is-e?96384_ _rest-hd96472_)
                          (let ((__tmp96918
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96448_ '1))))
                            (declare (not safe))
                            (_lp96445_ _rest-tl96474_ __tmp96918))
                          (if (fxpositive? _depth96448_)
                              (let ((__tmp96917
                                     (let ()
                                       (declare (not safe))
                                       (_recur96378_ _hd96413_ _is-e?96384_)))
                                    (__tmp96916
                                     (let ()
                                       (declare (not safe))
                                       (_recur96378_
                                        _rest96447_
                                        _is-e?96384_))))
                                (declare (not safe))
                                (_make-splice96377_
                                 _e96383_
                                 _depth96448_
                                 __tmp96917
                                 __tmp96916))
                              (let ((__tmp96915
                                     (let ()
                                       (declare (not safe))
                                       (_recur96378_ _hd96413_ _is-e?96384_)))
                                    (__tmp96914
                                     (let ()
                                       (declare (not safe))
                                       (_recur96378_
                                        _rest96447_
                                        _is-e?96384_))))
                                (declare (not safe))
                                (_make-cons96376_ __tmp96915 __tmp96914))))
                      (let () (declare (not safe)) (_E9645196460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9645196460_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9645096476_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9639296401_))))))
                      (let () (declare (not safe)) (_E9639296401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9639196480_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96383_))
                                                    (let ((_g96907_
                                                           (let ((__tmp96909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96383_)))))
                     (declare (not safe))
                     (_recur96378_ __tmp96909 _is-e?96384_))))
              (begin
                (let ((_g96908_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96907_)
                             (##vector-length _g96907_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96908_ 2)))
                      (error "Context expects 2 values" _g96908_)))
                (let ((_e96484_
                       (let () (declare (not safe)) (##vector-ref _g96907_ 0)))
                      (_vars96485_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96907_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96484_))
                          _vars96485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96383_))
                                                        (let ((_g96904_
                                                               (let ((__tmp96906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96383_)))))
                         (declare (not safe))
                         (_recur96378_ __tmp96906 _is-e?96384_))))
                  (begin
                    (let ((_g96905_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96904_)
                                 (##vector-length _g96904_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96905_ 2)))
                          (error "Context expects 2 values" _g96905_)))
                    (let ((_e96487_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96904_ 0)))
                          (_vars96488_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96904_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96487_))
                              _vars96488_))))
                (values (let () (declare (not safe)) (cons 'datum _e96383_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96920_
                             (let ()
                               (declare (not safe))
                               (_recur96378_ _e96374_ gx#ellipsis?))))
                        (begin
                          (let ((_g96921_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96920_)
                                       (##vector-length _g96920_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96921_ 2)))
                                (error "Context expects 2 values" _g96921_)))
                          (let ((_tree96380_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96920_ 0)))
                                (_vars96381_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96920_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96381_))
                                _tree96380_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96330_
                                   _vars96381_))))))))))
          (let* ((_e9633496344_ _stx96330_)
                 (_E9633696348_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96330_))))
                 (_E9633596370_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9633496344_))
                        (let ((_e9633796352_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9633496344_))))
                          (let ((_hd9633896355_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9633796352_)))
                                (_tl9633996357_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9633796352_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9633996357_))
                                (let ((_e9634096360_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9633996357_))))
                                  (let ((_hd9634196363_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9634096360_)))
                                        (_tl9634296365_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9634096360_))))
                                    (let ((_form96368_ _hd9634196363_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9634296365_))
                                          (if '#t
                                              (let ((__tmp96923
                                                     (let ((__tmp96924
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96333_
                                                               _form96368_))))
                                                       (declare (not safe))
                                                       (_generate96332_
                                                        __tmp96924)))
                                                    (__tmp96922
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96330_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96923
                                                 __tmp96922))
                                              (let ()
                                                (declare (not safe))
                                                (_E9633696348_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9633696348_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9633696348_)))))
                        (let () (declare (not safe)) (_E9633696348_))))))
            (let () (declare (not safe)) (_E9633596370_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx95594_ _identifier=?95595_ _unwrap-e95596_ _wrap-e95597_)
        (letrec ((_generate-bindings95599_
                  (lambda (_target96194_
                           _ids96195_
                           _clauses96196_
                           _clause-ids96197_
                           _E96198_)
                    (letrec ((_generate196200_
                              (lambda (_clause96297_ _clause-id96298_ _E96299_)
                                (let ((__tmp96929
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96298_ '())))
                                      (__tmp96925
                                       (let ((__tmp96926
                                              (let ((__tmp96928
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96194_
                                                             '())))
                                                    (__tmp96927
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95601_
                                                        _target96194_
                                                        _ids96195_
                                                        _clause96297_
                                                        _E96299_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96928
                                                 __tmp96927))))
                                         (declare (not safe))
                                         (cons __tmp96926 '()))))
                                  (declare (not safe))
                                  (cons __tmp96929 __tmp96925)))))
                      (let _lp96202_ ((_rest96204_ _clauses96196_)
                                      (_rest-ids96205_ _clause-ids96197_)
                                      (_bindings96206_ '()))
                        (let* ((_rest9620796215_ _rest96204_)
                               (_else9620996223_ (lambda () _bindings96206_))
                               (_K9621196285_
                                (lambda (_rest96226_ _clause96227_)
                                  (let* ((_rest-ids9622896235_ _rest-ids96205_)
                                         (_E9623096239_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9622896235_))))
                                         (_K9623196273_
                                          (lambda (_rest-ids96242_
                                                   _clause-id96243_)
                                            (let* ((_rest-ids9624496252_
                                                    _rest-ids96242_)
                                                   (_else9624696260_
                                                    (lambda ()
                                                      (let ((__tmp96930
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196200_
                        _clause96227_
                        _clause-id96243_
                        _E96198_))))
                (declare (not safe))
                (cons __tmp96930 _bindings96206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9624896265_
                                                    (lambda (_next-clause-id96263_)
                                                      (let ((__tmp96931
                                                             (let ((__tmp96932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196200_
                               _clause96227_
                               _clause-id96243_
                               _next-clause-id96263_))))
                       (declare (not safe))
                       (cons __tmp96932 _bindings96206_))))
                (declare (not safe))
                (_lp96202_ _rest96226_ _rest-ids96242_ __tmp96931)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9624496252_))
                                                  (let* ((_hd9624996268_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9624496252_)))
                                                         (_next-clause-id96271_
                                                          _hd9624996268_))
                                                    (declare (not safe))
                                                    (_K9624896265_
                                                     _next-clause-id96271_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9624696260_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9622896235_))
                                        (let ((_hd9623296276_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9622896235_)))
                                              (_tl9623396278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9622896235_))))
                                          (let* ((_clause-id96281_
                                                  _hd9623296276_)
                                                 (_rest-ids96283_
                                                  _tl9623396278_))
                                            (declare (not safe))
                                            (_K9623196273_
                                             _rest-ids96283_
                                             _clause-id96281_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9623096239_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9620796215_))
                              (let ((_hd9621296288_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9620796215_)))
                                    (_tl9621396290_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9620796215_))))
                                (let* ((_clause96293_ _hd9621296288_)
                                       (_rest96295_ _tl9621396290_))
                                  (declare (not safe))
                                  (_K9621196285_ _rest96295_ _clause96293_)))
                              (let ()
                                (declare (not safe))
                                (_else9620996223_))))))))
                 (_generate-body95600_
                  (lambda (_bindings96154_ _body96155_)
                    (let _recur96157_ ((_rest96159_ _bindings96154_))
                      (let* ((_rest9616096168_ _rest96159_)
                             (_else9616296176_ (lambda () _body96155_))
                             (_K9616496182_
                              (lambda (_rest96179_ _hd96180_)
                                (let ((__tmp96934
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96180_ '())))
                                      (__tmp96933
                                       (let ()
                                         (declare (not safe))
                                         (_recur96157_ _rest96179_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96934
                                   __tmp96933)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9616096168_))
                            (let ((_hd9616596185_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9616096168_)))
                                  (_tl9616696187_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9616096168_))))
                              (let* ((_hd96190_ _hd9616596185_)
                                     (_rest96192_ _tl9616696187_))
                                (declare (not safe))
                                (_K9616496182_ _rest96192_ _hd96190_)))
                            (let ()
                              (declare (not safe))
                              (_else9616296176_)))))))
                 (_generate-clause95601_
                  (lambda (_target96017_ _ids96018_ _clause96019_ _E96020_)
                    (letrec ((_generate196022_
                              (lambda (_hd96109_ _fender96110_ _body96111_)
                                (let ((_g96935_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95603_
                                          _hd96109_
                                          _ids96018_))))
                                  (begin
                                    (let ((_g96936_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96935_)
                                                 (##vector-length _g96935_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96936_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96936_)))
                                    (let ((_e96113_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96935_ 0)))
                                          (_mvars96114_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96935_ 1))))
                                      (let* ((_pvars96116_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96114_))))
                                             (_E96118_
                                              (let ((__tmp96937
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96017_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96020_ __tmp96937)))
                                             (_K96151_
                                              (let ((__tmp96938
                                                     (let ((__tmp96940
                                                            (map (lambda (_mvar96120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96121_)
                           (let* ((_mvar9612296129_ _mvar96120_)
                                  (_E9612496133_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9612296129_))))
                                  (_K9612596139_
                                   (lambda (_depth96136_ _id96137_)
                                     (let ((__tmp96941
                                            (let ((__tmp96942
                                                   (let ((__tmp96944
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96137_)))
                                                         (__tmp96943
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96121_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96944
                                                      __tmp96943
                                                      _depth96136_))))
                                              (declare (not safe))
                                              (cons __tmp96942 '()))))
                                       (declare (not safe))
                                       (cons _id96137_ __tmp96941)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9612296129_))
                                 (let ((_hd9612696142_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9612296129_)))
                                       (_tl9612796144_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9612296129_))))
                                   (let* ((_id96147_ _hd9612696142_)
                                          (_depth96149_ _tl9612796144_))
                                     (declare (not safe))
                                     (_K9612596139_ _depth96149_ _id96147_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9612496133_)))))
                         _mvars96114_
                         _pvars96116_))
                   (__tmp96939
                    (if (let () (declare (not safe)) (eq? _fender96110_ '#t))
                        _body96111_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96110_
                           _body96111_
                           _E96118_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96940 __tmp96939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96116_
                                                 __tmp96938))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95602_
                                           _hd96109_
                                           _target96017_
                                           _e96113_
                                           _mvars96114_
                                           _K96151_
                                           _E96118_)))))))))
                      (let* ((_e9602396043_ _clause96019_)
                             (_E9603296047_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9602396043_))))
                             (_E9602596081_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9602396043_))
                                    (let ((_e9603396051_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9602396043_))))
                                      (let ((_hd9603496054_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9603396051_)))
                                            (_tl9603596056_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9603396051_))))
                                        (let ((_hd96059_ _hd9603496054_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9603596056_))
                                              (let ((_e9603696061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9603596056_))))
                                                (let ((_hd9603796064_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9603696061_)))
                                                      (_tl9603896066_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9603696061_))))
                                                  (let ((_fender96069_
                                                         _hd9603796064_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9603896066_))
                                                        (let ((_e9603996071_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9603896066_))))
                  (let ((_hd9604096074_
                         (let () (declare (not safe)) (##car _e9603996071_)))
                        (_tl9604196076_
                         (let () (declare (not safe)) (##cdr _e9603996071_))))
                    (let ((_body96079_ _hd9604096074_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9604196076_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196022_
                                 _hd96059_
                                 _fender96069_
                                 _body96079_))
                              (let () (declare (not safe)) (_E9603296047_)))
                          (let () (declare (not safe)) (_E9603296047_))))))
                (let () (declare (not safe)) (_E9603296047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9603296047_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9603296047_)))))
                             (_E9602496105_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9602396043_))
                                    (let ((_e9602696085_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9602396043_))))
                                      (let ((_hd9602796088_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9602696085_)))
                                            (_tl9602896090_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9602696085_))))
                                        (let ((_hd96093_ _hd9602796088_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9602896090_))
                                              (let ((_e9602996095_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9602896090_))))
                                                (let ((_hd9603096098_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9602996095_)))
                                                      (_tl9603196100_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9602996095_))))
                                                  (let ((_body96103_
                                                         _hd9603096098_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9603196100_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196022_
                                                               _hd96093_
                                                               '#t
                                                               _body96103_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9602596081_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9602596081_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9602596081_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9602596081_))))))
                        (let () (declare (not safe)) (_E9602496105_))))))
                 (_generate-match95602_
                  (lambda (_where95766_
                           _target95767_
                           _hd95768_
                           _mvars95769_
                           _K95770_
                           _E95771_)
                    (letrec ((_BUG95773_
                              (lambda (_q96015_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx95594_
                                         _hd95768_
                                         _q96015_))))
                             (_recur95774_
                              (lambda (_e95865_
                                       _vars95866_
                                       _target95867_
                                       _E95868_
                                       _k95869_)
                                (let* ((_e9587095877_ _e95865_)
                                       (_E9587295881_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9587095877_))))
                                       (_K9587396003_
                                        (lambda (_body95884_ _tag95885_)
                                          (let ((_$e95887_ _tag95885_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95887_))
                                                (_k95869_ _vars95866_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95887_))
                                                    (let ((__tmp97051
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95867_)))
                                                          (__tmp97047
                                                           (let ((__tmp97049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97050
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95597_ _body95884_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?95595_
                             __tmp97050
                             _target95867_)))
                         (__tmp97048 (_k95869_ _vars95866_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97049 __tmp97048 _E95868_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97051 __tmp97047 _E95868_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95887_))
                                                        (_k95869_
                                                         (let ((__tmp97046
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95884_ _target95867_))))
                   (declare (not safe))
                   (cons __tmp97046 _vars95866_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95887_))
                    (let ((_$e95890_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95891_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95892_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97045
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95867_)))
                            (__tmp97026
                             (let ((__tmp97040
                                    (let ((__tmp97041
                                           (let ((__tmp97044
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95890_ '())))
                                                 (__tmp97042
                                                  (let ((__tmp97043
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95596_
                                                            _target95867_))))
                                                    (declare (not safe))
                                                    (cons __tmp97043 '()))))
                                             (declare (not safe))
                                             (cons __tmp97044 __tmp97042))))
                                      (declare (not safe))
                                      (cons __tmp97041 '())))
                                   (__tmp97027
                                    (let ((__tmp97030
                                           (let ((__tmp97036
                                                  (let ((__tmp97039
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97037
                 (let ((__tmp97038
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95890_))))
                   (declare (not safe))
                   (cons __tmp97038 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97039
                                                          __tmp97037)))
                                                 (__tmp97031
                                                  (let ((__tmp97032
                                                         (let ((__tmp97035
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95892_ '())))
                       (__tmp97033
                        (let ((__tmp97034
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95890_))))
                          (declare (not safe))
                          (cons __tmp97034 '()))))
                   (declare (not safe))
                   (cons __tmp97035 __tmp97033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97032 '()))))
                                             (declare (not safe))
                                             (cons __tmp97036 __tmp97031)))
                                          (__tmp97028
                                           (let* ((_body9589395900_
                                                   _body95884_)
                                                  (_E9589595904_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9589395900_))))
                                                  (_K9589695912_
                                                   (lambda (_tl95907_
                                                            _hd95908_)
                                                     (let ((__tmp97029
                                                            (lambda (_vars95910_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95774_
                         _tl95907_
                         _vars95910_
                         _$tl95892_
                         _E95868_
                         _k95869_)))))
               (declare (not safe))
               (_recur95774_
                _hd95908_
                _vars95866_
                _$hd95891_
                _E95868_
                __tmp97029)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9589395900_))
                                                 (let ((_hd9589795915_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9589395900_)))
                                                       (_tl9589895917_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9589395900_))))
                                                   (let* ((_hd95920_
                                                           _hd9589795915_)
                                                          (_tl95922_
                                                           _tl9589895917_))
                                                     (declare (not safe))
                                                     (_K9589695912_
                                                      _tl95922_
                                                      _hd95920_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9589595904_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97030
                                       __tmp97028))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97040
                                __tmp97027))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97045 __tmp97026 _E95868_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95887_))
                        (let* ((_body9592395930_ _body95884_)
                               (_E9592595934_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9592395930_))))
                               (_K9592695985_
                                (lambda (_tl95937_ _hd95938_)
                                  (let* ((_rlen95940_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95775_ _tl95937_)))
                                         (_$target95942_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95944_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95946_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95948_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95950_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95952_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95954_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars95956_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95776_ _hd95938_)))
                                         (_lvars95958_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95956_)))
                                         (_tlvars95960_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95956_)))
                                         (_linit95964_
                                          (map (lambda (_var95962_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars95958_)))
                                    (letrec ((_make-loop95967_
                                              (lambda (_vars95971_)
                                                (let ((__tmp96977
                                                       (let ((__tmp96978
                                                              (let ((__tmp97014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95948_ '())))
                            (__tmp96979
                             (let ((__tmp96980
                                    (let ((__tmp97013
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95944_ _lvars95958_)))
                                          (__tmp96981
                                           (let ((__tmp97012
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95944_)))
                                                 (__tmp96990
                                                  (let ((__tmp97007
                                                         (let ((__tmp97008
                                                                (let ((__tmp97011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95950_ '())))
                              (__tmp97009
                               (let ((__tmp97010
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95596_
                                         _$hd95944_))))
                                 (declare (not safe))
                                 (cons __tmp97010 '()))))
                          (declare (not safe))
                          (cons __tmp97011 __tmp97009))))
                   (declare (not safe))
                   (cons __tmp97008 '())))
                (__tmp96991
                 (let ((__tmp96997
                        (let ((__tmp97003
                               (let ((__tmp97006
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95952_ '())))
                                     (__tmp97004
                                      (let ((__tmp97005
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95950_))))
                                        (declare (not safe))
                                        (cons __tmp97005 '()))))
                                 (declare (not safe))
                                 (cons __tmp97006 __tmp97004)))
                              (__tmp96998
                               (let ((__tmp96999
                                      (let ((__tmp97002
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95954_ '())))
                                            (__tmp97000
                                             (let ((__tmp97001
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95950_))))
                                               (declare (not safe))
                                               (cons __tmp97001 '()))))
                                        (declare (not safe))
                                        (cons __tmp97002 __tmp97000))))
                                 (declare (not safe))
                                 (cons __tmp96999 '()))))
                          (declare (not safe))
                          (cons __tmp97003 __tmp96998)))
                       (__tmp96992
                        (let ((__tmp96993
                               (lambda (_hdvars95973_)
                                 (let ((__tmp96994
                                        (let ((__tmp96995
                                               (map (lambda (_svar95975_
                                                             _lvar95976_)
                                                      (let ((__tmp96996
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar95975_ _hdvars95973_ _BUG95773_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp96996 _lvar95976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars95956_
                                                    _lvars95958_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95954_ __tmp96995))))
                                   (declare (not safe))
                                   (cons _$lp95948_ __tmp96994)))))
                          (declare (not safe))
                          (_recur95774_
                           _hd95938_
                           '()
                           _$lp-hd95952_
                           _E95868_
                           __tmp96993))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp96997 __tmp96992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97007
                                                     __tmp96991)))
                                                 (__tmp96982
                                                  (let ((__tmp96986
                                                         (map (lambda (_lvar95978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar95979_)
                        (let ((__tmp96989
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar95979_ '())))
                              (__tmp96987
                               (let ((__tmp96988
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar95978_))))
                                 (declare (not safe))
                                 (cons __tmp96988 '()))))
                          (declare (not safe))
                          (cons __tmp96989 __tmp96987)))
                      _lvars95958_
                      _tlvars95960_))
                (__tmp96983
                 (_k95869_
                  (let ((__tmp96984
                         (lambda (_svar95981_ _tlvar95982_ _r95983_)
                           (let ((__tmp96985
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar95981_ _tlvar95982_))))
                             (declare (not safe))
                             (cons __tmp96985 _r95983_)))))
                    (declare (not safe))
                    (foldl2 __tmp96984
                            _vars95971_
                            _svars95956_
                            _tlvars95960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96986
                                                     __tmp96983))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97012
                                              __tmp96990
                                              __tmp96982))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97013
                                       __tmp96981))))
                               (declare (not safe))
                               (cons __tmp96980 '()))))
                        (declare (not safe))
                        (cons __tmp97014 __tmp96979))))
                 (declare (not safe))
                 (cons __tmp96978 '())))
              (__tmp96975
               (let ((__tmp96976
                      (let ()
                        (declare (not safe))
                        (cons _$target95942_ _linit95964_))))
                 (declare (not safe))
                 (cons _$lp95948_ __tmp96976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp96977
                                                   __tmp96975)))))
                                      (let ((_body95969_
                                             (let ((__tmp97016
                                                    (let ((__tmp97017
                                                           (let ((__tmp97020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97021
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95946_ '()))))
                            (declare (not safe))
                            (cons _$target95942_ __tmp97021)))
                         (__tmp97018
                          (let ((__tmp97019
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95867_
                                    _rlen95940_))))
                            (declare (not safe))
                            (cons __tmp97019 '()))))
                     (declare (not safe))
                     (cons __tmp97020 __tmp97018))))
              (declare (not safe))
              (cons __tmp97017 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97015
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95774_
                                                       _tl95937_
                                                       _vars95866_
                                                       _$tl95946_
                                                       _E95868_
                                                       _make-loop95967_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97016
                                                __tmp97015))))
                                        (let ((__tmp97025
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95867_)))
                                              (__tmp97022
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95940_))
                                                   _body95969_
                                                   (let ((__tmp97023
                                                          (let ((__tmp97024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95867_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97024 _rlen95940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97023
                                                      _body95969_
                                                      _E95868_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97025
                                           __tmp97022
                                           _E95868_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9592395930_))
                              (let ((_hd9592795988_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9592395930_)))
                                    (_tl9592895990_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9592395930_))))
                                (let* ((_hd95993_ _hd9592795988_)
                                       (_tl95995_ _tl9592895990_))
                                  (declare (not safe))
                                  (_K9592695985_ _tl95995_ _hd95993_)))
                              (let () (declare (not safe)) (_E9592595934_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95887_))
                            (let ((__tmp96974
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95867_)))
                                  (__tmp96973 (_k95869_ _vars95866_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp96974
                               __tmp96973
                               _E95868_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95887_))
                                (let ((_$e95997_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp96972
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95867_)))
                                        (__tmp96964
                                         (let ((__tmp96966
                                                (let ((__tmp96967
                                                       (let ((__tmp96971
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e95997_ '())))
                     (__tmp96968
                      (let ((__tmp96969
                             (let ((__tmp96970
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95596_
                                       _target95867_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp96970))))
                        (declare (not safe))
                        (cons __tmp96969 '()))))
                 (declare (not safe))
                 (cons __tmp96971 __tmp96968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96967 '())))
                                               (__tmp96965
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95774_
                                                   _body95884_
                                                   _vars95866_
                                                   _$e95997_
                                                   _E95868_
                                                   _k95869_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp96966
                                            __tmp96965))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp96972
                                     __tmp96964
                                     _E95868_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95887_))
                                    (let ((_$e95999_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp96963
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95867_)))
                                            (__tmp96955
                                             (let ((__tmp96957
                                                    (let ((__tmp96958
                                                           (let ((__tmp96962
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e95999_ '())))
                         (__tmp96959
                          (let ((__tmp96960
                                 (let ((__tmp96961
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95596_
                                           _target95867_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp96961))))
                            (declare (not safe))
                            (cons __tmp96960 '()))))
                     (declare (not safe))
                     (cons __tmp96962 __tmp96959))))
              (declare (not safe))
              (cons __tmp96958 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96956
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95774_
                                                       _body95884_
                                                       _vars95866_
                                                       _$e95999_
                                                       _E95868_
                                                       _k95869_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96957
                                                __tmp96956))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp96963
                                         __tmp96955
                                         _E95868_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95887_))
                                        (let ((_$e96001_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96954
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95867_)))
                                                (__tmp96945
                                                 (let ((__tmp96949
                                                        (let ((__tmp96950
                                                               (let ((__tmp96953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96001_ '())))
                             (__tmp96951
                              (let ((__tmp96952
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95867_))))
                                (declare (not safe))
                                (cons __tmp96952 '()))))
                         (declare (not safe))
                         (cons __tmp96953 __tmp96951))))
                  (declare (not safe))
                  (cons __tmp96950 '())))
               (__tmp96946
                (let ((__tmp96948
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96001_ _body95884_)))
                      (__tmp96947 (_k95869_ _vars95866_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96948 __tmp96947 _E95868_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96949
                                                    __tmp96946))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96954
                                             __tmp96945
                                             _E95868_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95773_ _e95865_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9587095877_))
                                      (let ((_hd9587496006_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9587095877_)))
                                            (_tl9587596008_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9587095877_))))
                                        (let* ((_tag96011_ _hd9587496006_)
                                               (_body96013_ _tl9587596008_))
                                          (declare (not safe))
                                          (_K9587396003_
                                           _body96013_
                                           _tag96011_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9587295881_))))))
                             (_splice-rlen95775_
                              (lambda (_e95827_)
                                (let _lp95829_ ((_e95831_ _e95827_)
                                                (_n95832_ '0))
                                  (let* ((_e9583395840_ _e95831_)
                                         (_E9583595844_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9583395840_))))
                                         (_K9583695853_
                                          (lambda (_body95847_ _tag95848_)
                                            (let ((_$e95850_ _tag95848_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95850_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx95594_
                                                     _where95766_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95850_))
                                                      (let ((__tmp97053
                                                             (cdr _body95847_))
                                                            (__tmp97052
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95832_ '1))))
                (declare (not safe))
                (_lp95829_ __tmp97053 __tmp97052))
              _n95832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9583395840_))
                                        (let ((_hd9583795856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9583395840_)))
                                              (_tl9583895858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9583395840_))))
                                          (let* ((_tag95861_ _hd9583795856_)
                                                 (_body95863_ _tl9583895858_))
                                            (declare (not safe))
                                            (_K9583695853_
                                             _body95863_
                                             _tag95861_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9583595844_)))))))
                             (_splice-vars95776_
                              (lambda (_e95783_)
                                (let _recur95785_ ((_e95787_ _e95783_)
                                                   (_vars95788_ '()))
                                  (let* ((_e9578995796_ _e95787_)
                                         (_E9579195800_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9578995796_))))
                                         (_K9579295815_
                                          (lambda (_body95803_ _tag95804_)
                                            (let ((_$e95806_ _tag95804_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95806_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95803_
                                                          _vars95788_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95806_))
                  (let () (declare (not safe)) (eq? 'splice _$e95806_)))
              (let ((__tmp97056 (cdr _body95803_))
                    (__tmp97054
                     (let ((__tmp97055 (car _body95803_)))
                       (declare (not safe))
                       (_recur95785_ __tmp97055 _vars95788_))))
                (declare (not safe))
                (_recur95785_ __tmp97056 __tmp97054))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95806_))
                      (let () (declare (not safe)) (eq? 'box _$e95806_)))
                  (let ()
                    (declare (not safe))
                    (_recur95785_ _body95803_ _vars95788_))
                  _vars95788_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9578995796_))
                                        (let ((_hd9579395818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9578995796_)))
                                              (_tl9579495820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9578995796_))))
                                          (let* ((_tag95823_ _hd9579395818_)
                                                 (_body95825_ _tl9579495820_))
                                            (declare (not safe))
                                            (_K9579295815_
                                             _body95825_
                                             _tag95823_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9579195800_)))))))
                             (_make-body95777_
                              (lambda (_vars95779_)
                                (let ((__tmp97057
                                       (map (lambda (_mvar95781_)
                                              (let ((__tmp97058
                                                     (car _mvar95781_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97058
                                                 _vars95779_
                                                 _BUG95773_)))
                                            _mvars95769_)))
                                  (declare (not safe))
                                  (cons _K95770_ __tmp97057)))))
                      (let ()
                        (declare (not safe))
                        (_recur95774_
                         _hd95768_
                         '()
                         _target95767_
                         _E95771_
                         _make-body95777_)))))
                 (_parse-clause95603_
                  (lambda (_hd95672_ _ids95673_)
                    (let _recur95675_ ((_e95677_ _hd95672_)
                                       (_vars95678_ '())
                                       (_depth95679_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95677_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95677_))
                              (values '(any) _vars95678_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95677_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx95594_
                                     _hd95672_))
                                  (if (let ((__tmp97074
                                             (lambda (_id95681_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95677_
                                                  _id95681_)))))
                                        (declare (not safe))
                                        (find __tmp97074 _ids95673_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95677_))
                                              _vars95678_)
                                      (if (let ((__tmp97072
                                                 (lambda (_var95683_)
                                                   (let ((__tmp97073
                                                          (car _var95683_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95677_
                                                      __tmp97073)))))
                                            (declare (not safe))
                                            (find __tmp97072 _vars95678_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx95594_
                                             _e95677_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95677_))
                                                  (let ((__tmp97071
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97071
                                                          _vars95678_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95677_))
                              (let* ((_e9568495691_ _e95677_)
                                     (_E9568695695_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9568495691_))))
                                     (_E9568595756_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9568495691_))
                                            (let ((_e9568795699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9568495691_))))
                                              (let ((_hd9568895702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9568795699_)))
                                                    (_tl9568995704_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9568795699_))))
                                                (let* ((_hd95707_
                                                        _hd9568895702_)
                                                       (_rest95709_
                                                        _tl9568995704_))
                                                  (if '#t
                                                      (let* ((_make-pair95724_
                                                              (lambda (_tag95711_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95712_
                               _tl95713_)
                        (let* ((_hd-depth95715_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95711_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95679_ '1))
                                    _depth95679_))
                               (_g97066_
                                (let ()
                                  (declare (not safe))
                                  (_recur95675_
                                   _hd95712_
                                   _vars95678_
                                   _hd-depth95715_))))
                          (begin
                            (let ((_g97067_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97066_)
                                         (##vector-length _g97066_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97067_ 2)))
                                  (error "Context expects 2 values" _g97067_)))
                            (let ((_hd95717_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97066_ 0)))
                                  (_vars95718_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97066_ 1))))
                              (let ((_g97068_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95675_
                                        _tl95713_
                                        _vars95718_
                                        _depth95679_))))
                                (begin
                                  (let ((_g97069_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97068_)
                                               (##vector-length _g97068_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97069_ 2)))
                                        (error "Context expects 2 values"
                                               _g97069_)))
                                  (let ((_tl95720_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97068_ 0)))
                                        (_vars95721_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97068_ 1))))
                                    (let ()
                                      (values (let ((__tmp97070
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95717_
                                                             _tl95720_))))
                                                (declare (not safe))
                                                (cons _tag95711_ __tmp97070))
                                              _vars95721_))))))))))
                     (_e9572595732_ _rest95709_)
                     (_E9572795736_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95724_ 'cons _hd95707_ _rest95709_))))
                     (_E9572695752_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9572595732_))
                            (let ((_e9572895740_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9572595732_))))
                              (let ((_hd9572995743_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9572895740_)))
                                    (_tl9573095745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9572895740_))))
                                (let* ((_rest-hd95748_ _hd9572995743_)
                                       (_rest-tl95750_ _tl9573095745_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95748_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95724_
                                             'splice
                                             _hd95707_
                                             _rest-tl95750_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95724_
                                             'cons
                                             _hd95707_
                                             _rest95709_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9572795736_))))))
                            (let () (declare (not safe)) (_E9572795736_))))))
                (let () (declare (not safe)) (_E9572695752_)))
              (let () (declare (not safe)) (_E9568695695_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9568695695_))))))
                                (let () (declare (not safe)) (_E9568595756_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95677_))
                                  (values '(null) _vars95678_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95677_))
                                      (let ((_g97063_
                                             (let ((__tmp97065
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95677_)))))
                                               (declare (not safe))
                                               (_recur95675_
                                                __tmp97065
                                                _vars95678_
                                                _depth95679_))))
                                        (begin
                                          (let ((_g97064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97063_)
                                                       (##vector-length
                                                        _g97063_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97064_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97064_)))
                                          (let ((_e95760_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97063_ 0)))
                                                (_vars95761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97063_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95760_))
                                                    _vars95761_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95677_))
                                          (let ((_g97060_
                                                 (let ((__tmp97062
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95677_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95675_
                                                    __tmp97062
                                                    _vars95678_
                                                    _depth95679_))))
                                            (begin
                                              (let ((_g97061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97060_)
                                                           (##vector-length
                                                            _g97060_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97061_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97061_)))
                                              (let ((_e95763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97060_
                                                        0)))
                                                    (_vars95764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97060_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95763_))
                                                        _vars95764_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95677_))
                                              (values (let ((__tmp97059
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95677_))))
                (declare (not safe))
                (cons 'datum __tmp97059))
              _vars95678_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx95594_
                                                 _e95677_))))))))))))
          (let* ((_e9560495617_ _stx95594_)
                 (_E9560695621_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9560495617_))))
                 (_E9560595668_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9560495617_))
                        (let ((_e9560795625_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9560495617_))))
                          (let ((_hd9560895628_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9560795625_)))
                                (_tl9560995630_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9560795625_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9560995630_))
                                (let ((_e9561095633_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9560995630_))))
                                  (let ((_hd9561195636_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9561095633_)))
                                        (_tl9561295638_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9561095633_))))
                                    (let ((_expr95641_ _hd9561195636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9561295638_))
                                          (let ((_e9561395643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9561295638_))))
                                            (let ((_hd9561495646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9561395643_)))
                                                  (_tl9561595648_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9561395643_))))
                                              (let* ((_ids95651_
                                                      _hd9561495646_)
                                                     (_clauses95653_
                                                      _tl9561595648_))
                                                (if '#t
                                                    (if (let ((__tmp97092
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95651_))))
                  (declare (not safe))
                  (not __tmp97092))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx95594_
                   _ids95651_))
                (if (let ((__tmp97091
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95653_))))
                      (declare (not safe))
                      (not __tmp97091))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx95594_))
                    (let* ((_ids95655_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95651_)))
                           (_clauses95657_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95653_)))
                           (_clause-ids95659_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95657_)))
                           (_E95661_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95663_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95665_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95657_))
                                _E95661_
                                (car _clause-ids95659_))))
                      (let ((__tmp97076
                             (let ((__tmp97077
                                    (let ((__tmp97079
                                           (let ((__tmp97084
                                                  (let ((__tmp97085
                                                         (let ((__tmp97090
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95661_ '())))
                       (__tmp97086
                        (let ((__tmp97087
                               (let ((__tmp97089
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95663_ '())))
                                     (__tmp97088
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95663_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97089
                                  __tmp97088))))
                          (declare (not safe))
                          (cons __tmp97087 '()))))
                   (declare (not safe))
                   (cons __tmp97090 __tmp97086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97085 '())))
                                                 (__tmp97080
                                                  (let ((__tmp97083
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95599_
                                                            _target95663_
                                                            _ids95655_
                                                            _clauses95657_
                                                            _clause-ids95659_
                                                            _E95661_)))
                                                        (__tmp97081
                                                         (let ((__tmp97082
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95641_ '()))))
                   (declare (not safe))
                   (cons _first95665_ __tmp97082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95600_
                                                     __tmp97083
                                                     __tmp97081))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97084
                                              __tmp97080)))
                                          (__tmp97078
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx95594_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97079
                                       __tmp97078))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97077)))
                            (__tmp97075
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx95594_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97076 __tmp97075)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9560695621_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9560695621_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9560695621_)))))
                        (let () (declare (not safe)) (_E9560695621_))))))
            (let () (declare (not safe)) (_E9560595668_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96304_)
        (let* ((_identifier=?96306_ 'free-identifier=?)
               (_unwrap-e96308_ 'syntax-e)
               (_wrap-e96310_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96304_
           _identifier=?96306_
           _unwrap-e96308_
           _wrap-e96310_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96312_ _identifier=?96313_)
        (let* ((_unwrap-e96315_ 'syntax-e) (_wrap-e96317_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96312_
           _identifier=?96313_
           _unwrap-e96315_
           _wrap-e96317_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96319_ _identifier=?96320_ _unwrap-e96321_)
        (let ((_wrap-e96323_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96319_
           _identifier=?96320_
           _unwrap-e96321_
           _wrap-e96323_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97094_
        (let ((_g97093_ (let () (declare (not safe)) (##length _g97094_))))
          (cond ((let () (declare (not safe)) (##fx= _g97093_ 1))
                 (apply (lambda (_stx96304_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96304_)))
                        _g97094_))
                ((let () (declare (not safe)) (##fx= _g97093_ 2))
                 (apply (lambda (_stx96312_ _identifier=?96313_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96312_
                             _identifier=?96313_)))
                        _g97094_))
                ((let () (declare (not safe)) (##fx= _g97093_ 3))
                 (apply (lambda (_stx96319_
                                 _identifier=?96320_
                                 _unwrap-e96321_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96319_
                             _identifier=?96320_
                             _unwrap-e96321_)))
                        _g97094_))
                ((let () (declare (not safe)) (##fx= _g97093_ 4))
                 (apply (lambda (_stx96325_
                                 _identifier=?96326_
                                 _unwrap-e96327_
                                 _wrap-e96328_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96325_
                             _identifier=?96326_
                             _unwrap-e96327_
                             _wrap-e96328_)))
                        _g97094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97094_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx95591_)
        (if (let () (declare (not safe)) (gx#identifier? _stx95591_))
            (let ((__tmp97095
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx95591_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97095 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd95549_ . _rest95550_)
        (let ((_len95552_ (length _hd95549_)))
          (let _lp95554_ ((_rest95556_ _rest95550_))
            (let* ((_rest9555795565_ _rest95556_)
                   (_else9555995573_ (lambda () '#!void))
                   (_K9556195579_
                    (lambda (_rest95576_ _hd95577_)
                      (if (fx= _len95552_ (length _hd95577_))
                          (let () (declare (not safe)) (_lp95554_ _rest95576_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd95577_))))))
              (if (let () (declare (not safe)) (##pair? _rest9555795565_))
                  (let ((_hd9556295582_
                         (let ()
                           (declare (not safe))
                           (##car _rest9555795565_)))
                        (_tl9556395584_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9555795565_))))
                    (let* ((_hd95587_ _hd9556295582_)
                           (_rest95589_ _tl9556395584_))
                      (declare (not safe))
                      (_K9556195579_ _rest95589_ _hd95587_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95507_ _n95508_)
        (let _lp95510_ ((_rest95512_ _stx95507_) (_r95513_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95512_))
              (let* ((_g9551495521_
                      (let () (declare (not safe)) (gx#syntax-e _rest95512_)))
                     (_E9551695525_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9551495521_))))
                     (_K9551795531_
                      (lambda (_rest95528_ _hd95529_)
                        (let ((__tmp97100
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95529_ _r95513_))))
                          (declare (not safe))
                          (_lp95510_ _rest95528_ __tmp97100)))))
                (if (let () (declare (not safe)) (##pair? _g9551495521_))
                    (let ((_hd9551895534_
                           (let () (declare (not safe)) (##car _g9551495521_)))
                          (_tl9551995536_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9551495521_))))
                      (let* ((_hd95539_ _hd9551895534_)
                             (_rest95541_ _tl9551995536_))
                        (declare (not safe))
                        (_K9551795531_ _rest95541_ _hd95539_)))
                    (let () (declare (not safe)) (_E9551695525_))))
              (let _lp95543_ ((_n95545_ _n95508_)
                              (_l95546_ _r95513_)
                              (_r95547_ _rest95512_))
                (if (let () (declare (not safe)) (null? _l95546_))
                    (values _l95546_ _r95547_)
                    (if (fxpositive? _n95545_)
                        (let ((__tmp97099
                               (let () (declare (not safe)) (fx- _n95545_ '1)))
                              (__tmp97098 (cdr _l95546_))
                              (__tmp97096
                               (let ((__tmp97097 (car _l95546_)))
                                 (declare (not safe))
                                 (cons __tmp97097 _r95547_))))
                          (declare (not safe))
                          (_lp95543_ __tmp97099 __tmp97098 __tmp97096))
                        (values (reverse _l95546_) _r95547_))))))))))
