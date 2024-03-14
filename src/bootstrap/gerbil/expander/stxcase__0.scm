(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1710440200)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96900 (list gx#expander::t))
            (__tmp96898
             (let ((__tmp96899
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96899 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96900
         '(id depth)
         __tmp96898
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96895_
        (apply make-instance gx#syntax-pattern::t _$args96895_)))
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
      (lambda (_self96892_ _stx96893_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96893_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96374_)
        (letrec ((_generate96376_
                  (lambda (_e96603_)
                    (letrec ((_BUG96605_
                              (lambda (_q96767_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96374_
                                         _e96603_
                                         _q96767_))))
                             (_local-pattern-e96606_
                              (lambda (_pat96765_)
                                (let ((__tmp96901
                                       (##structure-ref
                                        _pat96765_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96901))))
                             (_getvar96607_
                              (lambda (_q96762_ _vars96763_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96762_
                                   _vars96763_
                                   _BUG96605_))))
                             (_getarg96608_
                              (lambda (_arg96728_ _vars96729_)
                                (let* ((_arg9673096737_ _arg96728_)
                                       (_E9673296741_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9673096737_))))
                                       (_K9673396750_
                                        (lambda (_e96744_ _tag96745_)
                                          (let ((_$e96747_ _tag96745_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96747_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar96607_
                                                   _e96744_
                                                   _vars96729_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96747_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e96606_
                                                       _e96744_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG96605_
                                                       _arg96728_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9673096737_))
                                      (let ((_hd9673496753_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9673096737_)))
                                            (_tl9673596755_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9673096737_))))
                                        (let* ((_tag96758_ _hd9673496753_)
                                               (_e96760_ _tl9673596755_))
                                          (declare (not safe))
                                          (_K9673396750_ _e96760_ _tag96758_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9673296741_)))))))
                      (let _recur96610_ ((_e96612_ _e96603_) (_vars96613_ '()))
                        (let* ((_e9661496621_ _e96612_)
                               (_E9661696625_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9661496621_))))
                               (_K9661796716_
                                (lambda (_body96628_ _tag96629_)
                                  (let ((_$e96631_ _tag96629_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96631_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body96628_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e96631_))
                                            (let ((_id96634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body96628_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id96634_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks96636_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id96634_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks96636_))
                                                        (let ((__tmp96929
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body96628_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96929))
                (let ((__tmp96928
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body96628_)))
                      (__tmp96927
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body96628_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96928
                   __tmp96927
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id96634_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body96628_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG96605_
                                                         _e96612_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e96631_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e96606_
                                                   _body96628_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e96631_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar96607_
                                                       _body96628_
                                                       _vars96613_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e96631_))
                                                        (let ((__tmp96925
                                                               (let ((__tmp96926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body96628_)))
                         (declare (not safe))
                         (_recur96610_ __tmp96926 _vars96613_)))
                      (__tmp96923
                       (let ((__tmp96924 (cdr _body96628_)))
                         (declare (not safe))
                         (_recur96610_ __tmp96924 _vars96613_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96925 __tmp96923))
                (if (let () (declare (not safe)) (eq? 'vector _$e96631_))
                    (let ((__tmp96922
                           (let ()
                             (declare (not safe))
                             (_recur96610_ _body96628_ _vars96613_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96922))
                    (if (let () (declare (not safe)) (eq? 'box _$e96631_))
                        (let ((__tmp96921
                               (let ()
                                 (declare (not safe))
                                 (_recur96610_ _body96628_ _vars96613_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96921))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e96631_))
                            (let* ((_body9663796648_ _body96628_)
                                   (_E9663996652_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9663796648_))))
                                   (_K9664096690_
                                    (lambda (_args96655_
                                             _iv96656_
                                             _hd96657_
                                             _depth96658_)
                                      (let* ((_targets96664_
                                              (map (lambda (_g9665996661_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg96608_
                                                        _g9665996661_
                                                        _vars96613_)))
                                                   _args96655_))
                                             (_fold-in96666_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96655_)))
                                             (_fold-out96668_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96670_
                                              (let ((__tmp96902
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96668_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96902
                                                        _fold-in96666_)))
                                             (_lambda-body96687_
                                              (if (fx> _depth96658_ '1)
                                                  (let ((_r-args96678_
                                                         (map (lambda (_arg96672_)
                                                                (let ((__tmp96907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96672_)))
                          (declare (not safe))
                          (cons 'ref __tmp96907)))
                      _args96655_))
                (_r-vars96679_
                 (let ((__tmp96908
                        (lambda (_arg96674_ _var96675_ _r96676_)
                          (let ((__tmp96909
                                 (let ((__tmp96910 (cdr _arg96674_)))
                                   (declare (not safe))
                                   (cons __tmp96910 _var96675_))))
                            (declare (not safe))
                            (cons __tmp96909 _r96676_)))))
                   (declare (not safe))
                   (foldr2 __tmp96908
                           _vars96613_
                           _args96655_
                           _fold-in96666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96911
                                                           (let ((__tmp96912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96916
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96658_ '1)))
                                (__tmp96913
                                 (let ((__tmp96914
                                        (let ((__tmp96915
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96668_))))
                                          (declare (not safe))
                                          (cons __tmp96915 _r-args96678_))))
                                   (declare (not safe))
                                   (cons _hd96657_ __tmp96914))))
                            (declare (not safe))
                            (cons __tmp96916 __tmp96913))))
                     (declare (not safe))
                     (cons 'splice __tmp96912))))
              (declare (not safe))
              (_recur96610_ __tmp96911 _r-vars96679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96685_
                                                          (let ((__tmp96903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96681_ _var96682_ _r96683_)
                           (let ((__tmp96904
                                  (let ((__tmp96905 (cdr _arg96681_)))
                                    (declare (not safe))
                                    (cons __tmp96905 _var96682_))))
                             (declare (not safe))
                             (cons __tmp96904 _r96683_)))))
                    (declare (not safe))
                    (foldr2 __tmp96903
                            _vars96613_
                            _args96655_
                            _fold-in96666_)))
                 (__tmp96906
                  (let ()
                    (declare (not safe))
                    (_recur96610_ _hd96657_ _hd-vars96685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96906
                                                     _fold-out96668_)))))
                                        (let ((__tmp96920
                                               (if (fx> (length _targets96664_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96664_))
                                                   '#!void))
                                              (__tmp96917
                                               (let ((__tmp96919
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96670_
                                                         _lambda-body96687_)))
                                                     (__tmp96918
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur96610_
                                                         _iv96656_
                                                         _vars96613_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96919
                                                  __tmp96918
                                                  _targets96664_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96920
                                           __tmp96917))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9663796648_))
                                  (let ((_hd9664196693_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9663796648_)))
                                        (_tl9664296695_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9663796648_))))
                                    (let ((_depth96698_ _hd9664196693_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9664296695_))
                                          (let ((_hd9664396700_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9664296695_)))
                                                (_tl9664496702_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9664296695_))))
                                            (let ((_hd96705_ _hd9664396700_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9664496702_))
                                                  (let ((_hd9664596707_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9664496702_)))
                                                        (_tl9664696709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9664496702_))))
                                                    (let* ((_iv96712_
                                                            _hd9664596707_)
                                                           (_args96714_
                                                            _tl9664696709_))
                                                      (declare (not safe))
                                                      (_K9664096690_
                                                       _args96714_
                                                       _iv96712_
                                                       _hd96705_
                                                       _depth96698_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9663996652_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9663996652_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9663996652_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e96631_))
                                _body96628_
                                (let ()
                                  (declare (not safe))
                                  (_BUG96605_ _e96612_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9661496621_))
                              (let ((_hd9661896719_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9661496621_)))
                                    (_tl9661996721_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9661496621_))))
                                (let* ((_tag96724_ _hd9661896719_)
                                       (_body96726_ _tl9661996721_))
                                  (declare (not safe))
                                  (_K9661796716_ _body96726_ _tag96724_)))
                              (let ()
                                (declare (not safe))
                                (_E9661696625_))))))))
                 (_parse96377_
                  (lambda (_e96418_)
                    (letrec ((_make-cons96420_
                              (lambda (_hd96595_ _tl96596_)
                                (let ((_g96930_ _hd96595_)
                                      (_g96932_ _tl96596_))
                                  (begin
                                    (let ((_g96931_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96930_)
                                                 (##vector-length _g96930_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96931_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96931_)))
                                    (let ((_g96933_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96932_)
                                                 (##vector-length _g96932_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96933_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96933_)))
                                    (let ((_hd-e96598_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96930_ 0)))
                                          (_hd-vars96599_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96930_ 1))))
                                      (let ((_tl-e96600_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96932_ 0)))
                                            (_tl-vars96601_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96932_ 1))))
                                        (values (let ((__tmp96934
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e96598_
                                                               _tl-e96600_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96934))
                                                (append _hd-vars96599_
                                                        _tl-vars96601_))))))))
                             (_make-splice96421_
                              (lambda (_where96534_
                                       _depth96535_
                                       _hd96536_
                                       _tl96537_)
                                (let ((_g96935_ _hd96536_)
                                      (_g96937_ _tl96537_))
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
                                    (let ((_g96938_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96937_)
                                                 (##vector-length _g96937_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96938_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96938_)))
                                    (let ((_hd-e96539_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96935_ 0)))
                                          (_hd-vars96540_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96935_ 1))))
                                      (let ((_tl-e96541_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96937_ 0)))
                                            (_tl-vars96542_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96937_ 1))))
                                        (let _lp96544_ ((_rest96546_
                                                         _hd-vars96540_)
                                                        (_targets96547_ '())
                                                        (_vars96548_
                                                         _tl-vars96542_))
                                          (let* ((_rest9654996559_ _rest96546_)
                                                 (_else9655196567_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96547_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96374_
                                                           _where96534_))
                                                        (values (let ((__tmp96939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96940
                                      (let ((__tmp96941
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96541_
                                                     _targets96547_))))
                                        (declare (not safe))
                                        (cons _hd-e96539_ __tmp96941))))
                                 (declare (not safe))
                                 (cons _depth96535_ __tmp96940))))
                          (declare (not safe))
                          (cons 'splice __tmp96939))
                        _vars96548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9655396576_
                                                  (lambda (_rest96570_
                                                           _hd-pat96571_
                                                           _hd-depth*96572_)
                                                    (let ((_hd-depth96574_
                                                           (fx- _hd-depth*96572_
                                                                _depth96535_)))
                                                      (if (fxpositive?
                                                           _hd-depth96574_)
                                                          (let ((__tmp96946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96947
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96571_))))
                           (declare (not safe))
                           (cons __tmp96947 _targets96547_)))
                        (__tmp96944
                         (let ((__tmp96945
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth96574_ _hd-pat96571_))))
                           (declare (not safe))
                           (cons __tmp96945 _vars96548_))))
                    (declare (not safe))
                    (_lp96544_ _rest96570_ __tmp96946 __tmp96944))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth96574_))
                      (let ((__tmp96942
                             (let ((__tmp96943
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96571_))))
                               (declare (not safe))
                               (cons __tmp96943 _targets96547_))))
                        (declare (not safe))
                        (_lp96544_ _rest96570_ __tmp96942 _vars96548_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96374_
                         _where96534_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9654996559_))
                                                (let ((_hd9655496579_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9654996559_)))
                                                      (_tl9655596581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9654996559_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9655496579_))
                                                      (let ((_hd9655696584_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9655496579_)))
                    (_tl9655796586_
                     (let () (declare (not safe)) (##cdr _hd9655496579_))))
                (let* ((_hd-depth*96589_ _hd9655696584_)
                       (_hd-pat96591_ _tl9655796586_)
                       (_rest96593_ _tl9655596581_))
                  (declare (not safe))
                  (_K9655396576_ _rest96593_ _hd-pat96591_ _hd-depth*96589_)))
              (let () (declare (not safe)) (_else9655196567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9655196567_)))))))))))
                             (_recur96422_
                              (lambda (_e96427_ _is-e?96428_)
                                (if (_is-e?96428_ _e96427_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96374_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96427_))
                                        (let* ((_pat96430_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96427_)))
                                               (_depth96432_
                                                (##structure-ref
                                                 _pat96430_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96432_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96430_))
                                                      (let ((__tmp96963
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96432_ _pat96430_))))
                (declare (not safe))
                (cons __tmp96963 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96430_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96427_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96427_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96427_))
                                                (let* ((_e9643496441_ _e96427_)
                                                       (_E9643696445_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9643496441_))))
                                                       (_E9643596524_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9643496441_))
                      (let ((_e9643796449_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9643496441_))))
                        (let ((_hd9643896452_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9643796449_)))
                              (_tl9643996454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9643796449_))))
                          (let* ((_hd96457_ _hd9643896452_)
                                 (_rest96459_ _tl9643996454_))
                            (if '#t
                                (if (_is-e?96428_ _hd96457_)
                                    (let* ((_e9646096467_ _rest96459_)
                                           (_E9646296471_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96374_
                                                 _e96427_))))
                                           (_E9646196485_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9646096467_))
                                                  (let ((_e9646396475_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9646096467_))))
                                                    (let ((_hd9646496478_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9646396475_)))
                                                          (_tl9646596480_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9646396475_))))
                                                      (let ((_rest96483_
                                                             _hd9646496478_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9646596480_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96422_ _rest96483_ false))
                        (let () (declare (not safe)) (_E9646296471_)))
                    (let () (declare (not safe)) (_E9646296471_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9646296471_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9646196485_)))
                                    (let _lp96489_ ((_rest96491_ _rest96459_)
                                                    (_depth96492_ '0))
                                      (let* ((_e9649396500_ _rest96491_)
                                             (_E9649596504_
                                              (lambda ()
                                                (if (fxpositive? _depth96492_)
                                                    (let ((__tmp96957
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96422_
                                                              _hd96457_
                                                              _is-e?96428_)))
                                                          (__tmp96956
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96422_
                                                              _rest96491_
                                                              _is-e?96428_))))
                                                      (declare (not safe))
                                                      (_make-splice96421_
                                                       _e96427_
                                                       _depth96492_
                                                       __tmp96957
                                                       __tmp96956))
                                                    (let ((__tmp96955
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96422_
                                                              _hd96457_
                                                              _is-e?96428_)))
                                                          (__tmp96954
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96422_
                                                              _rest96491_
                                                              _is-e?96428_))))
                                                      (declare (not safe))
                                                      (_make-cons96420_
                                                       __tmp96955
                                                       __tmp96954)))))
                                             (_E9649496520_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9649396500_))
                                                    (let ((_e9649696508_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9649396500_))))
                                                      (let ((_hd9649796511_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9649696508_)))
                    (_tl9649896513_
                     (let () (declare (not safe)) (##cdr _e9649696508_))))
                (let* ((_rest-hd96516_ _hd9649796511_)
                       (_rest-tl96518_ _tl9649896513_))
                  (if '#t
                      (if (_is-e?96428_ _rest-hd96516_)
                          (let ((__tmp96962
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96492_ '1))))
                            (declare (not safe))
                            (_lp96489_ _rest-tl96518_ __tmp96962))
                          (if (fxpositive? _depth96492_)
                              (let ((__tmp96961
                                     (let ()
                                       (declare (not safe))
                                       (_recur96422_ _hd96457_ _is-e?96428_)))
                                    (__tmp96960
                                     (let ()
                                       (declare (not safe))
                                       (_recur96422_
                                        _rest96491_
                                        _is-e?96428_))))
                                (declare (not safe))
                                (_make-splice96421_
                                 _e96427_
                                 _depth96492_
                                 __tmp96961
                                 __tmp96960))
                              (let ((__tmp96959
                                     (let ()
                                       (declare (not safe))
                                       (_recur96422_ _hd96457_ _is-e?96428_)))
                                    (__tmp96958
                                     (let ()
                                       (declare (not safe))
                                       (_recur96422_
                                        _rest96491_
                                        _is-e?96428_))))
                                (declare (not safe))
                                (_make-cons96420_ __tmp96959 __tmp96958))))
                      (let () (declare (not safe)) (_E9649596504_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9649596504_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9649496520_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9643696445_))))))
                      (let () (declare (not safe)) (_E9643696445_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9643596524_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96427_))
                                                    (let ((_g96951_
                                                           (let ((__tmp96953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96427_)))))
                     (declare (not safe))
                     (_recur96422_ __tmp96953 _is-e?96428_))))
              (begin
                (let ((_g96952_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96951_)
                             (##vector-length _g96951_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96952_ 2)))
                      (error "Context expects 2 values" _g96952_)))
                (let ((_e96528_
                       (let () (declare (not safe)) (##vector-ref _g96951_ 0)))
                      (_vars96529_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96951_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96528_))
                          _vars96529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96427_))
                                                        (let ((_g96948_
                                                               (let ((__tmp96950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96427_)))))
                         (declare (not safe))
                         (_recur96422_ __tmp96950 _is-e?96428_))))
                  (begin
                    (let ((_g96949_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96948_)
                                 (##vector-length _g96948_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96949_ 2)))
                          (error "Context expects 2 values" _g96949_)))
                    (let ((_e96531_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96948_ 0)))
                          (_vars96532_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96948_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96531_))
                              _vars96532_))))
                (values (let () (declare (not safe)) (cons 'datum _e96427_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96964_
                             (let ()
                               (declare (not safe))
                               (_recur96422_ _e96418_ gx#ellipsis?))))
                        (begin
                          (let ((_g96965_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96964_)
                                       (##vector-length _g96964_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96965_ 2)))
                                (error "Context expects 2 values" _g96965_)))
                          (let ((_tree96424_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96964_ 0)))
                                (_vars96425_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96964_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96425_))
                                _tree96424_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96374_
                                   _vars96425_))))))))))
          (let* ((_e9637896388_ _stx96374_)
                 (_E9638096392_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96374_))))
                 (_E9637996414_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9637896388_))
                        (let ((_e9638196396_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9637896388_))))
                          (let ((_hd9638296399_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9638196396_)))
                                (_tl9638396401_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9638196396_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9638396401_))
                                (let ((_e9638496404_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9638396401_))))
                                  (let ((_hd9638596407_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9638496404_)))
                                        (_tl9638696409_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9638496404_))))
                                    (let ((_form96412_ _hd9638596407_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9638696409_))
                                          (if '#t
                                              (let ((__tmp96967
                                                     (let ((__tmp96968
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96377_
                                                               _form96412_))))
                                                       (declare (not safe))
                                                       (_generate96376_
                                                        __tmp96968)))
                                                    (__tmp96966
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96374_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96967
                                                 __tmp96966))
                                              (let ()
                                                (declare (not safe))
                                                (_E9638096392_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9638096392_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9638096392_)))))
                        (let () (declare (not safe)) (_E9638096392_))))))
            (let () (declare (not safe)) (_E9637996414_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx95638_ _identifier=?95639_ _unwrap-e95640_ _wrap-e95641_)
        (letrec ((_generate-bindings95643_
                  (lambda (_target96238_
                           _ids96239_
                           _clauses96240_
                           _clause-ids96241_
                           _E96242_)
                    (letrec ((_generate196244_
                              (lambda (_clause96341_ _clause-id96342_ _E96343_)
                                (let ((__tmp96973
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96342_ '())))
                                      (__tmp96969
                                       (let ((__tmp96970
                                              (let ((__tmp96972
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96238_
                                                             '())))
                                                    (__tmp96971
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95645_
                                                        _target96238_
                                                        _ids96239_
                                                        _clause96341_
                                                        _E96343_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96972
                                                 __tmp96971))))
                                         (declare (not safe))
                                         (cons __tmp96970 '()))))
                                  (declare (not safe))
                                  (cons __tmp96973 __tmp96969)))))
                      (let _lp96246_ ((_rest96248_ _clauses96240_)
                                      (_rest-ids96249_ _clause-ids96241_)
                                      (_bindings96250_ '()))
                        (let* ((_rest9625196259_ _rest96248_)
                               (_else9625396267_ (lambda () _bindings96250_))
                               (_K9625596329_
                                (lambda (_rest96270_ _clause96271_)
                                  (let* ((_rest-ids9627296279_ _rest-ids96249_)
                                         (_E9627496283_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9627296279_))))
                                         (_K9627596317_
                                          (lambda (_rest-ids96286_
                                                   _clause-id96287_)
                                            (let* ((_rest-ids9628896296_
                                                    _rest-ids96286_)
                                                   (_else9629096304_
                                                    (lambda ()
                                                      (let ((__tmp96974
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196244_
                        _clause96271_
                        _clause-id96287_
                        _E96242_))))
                (declare (not safe))
                (cons __tmp96974 _bindings96250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9629296309_
                                                    (lambda (_next-clause-id96307_)
                                                      (let ((__tmp96975
                                                             (let ((__tmp96976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196244_
                               _clause96271_
                               _clause-id96287_
                               _next-clause-id96307_))))
                       (declare (not safe))
                       (cons __tmp96976 _bindings96250_))))
                (declare (not safe))
                (_lp96246_ _rest96270_ _rest-ids96286_ __tmp96975)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9628896296_))
                                                  (let* ((_hd9629396312_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9628896296_)))
                                                         (_next-clause-id96315_
                                                          _hd9629396312_))
                                                    (declare (not safe))
                                                    (_K9629296309_
                                                     _next-clause-id96315_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9629096304_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9627296279_))
                                        (let ((_hd9627696320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9627296279_)))
                                              (_tl9627796322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9627296279_))))
                                          (let* ((_clause-id96325_
                                                  _hd9627696320_)
                                                 (_rest-ids96327_
                                                  _tl9627796322_))
                                            (declare (not safe))
                                            (_K9627596317_
                                             _rest-ids96327_
                                             _clause-id96325_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9627496283_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9625196259_))
                              (let ((_hd9625696332_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9625196259_)))
                                    (_tl9625796334_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9625196259_))))
                                (let* ((_clause96337_ _hd9625696332_)
                                       (_rest96339_ _tl9625796334_))
                                  (declare (not safe))
                                  (_K9625596329_ _rest96339_ _clause96337_)))
                              (let ()
                                (declare (not safe))
                                (_else9625396267_))))))))
                 (_generate-body95644_
                  (lambda (_bindings96198_ _body96199_)
                    (let _recur96201_ ((_rest96203_ _bindings96198_))
                      (let* ((_rest9620496212_ _rest96203_)
                             (_else9620696220_ (lambda () _body96199_))
                             (_K9620896226_
                              (lambda (_rest96223_ _hd96224_)
                                (let ((__tmp96978
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96224_ '())))
                                      (__tmp96977
                                       (let ()
                                         (declare (not safe))
                                         (_recur96201_ _rest96223_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96978
                                   __tmp96977)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9620496212_))
                            (let ((_hd9620996229_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9620496212_)))
                                  (_tl9621096231_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9620496212_))))
                              (let* ((_hd96234_ _hd9620996229_)
                                     (_rest96236_ _tl9621096231_))
                                (declare (not safe))
                                (_K9620896226_ _rest96236_ _hd96234_)))
                            (let ()
                              (declare (not safe))
                              (_else9620696220_)))))))
                 (_generate-clause95645_
                  (lambda (_target96061_ _ids96062_ _clause96063_ _E96064_)
                    (letrec ((_generate196066_
                              (lambda (_hd96153_ _fender96154_ _body96155_)
                                (let ((_g96979_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95647_
                                          _hd96153_
                                          _ids96062_))))
                                  (begin
                                    (let ((_g96980_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96979_)
                                                 (##vector-length _g96979_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96980_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96980_)))
                                    (let ((_e96157_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96979_ 0)))
                                          (_mvars96158_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96979_ 1))))
                                      (let* ((_pvars96160_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96158_))))
                                             (_E96162_
                                              (let ((__tmp96981
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96061_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96064_ __tmp96981)))
                                             (_K96195_
                                              (let ((__tmp96982
                                                     (let ((__tmp96984
                                                            (map (lambda (_mvar96164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96165_)
                           (let* ((_mvar9616696173_ _mvar96164_)
                                  (_E9616896177_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9616696173_))))
                                  (_K9616996183_
                                   (lambda (_depth96180_ _id96181_)
                                     (let ((__tmp96985
                                            (let ((__tmp96986
                                                   (let ((__tmp96988
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96181_)))
                                                         (__tmp96987
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96165_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96988
                                                      __tmp96987
                                                      _depth96180_))))
                                              (declare (not safe))
                                              (cons __tmp96986 '()))))
                                       (declare (not safe))
                                       (cons _id96181_ __tmp96985)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9616696173_))
                                 (let ((_hd9617096186_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9616696173_)))
                                       (_tl9617196188_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9616696173_))))
                                   (let* ((_id96191_ _hd9617096186_)
                                          (_depth96193_ _tl9617196188_))
                                     (declare (not safe))
                                     (_K9616996183_ _depth96193_ _id96191_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9616896177_)))))
                         _mvars96158_
                         _pvars96160_))
                   (__tmp96983
                    (if (let () (declare (not safe)) (eq? _fender96154_ '#t))
                        _body96155_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96154_
                           _body96155_
                           _E96162_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96984 __tmp96983))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96160_
                                                 __tmp96982))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95646_
                                           _hd96153_
                                           _target96061_
                                           _e96157_
                                           _mvars96158_
                                           _K96195_
                                           _E96162_)))))))))
                      (let* ((_e9606796087_ _clause96063_)
                             (_E9607696091_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9606796087_))))
                             (_E9606996125_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9606796087_))
                                    (let ((_e9607796095_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9606796087_))))
                                      (let ((_hd9607896098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9607796095_)))
                                            (_tl9607996100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9607796095_))))
                                        (let ((_hd96103_ _hd9607896098_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9607996100_))
                                              (let ((_e9608096105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9607996100_))))
                                                (let ((_hd9608196108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9608096105_)))
                                                      (_tl9608296110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9608096105_))))
                                                  (let ((_fender96113_
                                                         _hd9608196108_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9608296110_))
                                                        (let ((_e9608396115_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9608296110_))))
                  (let ((_hd9608496118_
                         (let () (declare (not safe)) (##car _e9608396115_)))
                        (_tl9608596120_
                         (let () (declare (not safe)) (##cdr _e9608396115_))))
                    (let ((_body96123_ _hd9608496118_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9608596120_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196066_
                                 _hd96103_
                                 _fender96113_
                                 _body96123_))
                              (let () (declare (not safe)) (_E9607696091_)))
                          (let () (declare (not safe)) (_E9607696091_))))))
                (let () (declare (not safe)) (_E9607696091_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9607696091_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9607696091_)))))
                             (_E9606896149_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9606796087_))
                                    (let ((_e9607096129_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9606796087_))))
                                      (let ((_hd9607196132_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9607096129_)))
                                            (_tl9607296134_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9607096129_))))
                                        (let ((_hd96137_ _hd9607196132_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9607296134_))
                                              (let ((_e9607396139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9607296134_))))
                                                (let ((_hd9607496142_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9607396139_)))
                                                      (_tl9607596144_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9607396139_))))
                                                  (let ((_body96147_
                                                         _hd9607496142_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9607596144_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196066_
                                                               _hd96137_
                                                               '#t
                                                               _body96147_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9606996125_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9606996125_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9606996125_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9606996125_))))))
                        (let () (declare (not safe)) (_E9606896149_))))))
                 (_generate-match95646_
                  (lambda (_where95810_
                           _target95811_
                           _hd95812_
                           _mvars95813_
                           _K95814_
                           _E95815_)
                    (letrec ((_BUG95817_
                              (lambda (_q96059_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx95638_
                                         _hd95812_
                                         _q96059_))))
                             (_recur95818_
                              (lambda (_e95909_
                                       _vars95910_
                                       _target95911_
                                       _E95912_
                                       _k95913_)
                                (let* ((_e9591495921_ _e95909_)
                                       (_E9591695925_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9591495921_))))
                                       (_K9591796047_
                                        (lambda (_body95928_ _tag95929_)
                                          (let ((_$e95931_ _tag95929_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95931_))
                                                (_k95913_ _vars95910_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95931_))
                                                    (let ((__tmp97095
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95911_)))
                                                          (__tmp97091
                                                           (let ((__tmp97093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97094
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95641_ _body95928_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?95639_
                             __tmp97094
                             _target95911_)))
                         (__tmp97092 (_k95913_ _vars95910_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97093 __tmp97092 _E95912_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97095 __tmp97091 _E95912_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95931_))
                                                        (_k95913_
                                                         (let ((__tmp97090
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95928_ _target95911_))))
                   (declare (not safe))
                   (cons __tmp97090 _vars95910_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95931_))
                    (let ((_$e95934_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95935_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95936_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97089
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95911_)))
                            (__tmp97070
                             (let ((__tmp97084
                                    (let ((__tmp97085
                                           (let ((__tmp97088
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95934_ '())))
                                                 (__tmp97086
                                                  (let ((__tmp97087
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95640_
                                                            _target95911_))))
                                                    (declare (not safe))
                                                    (cons __tmp97087 '()))))
                                             (declare (not safe))
                                             (cons __tmp97088 __tmp97086))))
                                      (declare (not safe))
                                      (cons __tmp97085 '())))
                                   (__tmp97071
                                    (let ((__tmp97074
                                           (let ((__tmp97080
                                                  (let ((__tmp97083
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97081
                 (let ((__tmp97082
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95934_))))
                   (declare (not safe))
                   (cons __tmp97082 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97083
                                                          __tmp97081)))
                                                 (__tmp97075
                                                  (let ((__tmp97076
                                                         (let ((__tmp97079
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95936_ '())))
                       (__tmp97077
                        (let ((__tmp97078
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95934_))))
                          (declare (not safe))
                          (cons __tmp97078 '()))))
                   (declare (not safe))
                   (cons __tmp97079 __tmp97077))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97076 '()))))
                                             (declare (not safe))
                                             (cons __tmp97080 __tmp97075)))
                                          (__tmp97072
                                           (let* ((_body9593795944_
                                                   _body95928_)
                                                  (_E9593995948_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9593795944_))))
                                                  (_K9594095956_
                                                   (lambda (_tl95951_
                                                            _hd95952_)
                                                     (let ((__tmp97073
                                                            (lambda (_vars95954_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95818_
                         _tl95951_
                         _vars95954_
                         _$tl95936_
                         _E95912_
                         _k95913_)))))
               (declare (not safe))
               (_recur95818_
                _hd95952_
                _vars95910_
                _$hd95935_
                _E95912_
                __tmp97073)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9593795944_))
                                                 (let ((_hd9594195959_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9593795944_)))
                                                       (_tl9594295961_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9593795944_))))
                                                   (let* ((_hd95964_
                                                           _hd9594195959_)
                                                          (_tl95966_
                                                           _tl9594295961_))
                                                     (declare (not safe))
                                                     (_K9594095956_
                                                      _tl95966_
                                                      _hd95964_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9593995948_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97074
                                       __tmp97072))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97084
                                __tmp97071))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97089 __tmp97070 _E95912_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95931_))
                        (let* ((_body9596795974_ _body95928_)
                               (_E9596995978_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9596795974_))))
                               (_K9597096029_
                                (lambda (_tl95981_ _hd95982_)
                                  (let* ((_rlen95984_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95819_ _tl95981_)))
                                         (_$target95986_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95988_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95990_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95992_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95994_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95996_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95998_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96000_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95820_ _hd95982_)))
                                         (_lvars96002_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96000_)))
                                         (_tlvars96004_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96000_)))
                                         (_linit96008_
                                          (map (lambda (_var96006_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96002_)))
                                    (letrec ((_make-loop96011_
                                              (lambda (_vars96015_)
                                                (let ((__tmp97021
                                                       (let ((__tmp97022
                                                              (let ((__tmp97058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95992_ '())))
                            (__tmp97023
                             (let ((__tmp97024
                                    (let ((__tmp97057
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95988_ _lvars96002_)))
                                          (__tmp97025
                                           (let ((__tmp97056
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95988_)))
                                                 (__tmp97034
                                                  (let ((__tmp97051
                                                         (let ((__tmp97052
                                                                (let ((__tmp97055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95994_ '())))
                              (__tmp97053
                               (let ((__tmp97054
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95640_
                                         _$hd95988_))))
                                 (declare (not safe))
                                 (cons __tmp97054 '()))))
                          (declare (not safe))
                          (cons __tmp97055 __tmp97053))))
                   (declare (not safe))
                   (cons __tmp97052 '())))
                (__tmp97035
                 (let ((__tmp97041
                        (let ((__tmp97047
                               (let ((__tmp97050
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95996_ '())))
                                     (__tmp97048
                                      (let ((__tmp97049
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95994_))))
                                        (declare (not safe))
                                        (cons __tmp97049 '()))))
                                 (declare (not safe))
                                 (cons __tmp97050 __tmp97048)))
                              (__tmp97042
                               (let ((__tmp97043
                                      (let ((__tmp97046
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95998_ '())))
                                            (__tmp97044
                                             (let ((__tmp97045
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95994_))))
                                               (declare (not safe))
                                               (cons __tmp97045 '()))))
                                        (declare (not safe))
                                        (cons __tmp97046 __tmp97044))))
                                 (declare (not safe))
                                 (cons __tmp97043 '()))))
                          (declare (not safe))
                          (cons __tmp97047 __tmp97042)))
                       (__tmp97036
                        (let ((__tmp97037
                               (lambda (_hdvars96017_)
                                 (let ((__tmp97038
                                        (let ((__tmp97039
                                               (map (lambda (_svar96019_
                                                             _lvar96020_)
                                                      (let ((__tmp97040
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96019_ _hdvars96017_ _BUG95817_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97040 _lvar96020_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96000_
                                                    _lvars96002_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95998_ __tmp97039))))
                                   (declare (not safe))
                                   (cons _$lp95992_ __tmp97038)))))
                          (declare (not safe))
                          (_recur95818_
                           _hd95982_
                           '()
                           _$lp-hd95996_
                           _E95912_
                           __tmp97037))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97041 __tmp97036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97051
                                                     __tmp97035)))
                                                 (__tmp97026
                                                  (let ((__tmp97030
                                                         (map (lambda (_lvar96022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96023_)
                        (let ((__tmp97033
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96023_ '())))
                              (__tmp97031
                               (let ((__tmp97032
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96022_))))
                                 (declare (not safe))
                                 (cons __tmp97032 '()))))
                          (declare (not safe))
                          (cons __tmp97033 __tmp97031)))
                      _lvars96002_
                      _tlvars96004_))
                (__tmp97027
                 (_k95913_
                  (let ((__tmp97028
                         (lambda (_svar96025_ _tlvar96026_ _r96027_)
                           (let ((__tmp97029
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96025_ _tlvar96026_))))
                             (declare (not safe))
                             (cons __tmp97029 _r96027_)))))
                    (declare (not safe))
                    (foldl2 __tmp97028
                            _vars96015_
                            _svars96000_
                            _tlvars96004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97030
                                                     __tmp97027))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97056
                                              __tmp97034
                                              __tmp97026))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97057
                                       __tmp97025))))
                               (declare (not safe))
                               (cons __tmp97024 '()))))
                        (declare (not safe))
                        (cons __tmp97058 __tmp97023))))
                 (declare (not safe))
                 (cons __tmp97022 '())))
              (__tmp97019
               (let ((__tmp97020
                      (let ()
                        (declare (not safe))
                        (cons _$target95986_ _linit96008_))))
                 (declare (not safe))
                 (cons _$lp95992_ __tmp97020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97021
                                                   __tmp97019)))))
                                      (let ((_body96013_
                                             (let ((__tmp97060
                                                    (let ((__tmp97061
                                                           (let ((__tmp97064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97065
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95990_ '()))))
                            (declare (not safe))
                            (cons _$target95986_ __tmp97065)))
                         (__tmp97062
                          (let ((__tmp97063
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95911_
                                    _rlen95984_))))
                            (declare (not safe))
                            (cons __tmp97063 '()))))
                     (declare (not safe))
                     (cons __tmp97064 __tmp97062))))
              (declare (not safe))
              (cons __tmp97061 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97059
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95818_
                                                       _tl95981_
                                                       _vars95910_
                                                       _$tl95990_
                                                       _E95912_
                                                       _make-loop96011_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97060
                                                __tmp97059))))
                                        (let ((__tmp97069
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95911_)))
                                              (__tmp97066
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95984_))
                                                   _body96013_
                                                   (let ((__tmp97067
                                                          (let ((__tmp97068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95911_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97068 _rlen95984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97067
                                                      _body96013_
                                                      _E95912_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97069
                                           __tmp97066
                                           _E95912_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9596795974_))
                              (let ((_hd9597196032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9596795974_)))
                                    (_tl9597296034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9596795974_))))
                                (let* ((_hd96037_ _hd9597196032_)
                                       (_tl96039_ _tl9597296034_))
                                  (declare (not safe))
                                  (_K9597096029_ _tl96039_ _hd96037_)))
                              (let () (declare (not safe)) (_E9596995978_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95931_))
                            (let ((__tmp97018
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95911_)))
                                  (__tmp97017 (_k95913_ _vars95910_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97018
                               __tmp97017
                               _E95912_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95931_))
                                (let ((_$e96041_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97016
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95911_)))
                                        (__tmp97008
                                         (let ((__tmp97010
                                                (let ((__tmp97011
                                                       (let ((__tmp97015
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96041_ '())))
                     (__tmp97012
                      (let ((__tmp97013
                             (let ((__tmp97014
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95640_
                                       _target95911_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97014))))
                        (declare (not safe))
                        (cons __tmp97013 '()))))
                 (declare (not safe))
                 (cons __tmp97015 __tmp97012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97011 '())))
                                               (__tmp97009
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95818_
                                                   _body95928_
                                                   _vars95910_
                                                   _$e96041_
                                                   _E95912_
                                                   _k95913_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97010
                                            __tmp97009))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97016
                                     __tmp97008
                                     _E95912_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95931_))
                                    (let ((_$e96043_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97007
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95911_)))
                                            (__tmp96999
                                             (let ((__tmp97001
                                                    (let ((__tmp97002
                                                           (let ((__tmp97006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96043_ '())))
                         (__tmp97003
                          (let ((__tmp97004
                                 (let ((__tmp97005
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95640_
                                           _target95911_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97005))))
                            (declare (not safe))
                            (cons __tmp97004 '()))))
                     (declare (not safe))
                     (cons __tmp97006 __tmp97003))))
              (declare (not safe))
              (cons __tmp97002 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97000
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95818_
                                                       _body95928_
                                                       _vars95910_
                                                       _$e96043_
                                                       _E95912_
                                                       _k95913_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97001
                                                __tmp97000))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97007
                                         __tmp96999
                                         _E95912_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95931_))
                                        (let ((_$e96045_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96998
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95911_)))
                                                (__tmp96989
                                                 (let ((__tmp96993
                                                        (let ((__tmp96994
                                                               (let ((__tmp96997
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96045_ '())))
                             (__tmp96995
                              (let ((__tmp96996
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95911_))))
                                (declare (not safe))
                                (cons __tmp96996 '()))))
                         (declare (not safe))
                         (cons __tmp96997 __tmp96995))))
                  (declare (not safe))
                  (cons __tmp96994 '())))
               (__tmp96990
                (let ((__tmp96992
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96045_ _body95928_)))
                      (__tmp96991 (_k95913_ _vars95910_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96992 __tmp96991 _E95912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96993
                                                    __tmp96990))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96998
                                             __tmp96989
                                             _E95912_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95817_ _e95909_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9591495921_))
                                      (let ((_hd9591896050_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9591495921_)))
                                            (_tl9591996052_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9591495921_))))
                                        (let* ((_tag96055_ _hd9591896050_)
                                               (_body96057_ _tl9591996052_))
                                          (declare (not safe))
                                          (_K9591796047_
                                           _body96057_
                                           _tag96055_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9591695925_))))))
                             (_splice-rlen95819_
                              (lambda (_e95871_)
                                (let _lp95873_ ((_e95875_ _e95871_)
                                                (_n95876_ '0))
                                  (let* ((_e9587795884_ _e95875_)
                                         (_E9587995888_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9587795884_))))
                                         (_K9588095897_
                                          (lambda (_body95891_ _tag95892_)
                                            (let ((_$e95894_ _tag95892_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95894_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx95638_
                                                     _where95810_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95894_))
                                                      (let ((__tmp97097
                                                             (cdr _body95891_))
                                                            (__tmp97096
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95876_ '1))))
                (declare (not safe))
                (_lp95873_ __tmp97097 __tmp97096))
              _n95876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9587795884_))
                                        (let ((_hd9588195900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9587795884_)))
                                              (_tl9588295902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9587795884_))))
                                          (let* ((_tag95905_ _hd9588195900_)
                                                 (_body95907_ _tl9588295902_))
                                            (declare (not safe))
                                            (_K9588095897_
                                             _body95907_
                                             _tag95905_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9587995888_)))))))
                             (_splice-vars95820_
                              (lambda (_e95827_)
                                (let _recur95829_ ((_e95831_ _e95827_)
                                                   (_vars95832_ '()))
                                  (let* ((_e9583395840_ _e95831_)
                                         (_E9583595844_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9583395840_))))
                                         (_K9583695859_
                                          (lambda (_body95847_ _tag95848_)
                                            (let ((_$e95850_ _tag95848_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95850_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95847_
                                                          _vars95832_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95850_))
                  (let () (declare (not safe)) (eq? 'splice _$e95850_)))
              (let ((__tmp97100 (cdr _body95847_))
                    (__tmp97098
                     (let ((__tmp97099 (car _body95847_)))
                       (declare (not safe))
                       (_recur95829_ __tmp97099 _vars95832_))))
                (declare (not safe))
                (_recur95829_ __tmp97100 __tmp97098))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95850_))
                      (let () (declare (not safe)) (eq? 'box _$e95850_)))
                  (let ()
                    (declare (not safe))
                    (_recur95829_ _body95847_ _vars95832_))
                  _vars95832_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9583395840_))
                                        (let ((_hd9583795862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9583395840_)))
                                              (_tl9583895864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9583395840_))))
                                          (let* ((_tag95867_ _hd9583795862_)
                                                 (_body95869_ _tl9583895864_))
                                            (declare (not safe))
                                            (_K9583695859_
                                             _body95869_
                                             _tag95867_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9583595844_)))))))
                             (_make-body95821_
                              (lambda (_vars95823_)
                                (let ((__tmp97101
                                       (map (lambda (_mvar95825_)
                                              (let ((__tmp97102
                                                     (car _mvar95825_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97102
                                                 _vars95823_
                                                 _BUG95817_)))
                                            _mvars95813_)))
                                  (declare (not safe))
                                  (cons _K95814_ __tmp97101)))))
                      (let ()
                        (declare (not safe))
                        (_recur95818_
                         _hd95812_
                         '()
                         _target95811_
                         _E95815_
                         _make-body95821_)))))
                 (_parse-clause95647_
                  (lambda (_hd95716_ _ids95717_)
                    (let _recur95719_ ((_e95721_ _hd95716_)
                                       (_vars95722_ '())
                                       (_depth95723_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95721_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95721_))
                              (values '(any) _vars95722_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95721_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx95638_
                                     _hd95716_))
                                  (if (let ((__tmp97118
                                             (lambda (_id95725_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95721_
                                                  _id95725_)))))
                                        (declare (not safe))
                                        (find __tmp97118 _ids95717_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95721_))
                                              _vars95722_)
                                      (if (let ((__tmp97116
                                                 (lambda (_var95727_)
                                                   (let ((__tmp97117
                                                          (car _var95727_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95721_
                                                      __tmp97117)))))
                                            (declare (not safe))
                                            (find __tmp97116 _vars95722_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx95638_
                                             _e95721_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95721_))
                                                  (let ((__tmp97115
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95723_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97115
                                                          _vars95722_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95721_))
                              (let* ((_e9572895735_ _e95721_)
                                     (_E9573095739_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9572895735_))))
                                     (_E9572995800_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9572895735_))
                                            (let ((_e9573195743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9572895735_))))
                                              (let ((_hd9573295746_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9573195743_)))
                                                    (_tl9573395748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9573195743_))))
                                                (let* ((_hd95751_
                                                        _hd9573295746_)
                                                       (_rest95753_
                                                        _tl9573395748_))
                                                  (if '#t
                                                      (let* ((_make-pair95768_
                                                              (lambda (_tag95755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95756_
                               _tl95757_)
                        (let* ((_hd-depth95759_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95755_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95723_ '1))
                                    _depth95723_))
                               (_g97110_
                                (let ()
                                  (declare (not safe))
                                  (_recur95719_
                                   _hd95756_
                                   _vars95722_
                                   _hd-depth95759_))))
                          (begin
                            (let ((_g97111_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97110_)
                                         (##vector-length _g97110_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97111_ 2)))
                                  (error "Context expects 2 values" _g97111_)))
                            (let ((_hd95761_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97110_ 0)))
                                  (_vars95762_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97110_ 1))))
                              (let ((_g97112_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95719_
                                        _tl95757_
                                        _vars95762_
                                        _depth95723_))))
                                (begin
                                  (let ((_g97113_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97112_)
                                               (##vector-length _g97112_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97113_ 2)))
                                        (error "Context expects 2 values"
                                               _g97113_)))
                                  (let ((_tl95764_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97112_ 0)))
                                        (_vars95765_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97112_ 1))))
                                    (let ()
                                      (values (let ((__tmp97114
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95761_
                                                             _tl95764_))))
                                                (declare (not safe))
                                                (cons _tag95755_ __tmp97114))
                                              _vars95765_))))))))))
                     (_e9576995776_ _rest95753_)
                     (_E9577195780_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95768_ 'cons _hd95751_ _rest95753_))))
                     (_E9577095796_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9576995776_))
                            (let ((_e9577295784_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9576995776_))))
                              (let ((_hd9577395787_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9577295784_)))
                                    (_tl9577495789_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9577295784_))))
                                (let* ((_rest-hd95792_ _hd9577395787_)
                                       (_rest-tl95794_ _tl9577495789_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95792_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95768_
                                             'splice
                                             _hd95751_
                                             _rest-tl95794_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95768_
                                             'cons
                                             _hd95751_
                                             _rest95753_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9577195780_))))))
                            (let () (declare (not safe)) (_E9577195780_))))))
                (let () (declare (not safe)) (_E9577095796_)))
              (let () (declare (not safe)) (_E9573095739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9573095739_))))))
                                (let () (declare (not safe)) (_E9572995800_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95721_))
                                  (values '(null) _vars95722_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95721_))
                                      (let ((_g97107_
                                             (let ((__tmp97109
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95721_)))))
                                               (declare (not safe))
                                               (_recur95719_
                                                __tmp97109
                                                _vars95722_
                                                _depth95723_))))
                                        (begin
                                          (let ((_g97108_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97107_)
                                                       (##vector-length
                                                        _g97107_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97108_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97108_)))
                                          (let ((_e95804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97107_ 0)))
                                                (_vars95805_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97107_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95804_))
                                                    _vars95805_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95721_))
                                          (let ((_g97104_
                                                 (let ((__tmp97106
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95719_
                                                    __tmp97106
                                                    _vars95722_
                                                    _depth95723_))))
                                            (begin
                                              (let ((_g97105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97104_)
                                                           (##vector-length
                                                            _g97104_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97105_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97105_)))
                                              (let ((_e95807_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97104_
                                                        0)))
                                                    (_vars95808_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97104_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95807_))
                                                        _vars95808_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95721_))
                                              (values (let ((__tmp97103
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95721_))))
                (declare (not safe))
                (cons 'datum __tmp97103))
              _vars95722_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx95638_
                                                 _e95721_))))))))))))
          (let* ((_e9564895661_ _stx95638_)
                 (_E9565095665_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9564895661_))))
                 (_E9564995712_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9564895661_))
                        (let ((_e9565195669_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9564895661_))))
                          (let ((_hd9565295672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9565195669_)))
                                (_tl9565395674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9565195669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9565395674_))
                                (let ((_e9565495677_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9565395674_))))
                                  (let ((_hd9565595680_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9565495677_)))
                                        (_tl9565695682_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9565495677_))))
                                    (let ((_expr95685_ _hd9565595680_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9565695682_))
                                          (let ((_e9565795687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9565695682_))))
                                            (let ((_hd9565895690_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9565795687_)))
                                                  (_tl9565995692_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9565795687_))))
                                              (let* ((_ids95695_
                                                      _hd9565895690_)
                                                     (_clauses95697_
                                                      _tl9565995692_))
                                                (if '#t
                                                    (if (let ((__tmp97136
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95695_))))
                  (declare (not safe))
                  (not __tmp97136))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx95638_
                   _ids95695_))
                (if (let ((__tmp97135
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95697_))))
                      (declare (not safe))
                      (not __tmp97135))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx95638_))
                    (let* ((_ids95699_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95695_)))
                           (_clauses95701_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95697_)))
                           (_clause-ids95703_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95701_)))
                           (_E95705_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95707_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95709_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95701_))
                                _E95705_
                                (car _clause-ids95703_))))
                      (let ((__tmp97120
                             (let ((__tmp97121
                                    (let ((__tmp97123
                                           (let ((__tmp97128
                                                  (let ((__tmp97129
                                                         (let ((__tmp97134
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95705_ '())))
                       (__tmp97130
                        (let ((__tmp97131
                               (let ((__tmp97133
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95707_ '())))
                                     (__tmp97132
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95707_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97133
                                  __tmp97132))))
                          (declare (not safe))
                          (cons __tmp97131 '()))))
                   (declare (not safe))
                   (cons __tmp97134 __tmp97130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97129 '())))
                                                 (__tmp97124
                                                  (let ((__tmp97127
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95643_
                                                            _target95707_
                                                            _ids95699_
                                                            _clauses95701_
                                                            _clause-ids95703_
                                                            _E95705_)))
                                                        (__tmp97125
                                                         (let ((__tmp97126
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95685_ '()))))
                   (declare (not safe))
                   (cons _first95709_ __tmp97126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95644_
                                                     __tmp97127
                                                     __tmp97125))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97128
                                              __tmp97124)))
                                          (__tmp97122
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx95638_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97123
                                       __tmp97122))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97121)))
                            (__tmp97119
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx95638_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97120 __tmp97119)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9565095665_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9565095665_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9565095665_)))))
                        (let () (declare (not safe)) (_E9565095665_))))))
            (let () (declare (not safe)) (_E9564995712_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96348_)
        (let* ((_identifier=?96350_ 'free-identifier=?)
               (_unwrap-e96352_ 'syntax-e)
               (_wrap-e96354_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96348_
           _identifier=?96350_
           _unwrap-e96352_
           _wrap-e96354_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96356_ _identifier=?96357_)
        (let* ((_unwrap-e96359_ 'syntax-e) (_wrap-e96361_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96356_
           _identifier=?96357_
           _unwrap-e96359_
           _wrap-e96361_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96363_ _identifier=?96364_ _unwrap-e96365_)
        (let ((_wrap-e96367_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96363_
           _identifier=?96364_
           _unwrap-e96365_
           _wrap-e96367_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97138_
        (let ((_g97137_ (let () (declare (not safe)) (##length _g97138_))))
          (cond ((let () (declare (not safe)) (##fx= _g97137_ 1))
                 (apply (lambda (_stx96348_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96348_)))
                        _g97138_))
                ((let () (declare (not safe)) (##fx= _g97137_ 2))
                 (apply (lambda (_stx96356_ _identifier=?96357_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96356_
                             _identifier=?96357_)))
                        _g97138_))
                ((let () (declare (not safe)) (##fx= _g97137_ 3))
                 (apply (lambda (_stx96363_
                                 _identifier=?96364_
                                 _unwrap-e96365_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96363_
                             _identifier=?96364_
                             _unwrap-e96365_)))
                        _g97138_))
                ((let () (declare (not safe)) (##fx= _g97137_ 4))
                 (apply (lambda (_stx96369_
                                 _identifier=?96370_
                                 _unwrap-e96371_
                                 _wrap-e96372_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96369_
                             _identifier=?96370_
                             _unwrap-e96371_
                             _wrap-e96372_)))
                        _g97138_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97138_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx95635_)
        (if (let () (declare (not safe)) (gx#identifier? _stx95635_))
            (let ((__tmp97139
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx95635_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97139 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd95593_ . _rest95594_)
        (let ((_len95596_ (length _hd95593_)))
          (let _lp95598_ ((_rest95600_ _rest95594_))
            (let* ((_rest9560195609_ _rest95600_)
                   (_else9560395617_ (lambda () '#!void))
                   (_K9560595623_
                    (lambda (_rest95620_ _hd95621_)
                      (if (fx= _len95596_ (length _hd95621_))
                          (let () (declare (not safe)) (_lp95598_ _rest95620_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd95621_))))))
              (if (let () (declare (not safe)) (##pair? _rest9560195609_))
                  (let ((_hd9560695626_
                         (let ()
                           (declare (not safe))
                           (##car _rest9560195609_)))
                        (_tl9560795628_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9560195609_))))
                    (let* ((_hd95631_ _hd9560695626_)
                           (_rest95633_ _tl9560795628_))
                      (declare (not safe))
                      (_K9560595623_ _rest95633_ _hd95631_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95551_ _n95552_)
        (let _lp95554_ ((_rest95556_ _stx95551_) (_r95557_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95556_))
              (let* ((_g9555895565_
                      (let () (declare (not safe)) (gx#syntax-e _rest95556_)))
                     (_E9556095569_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9555895565_))))
                     (_K9556195575_
                      (lambda (_rest95572_ _hd95573_)
                        (let ((__tmp97144
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95573_ _r95557_))))
                          (declare (not safe))
                          (_lp95554_ _rest95572_ __tmp97144)))))
                (if (let () (declare (not safe)) (##pair? _g9555895565_))
                    (let ((_hd9556295578_
                           (let () (declare (not safe)) (##car _g9555895565_)))
                          (_tl9556395580_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9555895565_))))
                      (let* ((_hd95583_ _hd9556295578_)
                             (_rest95585_ _tl9556395580_))
                        (declare (not safe))
                        (_K9556195575_ _rest95585_ _hd95583_)))
                    (let () (declare (not safe)) (_E9556095569_))))
              (let _lp95587_ ((_n95589_ _n95552_)
                              (_l95590_ _r95557_)
                              (_r95591_ _rest95556_))
                (if (let () (declare (not safe)) (null? _l95590_))
                    (values _l95590_ _r95591_)
                    (if (fxpositive? _n95589_)
                        (let ((__tmp97143
                               (let () (declare (not safe)) (fx- _n95589_ '1)))
                              (__tmp97142 (cdr _l95590_))
                              (__tmp97140
                               (let ((__tmp97141 (car _l95590_)))
                                 (declare (not safe))
                                 (cons __tmp97141 _r95591_))))
                          (declare (not safe))
                          (_lp95587_ __tmp97143 __tmp97142 __tmp97140))
                        (values (reverse _l95590_) _r95591_))))))))))
