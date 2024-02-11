(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707616238)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182952
             (let ((__tmp182953
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182953 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp182952
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178481_
        (apply make-struct-instance gx#syntax-pattern::t _$args178481_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self178478_ _stx178479_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178479_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177960_)
        (letrec ((_generate177962_
                  (lambda (_e178189_)
                    (letrec ((_BUG178191_
                              (lambda (_q178353_)
                                (error '"BUG: syntax; generate"
                                       _stx177960_
                                       _e178189_
                                       _q178353_)))
                             (_local-pattern-e178192_
                              (lambda (_pat178351_)
                                (let ((__tmp182954
                                       (##structure-ref
                                        _pat178351_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182954))))
                             (_getvar178193_
                              (lambda (_q178348_ _vars178349_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178348_
                                           _vars178349_
                                           _BUG178191_))))
                             (_getarg178194_
                              (lambda (_arg178314_ _vars178315_)
                                (let* ((_arg178316178323_ _arg178314_)
                                       (_E178318178327_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178316178323_)))
                                       (_K178319178336_
                                        (lambda (_e178330_ _tag178331_)
                                          (let ((_$e178333_ _tag178331_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178333_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar178193_
                                                   _e178330_
                                                   _vars178315_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178333_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e178192_
                                                       _e178330_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG178191_
                                                       _arg178314_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178316178323_))
                                      (let ((_hd178320178339_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178316178323_)))
                                            (_tl178321178341_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178316178323_))))
                                        (let* ((_tag178344_ _hd178320178339_)
                                               (_e178346_ _tl178321178341_))
                                          (declare (not safe))
                                          (_K178319178336_
                                           _e178346_
                                           _tag178344_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178318178327_)))))))
                      (let _recur178196_ ((_e178198_ _e178189_)
                                          (_vars178199_ '()))
                        (let* ((_e178200178207_ _e178198_)
                               (_E178202178211_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e178200178207_)))
                               (_K178203178302_
                                (lambda (_body178214_ _tag178215_)
                                  (let ((_$e178217_ _tag178215_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e178217_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body178214_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e178217_))
                                            (let ((_id178220_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body178214_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id178220_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks178222_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id178220_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks178222_))
                                                        (let ((__tmp182982
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body178214_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182982))
                (let ((__tmp182981
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body178214_)))
                      (__tmp182980
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body178214_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182981
                   __tmp182980
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id178220_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body178214_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG178191_
                                                         _e178198_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e178217_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e178192_
                                                   _body178214_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e178217_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar178193_
                                                       _body178214_
                                                       _vars178199_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e178217_))
                                                        (let ((__tmp182978
                                                               (let ((__tmp182979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body178214_)))
                         (declare (not safe))
                         (_recur178196_ __tmp182979 _vars178199_)))
                      (__tmp182976
                       (let ((__tmp182977 (cdr _body178214_)))
                         (declare (not safe))
                         (_recur178196_ __tmp182977 _vars178199_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182978 __tmp182976))
                (if (let () (declare (not safe)) (eq? 'vector _$e178217_))
                    (let ((__tmp182975
                           (let ()
                             (declare (not safe))
                             (_recur178196_ _body178214_ _vars178199_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182975))
                    (if (let () (declare (not safe)) (eq? 'box _$e178217_))
                        (let ((__tmp182974
                               (let ()
                                 (declare (not safe))
                                 (_recur178196_ _body178214_ _vars178199_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182974))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e178217_))
                            (let* ((_body178223178234_ _body178214_)
                                   (_E178225178238_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body178223178234_)))
                                   (_K178226178276_
                                    (lambda (_args178241_
                                             _iv178242_
                                             _hd178243_
                                             _depth178244_)
                                      (let* ((_targets178250_
                                              (map (lambda (_g178245178247_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg178194_
                                                        _g178245178247_
                                                        _vars178199_)))
                                                   _args178241_))
                                             (_fold-in178252_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args178241_)))
                                             (_fold-out178254_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178256_
                                              (let ((__tmp182955
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178254_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182955
                                                        _fold-in178252_)))
                                             (_lambda-body178273_
                                              (if (fx> _depth178244_ '1)
                                                  (let ((_r-args178264_
                                                         (map (lambda (_arg178258_)
                                                                (let ((__tmp182960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178258_)))
                          (declare (not safe))
                          (cons 'ref __tmp182960)))
                      _args178241_))
                (_r-vars178265_
                 (let ((__tmp182961
                        (lambda (_arg178260_ _var178261_ _r178262_)
                          (let ((__tmp182962
                                 (let ((__tmp182963 (cdr _arg178260_)))
                                   (declare (not safe))
                                   (cons __tmp182963 _var178261_))))
                            (declare (not safe))
                            (cons __tmp182962 _r178262_)))))
                   (declare (not safe))
                   (foldr2 __tmp182961
                           _vars178199_
                           _args178241_
                           _fold-in178252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182964
                                                           (let ((__tmp182965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182969
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178244_ '1)))
                                (__tmp182966
                                 (let ((__tmp182967
                                        (let ((__tmp182968
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178254_))))
                                          (declare (not safe))
                                          (cons __tmp182968 _r-args178264_))))
                                   (declare (not safe))
                                   (cons _hd178243_ __tmp182967))))
                            (declare (not safe))
                            (cons __tmp182969 __tmp182966))))
                     (declare (not safe))
                     (cons 'splice __tmp182965))))
              (declare (not safe))
              (_recur178196_ __tmp182964 _r-vars178265_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178271_
                                                          (let ((__tmp182956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178267_ _var178268_ _r178269_)
                           (let ((__tmp182957
                                  (let ((__tmp182958 (cdr _arg178267_)))
                                    (declare (not safe))
                                    (cons __tmp182958 _var178268_))))
                             (declare (not safe))
                             (cons __tmp182957 _r178269_)))))
                    (declare (not safe))
                    (foldr2 __tmp182956
                            _vars178199_
                            _args178241_
                            _fold-in178252_)))
                 (__tmp182959
                  (let ()
                    (declare (not safe))
                    (_recur178196_ _hd178243_ _hd-vars178271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182959
                                                     _fold-out178254_)))))
                                        (let ((__tmp182973
                                               (if (fx> (length _targets178250_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178250_))
                                                   '#!void))
                                              (__tmp182970
                                               (let ((__tmp182972
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178256_
                                                         _lambda-body178273_)))
                                                     (__tmp182971
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur178196_
                                                         _iv178242_
                                                         _vars178199_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182972
                                                  __tmp182971
                                                  _targets178250_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182973
                                           __tmp182970))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body178223178234_))
                                  (let ((_hd178227178279_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body178223178234_)))
                                        (_tl178228178281_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body178223178234_))))
                                    (let ((_depth178284_ _hd178227178279_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl178228178281_))
                                          (let ((_hd178229178286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl178228178281_)))
                                                (_tl178230178288_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl178228178281_))))
                                            (let ((_hd178291_
                                                   _hd178229178286_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl178230178288_))
                                                  (let ((_hd178231178293_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl178230178288_)))
                                                        (_tl178232178295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl178230178288_))))
                                                    (let* ((_iv178298_
                                                            _hd178231178293_)
                                                           (_args178300_
                                                            _tl178232178295_))
                                                      (declare (not safe))
                                                      (_K178226178276_
                                                       _args178300_
                                                       _iv178298_
                                                       _hd178291_
                                                       _depth178284_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178225178238_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178225178238_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E178225178238_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e178217_))
                                _body178214_
                                (let ()
                                  (declare (not safe))
                                  (_BUG178191_ _e178198_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e178200178207_))
                              (let ((_hd178204178305_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e178200178207_)))
                                    (_tl178205178307_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e178200178207_))))
                                (let* ((_tag178310_ _hd178204178305_)
                                       (_body178312_ _tl178205178307_))
                                  (declare (not safe))
                                  (_K178203178302_ _body178312_ _tag178310_)))
                              (let ()
                                (declare (not safe))
                                (_E178202178211_))))))))
                 (_parse177963_
                  (lambda (_e178004_)
                    (letrec ((_make-cons178006_
                              (lambda (_hd178181_ _tl178182_)
                                (let ((_g182983_ _hd178181_)
                                      (_g182985_ _tl178182_))
                                  (begin
                                    (let ((_g182984_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182983_)
                                                 (##vector-length _g182983_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182984_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182984_)))
                                    (let ((_g182986_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182985_)
                                                 (##vector-length _g182985_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182986_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182986_)))
                                    (let ((_hd-e178184_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182983_ 0)))
                                          (_hd-vars178185_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182983_ 1))))
                                      (let ((_tl-e178186_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182985_ 0)))
                                            (_tl-vars178187_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182985_ 1))))
                                        (values (let ((__tmp182987
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e178184_
                                                               _tl-e178186_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182987))
                                                (append _hd-vars178185_
                                                        _tl-vars178187_))))))))
                             (_make-splice178007_
                              (lambda (_where178120_
                                       _depth178121_
                                       _hd178122_
                                       _tl178123_)
                                (let ((_g182988_ _hd178122_)
                                      (_g182990_ _tl178123_))
                                  (begin
                                    (let ((_g182989_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182988_)
                                                 (##vector-length _g182988_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182989_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182989_)))
                                    (let ((_g182991_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182990_)
                                                 (##vector-length _g182990_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182991_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182991_)))
                                    (let ((_hd-e178125_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182988_ 0)))
                                          (_hd-vars178126_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182988_ 1))))
                                      (let ((_tl-e178127_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182990_ 0)))
                                            (_tl-vars178128_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182990_ 1))))
                                        (let _lp178130_ ((_rest178132_
                                                          _hd-vars178126_)
                                                         (_targets178133_ '())
                                                         (_vars178134_
                                                          _tl-vars178128_))
                                          (let* ((_rest178135178145_
                                                  _rest178132_)
                                                 (_else178137178153_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets178133_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177960_
                                                           _where178120_))
                                                        (values (let ((__tmp182992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182993
                                      (let ((__tmp182994
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e178127_
                                                     _targets178133_))))
                                        (declare (not safe))
                                        (cons _hd-e178125_ __tmp182994))))
                                 (declare (not safe))
                                 (cons _depth178121_ __tmp182993))))
                          (declare (not safe))
                          (cons 'splice __tmp182992))
                        _vars178134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K178139178162_
                                                  (lambda (_rest178156_
                                                           _hd-pat178157_
                                                           _hd-depth*178158_)
                                                    (let ((_hd-depth178160_
                                                           (fx- _hd-depth*178158_
                                                                _depth178121_)))
                                                      (if (fxpositive?
                                                           _hd-depth178160_)
                                                          (let ((__tmp182999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp183000
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat178157_))))
                           (declare (not safe))
                           (cons __tmp183000 _targets178133_)))
                        (__tmp182997
                         (let ((__tmp182998
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth178160_ _hd-pat178157_))))
                           (declare (not safe))
                           (cons __tmp182998 _vars178134_))))
                    (declare (not safe))
                    (_lp178130_ _rest178156_ __tmp182999 __tmp182997))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth178160_))
                      (let ((__tmp182995
                             (let ((__tmp182996
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat178157_))))
                               (declare (not safe))
                               (cons __tmp182996 _targets178133_))))
                        (declare (not safe))
                        (_lp178130_ _rest178156_ __tmp182995 _vars178134_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177960_
                         _where178120_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest178135178145_))
                                                (let ((_hd178140178165_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest178135178145_)))
                                                      (_tl178141178167_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest178135178145_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd178140178165_))
                                                      (let ((_hd178142178170_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd178140178165_)))
                    (_tl178143178172_
                     (let () (declare (not safe)) (##cdr _hd178140178165_))))
                (let* ((_hd-depth*178175_ _hd178142178170_)
                       (_hd-pat178177_ _tl178143178172_)
                       (_rest178179_ _tl178141178167_))
                  (declare (not safe))
                  (_K178139178162_
                   _rest178179_
                   _hd-pat178177_
                   _hd-depth*178175_)))
              (let () (declare (not safe)) (_else178137178153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else178137178153_)))))))))))
                             (_recur178008_
                              (lambda (_e178013_ _is-e?178014_)
                                (if (_is-e?178014_ _e178013_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177960_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e178013_))
                                        (let* ((_pat178016_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e178013_)))
                                               (_depth178018_
                                                (##structure-ref
                                                 _pat178016_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth178018_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat178016_))
                                                      (let ((__tmp183016
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth178018_ _pat178016_))))
                (declare (not safe))
                (cons __tmp183016 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat178016_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e178013_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e178013_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e178013_))
                                                (let* ((_e178020178027_
                                                        _e178013_)
                                                       (_E178022178031_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e178020178027_))))
                                                       (_E178021178110_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e178020178027_))
                      (let ((_e178023178035_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e178020178027_))))
                        (let ((_hd178024178038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e178023178035_)))
                              (_tl178025178040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e178023178035_))))
                          (let* ((_hd178043_ _hd178024178038_)
                                 (_rest178045_ _tl178025178040_))
                            (if '#t
                                (if (_is-e?178014_ _hd178043_)
                                    (let* ((_e178046178053_ _rest178045_)
                                           (_E178048178057_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177960_
                                                 _e178013_))))
                                           (_E178047178071_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e178046178053_))
                                                  (let ((_e178049178061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e178046178053_))))
                                                    (let ((_hd178050178064_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e178049178061_)))
                                                          (_tl178051178066_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e178049178061_))))
                                                      (let ((_rest178069_
                                                             _hd178050178064_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl178051178066_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur178008_ _rest178069_ false))
                        (let () (declare (not safe)) (_E178048178057_)))
                    (let () (declare (not safe)) (_E178048178057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178048178057_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E178047178071_)))
                                    (let _lp178075_ ((_rest178077_
                                                      _rest178045_)
                                                     (_depth178078_ '0))
                                      (let* ((_e178079178086_ _rest178077_)
                                             (_E178081178090_
                                              (lambda ()
                                                (if (fxpositive? _depth178078_)
                                                    (let ((__tmp183010
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178008_
                                                              _hd178043_
                                                              _is-e?178014_)))
                                                          (__tmp183009
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178008_
                                                              _rest178077_
                                                              _is-e?178014_))))
                                                      (declare (not safe))
                                                      (_make-splice178007_
                                                       _e178013_
                                                       _depth178078_
                                                       __tmp183010
                                                       __tmp183009))
                                                    (let ((__tmp183008
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178008_
                                                              _hd178043_
                                                              _is-e?178014_)))
                                                          (__tmp183007
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178008_
                                                              _rest178077_
                                                              _is-e?178014_))))
                                                      (declare (not safe))
                                                      (_make-cons178006_
                                                       __tmp183008
                                                       __tmp183007)))))
                                             (_E178080178106_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e178079178086_))
                                                    (let ((_e178082178094_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e178079178086_))))
                                                      (let ((_hd178083178097_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e178082178094_)))
                    (_tl178084178099_
                     (let () (declare (not safe)) (##cdr _e178082178094_))))
                (let* ((_rest-hd178102_ _hd178083178097_)
                       (_rest-tl178104_ _tl178084178099_))
                  (if '#t
                      (if (_is-e?178014_ _rest-hd178102_)
                          (let ((__tmp183015
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth178078_ '1))))
                            (declare (not safe))
                            (_lp178075_ _rest-tl178104_ __tmp183015))
                          (if (fxpositive? _depth178078_)
                              (let ((__tmp183014
                                     (let ()
                                       (declare (not safe))
                                       (_recur178008_
                                        _hd178043_
                                        _is-e?178014_)))
                                    (__tmp183013
                                     (let ()
                                       (declare (not safe))
                                       (_recur178008_
                                        _rest178077_
                                        _is-e?178014_))))
                                (declare (not safe))
                                (_make-splice178007_
                                 _e178013_
                                 _depth178078_
                                 __tmp183014
                                 __tmp183013))
                              (let ((__tmp183012
                                     (let ()
                                       (declare (not safe))
                                       (_recur178008_
                                        _hd178043_
                                        _is-e?178014_)))
                                    (__tmp183011
                                     (let ()
                                       (declare (not safe))
                                       (_recur178008_
                                        _rest178077_
                                        _is-e?178014_))))
                                (declare (not safe))
                                (_make-cons178006_ __tmp183012 __tmp183011))))
                      (let () (declare (not safe)) (_E178081178090_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178081178090_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E178080178106_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E178022178031_))))))
                      (let () (declare (not safe)) (_E178022178031_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178021178110_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e178013_))
                                                    (let ((_g183004_
                                                           (let ((__tmp183006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e178013_)))))
                     (declare (not safe))
                     (_recur178008_ __tmp183006 _is-e?178014_))))
              (begin
                (let ((_g183005_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g183004_)
                             (##vector-length _g183004_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g183005_ 2)))
                      (error "Context expects 2 values" _g183005_)))
                (let ((_e178114_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183004_ 0)))
                      (_vars178115_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183004_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e178114_))
                          _vars178115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e178013_))
                                                        (let ((_g183001_
                                                               (let ((__tmp183003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e178013_)))))
                         (declare (not safe))
                         (_recur178008_ __tmp183003 _is-e?178014_))))
                  (begin
                    (let ((_g183002_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g183001_)
                                 (##vector-length _g183001_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g183002_ 2)))
                          (error "Context expects 2 values" _g183002_)))
                    (let ((_e178117_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g183001_ 0)))
                          (_vars178118_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g183001_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e178117_))
                              _vars178118_))))
                (values (let () (declare (not safe)) (cons 'datum _e178013_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g183017_
                             (let ()
                               (declare (not safe))
                               (_recur178008_ _e178004_ gx#ellipsis?))))
                        (begin
                          (let ((_g183018_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g183017_)
                                       (##vector-length _g183017_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g183018_ 2)))
                                (error "Context expects 2 values" _g183018_)))
                          (let ((_tree178010_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183017_ 0)))
                                (_vars178011_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183017_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars178011_))
                                _tree178010_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177960_
                                   _vars178011_))))))))))
          (let* ((_e177964177974_ _stx177960_)
                 (_E177966177978_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177960_))))
                 (_E177965178000_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177964177974_))
                        (let ((_e177967177982_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177964177974_))))
                          (let ((_hd177968177985_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177967177982_)))
                                (_tl177969177987_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177967177982_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177969177987_))
                                (let ((_e177970177990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177969177987_))))
                                  (let ((_hd177971177993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177970177990_)))
                                        (_tl177972177995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177970177990_))))
                                    (let ((_form177998_ _hd177971177993_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177972177995_))
                                          (if '#t
                                              (let ((__tmp183020
                                                     (let ((__tmp183021
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177963_
                                                               _form177998_))))
                                                       (declare (not safe))
                                                       (_generate177962_
                                                        __tmp183021)))
                                                    (__tmp183019
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177960_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp183020
                                                 __tmp183019))
                                              (let ()
                                                (declare (not safe))
                                                (_E177966177978_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177966177978_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177966177978_)))))
                        (let () (declare (not safe)) (_E177966177978_))))))
            (let () (declare (not safe)) (_E177965178000_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx177224_
               _identifier=?177225_
               _unwrap-e177226_
               _wrap-e177227_)
        (letrec ((_generate-bindings177229_
                  (lambda (_target177824_
                           _ids177825_
                           _clauses177826_
                           _clause-ids177827_
                           _E177828_)
                    (letrec ((_generate1177830_
                              (lambda (_clause177927_
                                       _clause-id177928_
                                       _E177929_)
                                (let ((__tmp183026
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177928_ '())))
                                      (__tmp183022
                                       (let ((__tmp183023
                                              (let ((__tmp183025
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177824_
                                                             '())))
                                                    (__tmp183024
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause177231_
                                                        _target177824_
                                                        _ids177825_
                                                        _clause177927_
                                                        _E177929_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp183025
                                                 __tmp183024))))
                                         (declare (not safe))
                                         (cons __tmp183023 '()))))
                                  (declare (not safe))
                                  (cons __tmp183026 __tmp183022)))))
                      (let _lp177832_ ((_rest177834_ _clauses177826_)
                                       (_rest-ids177835_ _clause-ids177827_)
                                       (_bindings177836_ '()))
                        (let* ((_rest177837177845_ _rest177834_)
                               (_else177839177853_
                                (lambda () _bindings177836_))
                               (_K177841177915_
                                (lambda (_rest177856_ _clause177857_)
                                  (let* ((_rest-ids177858177865_
                                          _rest-ids177835_)
                                         (_E177860177869_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177858177865_)))
                                         (_K177861177903_
                                          (lambda (_rest-ids177872_
                                                   _clause-id177873_)
                                            (let* ((_rest-ids177874177882_
                                                    _rest-ids177872_)
                                                   (_else177876177890_
                                                    (lambda ()
                                                      (let ((__tmp183027
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177830_
                        _clause177857_
                        _clause-id177873_
                        _E177828_))))
                (declare (not safe))
                (cons __tmp183027 _bindings177836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177878177895_
                                                    (lambda (_next-clause-id177893_)
                                                      (let ((__tmp183028
                                                             (let ((__tmp183029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177830_
                               _clause177857_
                               _clause-id177873_
                               _next-clause-id177893_))))
                       (declare (not safe))
                       (cons __tmp183029 _bindings177836_))))
                (declare (not safe))
                (_lp177832_ _rest177856_ _rest-ids177872_ __tmp183028)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177874177882_))
                                                  (let* ((_hd177879177898_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177874177882_)))
                                                         (_next-clause-id177901_
                                                          _hd177879177898_))
                                                    (declare (not safe))
                                                    (_K177878177895_
                                                     _next-clause-id177901_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177876177890_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177858177865_))
                                        (let ((_hd177862177906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177858177865_)))
                                              (_tl177863177908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177858177865_))))
                                          (let* ((_clause-id177911_
                                                  _hd177862177906_)
                                                 (_rest-ids177913_
                                                  _tl177863177908_))
                                            (declare (not safe))
                                            (_K177861177903_
                                             _rest-ids177913_
                                             _clause-id177911_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177860177869_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177837177845_))
                              (let ((_hd177842177918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177837177845_)))
                                    (_tl177843177920_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177837177845_))))
                                (let* ((_clause177923_ _hd177842177918_)
                                       (_rest177925_ _tl177843177920_))
                                  (declare (not safe))
                                  (_K177841177915_
                                   _rest177925_
                                   _clause177923_)))
                              (let ()
                                (declare (not safe))
                                (_else177839177853_))))))))
                 (_generate-body177230_
                  (lambda (_bindings177784_ _body177785_)
                    (let _recur177787_ ((_rest177789_ _bindings177784_))
                      (let* ((_rest177790177798_ _rest177789_)
                             (_else177792177806_ (lambda () _body177785_))
                             (_K177794177812_
                              (lambda (_rest177809_ _hd177810_)
                                (let ((__tmp183031
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177810_ '())))
                                      (__tmp183030
                                       (let ()
                                         (declare (not safe))
                                         (_recur177787_ _rest177809_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp183031
                                   __tmp183030)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177790177798_))
                            (let ((_hd177795177815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177790177798_)))
                                  (_tl177796177817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177790177798_))))
                              (let* ((_hd177820_ _hd177795177815_)
                                     (_rest177822_ _tl177796177817_))
                                (declare (not safe))
                                (_K177794177812_ _rest177822_ _hd177820_)))
                            (let ()
                              (declare (not safe))
                              (_else177792177806_)))))))
                 (_generate-clause177231_
                  (lambda (_target177647_ _ids177648_ _clause177649_ _E177650_)
                    (letrec ((_generate1177652_
                              (lambda (_hd177739_ _fender177740_ _body177741_)
                                (let ((_g183032_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause177233_
                                          _hd177739_
                                          _ids177648_))))
                                  (begin
                                    (let ((_g183033_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183032_)
                                                 (##vector-length _g183032_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183033_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183033_)))
                                    (let ((_e177743_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183032_ 0)))
                                          (_mvars177744_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183032_ 1))))
                                      (let* ((_pvars177746_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177744_))))
                                             (_E177748_
                                              (let ((__tmp183034
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177647_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177650_ __tmp183034)))
                                             (_K177781_
                                              (let ((__tmp183035
                                                     (let ((__tmp183037
                                                            (map (lambda (_mvar177750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177751_)
                           (let* ((_mvar177752177759_ _mvar177750_)
                                  (_E177754177763_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177752177759_)))
                                  (_K177755177769_
                                   (lambda (_depth177766_ _id177767_)
                                     (let ((__tmp183038
                                            (let ((__tmp183039
                                                   (let ((__tmp183041
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177767_)))
                                                         (__tmp183040
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177751_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp183041
                                                      __tmp183040
                                                      _depth177766_))))
                                              (declare (not safe))
                                              (cons __tmp183039 '()))))
                                       (declare (not safe))
                                       (cons _id177767_ __tmp183038)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177752177759_))
                                 (let ((_hd177756177772_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177752177759_)))
                                       (_tl177757177774_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177752177759_))))
                                   (let* ((_id177777_ _hd177756177772_)
                                          (_depth177779_ _tl177757177774_))
                                     (declare (not safe))
                                     (_K177755177769_
                                      _depth177779_
                                      _id177777_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177754177763_)))))
                         _mvars177744_
                         _pvars177746_))
                   (__tmp183036
                    (if (let () (declare (not safe)) (eq? _fender177740_ '#t))
                        _body177741_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177740_
                           _body177741_
                           _E177748_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp183037 __tmp183036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177746_
                                                 __tmp183035))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match177232_
                                           _hd177739_
                                           _target177647_
                                           _e177743_
                                           _mvars177744_
                                           _K177781_
                                           _E177748_)))))))))
                      (let* ((_e177653177673_ _clause177649_)
                             (_E177662177677_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177653177673_))))
                             (_E177655177711_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177653177673_))
                                    (let ((_e177663177681_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177653177673_))))
                                      (let ((_hd177664177684_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177663177681_)))
                                            (_tl177665177686_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177663177681_))))
                                        (let ((_hd177689_ _hd177664177684_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177665177686_))
                                              (let ((_e177666177691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177665177686_))))
                                                (let ((_hd177667177694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177666177691_)))
                                                      (_tl177668177696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177666177691_))))
                                                  (let ((_fender177699_
                                                         _hd177667177694_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177668177696_))
                                                        (let ((_e177669177701_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177668177696_))))
                  (let ((_hd177670177704_
                         (let () (declare (not safe)) (##car _e177669177701_)))
                        (_tl177671177706_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177669177701_))))
                    (let ((_body177709_ _hd177670177704_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177671177706_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177652_
                                 _hd177689_
                                 _fender177699_
                                 _body177709_))
                              (let () (declare (not safe)) (_E177662177677_)))
                          (let () (declare (not safe)) (_E177662177677_))))))
                (let () (declare (not safe)) (_E177662177677_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177662177677_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177662177677_)))))
                             (_E177654177735_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177653177673_))
                                    (let ((_e177656177715_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177653177673_))))
                                      (let ((_hd177657177718_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177656177715_)))
                                            (_tl177658177720_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177656177715_))))
                                        (let ((_hd177723_ _hd177657177718_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177658177720_))
                                              (let ((_e177659177725_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177658177720_))))
                                                (let ((_hd177660177728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177659177725_)))
                                                      (_tl177661177730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177659177725_))))
                                                  (let ((_body177733_
                                                         _hd177660177728_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177661177730_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177652_
                                                               _hd177723_
                                                               '#t
                                                               _body177733_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177655177711_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177655177711_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177655177711_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177655177711_))))))
                        (let () (declare (not safe)) (_E177654177735_))))))
                 (_generate-match177232_
                  (lambda (_where177396_
                           _target177397_
                           _hd177398_
                           _mvars177399_
                           _K177400_
                           _E177401_)
                    (letrec ((_BUG177403_
                              (lambda (_q177645_)
                                (error '"BUG: syntax-case; generate"
                                       _stx177224_
                                       _hd177398_
                                       _q177645_)))
                             (_recur177404_
                              (lambda (_e177495_
                                       _vars177496_
                                       _target177497_
                                       _E177498_
                                       _k177499_)
                                (let* ((_e177500177507_ _e177495_)
                                       (_E177502177511_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177500177507_)))
                                       (_K177503177633_
                                        (lambda (_body177514_ _tag177515_)
                                          (let ((_$e177517_ _tag177515_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177517_))
                                                (_k177499_ _vars177496_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177517_))
                                                    (let ((__tmp183148
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177497_)))
                                                          (__tmp183144
                                                           (let ((__tmp183146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183147
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e177227_
                                    _body177514_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?177225_
                             __tmp183147
                             _target177497_)))
                         (__tmp183145 (_k177499_ _vars177496_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp183146 __tmp183145 _E177498_))))
              (declare (not safe))
              (gx#core-list 'if __tmp183148 __tmp183144 _E177498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177517_))
                                                        (_k177499_
                                                         (let ((__tmp183143
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177514_ _target177497_))))
                   (declare (not safe))
                   (cons __tmp183143 _vars177496_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177517_))
                    (let ((_$e177520_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177521_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177522_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp183142
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177497_)))
                            (__tmp183123
                             (let ((__tmp183137
                                    (let ((__tmp183138
                                           (let ((__tmp183141
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177520_ '())))
                                                 (__tmp183139
                                                  (let ((__tmp183140
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e177226_
                                                            _target177497_))))
                                                    (declare (not safe))
                                                    (cons __tmp183140 '()))))
                                             (declare (not safe))
                                             (cons __tmp183141 __tmp183139))))
                                      (declare (not safe))
                                      (cons __tmp183138 '())))
                                   (__tmp183124
                                    (let ((__tmp183127
                                           (let ((__tmp183133
                                                  (let ((__tmp183136
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp183134
                 (let ((__tmp183135
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177520_))))
                   (declare (not safe))
                   (cons __tmp183135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183136
                                                          __tmp183134)))
                                                 (__tmp183128
                                                  (let ((__tmp183129
                                                         (let ((__tmp183132
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177522_ '())))
                       (__tmp183130
                        (let ((__tmp183131
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177520_))))
                          (declare (not safe))
                          (cons __tmp183131 '()))))
                   (declare (not safe))
                   (cons __tmp183132 __tmp183130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183129 '()))))
                                             (declare (not safe))
                                             (cons __tmp183133 __tmp183128)))
                                          (__tmp183125
                                           (let* ((_body177523177530_
                                                   _body177514_)
                                                  (_E177525177534_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177523177530_)))
                                                  (_K177526177542_
                                                   (lambda (_tl177537_
                                                            _hd177538_)
                                                     (let ((__tmp183126
                                                            (lambda (_vars177540_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177404_
                         _tl177537_
                         _vars177540_
                         _$tl177522_
                         _E177498_
                         _k177499_)))))
               (declare (not safe))
               (_recur177404_
                _hd177538_
                _vars177496_
                _$hd177521_
                _E177498_
                __tmp183126)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177523177530_))
                                                 (let ((_hd177527177545_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177523177530_)))
                                                       (_tl177528177547_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177523177530_))))
                                                   (let* ((_hd177550_
                                                           _hd177527177545_)
                                                          (_tl177552_
                                                           _tl177528177547_))
                                                     (declare (not safe))
                                                     (_K177526177542_
                                                      _tl177552_
                                                      _hd177550_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177525177534_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp183127
                                       __tmp183125))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp183137
                                __tmp183124))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp183142 __tmp183123 _E177498_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177517_))
                        (let* ((_body177553177560_ _body177514_)
                               (_E177555177564_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177553177560_)))
                               (_K177556177615_
                                (lambda (_tl177567_ _hd177568_)
                                  (let* ((_rlen177570_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177405_ _tl177567_)))
                                         (_$target177572_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177574_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177576_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177578_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177580_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177582_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177584_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177586_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177406_ _hd177568_)))
                                         (_lvars177588_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177586_)))
                                         (_tlvars177590_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177586_)))
                                         (_linit177594_
                                          (map (lambda (_var177592_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177588_)))
                                    (letrec ((_make-loop177597_
                                              (lambda (_vars177601_)
                                                (let ((__tmp183074
                                                       (let ((__tmp183075
                                                              (let ((__tmp183111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177578_ '())))
                            (__tmp183076
                             (let ((__tmp183077
                                    (let ((__tmp183110
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177574_ _lvars177588_)))
                                          (__tmp183078
                                           (let ((__tmp183109
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177574_)))
                                                 (__tmp183087
                                                  (let ((__tmp183104
                                                         (let ((__tmp183105
                                                                (let ((__tmp183108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177580_ '())))
                              (__tmp183106
                               (let ((__tmp183107
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e177226_
                                         _$hd177574_))))
                                 (declare (not safe))
                                 (cons __tmp183107 '()))))
                          (declare (not safe))
                          (cons __tmp183108 __tmp183106))))
                   (declare (not safe))
                   (cons __tmp183105 '())))
                (__tmp183088
                 (let ((__tmp183094
                        (let ((__tmp183100
                               (let ((__tmp183103
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177582_ '())))
                                     (__tmp183101
                                      (let ((__tmp183102
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177580_))))
                                        (declare (not safe))
                                        (cons __tmp183102 '()))))
                                 (declare (not safe))
                                 (cons __tmp183103 __tmp183101)))
                              (__tmp183095
                               (let ((__tmp183096
                                      (let ((__tmp183099
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177584_ '())))
                                            (__tmp183097
                                             (let ((__tmp183098
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177580_))))
                                               (declare (not safe))
                                               (cons __tmp183098 '()))))
                                        (declare (not safe))
                                        (cons __tmp183099 __tmp183097))))
                                 (declare (not safe))
                                 (cons __tmp183096 '()))))
                          (declare (not safe))
                          (cons __tmp183100 __tmp183095)))
                       (__tmp183089
                        (let ((__tmp183090
                               (lambda (_hdvars177603_)
                                 (let ((__tmp183091
                                        (let ((__tmp183092
                                               (map (lambda (_svar177605_
                                                             _lvar177606_)
                                                      (let ((__tmp183093
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177605_ _hdvars177603_ _BUG177403_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp183093 _lvar177606_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177586_
                                                    _lvars177588_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177584_ __tmp183092))))
                                   (declare (not safe))
                                   (cons _$lp177578_ __tmp183091)))))
                          (declare (not safe))
                          (_recur177404_
                           _hd177568_
                           '()
                           _$lp-hd177582_
                           _E177498_
                           __tmp183090))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp183094 __tmp183089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183104
                                                     __tmp183088)))
                                                 (__tmp183079
                                                  (let ((__tmp183083
                                                         (map (lambda (_lvar177608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177609_)
                        (let ((__tmp183086
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177609_ '())))
                              (__tmp183084
                               (let ((__tmp183085
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177608_))))
                                 (declare (not safe))
                                 (cons __tmp183085 '()))))
                          (declare (not safe))
                          (cons __tmp183086 __tmp183084)))
                      _lvars177588_
                      _tlvars177590_))
                (__tmp183080
                 (_k177499_
                  (let ((__tmp183081
                         (lambda (_svar177611_ _tlvar177612_ _r177613_)
                           (let ((__tmp183082
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177611_ _tlvar177612_))))
                             (declare (not safe))
                             (cons __tmp183082 _r177613_)))))
                    (declare (not safe))
                    (foldl2 __tmp183081
                            _vars177601_
                            _svars177586_
                            _tlvars177590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183083
                                                     __tmp183080))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp183109
                                              __tmp183087
                                              __tmp183079))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp183110
                                       __tmp183078))))
                               (declare (not safe))
                               (cons __tmp183077 '()))))
                        (declare (not safe))
                        (cons __tmp183111 __tmp183076))))
                 (declare (not safe))
                 (cons __tmp183075 '())))
              (__tmp183072
               (let ((__tmp183073
                      (let ()
                        (declare (not safe))
                        (cons _$target177572_ _linit177594_))))
                 (declare (not safe))
                 (cons _$lp177578_ __tmp183073))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp183074
                                                   __tmp183072)))))
                                      (let ((_body177599_
                                             (let ((__tmp183113
                                                    (let ((__tmp183114
                                                           (let ((__tmp183117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183118
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177576_ '()))))
                            (declare (not safe))
                            (cons _$target177572_ __tmp183118)))
                         (__tmp183115
                          (let ((__tmp183116
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177497_
                                    _rlen177570_))))
                            (declare (not safe))
                            (cons __tmp183116 '()))))
                     (declare (not safe))
                     (cons __tmp183117 __tmp183115))))
              (declare (not safe))
              (cons __tmp183114 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183112
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177404_
                                                       _tl177567_
                                                       _vars177496_
                                                       _$tl177576_
                                                       _E177498_
                                                       _make-loop177597_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183113
                                                __tmp183112))))
                                        (let ((__tmp183122
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177497_)))
                                              (__tmp183119
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177570_))
                                                   _body177599_
                                                   (let ((__tmp183120
                                                          (let ((__tmp183121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177497_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp183121 _rlen177570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp183120
                                                      _body177599_
                                                      _E177498_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp183122
                                           __tmp183119
                                           _E177498_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177553177560_))
                              (let ((_hd177557177618_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177553177560_)))
                                    (_tl177558177620_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177553177560_))))
                                (let* ((_hd177623_ _hd177557177618_)
                                       (_tl177625_ _tl177558177620_))
                                  (declare (not safe))
                                  (_K177556177615_ _tl177625_ _hd177623_)))
                              (let () (declare (not safe)) (_E177555177564_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177517_))
                            (let ((__tmp183071
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177497_)))
                                  (__tmp183070 (_k177499_ _vars177496_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp183071
                               __tmp183070
                               _E177498_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177517_))
                                (let ((_$e177627_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp183069
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177497_)))
                                        (__tmp183061
                                         (let ((__tmp183063
                                                (let ((__tmp183064
                                                       (let ((__tmp183068
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177627_ '())))
                     (__tmp183065
                      (let ((__tmp183066
                             (let ((__tmp183067
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e177226_
                                       _target177497_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp183067))))
                        (declare (not safe))
                        (cons __tmp183066 '()))))
                 (declare (not safe))
                 (cons __tmp183068 __tmp183065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp183064 '())))
                                               (__tmp183062
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177404_
                                                   _body177514_
                                                   _vars177496_
                                                   _$e177627_
                                                   _E177498_
                                                   _k177499_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp183063
                                            __tmp183062))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp183069
                                     __tmp183061
                                     _E177498_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177517_))
                                    (let ((_$e177629_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp183060
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177497_)))
                                            (__tmp183052
                                             (let ((__tmp183054
                                                    (let ((__tmp183055
                                                           (let ((__tmp183059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177629_ '())))
                         (__tmp183056
                          (let ((__tmp183057
                                 (let ((__tmp183058
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e177226_
                                           _target177497_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp183058))))
                            (declare (not safe))
                            (cons __tmp183057 '()))))
                     (declare (not safe))
                     (cons __tmp183059 __tmp183056))))
              (declare (not safe))
              (cons __tmp183055 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183053
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177404_
                                                       _body177514_
                                                       _vars177496_
                                                       _$e177629_
                                                       _E177498_
                                                       _k177499_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183054
                                                __tmp183053))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp183060
                                         __tmp183052
                                         _E177498_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177517_))
                                        (let ((_$e177631_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp183051
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177497_)))
                                                (__tmp183042
                                                 (let ((__tmp183046
                                                        (let ((__tmp183047
                                                               (let ((__tmp183050
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177631_ '())))
                             (__tmp183048
                              (let ((__tmp183049
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177497_))))
                                (declare (not safe))
                                (cons __tmp183049 '()))))
                         (declare (not safe))
                         (cons __tmp183050 __tmp183048))))
                  (declare (not safe))
                  (cons __tmp183047 '())))
               (__tmp183043
                (let ((__tmp183045
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177631_ _body177514_)))
                      (__tmp183044 (_k177499_ _vars177496_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp183045 __tmp183044 _E177498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp183046
                                                    __tmp183043))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp183051
                                             __tmp183042
                                             _E177498_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177403_ _e177495_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177500177507_))
                                      (let ((_hd177504177636_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177500177507_)))
                                            (_tl177505177638_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177500177507_))))
                                        (let* ((_tag177641_ _hd177504177636_)
                                               (_body177643_ _tl177505177638_))
                                          (declare (not safe))
                                          (_K177503177633_
                                           _body177643_
                                           _tag177641_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177502177511_))))))
                             (_splice-rlen177405_
                              (lambda (_e177457_)
                                (let _lp177459_ ((_e177461_ _e177457_)
                                                 (_n177462_ '0))
                                  (let* ((_e177463177470_ _e177461_)
                                         (_E177465177474_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177463177470_)))
                                         (_K177466177483_
                                          (lambda (_body177477_ _tag177478_)
                                            (let ((_$e177480_ _tag177478_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177480_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx177224_
                                                     _where177396_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177480_))
                                                      (let ((__tmp183150
                                                             (cdr _body177477_))
                                                            (__tmp183149
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177462_ '1))))
                (declare (not safe))
                (_lp177459_ __tmp183150 __tmp183149))
              _n177462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177463177470_))
                                        (let ((_hd177467177486_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177463177470_)))
                                              (_tl177468177488_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177463177470_))))
                                          (let* ((_tag177491_ _hd177467177486_)
                                                 (_body177493_
                                                  _tl177468177488_))
                                            (declare (not safe))
                                            (_K177466177483_
                                             _body177493_
                                             _tag177491_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177465177474_)))))))
                             (_splice-vars177406_
                              (lambda (_e177413_)
                                (let _recur177415_ ((_e177417_ _e177413_)
                                                    (_vars177418_ '()))
                                  (let* ((_e177419177426_ _e177417_)
                                         (_E177421177430_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177419177426_)))
                                         (_K177422177445_
                                          (lambda (_body177433_ _tag177434_)
                                            (let ((_$e177436_ _tag177434_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177436_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177433_
                                                          _vars177418_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177436_))
                  (let () (declare (not safe)) (eq? 'splice _$e177436_)))
              (let ((__tmp183153 (cdr _body177433_))
                    (__tmp183151
                     (let ((__tmp183152 (car _body177433_)))
                       (declare (not safe))
                       (_recur177415_ __tmp183152 _vars177418_))))
                (declare (not safe))
                (_recur177415_ __tmp183153 __tmp183151))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177436_))
                      (let () (declare (not safe)) (eq? 'box _$e177436_)))
                  (let ()
                    (declare (not safe))
                    (_recur177415_ _body177433_ _vars177418_))
                  _vars177418_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177419177426_))
                                        (let ((_hd177423177448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177419177426_)))
                                              (_tl177424177450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177419177426_))))
                                          (let* ((_tag177453_ _hd177423177448_)
                                                 (_body177455_
                                                  _tl177424177450_))
                                            (declare (not safe))
                                            (_K177422177445_
                                             _body177455_
                                             _tag177453_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177421177430_)))))))
                             (_make-body177407_
                              (lambda (_vars177409_)
                                (let ((__tmp183154
                                       (map (lambda (_mvar177411_)
                                              (let ((__tmp183155
                                                     (car _mvar177411_)))
                                                (declare (not safe))
                                                (assgetq __tmp183155
                                                         _vars177409_
                                                         _BUG177403_)))
                                            _mvars177399_)))
                                  (declare (not safe))
                                  (cons _K177400_ __tmp183154)))))
                      (let ()
                        (declare (not safe))
                        (_recur177404_
                         _hd177398_
                         '()
                         _target177397_
                         _E177401_
                         _make-body177407_)))))
                 (_parse-clause177233_
                  (lambda (_hd177302_ _ids177303_)
                    (let _recur177305_ ((_e177307_ _hd177302_)
                                        (_vars177308_ '())
                                        (_depth177309_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177307_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177307_))
                              (values '(any) _vars177308_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177307_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx177224_
                                     _hd177302_))
                                  (if (let ((__tmp183171
                                             (lambda (_id177311_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177307_
                                                  _id177311_)))))
                                        (declare (not safe))
                                        (find __tmp183171 _ids177303_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177307_))
                                              _vars177308_)
                                      (if (let ((__tmp183169
                                                 (lambda (_var177313_)
                                                   (let ((__tmp183170
                                                          (car _var177313_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177307_
                                                      __tmp183170)))))
                                            (declare (not safe))
                                            (find __tmp183169 _vars177308_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx177224_
                                             _e177307_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177307_))
                                                  (let ((__tmp183168
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183168
                                                          _vars177308_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177307_))
                              (let* ((_e177314177321_ _e177307_)
                                     (_E177316177325_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177314177321_))))
                                     (_E177315177386_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177314177321_))
                                            (let ((_e177317177329_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177314177321_))))
                                              (let ((_hd177318177332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177317177329_)))
                                                    (_tl177319177334_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177317177329_))))
                                                (let* ((_hd177337_
                                                        _hd177318177332_)
                                                       (_rest177339_
                                                        _tl177319177334_))
                                                  (if '#t
                                                      (let* ((_make-pair177354_
                                                              (lambda (_tag177341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177342_
                               _tl177343_)
                        (let* ((_hd-depth177345_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177341_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177309_ '1))
                                    _depth177309_))
                               (_g183163_
                                (let ()
                                  (declare (not safe))
                                  (_recur177305_
                                   _hd177342_
                                   _vars177308_
                                   _hd-depth177345_))))
                          (begin
                            (let ((_g183164_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g183163_)
                                         (##vector-length _g183163_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g183164_ 2)))
                                  (error "Context expects 2 values"
                                         _g183164_)))
                            (let ((_hd177347_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183163_ 0)))
                                  (_vars177348_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183163_ 1))))
                              (let ((_g183165_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177305_
                                        _tl177343_
                                        _vars177348_
                                        _depth177309_))))
                                (begin
                                  (let ((_g183166_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g183165_)
                                               (##vector-length _g183165_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g183166_ 2)))
                                        (error "Context expects 2 values"
                                               _g183166_)))
                                  (let ((_tl177350_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183165_ 0)))
                                        (_vars177351_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183165_ 1))))
                                    (let ()
                                      (values (let ((__tmp183167
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177347_
                                                             _tl177350_))))
                                                (declare (not safe))
                                                (cons _tag177341_ __tmp183167))
                                              _vars177351_))))))))))
                     (_e177355177362_ _rest177339_)
                     (_E177357177366_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177354_ 'cons _hd177337_ _rest177339_))))
                     (_E177356177382_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177355177362_))
                            (let ((_e177358177370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177355177362_))))
                              (let ((_hd177359177373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177358177370_)))
                                    (_tl177360177375_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177358177370_))))
                                (let* ((_rest-hd177378_ _hd177359177373_)
                                       (_rest-tl177380_ _tl177360177375_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177378_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177354_
                                             'splice
                                             _hd177337_
                                             _rest-tl177380_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177354_
                                             'cons
                                             _hd177337_
                                             _rest177339_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177357177366_))))))
                            (let () (declare (not safe)) (_E177357177366_))))))
                (let () (declare (not safe)) (_E177356177382_)))
              (let () (declare (not safe)) (_E177316177325_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177316177325_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177315177386_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177307_))
                                  (values '(null) _vars177308_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177307_))
                                      (let ((_g183160_
                                             (let ((__tmp183162
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177307_)))))
                                               (declare (not safe))
                                               (_recur177305_
                                                __tmp183162
                                                _vars177308_
                                                _depth177309_))))
                                        (begin
                                          (let ((_g183161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g183160_)
                                                       (##vector-length
                                                        _g183160_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g183161_ 2)))
                                                (error "Context expects 2 values"
                                                       _g183161_)))
                                          (let ((_e177390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g183160_ 0)))
                                                (_vars177391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g183160_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177390_))
                                                    _vars177391_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177307_))
                                          (let ((_g183157_
                                                 (let ((__tmp183159
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177305_
                                                    __tmp183159
                                                    _vars177308_
                                                    _depth177309_))))
                                            (begin
                                              (let ((_g183158_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183157_)
                                                           (##vector-length
                                                            _g183157_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183158_)))
                                              (let ((_e177393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183157_
                                                        0)))
                                                    (_vars177394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183157_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177393_))
                                                        _vars177394_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177307_))
                                              (values (let ((__tmp183156
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177307_))))
                (declare (not safe))
                (cons 'datum __tmp183156))
              _vars177308_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx177224_
                                                 _e177307_))))))))))))
          (let* ((_e177234177247_ _stx177224_)
                 (_E177236177251_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e177234177247_))))
                 (_E177235177298_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177234177247_))
                        (let ((_e177237177255_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177234177247_))))
                          (let ((_hd177238177258_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177237177255_)))
                                (_tl177239177260_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177237177255_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177239177260_))
                                (let ((_e177240177263_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177239177260_))))
                                  (let ((_hd177241177266_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177240177263_)))
                                        (_tl177242177268_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177240177263_))))
                                    (let ((_expr177271_ _hd177241177266_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl177242177268_))
                                          (let ((_e177243177273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl177242177268_))))
                                            (let ((_hd177244177276_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177243177273_)))
                                                  (_tl177245177278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177243177273_))))
                                              (let* ((_ids177281_
                                                      _hd177244177276_)
                                                     (_clauses177283_
                                                      _tl177245177278_))
                                                (if '#t
                                                    (if (let ((__tmp183189
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177281_))))
                  (declare (not safe))
                  (not __tmp183189))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx177224_
                   _ids177281_))
                (if (let ((__tmp183188
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177283_))))
                      (declare (not safe))
                      (not __tmp183188))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx177224_))
                    (let* ((_ids177285_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177281_)))
                           (_clauses177287_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177283_)))
                           (_clause-ids177289_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177287_)))
                           (_E177291_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177293_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177295_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177287_))
                                _E177291_
                                (car _clause-ids177289_))))
                      (let ((__tmp183173
                             (let ((__tmp183174
                                    (let ((__tmp183176
                                           (let ((__tmp183181
                                                  (let ((__tmp183182
                                                         (let ((__tmp183187
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177291_ '())))
                       (__tmp183183
                        (let ((__tmp183184
                               (let ((__tmp183186
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177293_ '())))
                                     (__tmp183185
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177293_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp183186
                                  __tmp183185))))
                          (declare (not safe))
                          (cons __tmp183184 '()))))
                   (declare (not safe))
                   (cons __tmp183187 __tmp183183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183182 '())))
                                                 (__tmp183177
                                                  (let ((__tmp183180
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings177229_
                                                            _target177293_
                                                            _ids177285_
                                                            _clauses177287_
                                                            _clause-ids177289_
                                                            _E177291_)))
                                                        (__tmp183178
                                                         (let ((__tmp183179
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177271_ '()))))
                   (declare (not safe))
                   (cons _first177295_ __tmp183179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body177230_
                                                     __tmp183180
                                                     __tmp183178))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp183181
                                              __tmp183177)))
                                          (__tmp183175
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx177224_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp183176
                                       __tmp183175))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp183174)))
                            (__tmp183172
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx177224_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp183173 __tmp183172)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177236177251_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177236177251_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177236177251_)))))
                        (let () (declare (not safe)) (_E177236177251_))))))
            (let () (declare (not safe)) (_E177235177298_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177934_)
        (let* ((_identifier=?177936_ 'free-identifier=?)
               (_unwrap-e177938_ 'syntax-e)
               (_wrap-e177940_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177934_
           _identifier=?177936_
           _unwrap-e177938_
           _wrap-e177940_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177942_ _identifier=?177943_)
        (let* ((_unwrap-e177945_ 'syntax-e) (_wrap-e177947_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177942_
           _identifier=?177943_
           _unwrap-e177945_
           _wrap-e177947_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177949_ _identifier=?177950_ _unwrap-e177951_)
        (let ((_wrap-e177953_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177949_
           _identifier=?177950_
           _unwrap-e177951_
           _wrap-e177953_))))
    (define gx#macro-expand-syntax-case
      (lambda _g183191_
        (let ((_g183190_ (let () (declare (not safe)) (##length _g183191_))))
          (cond ((let () (declare (not safe)) (##fx= _g183190_ 1))
                 (apply (lambda (_stx177934_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177934_)))
                        _g183191_))
                ((let () (declare (not safe)) (##fx= _g183190_ 2))
                 (apply (lambda (_stx177942_ _identifier=?177943_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177942_
                             _identifier=?177943_)))
                        _g183191_))
                ((let () (declare (not safe)) (##fx= _g183190_ 3))
                 (apply (lambda (_stx177949_
                                 _identifier=?177950_
                                 _unwrap-e177951_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177949_
                             _identifier=?177950_
                             _unwrap-e177951_)))
                        _g183191_))
                ((let () (declare (not safe)) (##fx= _g183190_ 4))
                 (apply (lambda (_stx177955_
                                 _identifier=?177956_
                                 _unwrap-e177957_
                                 _wrap-e177958_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177955_
                             _identifier=?177956_
                             _unwrap-e177957_
                             _wrap-e177958_)))
                        _g183191_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g183191_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx177221_)
        (if (let () (declare (not safe)) (gx#identifier? _stx177221_))
            (let ((__tmp183192
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx177221_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp183192 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd177179_ . _rest177180_)
        (let ((_len177182_ (length _hd177179_)))
          (let _lp177184_ ((_rest177186_ _rest177180_))
            (let* ((_rest177187177195_ _rest177186_)
                   (_else177189177203_ (lambda () '#!void))
                   (_K177191177209_
                    (lambda (_rest177206_ _hd177207_)
                      (if (fx= _len177182_ (length _hd177207_))
                          (let ()
                            (declare (not safe))
                            (_lp177184_ _rest177206_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd177207_))))))
              (if (let () (declare (not safe)) (##pair? _rest177187177195_))
                  (let ((_hd177192177212_
                         (let ()
                           (declare (not safe))
                           (##car _rest177187177195_)))
                        (_tl177193177214_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest177187177195_))))
                    (let* ((_hd177217_ _hd177192177212_)
                           (_rest177219_ _tl177193177214_))
                      (declare (not safe))
                      (_K177191177209_ _rest177219_ _hd177217_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx177137_ _n177138_)
        (let _lp177140_ ((_rest177142_ _stx177137_) (_r177143_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest177142_))
              (let* ((_g177144177151_
                      (let () (declare (not safe)) (gx#syntax-e _rest177142_)))
                     (_E177146177155_
                      (lambda ()
                        (error '"No clause matching" _g177144177151_)))
                     (_K177147177161_
                      (lambda (_rest177158_ _hd177159_)
                        (let ((__tmp183197
                               (let ()
                                 (declare (not safe))
                                 (cons _hd177159_ _r177143_))))
                          (declare (not safe))
                          (_lp177140_ _rest177158_ __tmp183197)))))
                (if (let () (declare (not safe)) (##pair? _g177144177151_))
                    (let ((_hd177148177164_
                           (let ()
                             (declare (not safe))
                             (##car _g177144177151_)))
                          (_tl177149177166_
                           (let ()
                             (declare (not safe))
                             (##cdr _g177144177151_))))
                      (let* ((_hd177169_ _hd177148177164_)
                             (_rest177171_ _tl177149177166_))
                        (declare (not safe))
                        (_K177147177161_ _rest177171_ _hd177169_)))
                    (let () (declare (not safe)) (_E177146177155_))))
              (let _lp177173_ ((_n177175_ _n177138_)
                               (_l177176_ _r177143_)
                               (_r177177_ _rest177142_))
                (if (let () (declare (not safe)) (null? _l177176_))
                    (values _l177176_ _r177177_)
                    (if (fxpositive? _n177175_)
                        (let ((__tmp183196
                               (let ()
                                 (declare (not safe))
                                 (fx- _n177175_ '1)))
                              (__tmp183195 (cdr _l177176_))
                              (__tmp183193
                               (let ((__tmp183194 (car _l177176_)))
                                 (declare (not safe))
                                 (cons __tmp183194 _r177177_))))
                          (declare (not safe))
                          (_lp177173_ __tmp183196 __tmp183195 __tmp183193))
                        (values (reverse _l177176_) _r177177_))))))))))
