(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708451994)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp93908 (list gx#expander::t))
            (__tmp93906
             (let ((__tmp93907
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp93907 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp93908
         '(id depth)
         __tmp93906
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args93903_
        (apply make-instance gx#syntax-pattern::t _$args93903_)))
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
      (lambda (_self93900_ _stx93901_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx93901_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx93382_)
        (letrec ((_generate93384_
                  (lambda (_e93611_)
                    (letrec ((_BUG93613_
                              (lambda (_q93775_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx93382_
                                         _e93611_
                                         _q93775_))))
                             (_local-pattern-e93614_
                              (lambda (_pat93773_)
                                (let ((__tmp93909
                                       (##structure-ref
                                        _pat93773_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp93909))))
                             (_getvar93615_
                              (lambda (_q93770_ _vars93771_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q93770_
                                   _vars93771_
                                   _BUG93613_))))
                             (_getarg93616_
                              (lambda (_arg93736_ _vars93737_)
                                (let* ((_arg9373893745_ _arg93736_)
                                       (_E9374093749_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9373893745_))))
                                       (_K9374193758_
                                        (lambda (_e93752_ _tag93753_)
                                          (let ((_$e93755_ _tag93753_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e93755_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar93615_
                                                   _e93752_
                                                   _vars93737_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e93755_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e93614_
                                                       _e93752_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG93613_
                                                       _arg93736_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9373893745_))
                                      (let ((_hd9374293761_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9373893745_)))
                                            (_tl9374393763_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9373893745_))))
                                        (let* ((_tag93766_ _hd9374293761_)
                                               (_e93768_ _tl9374393763_))
                                          (declare (not safe))
                                          (_K9374193758_ _e93768_ _tag93766_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9374093749_)))))))
                      (let _recur93618_ ((_e93620_ _e93611_) (_vars93621_ '()))
                        (let* ((_e9362293629_ _e93620_)
                               (_E9362493633_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9362293629_))))
                               (_K9362593724_
                                (lambda (_body93636_ _tag93637_)
                                  (let ((_$e93639_ _tag93637_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e93639_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body93636_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e93639_))
                                            (let ((_id93642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body93636_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id93642_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks93644_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id93642_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks93644_))
                                                        (let ((__tmp93910
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body93636_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp93910))
                (let ((__tmp93912
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body93636_)))
                      (__tmp93911
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body93636_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp93912
                   __tmp93911
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id93642_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body93636_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG93613_
                                                         _e93620_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e93639_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e93614_
                                                   _body93636_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e93639_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar93615_
                                                       _body93636_
                                                       _vars93621_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e93639_))
                                                        (let ((__tmp93915
                                                               (let ((__tmp93916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body93636_)))
                         (declare (not safe))
                         (_recur93618_ __tmp93916 _vars93621_)))
                      (__tmp93913
                       (let ((__tmp93914 (cdr _body93636_)))
                         (declare (not safe))
                         (_recur93618_ __tmp93914 _vars93621_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp93915 __tmp93913))
                (if (let () (declare (not safe)) (eq? 'vector _$e93639_))
                    (let ((__tmp93917
                           (let ()
                             (declare (not safe))
                             (_recur93618_ _body93636_ _vars93621_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp93917))
                    (if (let () (declare (not safe)) (eq? 'box _$e93639_))
                        (let ((__tmp93918
                               (let ()
                                 (declare (not safe))
                                 (_recur93618_ _body93636_ _vars93621_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp93918))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e93639_))
                            (let* ((_body9364593656_ _body93636_)
                                   (_E9364793660_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9364593656_))))
                                   (_K9364893698_
                                    (lambda (_args93663_
                                             _iv93664_
                                             _hd93665_
                                             _depth93666_)
                                      (let* ((_targets93672_
                                              (map (lambda (_g9366793669_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg93616_
                                                        _g9366793669_
                                                        _vars93621_)))
                                                   _args93663_))
                                             (_fold-in93674_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args93663_)))
                                             (_fold-out93676_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args93678_
                                              (let ((__tmp93919
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out93676_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp93919
                                                        _fold-in93674_)))
                                             (_lambda-body93695_
                                              (if (fx> _depth93666_ '1)
                                                  (let ((_r-args93686_
                                                         (map (lambda (_arg93680_)
                                                                (let ((__tmp93920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg93680_)))
                          (declare (not safe))
                          (cons 'ref __tmp93920)))
                      _args93663_))
                (_r-vars93687_
                 (let ((__tmp93921
                        (lambda (_arg93682_ _var93683_ _r93684_)
                          (let ((__tmp93922
                                 (let ((__tmp93923 (cdr _arg93682_)))
                                   (declare (not safe))
                                   (cons __tmp93923 _var93683_))))
                            (declare (not safe))
                            (cons __tmp93922 _r93684_)))))
                   (declare (not safe))
                   (foldr2 __tmp93921
                           _vars93621_
                           _args93663_
                           _fold-in93674_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp93924
                                                           (let ((__tmp93925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp93929
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth93666_ '1)))
                                (__tmp93926
                                 (let ((__tmp93927
                                        (let ((__tmp93928
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out93676_))))
                                          (declare (not safe))
                                          (cons __tmp93928 _r-args93686_))))
                                   (declare (not safe))
                                   (cons _hd93665_ __tmp93927))))
                            (declare (not safe))
                            (cons __tmp93929 __tmp93926))))
                     (declare (not safe))
                     (cons 'splice __tmp93925))))
              (declare (not safe))
              (_recur93618_ __tmp93924 _r-vars93687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars93693_
                                                          (let ((__tmp93930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg93689_ _var93690_ _r93691_)
                           (let ((__tmp93931
                                  (let ((__tmp93932 (cdr _arg93689_)))
                                    (declare (not safe))
                                    (cons __tmp93932 _var93690_))))
                             (declare (not safe))
                             (cons __tmp93931 _r93691_)))))
                    (declare (not safe))
                    (foldr2 __tmp93930
                            _vars93621_
                            _args93663_
                            _fold-in93674_)))
                 (__tmp93933
                  (let ()
                    (declare (not safe))
                    (_recur93618_ _hd93665_ _hd-vars93693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp93933
                                                     _fold-out93676_)))))
                                        (let ((__tmp93937
                                               (if (fx> (length _targets93672_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets93672_))
                                                   '#!void))
                                              (__tmp93934
                                               (let ((__tmp93936
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args93678_
                                                         _lambda-body93695_)))
                                                     (__tmp93935
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur93618_
                                                         _iv93664_
                                                         _vars93621_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp93936
                                                  __tmp93935
                                                  _targets93672_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp93937
                                           __tmp93934))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9364593656_))
                                  (let ((_hd9364993701_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9364593656_)))
                                        (_tl9365093703_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9364593656_))))
                                    (let ((_depth93706_ _hd9364993701_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9365093703_))
                                          (let ((_hd9365193708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9365093703_)))
                                                (_tl9365293710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9365093703_))))
                                            (let ((_hd93713_ _hd9365193708_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9365293710_))
                                                  (let ((_hd9365393715_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9365293710_)))
                                                        (_tl9365493717_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9365293710_))))
                                                    (let* ((_iv93720_
                                                            _hd9365393715_)
                                                           (_args93722_
                                                            _tl9365493717_))
                                                      (declare (not safe))
                                                      (_K9364893698_
                                                       _args93722_
                                                       _iv93720_
                                                       _hd93713_
                                                       _depth93706_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9364793660_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9364793660_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9364793660_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e93639_))
                                _body93636_
                                (let ()
                                  (declare (not safe))
                                  (_BUG93613_ _e93620_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9362293629_))
                              (let ((_hd9362693727_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9362293629_)))
                                    (_tl9362793729_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9362293629_))))
                                (let* ((_tag93732_ _hd9362693727_)
                                       (_body93734_ _tl9362793729_))
                                  (declare (not safe))
                                  (_K9362593724_ _body93734_ _tag93732_)))
                              (let ()
                                (declare (not safe))
                                (_E9362493633_))))))))
                 (_parse93385_
                  (lambda (_e93426_)
                    (letrec ((_make-cons93428_
                              (lambda (_hd93603_ _tl93604_)
                                (let ((_g93938_ _hd93603_)
                                      (_g93940_ _tl93604_))
                                  (begin
                                    (let ((_g93939_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g93938_)
                                                 (##vector-length _g93938_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g93939_ 2)))
                                          (error "Context expects 2 values"
                                                 _g93939_)))
                                    (let ((_g93941_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g93940_)
                                                 (##vector-length _g93940_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g93941_ 2)))
                                          (error "Context expects 2 values"
                                                 _g93941_)))
                                    (let ((_hd-e93606_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g93938_ 0)))
                                          (_hd-vars93607_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g93938_ 1))))
                                      (let ((_tl-e93608_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g93940_ 0)))
                                            (_tl-vars93609_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g93940_ 1))))
                                        (values (let ((__tmp93942
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e93606_
                                                               _tl-e93608_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp93942))
                                                (append _hd-vars93607_
                                                        _tl-vars93609_))))))))
                             (_make-splice93429_
                              (lambda (_where93542_
                                       _depth93543_
                                       _hd93544_
                                       _tl93545_)
                                (let ((_g93943_ _hd93544_)
                                      (_g93945_ _tl93545_))
                                  (begin
                                    (let ((_g93944_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g93943_)
                                                 (##vector-length _g93943_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g93944_ 2)))
                                          (error "Context expects 2 values"
                                                 _g93944_)))
                                    (let ((_g93946_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g93945_)
                                                 (##vector-length _g93945_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g93946_ 2)))
                                          (error "Context expects 2 values"
                                                 _g93946_)))
                                    (let ((_hd-e93547_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g93943_ 0)))
                                          (_hd-vars93548_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g93943_ 1))))
                                      (let ((_tl-e93549_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g93945_ 0)))
                                            (_tl-vars93550_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g93945_ 1))))
                                        (let _lp93552_ ((_rest93554_
                                                         _hd-vars93548_)
                                                        (_targets93555_ '())
                                                        (_vars93556_
                                                         _tl-vars93550_))
                                          (let* ((_rest9355793567_ _rest93554_)
                                                 (_else9355993575_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets93555_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx93382_
                                                           _where93542_))
                                                        (values (let ((__tmp93947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp93948
                                      (let ((__tmp93949
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e93549_
                                                     _targets93555_))))
                                        (declare (not safe))
                                        (cons _hd-e93547_ __tmp93949))))
                                 (declare (not safe))
                                 (cons _depth93543_ __tmp93948))))
                          (declare (not safe))
                          (cons 'splice __tmp93947))
                        _vars93556_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9356193584_
                                                  (lambda (_rest93578_
                                                           _hd-pat93579_
                                                           _hd-depth*93580_)
                                                    (let ((_hd-depth93582_
                                                           (fx- _hd-depth*93580_
                                                                _depth93543_)))
                                                      (if (fxpositive?
                                                           _hd-depth93582_)
                                                          (let ((__tmp93952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp93953
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat93579_))))
                           (declare (not safe))
                           (cons __tmp93953 _targets93555_)))
                        (__tmp93950
                         (let ((__tmp93951
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth93582_ _hd-pat93579_))))
                           (declare (not safe))
                           (cons __tmp93951 _vars93556_))))
                    (declare (not safe))
                    (_lp93552_ _rest93578_ __tmp93952 __tmp93950))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth93582_))
                      (let ((__tmp93954
                             (let ((__tmp93955
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat93579_))))
                               (declare (not safe))
                               (cons __tmp93955 _targets93555_))))
                        (declare (not safe))
                        (_lp93552_ _rest93578_ __tmp93954 _vars93556_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx93382_
                         _where93542_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9355793567_))
                                                (let ((_hd9356293587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9355793567_)))
                                                      (_tl9356393589_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9355793567_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9356293587_))
                                                      (let ((_hd9356493592_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9356293587_)))
                    (_tl9356593594_
                     (let () (declare (not safe)) (##cdr _hd9356293587_))))
                (let* ((_hd-depth*93597_ _hd9356493592_)
                       (_hd-pat93599_ _tl9356593594_)
                       (_rest93601_ _tl9356393589_))
                  (declare (not safe))
                  (_K9356193584_ _rest93601_ _hd-pat93599_ _hd-depth*93597_)))
              (let () (declare (not safe)) (_else9355993575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9355993575_)))))))))))
                             (_recur93430_
                              (lambda (_e93435_ _is-e?93436_)
                                (if (_is-e?93436_ _e93435_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx93382_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e93435_))
                                        (let* ((_pat93438_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e93435_)))
                                               (_depth93440_
                                                (##structure-ref
                                                 _pat93438_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth93440_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat93438_))
                                                      (let ((__tmp93956
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth93440_ _pat93438_))))
                (declare (not safe))
                (cons __tmp93956 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat93438_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e93435_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e93435_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e93435_))
                                                (let* ((_e9344293449_ _e93435_)
                                                       (_E9344493453_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9344293449_))))
                                                       (_E9344393532_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9344293449_))
                      (let ((_e9344593457_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9344293449_))))
                        (let ((_hd9344693460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9344593457_)))
                              (_tl9344793462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9344593457_))))
                          (let* ((_hd93465_ _hd9344693460_)
                                 (_rest93467_ _tl9344793462_))
                            (if '#t
                                (if (_is-e?93436_ _hd93465_)
                                    (let* ((_e9346893475_ _rest93467_)
                                           (_E9347093479_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx93382_
                                                 _e93435_))))
                                           (_E9346993493_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9346893475_))
                                                  (let ((_e9347193483_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9346893475_))))
                                                    (let ((_hd9347293486_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9347193483_)))
                                                          (_tl9347393488_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9347193483_))))
                                                      (let ((_rest93491_
                                                             _hd9347293486_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9347393488_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur93430_ _rest93491_ false))
                        (let () (declare (not safe)) (_E9347093479_)))
                    (let () (declare (not safe)) (_E9347093479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9347093479_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9346993493_)))
                                    (let _lp93497_ ((_rest93499_ _rest93467_)
                                                    (_depth93500_ '0))
                                      (let* ((_e9350193508_ _rest93499_)
                                             (_E9350393512_
                                              (lambda ()
                                                (if (fxpositive? _depth93500_)
                                                    (let ((__tmp93958
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93430_
                                                              _hd93465_
                                                              _is-e?93436_)))
                                                          (__tmp93957
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93430_
                                                              _rest93499_
                                                              _is-e?93436_))))
                                                      (declare (not safe))
                                                      (_make-splice93429_
                                                       _e93435_
                                                       _depth93500_
                                                       __tmp93958
                                                       __tmp93957))
                                                    (let ((__tmp93960
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93430_
                                                              _hd93465_
                                                              _is-e?93436_)))
                                                          (__tmp93959
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur93430_
                                                              _rest93499_
                                                              _is-e?93436_))))
                                                      (declare (not safe))
                                                      (_make-cons93428_
                                                       __tmp93960
                                                       __tmp93959)))))
                                             (_E9350293528_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9350193508_))
                                                    (let ((_e9350493516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9350193508_))))
                                                      (let ((_hd9350593519_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9350493516_)))
                    (_tl9350693521_
                     (let () (declare (not safe)) (##cdr _e9350493516_))))
                (let* ((_rest-hd93524_ _hd9350593519_)
                       (_rest-tl93526_ _tl9350693521_))
                  (if '#t
                      (if (_is-e?93436_ _rest-hd93524_)
                          (let ((__tmp93961
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth93500_ '1))))
                            (declare (not safe))
                            (_lp93497_ _rest-tl93526_ __tmp93961))
                          (if (fxpositive? _depth93500_)
                              (let ((__tmp93963
                                     (let ()
                                       (declare (not safe))
                                       (_recur93430_ _hd93465_ _is-e?93436_)))
                                    (__tmp93962
                                     (let ()
                                       (declare (not safe))
                                       (_recur93430_
                                        _rest93499_
                                        _is-e?93436_))))
                                (declare (not safe))
                                (_make-splice93429_
                                 _e93435_
                                 _depth93500_
                                 __tmp93963
                                 __tmp93962))
                              (let ((__tmp93965
                                     (let ()
                                       (declare (not safe))
                                       (_recur93430_ _hd93465_ _is-e?93436_)))
                                    (__tmp93964
                                     (let ()
                                       (declare (not safe))
                                       (_recur93430_
                                        _rest93499_
                                        _is-e?93436_))))
                                (declare (not safe))
                                (_make-cons93428_ __tmp93965 __tmp93964))))
                      (let () (declare (not safe)) (_E9350393512_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9350393512_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9350293528_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9344493453_))))))
                      (let () (declare (not safe)) (_E9344493453_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9344393532_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e93435_))
                                                    (let ((_g93966_
                                                           (let ((__tmp93968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e93435_)))))
                     (declare (not safe))
                     (_recur93430_ __tmp93968 _is-e?93436_))))
              (begin
                (let ((_g93967_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g93966_)
                             (##vector-length _g93966_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g93967_ 2)))
                      (error "Context expects 2 values" _g93967_)))
                (let ((_e93536_
                       (let () (declare (not safe)) (##vector-ref _g93966_ 0)))
                      (_vars93537_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g93966_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e93536_))
                          _vars93537_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e93435_))
                                                        (let ((_g93969_
                                                               (let ((__tmp93971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e93435_)))))
                         (declare (not safe))
                         (_recur93430_ __tmp93971 _is-e?93436_))))
                  (begin
                    (let ((_g93970_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g93969_)
                                 (##vector-length _g93969_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g93970_ 2)))
                          (error "Context expects 2 values" _g93970_)))
                    (let ((_e93539_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g93969_ 0)))
                          (_vars93540_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g93969_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e93539_))
                              _vars93540_))))
                (values (let () (declare (not safe)) (cons 'datum _e93435_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g93972_
                             (let ()
                               (declare (not safe))
                               (_recur93430_ _e93426_ gx#ellipsis?))))
                        (begin
                          (let ((_g93973_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g93972_)
                                       (##vector-length _g93972_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g93973_ 2)))
                                (error "Context expects 2 values" _g93973_)))
                          (let ((_tree93432_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g93972_ 0)))
                                (_vars93433_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g93972_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars93433_))
                                _tree93432_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx93382_
                                   _vars93433_))))))))))
          (let* ((_e9338693396_ _stx93382_)
                 (_E9338893400_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx93382_))))
                 (_E9338793422_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9338693396_))
                        (let ((_e9338993404_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9338693396_))))
                          (let ((_hd9339093407_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9338993404_)))
                                (_tl9339193409_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9338993404_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9339193409_))
                                (let ((_e9339293412_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9339193409_))))
                                  (let ((_hd9339393415_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9339293412_)))
                                        (_tl9339493417_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9339293412_))))
                                    (let ((_form93420_ _hd9339393415_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9339493417_))
                                          (if '#t
                                              (let ((__tmp93975
                                                     (let ((__tmp93976
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse93385_
                                                               _form93420_))))
                                                       (declare (not safe))
                                                       (_generate93384_
                                                        __tmp93976)))
                                                    (__tmp93974
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx93382_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp93975
                                                 __tmp93974))
                                              (let ()
                                                (declare (not safe))
                                                (_E9338893400_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9338893400_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9338893400_)))))
                        (let () (declare (not safe)) (_E9338893400_))))))
            (let () (declare (not safe)) (_E9338793422_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx92646_ _identifier=?92647_ _unwrap-e92648_ _wrap-e92649_)
        (letrec ((_generate-bindings92651_
                  (lambda (_target93246_
                           _ids93247_
                           _clauses93248_
                           _clause-ids93249_
                           _E93250_)
                    (letrec ((_generate193252_
                              (lambda (_clause93349_ _clause-id93350_ _E93351_)
                                (let ((__tmp93981
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id93350_ '())))
                                      (__tmp93977
                                       (let ((__tmp93978
                                              (let ((__tmp93980
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target93246_
                                                             '())))
                                                    (__tmp93979
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause92653_
                                                        _target93246_
                                                        _ids93247_
                                                        _clause93349_
                                                        _E93351_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp93980
                                                 __tmp93979))))
                                         (declare (not safe))
                                         (cons __tmp93978 '()))))
                                  (declare (not safe))
                                  (cons __tmp93981 __tmp93977)))))
                      (let _lp93254_ ((_rest93256_ _clauses93248_)
                                      (_rest-ids93257_ _clause-ids93249_)
                                      (_bindings93258_ '()))
                        (let* ((_rest9325993267_ _rest93256_)
                               (_else9326193275_ (lambda () _bindings93258_))
                               (_K9326393337_
                                (lambda (_rest93278_ _clause93279_)
                                  (let* ((_rest-ids9328093287_ _rest-ids93257_)
                                         (_E9328293291_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9328093287_))))
                                         (_K9328393325_
                                          (lambda (_rest-ids93294_
                                                   _clause-id93295_)
                                            (let* ((_rest-ids9329693304_
                                                    _rest-ids93294_)
                                                   (_else9329893312_
                                                    (lambda ()
                                                      (let ((__tmp93982
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate193252_
                        _clause93279_
                        _clause-id93295_
                        _E93250_))))
                (declare (not safe))
                (cons __tmp93982 _bindings93258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9330093317_
                                                    (lambda (_next-clause-id93315_)
                                                      (let ((__tmp93983
                                                             (let ((__tmp93984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate193252_
                               _clause93279_
                               _clause-id93295_
                               _next-clause-id93315_))))
                       (declare (not safe))
                       (cons __tmp93984 _bindings93258_))))
                (declare (not safe))
                (_lp93254_ _rest93278_ _rest-ids93294_ __tmp93983)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9329693304_))
                                                  (let* ((_hd9330193320_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9329693304_)))
                                                         (_next-clause-id93323_
                                                          _hd9330193320_))
                                                    (declare (not safe))
                                                    (_K9330093317_
                                                     _next-clause-id93323_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9329893312_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9328093287_))
                                        (let ((_hd9328493328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9328093287_)))
                                              (_tl9328593330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9328093287_))))
                                          (let* ((_clause-id93333_
                                                  _hd9328493328_)
                                                 (_rest-ids93335_
                                                  _tl9328593330_))
                                            (declare (not safe))
                                            (_K9328393325_
                                             _rest-ids93335_
                                             _clause-id93333_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9328293291_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9325993267_))
                              (let ((_hd9326493340_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9325993267_)))
                                    (_tl9326593342_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9325993267_))))
                                (let* ((_clause93345_ _hd9326493340_)
                                       (_rest93347_ _tl9326593342_))
                                  (declare (not safe))
                                  (_K9326393337_ _rest93347_ _clause93345_)))
                              (let ()
                                (declare (not safe))
                                (_else9326193275_))))))))
                 (_generate-body92652_
                  (lambda (_bindings93206_ _body93207_)
                    (let _recur93209_ ((_rest93211_ _bindings93206_))
                      (let* ((_rest9321293220_ _rest93211_)
                             (_else9321493228_ (lambda () _body93207_))
                             (_K9321693234_
                              (lambda (_rest93231_ _hd93232_)
                                (let ((__tmp93986
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd93232_ '())))
                                      (__tmp93985
                                       (let ()
                                         (declare (not safe))
                                         (_recur93209_ _rest93231_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp93986
                                   __tmp93985)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9321293220_))
                            (let ((_hd9321793237_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9321293220_)))
                                  (_tl9321893239_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9321293220_))))
                              (let* ((_hd93242_ _hd9321793237_)
                                     (_rest93244_ _tl9321893239_))
                                (declare (not safe))
                                (_K9321693234_ _rest93244_ _hd93242_)))
                            (let ()
                              (declare (not safe))
                              (_else9321493228_)))))))
                 (_generate-clause92653_
                  (lambda (_target93069_ _ids93070_ _clause93071_ _E93072_)
                    (letrec ((_generate193074_
                              (lambda (_hd93161_ _fender93162_ _body93163_)
                                (let ((_g93987_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause92655_
                                          _hd93161_
                                          _ids93070_))))
                                  (begin
                                    (let ((_g93988_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g93987_)
                                                 (##vector-length _g93987_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g93988_ 2)))
                                          (error "Context expects 2 values"
                                                 _g93988_)))
                                    (let ((_e93165_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g93987_ 0)))
                                          (_mvars93166_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g93987_ 1))))
                                      (let* ((_pvars93168_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars93166_))))
                                             (_E93170_
                                              (let ((__tmp93989
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target93069_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E93072_ __tmp93989)))
                                             (_K93203_
                                              (let ((__tmp93990
                                                     (let ((__tmp93992
                                                            (map (lambda (_mvar93172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar93173_)
                           (let* ((_mvar9317493181_ _mvar93172_)
                                  (_E9317693185_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9317493181_))))
                                  (_K9317793191_
                                   (lambda (_depth93188_ _id93189_)
                                     (let ((__tmp93993
                                            (let ((__tmp93994
                                                   (let ((__tmp93996
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id93189_)))
                                                         (__tmp93995
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar93173_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp93996
                                                      __tmp93995
                                                      _depth93188_))))
                                              (declare (not safe))
                                              (cons __tmp93994 '()))))
                                       (declare (not safe))
                                       (cons _id93189_ __tmp93993)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9317493181_))
                                 (let ((_hd9317893194_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9317493181_)))
                                       (_tl9317993196_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9317493181_))))
                                   (let* ((_id93199_ _hd9317893194_)
                                          (_depth93201_ _tl9317993196_))
                                     (declare (not safe))
                                     (_K9317793191_ _depth93201_ _id93199_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9317693185_)))))
                         _mvars93166_
                         _pvars93168_))
                   (__tmp93991
                    (if (let () (declare (not safe)) (eq? _fender93162_ '#t))
                        _body93163_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender93162_
                           _body93163_
                           _E93170_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp93992 __tmp93991))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars93168_
                                                 __tmp93990))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match92654_
                                           _hd93161_
                                           _target93069_
                                           _e93165_
                                           _mvars93166_
                                           _K93203_
                                           _E93170_)))))))))
                      (let* ((_e9307593095_ _clause93071_)
                             (_E9308493099_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9307593095_))))
                             (_E9307793133_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9307593095_))
                                    (let ((_e9308593103_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9307593095_))))
                                      (let ((_hd9308693106_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9308593103_)))
                                            (_tl9308793108_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9308593103_))))
                                        (let ((_hd93111_ _hd9308693106_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9308793108_))
                                              (let ((_e9308893113_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9308793108_))))
                                                (let ((_hd9308993116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9308893113_)))
                                                      (_tl9309093118_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9308893113_))))
                                                  (let ((_fender93121_
                                                         _hd9308993116_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9309093118_))
                                                        (let ((_e9309193123_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9309093118_))))
                  (let ((_hd9309293126_
                         (let () (declare (not safe)) (##car _e9309193123_)))
                        (_tl9309393128_
                         (let () (declare (not safe)) (##cdr _e9309193123_))))
                    (let ((_body93131_ _hd9309293126_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9309393128_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate193074_
                                 _hd93111_
                                 _fender93121_
                                 _body93131_))
                              (let () (declare (not safe)) (_E9308493099_)))
                          (let () (declare (not safe)) (_E9308493099_))))))
                (let () (declare (not safe)) (_E9308493099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9308493099_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9308493099_)))))
                             (_E9307693157_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9307593095_))
                                    (let ((_e9307893137_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9307593095_))))
                                      (let ((_hd9307993140_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9307893137_)))
                                            (_tl9308093142_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9307893137_))))
                                        (let ((_hd93145_ _hd9307993140_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9308093142_))
                                              (let ((_e9308193147_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9308093142_))))
                                                (let ((_hd9308293150_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9308193147_)))
                                                      (_tl9308393152_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9308193147_))))
                                                  (let ((_body93155_
                                                         _hd9308293150_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9308393152_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate193074_
                                                               _hd93145_
                                                               '#t
                                                               _body93155_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9307793133_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9307793133_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9307793133_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9307793133_))))))
                        (let () (declare (not safe)) (_E9307693157_))))))
                 (_generate-match92654_
                  (lambda (_where92818_
                           _target92819_
                           _hd92820_
                           _mvars92821_
                           _K92822_
                           _E92823_)
                    (letrec ((_BUG92825_
                              (lambda (_q93067_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx92646_
                                         _hd92820_
                                         _q93067_))))
                             (_recur92826_
                              (lambda (_e92917_
                                       _vars92918_
                                       _target92919_
                                       _E92920_
                                       _k92921_)
                                (let* ((_e9292292929_ _e92917_)
                                       (_E9292492933_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9292292929_))))
                                       (_K9292593055_
                                        (lambda (_body92936_ _tag92937_)
                                          (let ((_$e92939_ _tag92937_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e92939_))
                                                (_k92921_ _vars92918_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e92939_))
                                                    (let ((__tmp94001
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target92919_)))
                                                          (__tmp93997
                                                           (let ((__tmp93999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp94000
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e92649_ _body92936_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?92647_
                             __tmp94000
                             _target92919_)))
                         (__tmp93998 (_k92921_ _vars92918_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp93999 __tmp93998 _E92920_))))
              (declare (not safe))
              (gx#core-list 'if __tmp94001 __tmp93997 _E92920_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e92939_))
                                                        (_k92921_
                                                         (let ((__tmp94002
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body92936_ _target92919_))))
                   (declare (not safe))
                   (cons __tmp94002 _vars92918_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e92939_))
                    (let ((_$e92942_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd92943_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl92944_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp94022
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target92919_)))
                            (__tmp94003
                             (let ((__tmp94017
                                    (let ((__tmp94018
                                           (let ((__tmp94021
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e92942_ '())))
                                                 (__tmp94019
                                                  (let ((__tmp94020
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e92648_
                                                            _target92919_))))
                                                    (declare (not safe))
                                                    (cons __tmp94020 '()))))
                                             (declare (not safe))
                                             (cons __tmp94021 __tmp94019))))
                                      (declare (not safe))
                                      (cons __tmp94018 '())))
                                   (__tmp94004
                                    (let ((__tmp94007
                                           (let ((__tmp94013
                                                  (let ((__tmp94016
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd92943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp94014
                 (let ((__tmp94015
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e92942_))))
                   (declare (not safe))
                   (cons __tmp94015 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94016
                                                          __tmp94014)))
                                                 (__tmp94008
                                                  (let ((__tmp94009
                                                         (let ((__tmp94012
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl92944_ '())))
                       (__tmp94010
                        (let ((__tmp94011
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e92942_))))
                          (declare (not safe))
                          (cons __tmp94011 '()))))
                   (declare (not safe))
                   (cons __tmp94012 __tmp94010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94009 '()))))
                                             (declare (not safe))
                                             (cons __tmp94013 __tmp94008)))
                                          (__tmp94005
                                           (let* ((_body9294592952_
                                                   _body92936_)
                                                  (_E9294792956_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9294592952_))))
                                                  (_K9294892964_
                                                   (lambda (_tl92959_
                                                            _hd92960_)
                                                     (let ((__tmp94006
                                                            (lambda (_vars92962_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur92826_
                         _tl92959_
                         _vars92962_
                         _$tl92944_
                         _E92920_
                         _k92921_)))))
               (declare (not safe))
               (_recur92826_
                _hd92960_
                _vars92918_
                _$hd92943_
                _E92920_
                __tmp94006)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9294592952_))
                                                 (let ((_hd9294992967_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9294592952_)))
                                                       (_tl9295092969_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9294592952_))))
                                                   (let* ((_hd92972_
                                                           _hd9294992967_)
                                                          (_tl92974_
                                                           _tl9295092969_))
                                                     (declare (not safe))
                                                     (_K9294892964_
                                                      _tl92974_
                                                      _hd92972_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9294792956_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp94007
                                       __tmp94005))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp94017
                                __tmp94004))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp94022 __tmp94003 _E92920_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e92939_))
                        (let* ((_body9297592982_ _body92936_)
                               (_E9297792986_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9297592982_))))
                               (_K9297893037_
                                (lambda (_tl92989_ _hd92990_)
                                  (let* ((_rlen92992_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen92827_ _tl92989_)))
                                         (_$target92994_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd92996_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl92998_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp93000_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e93002_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd93004_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl93006_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars93008_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars92828_ _hd92990_)))
                                         (_lvars93010_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars93008_)))
                                         (_tlvars93012_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars93008_)))
                                         (_linit93016_
                                          (map (lambda (_var93014_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars93010_)))
                                    (letrec ((_make-loop93019_
                                              (lambda (_vars93023_)
                                                (let ((__tmp94025
                                                       (let ((__tmp94026
                                                              (let ((__tmp94062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp93000_ '())))
                            (__tmp94027
                             (let ((__tmp94028
                                    (let ((__tmp94061
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd92996_ _lvars93010_)))
                                          (__tmp94029
                                           (let ((__tmp94060
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd92996_)))
                                                 (__tmp94038
                                                  (let ((__tmp94055
                                                         (let ((__tmp94056
                                                                (let ((__tmp94059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e93002_ '())))
                              (__tmp94057
                               (let ((__tmp94058
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e92648_
                                         _$hd92996_))))
                                 (declare (not safe))
                                 (cons __tmp94058 '()))))
                          (declare (not safe))
                          (cons __tmp94059 __tmp94057))))
                   (declare (not safe))
                   (cons __tmp94056 '())))
                (__tmp94039
                 (let ((__tmp94045
                        (let ((__tmp94051
                               (let ((__tmp94054
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd93004_ '())))
                                     (__tmp94052
                                      (let ((__tmp94053
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e93002_))))
                                        (declare (not safe))
                                        (cons __tmp94053 '()))))
                                 (declare (not safe))
                                 (cons __tmp94054 __tmp94052)))
                              (__tmp94046
                               (let ((__tmp94047
                                      (let ((__tmp94050
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl93006_ '())))
                                            (__tmp94048
                                             (let ((__tmp94049
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e93002_))))
                                               (declare (not safe))
                                               (cons __tmp94049 '()))))
                                        (declare (not safe))
                                        (cons __tmp94050 __tmp94048))))
                                 (declare (not safe))
                                 (cons __tmp94047 '()))))
                          (declare (not safe))
                          (cons __tmp94051 __tmp94046)))
                       (__tmp94040
                        (let ((__tmp94041
                               (lambda (_hdvars93025_)
                                 (let ((__tmp94042
                                        (let ((__tmp94043
                                               (map (lambda (_svar93027_
                                                             _lvar93028_)
                                                      (let ((__tmp94044
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar93027_ _hdvars93025_ _BUG92825_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp94044 _lvar93028_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars93008_
                                                    _lvars93010_)))
                                          (declare (not safe))
                                          (cons _$lp-tl93006_ __tmp94043))))
                                   (declare (not safe))
                                   (cons _$lp93000_ __tmp94042)))))
                          (declare (not safe))
                          (_recur92826_
                           _hd92990_
                           '()
                           _$lp-hd93004_
                           _E92920_
                           __tmp94041))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp94045 __tmp94040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp94055
                                                     __tmp94039)))
                                                 (__tmp94030
                                                  (let ((__tmp94034
                                                         (map (lambda (_lvar93030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar93031_)
                        (let ((__tmp94037
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar93031_ '())))
                              (__tmp94035
                               (let ((__tmp94036
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar93030_))))
                                 (declare (not safe))
                                 (cons __tmp94036 '()))))
                          (declare (not safe))
                          (cons __tmp94037 __tmp94035)))
                      _lvars93010_
                      _tlvars93012_))
                (__tmp94031
                 (_k92921_
                  (let ((__tmp94032
                         (lambda (_svar93033_ _tlvar93034_ _r93035_)
                           (let ((__tmp94033
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar93033_ _tlvar93034_))))
                             (declare (not safe))
                             (cons __tmp94033 _r93035_)))))
                    (declare (not safe))
                    (foldl2 __tmp94032
                            _vars93023_
                            _svars93008_
                            _tlvars93012_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp94034
                                                     __tmp94031))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp94060
                                              __tmp94038
                                              __tmp94030))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp94061
                                       __tmp94029))))
                               (declare (not safe))
                               (cons __tmp94028 '()))))
                        (declare (not safe))
                        (cons __tmp94062 __tmp94027))))
                 (declare (not safe))
                 (cons __tmp94026 '())))
              (__tmp94023
               (let ((__tmp94024
                      (let ()
                        (declare (not safe))
                        (cons _$target92994_ _linit93016_))))
                 (declare (not safe))
                 (cons _$lp93000_ __tmp94024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp94025
                                                   __tmp94023)))))
                                      (let ((_body93021_
                                             (let ((__tmp94064
                                                    (let ((__tmp94065
                                                           (let ((__tmp94068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp94069
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl92998_ '()))))
                            (declare (not safe))
                            (cons _$target92994_ __tmp94069)))
                         (__tmp94066
                          (let ((__tmp94067
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target92919_
                                    _rlen92992_))))
                            (declare (not safe))
                            (cons __tmp94067 '()))))
                     (declare (not safe))
                     (cons __tmp94068 __tmp94066))))
              (declare (not safe))
              (cons __tmp94065 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp94063
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur92826_
                                                       _tl92989_
                                                       _vars92918_
                                                       _$tl92998_
                                                       _E92920_
                                                       _make-loop93019_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp94064
                                                __tmp94063))))
                                        (let ((__tmp94073
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target92919_)))
                                              (__tmp94070
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen92992_))
                                                   _body93021_
                                                   (let ((__tmp94071
                                                          (let ((__tmp94072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target92919_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp94072 _rlen92992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp94071
                                                      _body93021_
                                                      _E92920_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp94073
                                           __tmp94070
                                           _E92920_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9297592982_))
                              (let ((_hd9297993040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9297592982_)))
                                    (_tl9298093042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9297592982_))))
                                (let* ((_hd93045_ _hd9297993040_)
                                       (_tl93047_ _tl9298093042_))
                                  (declare (not safe))
                                  (_K9297893037_ _tl93047_ _hd93045_)))
                              (let () (declare (not safe)) (_E9297792986_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e92939_))
                            (let ((__tmp94075
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target92919_)))
                                  (__tmp94074 (_k92921_ _vars92918_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp94075
                               __tmp94074
                               _E92920_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e92939_))
                                (let ((_$e93049_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp94084
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target92919_)))
                                        (__tmp94076
                                         (let ((__tmp94078
                                                (let ((__tmp94079
                                                       (let ((__tmp94083
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e93049_ '())))
                     (__tmp94080
                      (let ((__tmp94081
                             (let ((__tmp94082
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e92648_
                                       _target92919_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp94082))))
                        (declare (not safe))
                        (cons __tmp94081 '()))))
                 (declare (not safe))
                 (cons __tmp94083 __tmp94080))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp94079 '())))
                                               (__tmp94077
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur92826_
                                                   _body92936_
                                                   _vars92918_
                                                   _$e93049_
                                                   _E92920_
                                                   _k92921_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp94078
                                            __tmp94077))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp94084
                                     __tmp94076
                                     _E92920_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e92939_))
                                    (let ((_$e93051_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp94093
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target92919_)))
                                            (__tmp94085
                                             (let ((__tmp94087
                                                    (let ((__tmp94088
                                                           (let ((__tmp94092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e93051_ '())))
                         (__tmp94089
                          (let ((__tmp94090
                                 (let ((__tmp94091
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e92648_
                                           _target92919_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp94091))))
                            (declare (not safe))
                            (cons __tmp94090 '()))))
                     (declare (not safe))
                     (cons __tmp94092 __tmp94089))))
              (declare (not safe))
              (cons __tmp94088 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp94086
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur92826_
                                                       _body92936_
                                                       _vars92918_
                                                       _$e93051_
                                                       _E92920_
                                                       _k92921_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp94087
                                                __tmp94086))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp94093
                                         __tmp94085
                                         _E92920_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e92939_))
                                        (let ((_$e93053_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp94103
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target92919_)))
                                                (__tmp94094
                                                 (let ((__tmp94098
                                                        (let ((__tmp94099
                                                               (let ((__tmp94102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e93053_ '())))
                             (__tmp94100
                              (let ((__tmp94101
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target92919_))))
                                (declare (not safe))
                                (cons __tmp94101 '()))))
                         (declare (not safe))
                         (cons __tmp94102 __tmp94100))))
                  (declare (not safe))
                  (cons __tmp94099 '())))
               (__tmp94095
                (let ((__tmp94097
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e93053_ _body92936_)))
                      (__tmp94096 (_k92921_ _vars92918_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp94097 __tmp94096 _E92920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp94098
                                                    __tmp94095))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp94103
                                             __tmp94094
                                             _E92920_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG92825_ _e92917_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9292292929_))
                                      (let ((_hd9292693058_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9292292929_)))
                                            (_tl9292793060_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9292292929_))))
                                        (let* ((_tag93063_ _hd9292693058_)
                                               (_body93065_ _tl9292793060_))
                                          (declare (not safe))
                                          (_K9292593055_
                                           _body93065_
                                           _tag93063_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9292492933_))))))
                             (_splice-rlen92827_
                              (lambda (_e92879_)
                                (let _lp92881_ ((_e92883_ _e92879_)
                                                (_n92884_ '0))
                                  (let* ((_e9288592892_ _e92883_)
                                         (_E9288792896_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9288592892_))))
                                         (_K9288892905_
                                          (lambda (_body92899_ _tag92900_)
                                            (let ((_$e92902_ _tag92900_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e92902_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx92646_
                                                     _where92818_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e92902_))
                                                      (let ((__tmp94105
                                                             (cdr _body92899_))
                                                            (__tmp94104
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n92884_ '1))))
                (declare (not safe))
                (_lp92881_ __tmp94105 __tmp94104))
              _n92884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9288592892_))
                                        (let ((_hd9288992908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9288592892_)))
                                              (_tl9289092910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9288592892_))))
                                          (let* ((_tag92913_ _hd9288992908_)
                                                 (_body92915_ _tl9289092910_))
                                            (declare (not safe))
                                            (_K9288892905_
                                             _body92915_
                                             _tag92913_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9288792896_)))))))
                             (_splice-vars92828_
                              (lambda (_e92835_)
                                (let _recur92837_ ((_e92839_ _e92835_)
                                                   (_vars92840_ '()))
                                  (let* ((_e9284192848_ _e92839_)
                                         (_E9284392852_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9284192848_))))
                                         (_K9284492867_
                                          (lambda (_body92855_ _tag92856_)
                                            (let ((_$e92858_ _tag92856_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e92858_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body92855_
                                                          _vars92840_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e92858_))
                  (let () (declare (not safe)) (eq? 'splice _$e92858_)))
              (let ((__tmp94108 (cdr _body92855_))
                    (__tmp94106
                     (let ((__tmp94107 (car _body92855_)))
                       (declare (not safe))
                       (_recur92837_ __tmp94107 _vars92840_))))
                (declare (not safe))
                (_recur92837_ __tmp94108 __tmp94106))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e92858_))
                      (let () (declare (not safe)) (eq? 'box _$e92858_)))
                  (let ()
                    (declare (not safe))
                    (_recur92837_ _body92855_ _vars92840_))
                  _vars92840_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9284192848_))
                                        (let ((_hd9284592870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9284192848_)))
                                              (_tl9284692872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9284192848_))))
                                          (let* ((_tag92875_ _hd9284592870_)
                                                 (_body92877_ _tl9284692872_))
                                            (declare (not safe))
                                            (_K9284492867_
                                             _body92877_
                                             _tag92875_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9284392852_)))))))
                             (_make-body92829_
                              (lambda (_vars92831_)
                                (let ((__tmp94109
                                       (map (lambda (_mvar92833_)
                                              (let ((__tmp94110
                                                     (car _mvar92833_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp94110
                                                 _vars92831_
                                                 _BUG92825_)))
                                            _mvars92821_)))
                                  (declare (not safe))
                                  (cons _K92822_ __tmp94109)))))
                      (let ()
                        (declare (not safe))
                        (_recur92826_
                         _hd92820_
                         '()
                         _target92819_
                         _E92823_
                         _make-body92829_)))))
                 (_parse-clause92655_
                  (lambda (_hd92724_ _ids92725_)
                    (let _recur92727_ ((_e92729_ _hd92724_)
                                       (_vars92730_ '())
                                       (_depth92731_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e92729_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e92729_))
                              (values '(any) _vars92730_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e92729_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx92646_
                                     _hd92724_))
                                  (if (let ((__tmp94111
                                             (lambda (_id92733_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e92729_
                                                  _id92733_)))))
                                        (declare (not safe))
                                        (find __tmp94111 _ids92725_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e92729_))
                                              _vars92730_)
                                      (if (let ((__tmp94112
                                                 (lambda (_var92735_)
                                                   (let ((__tmp94113
                                                          (car _var92735_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e92729_
                                                      __tmp94113)))))
                                            (declare (not safe))
                                            (find __tmp94112 _vars92730_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx92646_
                                             _e92729_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e92729_))
                                                  (let ((__tmp94114
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e92729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth92731_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94114
                                                          _vars92730_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e92729_))
                              (let* ((_e9273692743_ _e92729_)
                                     (_E9273892747_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9273692743_))))
                                     (_E9273792808_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9273692743_))
                                            (let ((_e9273992751_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9273692743_))))
                                              (let ((_hd9274092754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9273992751_)))
                                                    (_tl9274192756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9273992751_))))
                                                (let* ((_hd92759_
                                                        _hd9274092754_)
                                                       (_rest92761_
                                                        _tl9274192756_))
                                                  (if '#t
                                                      (let* ((_make-pair92776_
                                                              (lambda (_tag92763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd92764_
                               _tl92765_)
                        (let* ((_hd-depth92767_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag92763_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth92731_ '1))
                                    _depth92731_))
                               (_g94115_
                                (let ()
                                  (declare (not safe))
                                  (_recur92727_
                                   _hd92764_
                                   _vars92730_
                                   _hd-depth92767_))))
                          (begin
                            (let ((_g94116_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g94115_)
                                         (##vector-length _g94115_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g94116_ 2)))
                                  (error "Context expects 2 values" _g94116_)))
                            (let ((_hd92769_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g94115_ 0)))
                                  (_vars92770_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g94115_ 1))))
                              (let ((_g94117_
                                     (let ()
                                       (declare (not safe))
                                       (_recur92727_
                                        _tl92765_
                                        _vars92770_
                                        _depth92731_))))
                                (begin
                                  (let ((_g94118_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g94117_)
                                               (##vector-length _g94117_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g94118_ 2)))
                                        (error "Context expects 2 values"
                                               _g94118_)))
                                  (let ((_tl92772_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94117_ 0)))
                                        (_vars92773_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g94117_ 1))))
                                    (let ()
                                      (values (let ((__tmp94119
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd92769_
                                                             _tl92772_))))
                                                (declare (not safe))
                                                (cons _tag92763_ __tmp94119))
                                              _vars92773_))))))))))
                     (_e9277792784_ _rest92761_)
                     (_E9277992788_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair92776_ 'cons _hd92759_ _rest92761_))))
                     (_E9277892804_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9277792784_))
                            (let ((_e9278092792_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9277792784_))))
                              (let ((_hd9278192795_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9278092792_)))
                                    (_tl9278292797_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9278092792_))))
                                (let* ((_rest-hd92800_ _hd9278192795_)
                                       (_rest-tl92802_ _tl9278292797_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd92800_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair92776_
                                             'splice
                                             _hd92759_
                                             _rest-tl92802_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair92776_
                                             'cons
                                             _hd92759_
                                             _rest92761_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9277992788_))))))
                            (let () (declare (not safe)) (_E9277992788_))))))
                (let () (declare (not safe)) (_E9277892804_)))
              (let () (declare (not safe)) (_E9273892747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9273892747_))))))
                                (let () (declare (not safe)) (_E9273792808_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e92729_))
                                  (values '(null) _vars92730_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e92729_))
                                      (let ((_g94120_
                                             (let ((__tmp94122
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e92729_)))))
                                               (declare (not safe))
                                               (_recur92727_
                                                __tmp94122
                                                _vars92730_
                                                _depth92731_))))
                                        (begin
                                          (let ((_g94121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g94120_)
                                                       (##vector-length
                                                        _g94120_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g94121_ 2)))
                                                (error "Context expects 2 values"
                                                       _g94121_)))
                                          (let ((_e92812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g94120_ 0)))
                                                (_vars92813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g94120_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e92812_))
                                                    _vars92813_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e92729_))
                                          (let ((_g94123_
                                                 (let ((__tmp94125
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e92729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur92727_
                                                    __tmp94125
                                                    _vars92730_
                                                    _depth92731_))))
                                            (begin
                                              (let ((_g94124_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g94123_)
                                                           (##vector-length
                                                            _g94123_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g94124_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g94124_)))
                                              (let ((_e92815_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g94123_
                                                        0)))
                                                    (_vars92816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g94123_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e92815_))
                                                        _vars92816_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e92729_))
                                              (values (let ((__tmp94126
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e92729_))))
                (declare (not safe))
                (cons 'datum __tmp94126))
              _vars92730_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx92646_
                                                 _e92729_))))))))))))
          (let* ((_e9265692669_ _stx92646_)
                 (_E9265892673_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9265692669_))))
                 (_E9265792720_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9265692669_))
                        (let ((_e9265992677_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9265692669_))))
                          (let ((_hd9266092680_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9265992677_)))
                                (_tl9266192682_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9265992677_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9266192682_))
                                (let ((_e9266292685_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9266192682_))))
                                  (let ((_hd9266392688_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9266292685_)))
                                        (_tl9266492690_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9266292685_))))
                                    (let ((_expr92693_ _hd9266392688_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9266492690_))
                                          (let ((_e9266592695_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9266492690_))))
                                            (let ((_hd9266692698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9266592695_)))
                                                  (_tl9266792700_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9266592695_))))
                                              (let* ((_ids92703_
                                                      _hd9266692698_)
                                                     (_clauses92705_
                                                      _tl9266792700_))
                                                (if '#t
                                                    (if (let ((__tmp94127
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids92703_))))
                  (declare (not safe))
                  (not __tmp94127))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx92646_
                   _ids92703_))
                (if (let ((__tmp94128
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses92705_))))
                      (declare (not safe))
                      (not __tmp94128))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx92646_))
                    (let* ((_ids92707_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids92703_)))
                           (_clauses92709_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses92705_)))
                           (_clause-ids92711_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses92709_)))
                           (_E92713_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target92715_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first92717_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses92709_))
                                _E92713_
                                (car _clause-ids92711_))))
                      (let ((__tmp94130
                             (let ((__tmp94131
                                    (let ((__tmp94133
                                           (let ((__tmp94138
                                                  (let ((__tmp94139
                                                         (let ((__tmp94144
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E92713_ '())))
                       (__tmp94140
                        (let ((__tmp94141
                               (let ((__tmp94143
                                      (let ()
                                        (declare (not safe))
                                        (cons _target92715_ '())))
                                     (__tmp94142
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target92715_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp94143
                                  __tmp94142))))
                          (declare (not safe))
                          (cons __tmp94141 '()))))
                   (declare (not safe))
                   (cons __tmp94144 __tmp94140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp94139 '())))
                                                 (__tmp94134
                                                  (let ((__tmp94137
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings92651_
                                                            _target92715_
                                                            _ids92707_
                                                            _clauses92709_
                                                            _clause-ids92711_
                                                            _E92713_)))
                                                        (__tmp94135
                                                         (let ((__tmp94136
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr92693_ '()))))
                   (declare (not safe))
                   (cons _first92717_ __tmp94136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body92652_
                                                     __tmp94137
                                                     __tmp94135))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp94138
                                              __tmp94134)))
                                          (__tmp94132
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx92646_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp94133
                                       __tmp94132))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp94131)))
                            (__tmp94129
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx92646_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp94130 __tmp94129)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9265892673_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9265892673_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9265892673_)))))
                        (let () (declare (not safe)) (_E9265892673_))))))
            (let () (declare (not safe)) (_E9265792720_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx93356_)
        (let* ((_identifier=?93358_ 'free-identifier=?)
               (_unwrap-e93360_ 'syntax-e)
               (_wrap-e93362_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx93356_
           _identifier=?93358_
           _unwrap-e93360_
           _wrap-e93362_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx93364_ _identifier=?93365_)
        (let* ((_unwrap-e93367_ 'syntax-e) (_wrap-e93369_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx93364_
           _identifier=?93365_
           _unwrap-e93367_
           _wrap-e93369_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx93371_ _identifier=?93372_ _unwrap-e93373_)
        (let ((_wrap-e93375_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx93371_
           _identifier=?93372_
           _unwrap-e93373_
           _wrap-e93375_))))
    (define gx#macro-expand-syntax-case
      (lambda _g94146_
        (let ((_g94145_ (let () (declare (not safe)) (##length _g94146_))))
          (cond ((let () (declare (not safe)) (##fx= _g94145_ 1))
                 (apply (lambda (_stx93356_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx93356_)))
                        _g94146_))
                ((let () (declare (not safe)) (##fx= _g94145_ 2))
                 (apply (lambda (_stx93364_ _identifier=?93365_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx93364_
                             _identifier=?93365_)))
                        _g94146_))
                ((let () (declare (not safe)) (##fx= _g94145_ 3))
                 (apply (lambda (_stx93371_
                                 _identifier=?93372_
                                 _unwrap-e93373_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx93371_
                             _identifier=?93372_
                             _unwrap-e93373_)))
                        _g94146_))
                ((let () (declare (not safe)) (##fx= _g94145_ 4))
                 (apply (lambda (_stx93377_
                                 _identifier=?93378_
                                 _unwrap-e93379_
                                 _wrap-e93380_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx93377_
                             _identifier=?93378_
                             _unwrap-e93379_
                             _wrap-e93380_)))
                        _g94146_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g94146_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx92643_)
        (if (let () (declare (not safe)) (gx#identifier? _stx92643_))
            (let ((__tmp94147
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx92643_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp94147 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd92601_ . _rest92602_)
        (let ((_len92604_ (length _hd92601_)))
          (let _lp92606_ ((_rest92608_ _rest92602_))
            (let* ((_rest9260992617_ _rest92608_)
                   (_else9261192625_ (lambda () '#!void))
                   (_K9261392631_
                    (lambda (_rest92628_ _hd92629_)
                      (if (fx= _len92604_ (length _hd92629_))
                          (let () (declare (not safe)) (_lp92606_ _rest92628_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd92629_))))))
              (if (let () (declare (not safe)) (##pair? _rest9260992617_))
                  (let ((_hd9261492634_
                         (let ()
                           (declare (not safe))
                           (##car _rest9260992617_)))
                        (_tl9261592636_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9260992617_))))
                    (let* ((_hd92639_ _hd9261492634_)
                           (_rest92641_ _tl9261592636_))
                      (declare (not safe))
                      (_K9261392631_ _rest92641_ _hd92639_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx92559_ _n92560_)
        (let _lp92562_ ((_rest92564_ _stx92559_) (_r92565_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest92564_))
              (let* ((_g9256692573_
                      (let () (declare (not safe)) (gx#syntax-e _rest92564_)))
                     (_E9256892577_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9256692573_))))
                     (_K9256992583_
                      (lambda (_rest92580_ _hd92581_)
                        (let ((__tmp94148
                               (let ()
                                 (declare (not safe))
                                 (cons _hd92581_ _r92565_))))
                          (declare (not safe))
                          (_lp92562_ _rest92580_ __tmp94148)))))
                (if (let () (declare (not safe)) (##pair? _g9256692573_))
                    (let ((_hd9257092586_
                           (let () (declare (not safe)) (##car _g9256692573_)))
                          (_tl9257192588_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9256692573_))))
                      (let* ((_hd92591_ _hd9257092586_)
                             (_rest92593_ _tl9257192588_))
                        (declare (not safe))
                        (_K9256992583_ _rest92593_ _hd92591_)))
                    (let () (declare (not safe)) (_E9256892577_))))
              (let _lp92595_ ((_n92597_ _n92560_)
                              (_l92598_ _r92565_)
                              (_r92599_ _rest92564_))
                (if (let () (declare (not safe)) (null? _l92598_))
                    (values _l92598_ _r92599_)
                    (if (fxpositive? _n92597_)
                        (let ((__tmp94152
                               (let () (declare (not safe)) (fx- _n92597_ '1)))
                              (__tmp94151 (cdr _l92598_))
                              (__tmp94149
                               (let ((__tmp94150 (car _l92598_)))
                                 (declare (not safe))
                                 (cons __tmp94150 _r92599_))))
                          (declare (not safe))
                          (_lp92595_ __tmp94152 __tmp94151 __tmp94149))
                        (values (reverse _l92598_) _r92599_))))))))))
