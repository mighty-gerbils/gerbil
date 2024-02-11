(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707610214)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182948
             (let ((__tmp182949
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182949 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp182948
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178477_
        (apply make-struct-instance gx#syntax-pattern::t _$args178477_)))
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
      (lambda (_self178474_ _stx178475_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178475_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177956_)
        (letrec ((_generate177958_
                  (lambda (_e178185_)
                    (letrec ((_BUG178187_
                              (lambda (_q178349_)
                                (error '"BUG: syntax; generate"
                                       _stx177956_
                                       _e178185_
                                       _q178349_)))
                             (_local-pattern-e178188_
                              (lambda (_pat178347_)
                                (let ((__tmp182950
                                       (##structure-ref
                                        _pat178347_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182950))))
                             (_getvar178189_
                              (lambda (_q178344_ _vars178345_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178344_
                                           _vars178345_
                                           _BUG178187_))))
                             (_getarg178190_
                              (lambda (_arg178310_ _vars178311_)
                                (let* ((_arg178312178319_ _arg178310_)
                                       (_E178314178323_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178312178319_)))
                                       (_K178315178332_
                                        (lambda (_e178326_ _tag178327_)
                                          (let ((_$e178329_ _tag178327_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178329_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar178189_
                                                   _e178326_
                                                   _vars178311_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178329_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e178188_
                                                       _e178326_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG178187_
                                                       _arg178310_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178312178319_))
                                      (let ((_hd178316178335_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178312178319_)))
                                            (_tl178317178337_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178312178319_))))
                                        (let* ((_tag178340_ _hd178316178335_)
                                               (_e178342_ _tl178317178337_))
                                          (declare (not safe))
                                          (_K178315178332_
                                           _e178342_
                                           _tag178340_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178314178323_)))))))
                      (let _recur178192_ ((_e178194_ _e178185_)
                                          (_vars178195_ '()))
                        (let* ((_e178196178203_ _e178194_)
                               (_E178198178207_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e178196178203_)))
                               (_K178199178298_
                                (lambda (_body178210_ _tag178211_)
                                  (let ((_$e178213_ _tag178211_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e178213_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body178210_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e178213_))
                                            (let ((_id178216_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body178210_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id178216_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks178218_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id178216_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks178218_))
                                                        (let ((__tmp182978
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body178210_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182978))
                (let ((__tmp182977
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body178210_)))
                      (__tmp182976
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body178210_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182977
                   __tmp182976
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id178216_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body178210_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG178187_
                                                         _e178194_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e178213_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e178188_
                                                   _body178210_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e178213_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar178189_
                                                       _body178210_
                                                       _vars178195_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e178213_))
                                                        (let ((__tmp182974
                                                               (let ((__tmp182975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body178210_)))
                         (declare (not safe))
                         (_recur178192_ __tmp182975 _vars178195_)))
                      (__tmp182972
                       (let ((__tmp182973 (cdr _body178210_)))
                         (declare (not safe))
                         (_recur178192_ __tmp182973 _vars178195_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182974 __tmp182972))
                (if (let () (declare (not safe)) (eq? 'vector _$e178213_))
                    (let ((__tmp182971
                           (let ()
                             (declare (not safe))
                             (_recur178192_ _body178210_ _vars178195_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182971))
                    (if (let () (declare (not safe)) (eq? 'box _$e178213_))
                        (let ((__tmp182970
                               (let ()
                                 (declare (not safe))
                                 (_recur178192_ _body178210_ _vars178195_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182970))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e178213_))
                            (let* ((_body178219178230_ _body178210_)
                                   (_E178221178234_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body178219178230_)))
                                   (_K178222178272_
                                    (lambda (_args178237_
                                             _iv178238_
                                             _hd178239_
                                             _depth178240_)
                                      (let* ((_targets178246_
                                              (map (lambda (_g178241178243_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg178190_
                                                        _g178241178243_
                                                        _vars178195_)))
                                                   _args178237_))
                                             (_fold-in178248_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args178237_)))
                                             (_fold-out178250_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178252_
                                              (let ((__tmp182951
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178250_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182951
                                                        _fold-in178248_)))
                                             (_lambda-body178269_
                                              (if (fx> _depth178240_ '1)
                                                  (let ((_r-args178260_
                                                         (map (lambda (_arg178254_)
                                                                (let ((__tmp182956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178254_)))
                          (declare (not safe))
                          (cons 'ref __tmp182956)))
                      _args178237_))
                (_r-vars178261_
                 (let ((__tmp182957
                        (lambda (_arg178256_ _var178257_ _r178258_)
                          (let ((__tmp182958
                                 (let ((__tmp182959 (cdr _arg178256_)))
                                   (declare (not safe))
                                   (cons __tmp182959 _var178257_))))
                            (declare (not safe))
                            (cons __tmp182958 _r178258_)))))
                   (declare (not safe))
                   (foldr2 __tmp182957
                           _vars178195_
                           _args178237_
                           _fold-in178248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182960
                                                           (let ((__tmp182961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182965
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178240_ '1)))
                                (__tmp182962
                                 (let ((__tmp182963
                                        (let ((__tmp182964
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178250_))))
                                          (declare (not safe))
                                          (cons __tmp182964 _r-args178260_))))
                                   (declare (not safe))
                                   (cons _hd178239_ __tmp182963))))
                            (declare (not safe))
                            (cons __tmp182965 __tmp182962))))
                     (declare (not safe))
                     (cons 'splice __tmp182961))))
              (declare (not safe))
              (_recur178192_ __tmp182960 _r-vars178261_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178267_
                                                          (let ((__tmp182952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178263_ _var178264_ _r178265_)
                           (let ((__tmp182953
                                  (let ((__tmp182954 (cdr _arg178263_)))
                                    (declare (not safe))
                                    (cons __tmp182954 _var178264_))))
                             (declare (not safe))
                             (cons __tmp182953 _r178265_)))))
                    (declare (not safe))
                    (foldr2 __tmp182952
                            _vars178195_
                            _args178237_
                            _fold-in178248_)))
                 (__tmp182955
                  (let ()
                    (declare (not safe))
                    (_recur178192_ _hd178239_ _hd-vars178267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182955
                                                     _fold-out178250_)))))
                                        (let ((__tmp182969
                                               (if (fx> (length _targets178246_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178246_))
                                                   '#!void))
                                              (__tmp182966
                                               (let ((__tmp182968
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178252_
                                                         _lambda-body178269_)))
                                                     (__tmp182967
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur178192_
                                                         _iv178238_
                                                         _vars178195_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182968
                                                  __tmp182967
                                                  _targets178246_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182969
                                           __tmp182966))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body178219178230_))
                                  (let ((_hd178223178275_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body178219178230_)))
                                        (_tl178224178277_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body178219178230_))))
                                    (let ((_depth178280_ _hd178223178275_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl178224178277_))
                                          (let ((_hd178225178282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl178224178277_)))
                                                (_tl178226178284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl178224178277_))))
                                            (let ((_hd178287_
                                                   _hd178225178282_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl178226178284_))
                                                  (let ((_hd178227178289_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl178226178284_)))
                                                        (_tl178228178291_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl178226178284_))))
                                                    (let* ((_iv178294_
                                                            _hd178227178289_)
                                                           (_args178296_
                                                            _tl178228178291_))
                                                      (declare (not safe))
                                                      (_K178222178272_
                                                       _args178296_
                                                       _iv178294_
                                                       _hd178287_
                                                       _depth178280_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178221178234_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178221178234_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E178221178234_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e178213_))
                                _body178210_
                                (let ()
                                  (declare (not safe))
                                  (_BUG178187_ _e178194_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e178196178203_))
                              (let ((_hd178200178301_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e178196178203_)))
                                    (_tl178201178303_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e178196178203_))))
                                (let* ((_tag178306_ _hd178200178301_)
                                       (_body178308_ _tl178201178303_))
                                  (declare (not safe))
                                  (_K178199178298_ _body178308_ _tag178306_)))
                              (let ()
                                (declare (not safe))
                                (_E178198178207_))))))))
                 (_parse177959_
                  (lambda (_e178000_)
                    (letrec ((_make-cons178002_
                              (lambda (_hd178177_ _tl178178_)
                                (let ((_g182979_ _hd178177_)
                                      (_g182981_ _tl178178_))
                                  (begin
                                    (let ((_g182980_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182979_)
                                                 (##vector-length _g182979_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182980_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182980_)))
                                    (let ((_g182982_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182981_)
                                                 (##vector-length _g182981_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182982_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182982_)))
                                    (let ((_hd-e178180_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182979_ 0)))
                                          (_hd-vars178181_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182979_ 1))))
                                      (let ((_tl-e178182_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182981_ 0)))
                                            (_tl-vars178183_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182981_ 1))))
                                        (values (let ((__tmp182983
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e178180_
                                                               _tl-e178182_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182983))
                                                (append _hd-vars178181_
                                                        _tl-vars178183_))))))))
                             (_make-splice178003_
                              (lambda (_where178116_
                                       _depth178117_
                                       _hd178118_
                                       _tl178119_)
                                (let ((_g182984_ _hd178118_)
                                      (_g182986_ _tl178119_))
                                  (begin
                                    (let ((_g182985_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182984_)
                                                 (##vector-length _g182984_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182985_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182985_)))
                                    (let ((_g182987_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182986_)
                                                 (##vector-length _g182986_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182987_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182987_)))
                                    (let ((_hd-e178121_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182984_ 0)))
                                          (_hd-vars178122_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182984_ 1))))
                                      (let ((_tl-e178123_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182986_ 0)))
                                            (_tl-vars178124_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182986_ 1))))
                                        (let _lp178126_ ((_rest178128_
                                                          _hd-vars178122_)
                                                         (_targets178129_ '())
                                                         (_vars178130_
                                                          _tl-vars178124_))
                                          (let* ((_rest178131178141_
                                                  _rest178128_)
                                                 (_else178133178149_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets178129_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177956_
                                                           _where178116_))
                                                        (values (let ((__tmp182988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182989
                                      (let ((__tmp182990
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e178123_
                                                     _targets178129_))))
                                        (declare (not safe))
                                        (cons _hd-e178121_ __tmp182990))))
                                 (declare (not safe))
                                 (cons _depth178117_ __tmp182989))))
                          (declare (not safe))
                          (cons 'splice __tmp182988))
                        _vars178130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K178135178158_
                                                  (lambda (_rest178152_
                                                           _hd-pat178153_
                                                           _hd-depth*178154_)
                                                    (let ((_hd-depth178156_
                                                           (fx- _hd-depth*178154_
                                                                _depth178117_)))
                                                      (if (fxpositive?
                                                           _hd-depth178156_)
                                                          (let ((__tmp182995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182996
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat178153_))))
                           (declare (not safe))
                           (cons __tmp182996 _targets178129_)))
                        (__tmp182993
                         (let ((__tmp182994
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth178156_ _hd-pat178153_))))
                           (declare (not safe))
                           (cons __tmp182994 _vars178130_))))
                    (declare (not safe))
                    (_lp178126_ _rest178152_ __tmp182995 __tmp182993))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth178156_))
                      (let ((__tmp182991
                             (let ((__tmp182992
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat178153_))))
                               (declare (not safe))
                               (cons __tmp182992 _targets178129_))))
                        (declare (not safe))
                        (_lp178126_ _rest178152_ __tmp182991 _vars178130_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177956_
                         _where178116_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest178131178141_))
                                                (let ((_hd178136178161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest178131178141_)))
                                                      (_tl178137178163_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest178131178141_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd178136178161_))
                                                      (let ((_hd178138178166_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd178136178161_)))
                    (_tl178139178168_
                     (let () (declare (not safe)) (##cdr _hd178136178161_))))
                (let* ((_hd-depth*178171_ _hd178138178166_)
                       (_hd-pat178173_ _tl178139178168_)
                       (_rest178175_ _tl178137178163_))
                  (declare (not safe))
                  (_K178135178158_
                   _rest178175_
                   _hd-pat178173_
                   _hd-depth*178171_)))
              (let () (declare (not safe)) (_else178133178149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else178133178149_)))))))))))
                             (_recur178004_
                              (lambda (_e178009_ _is-e?178010_)
                                (if (_is-e?178010_ _e178009_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177956_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e178009_))
                                        (let* ((_pat178012_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e178009_)))
                                               (_depth178014_
                                                (##structure-ref
                                                 _pat178012_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth178014_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat178012_))
                                                      (let ((__tmp183012
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth178014_ _pat178012_))))
                (declare (not safe))
                (cons __tmp183012 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat178012_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e178009_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e178009_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e178009_))
                                                (let* ((_e178016178023_
                                                        _e178009_)
                                                       (_E178018178027_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e178016178023_))))
                                                       (_E178017178106_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e178016178023_))
                      (let ((_e178019178031_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e178016178023_))))
                        (let ((_hd178020178034_
                               (let ()
                                 (declare (not safe))
                                 (##car _e178019178031_)))
                              (_tl178021178036_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e178019178031_))))
                          (let* ((_hd178039_ _hd178020178034_)
                                 (_rest178041_ _tl178021178036_))
                            (if '#t
                                (if (_is-e?178010_ _hd178039_)
                                    (let* ((_e178042178049_ _rest178041_)
                                           (_E178044178053_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177956_
                                                 _e178009_))))
                                           (_E178043178067_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e178042178049_))
                                                  (let ((_e178045178057_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e178042178049_))))
                                                    (let ((_hd178046178060_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e178045178057_)))
                                                          (_tl178047178062_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e178045178057_))))
                                                      (let ((_rest178065_
                                                             _hd178046178060_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl178047178062_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur178004_ _rest178065_ false))
                        (let () (declare (not safe)) (_E178044178053_)))
                    (let () (declare (not safe)) (_E178044178053_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178044178053_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E178043178067_)))
                                    (let _lp178071_ ((_rest178073_
                                                      _rest178041_)
                                                     (_depth178074_ '0))
                                      (let* ((_e178075178082_ _rest178073_)
                                             (_E178077178086_
                                              (lambda ()
                                                (if (fxpositive? _depth178074_)
                                                    (let ((__tmp183006
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178004_
                                                              _hd178039_
                                                              _is-e?178010_)))
                                                          (__tmp183005
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178004_
                                                              _rest178073_
                                                              _is-e?178010_))))
                                                      (declare (not safe))
                                                      (_make-splice178003_
                                                       _e178009_
                                                       _depth178074_
                                                       __tmp183006
                                                       __tmp183005))
                                                    (let ((__tmp183004
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178004_
                                                              _hd178039_
                                                              _is-e?178010_)))
                                                          (__tmp183003
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178004_
                                                              _rest178073_
                                                              _is-e?178010_))))
                                                      (declare (not safe))
                                                      (_make-cons178002_
                                                       __tmp183004
                                                       __tmp183003)))))
                                             (_E178076178102_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e178075178082_))
                                                    (let ((_e178078178090_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e178075178082_))))
                                                      (let ((_hd178079178093_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e178078178090_)))
                    (_tl178080178095_
                     (let () (declare (not safe)) (##cdr _e178078178090_))))
                (let* ((_rest-hd178098_ _hd178079178093_)
                       (_rest-tl178100_ _tl178080178095_))
                  (if '#t
                      (if (_is-e?178010_ _rest-hd178098_)
                          (let ((__tmp183011
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth178074_ '1))))
                            (declare (not safe))
                            (_lp178071_ _rest-tl178100_ __tmp183011))
                          (if (fxpositive? _depth178074_)
                              (let ((__tmp183010
                                     (let ()
                                       (declare (not safe))
                                       (_recur178004_
                                        _hd178039_
                                        _is-e?178010_)))
                                    (__tmp183009
                                     (let ()
                                       (declare (not safe))
                                       (_recur178004_
                                        _rest178073_
                                        _is-e?178010_))))
                                (declare (not safe))
                                (_make-splice178003_
                                 _e178009_
                                 _depth178074_
                                 __tmp183010
                                 __tmp183009))
                              (let ((__tmp183008
                                     (let ()
                                       (declare (not safe))
                                       (_recur178004_
                                        _hd178039_
                                        _is-e?178010_)))
                                    (__tmp183007
                                     (let ()
                                       (declare (not safe))
                                       (_recur178004_
                                        _rest178073_
                                        _is-e?178010_))))
                                (declare (not safe))
                                (_make-cons178002_ __tmp183008 __tmp183007))))
                      (let () (declare (not safe)) (_E178077178086_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178077178086_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E178076178102_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E178018178027_))))))
                      (let () (declare (not safe)) (_E178018178027_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178017178106_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e178009_))
                                                    (let ((_g183000_
                                                           (let ((__tmp183002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e178009_)))))
                     (declare (not safe))
                     (_recur178004_ __tmp183002 _is-e?178010_))))
              (begin
                (let ((_g183001_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g183000_)
                             (##vector-length _g183000_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g183001_ 2)))
                      (error "Context expects 2 values" _g183001_)))
                (let ((_e178110_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183000_ 0)))
                      (_vars178111_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183000_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e178110_))
                          _vars178111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e178009_))
                                                        (let ((_g182997_
                                                               (let ((__tmp182999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e178009_)))))
                         (declare (not safe))
                         (_recur178004_ __tmp182999 _is-e?178010_))))
                  (begin
                    (let ((_g182998_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g182997_)
                                 (##vector-length _g182997_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g182998_ 2)))
                          (error "Context expects 2 values" _g182998_)))
                    (let ((_e178113_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182997_ 0)))
                          (_vars178114_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182997_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e178113_))
                              _vars178114_))))
                (values (let () (declare (not safe)) (cons 'datum _e178009_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g183013_
                             (let ()
                               (declare (not safe))
                               (_recur178004_ _e178000_ gx#ellipsis?))))
                        (begin
                          (let ((_g183014_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g183013_)
                                       (##vector-length _g183013_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g183014_ 2)))
                                (error "Context expects 2 values" _g183014_)))
                          (let ((_tree178006_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183013_ 0)))
                                (_vars178007_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183013_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars178007_))
                                _tree178006_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177956_
                                   _vars178007_))))))))))
          (let* ((_e177960177970_ _stx177956_)
                 (_E177962177974_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177956_))))
                 (_E177961177996_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177960177970_))
                        (let ((_e177963177978_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177960177970_))))
                          (let ((_hd177964177981_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177963177978_)))
                                (_tl177965177983_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177963177978_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177965177983_))
                                (let ((_e177966177986_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177965177983_))))
                                  (let ((_hd177967177989_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177966177986_)))
                                        (_tl177968177991_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177966177986_))))
                                    (let ((_form177994_ _hd177967177989_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177968177991_))
                                          (if '#t
                                              (let ((__tmp183016
                                                     (let ((__tmp183017
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177959_
                                                               _form177994_))))
                                                       (declare (not safe))
                                                       (_generate177958_
                                                        __tmp183017)))
                                                    (__tmp183015
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177956_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp183016
                                                 __tmp183015))
                                              (let ()
                                                (declare (not safe))
                                                (_E177962177974_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177962177974_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177962177974_)))))
                        (let () (declare (not safe)) (_E177962177974_))))))
            (let () (declare (not safe)) (_E177961177996_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx177220_
               _identifier=?177221_
               _unwrap-e177222_
               _wrap-e177223_)
        (letrec ((_generate-bindings177225_
                  (lambda (_target177820_
                           _ids177821_
                           _clauses177822_
                           _clause-ids177823_
                           _E177824_)
                    (letrec ((_generate1177826_
                              (lambda (_clause177923_
                                       _clause-id177924_
                                       _E177925_)
                                (let ((__tmp183022
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177924_ '())))
                                      (__tmp183018
                                       (let ((__tmp183019
                                              (let ((__tmp183021
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177820_
                                                             '())))
                                                    (__tmp183020
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause177227_
                                                        _target177820_
                                                        _ids177821_
                                                        _clause177923_
                                                        _E177925_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp183021
                                                 __tmp183020))))
                                         (declare (not safe))
                                         (cons __tmp183019 '()))))
                                  (declare (not safe))
                                  (cons __tmp183022 __tmp183018)))))
                      (let _lp177828_ ((_rest177830_ _clauses177822_)
                                       (_rest-ids177831_ _clause-ids177823_)
                                       (_bindings177832_ '()))
                        (let* ((_rest177833177841_ _rest177830_)
                               (_else177835177849_
                                (lambda () _bindings177832_))
                               (_K177837177911_
                                (lambda (_rest177852_ _clause177853_)
                                  (let* ((_rest-ids177854177861_
                                          _rest-ids177831_)
                                         (_E177856177865_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177854177861_)))
                                         (_K177857177899_
                                          (lambda (_rest-ids177868_
                                                   _clause-id177869_)
                                            (let* ((_rest-ids177870177878_
                                                    _rest-ids177868_)
                                                   (_else177872177886_
                                                    (lambda ()
                                                      (let ((__tmp183023
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177826_
                        _clause177853_
                        _clause-id177869_
                        _E177824_))))
                (declare (not safe))
                (cons __tmp183023 _bindings177832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177874177891_
                                                    (lambda (_next-clause-id177889_)
                                                      (let ((__tmp183024
                                                             (let ((__tmp183025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177826_
                               _clause177853_
                               _clause-id177869_
                               _next-clause-id177889_))))
                       (declare (not safe))
                       (cons __tmp183025 _bindings177832_))))
                (declare (not safe))
                (_lp177828_ _rest177852_ _rest-ids177868_ __tmp183024)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177870177878_))
                                                  (let* ((_hd177875177894_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177870177878_)))
                                                         (_next-clause-id177897_
                                                          _hd177875177894_))
                                                    (declare (not safe))
                                                    (_K177874177891_
                                                     _next-clause-id177897_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177872177886_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177854177861_))
                                        (let ((_hd177858177902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177854177861_)))
                                              (_tl177859177904_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177854177861_))))
                                          (let* ((_clause-id177907_
                                                  _hd177858177902_)
                                                 (_rest-ids177909_
                                                  _tl177859177904_))
                                            (declare (not safe))
                                            (_K177857177899_
                                             _rest-ids177909_
                                             _clause-id177907_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177856177865_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177833177841_))
                              (let ((_hd177838177914_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177833177841_)))
                                    (_tl177839177916_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177833177841_))))
                                (let* ((_clause177919_ _hd177838177914_)
                                       (_rest177921_ _tl177839177916_))
                                  (declare (not safe))
                                  (_K177837177911_
                                   _rest177921_
                                   _clause177919_)))
                              (let ()
                                (declare (not safe))
                                (_else177835177849_))))))))
                 (_generate-body177226_
                  (lambda (_bindings177780_ _body177781_)
                    (let _recur177783_ ((_rest177785_ _bindings177780_))
                      (let* ((_rest177786177794_ _rest177785_)
                             (_else177788177802_ (lambda () _body177781_))
                             (_K177790177808_
                              (lambda (_rest177805_ _hd177806_)
                                (let ((__tmp183027
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177806_ '())))
                                      (__tmp183026
                                       (let ()
                                         (declare (not safe))
                                         (_recur177783_ _rest177805_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp183027
                                   __tmp183026)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177786177794_))
                            (let ((_hd177791177811_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177786177794_)))
                                  (_tl177792177813_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177786177794_))))
                              (let* ((_hd177816_ _hd177791177811_)
                                     (_rest177818_ _tl177792177813_))
                                (declare (not safe))
                                (_K177790177808_ _rest177818_ _hd177816_)))
                            (let ()
                              (declare (not safe))
                              (_else177788177802_)))))))
                 (_generate-clause177227_
                  (lambda (_target177643_ _ids177644_ _clause177645_ _E177646_)
                    (letrec ((_generate1177648_
                              (lambda (_hd177735_ _fender177736_ _body177737_)
                                (let ((_g183028_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause177229_
                                          _hd177735_
                                          _ids177644_))))
                                  (begin
                                    (let ((_g183029_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183028_)
                                                 (##vector-length _g183028_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183029_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183029_)))
                                    (let ((_e177739_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183028_ 0)))
                                          (_mvars177740_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183028_ 1))))
                                      (let* ((_pvars177742_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177740_))))
                                             (_E177744_
                                              (let ((__tmp183030
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177643_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177646_ __tmp183030)))
                                             (_K177777_
                                              (let ((__tmp183031
                                                     (let ((__tmp183033
                                                            (map (lambda (_mvar177746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177747_)
                           (let* ((_mvar177748177755_ _mvar177746_)
                                  (_E177750177759_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177748177755_)))
                                  (_K177751177765_
                                   (lambda (_depth177762_ _id177763_)
                                     (let ((__tmp183034
                                            (let ((__tmp183035
                                                   (let ((__tmp183037
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177763_)))
                                                         (__tmp183036
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177747_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp183037
                                                      __tmp183036
                                                      _depth177762_))))
                                              (declare (not safe))
                                              (cons __tmp183035 '()))))
                                       (declare (not safe))
                                       (cons _id177763_ __tmp183034)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177748177755_))
                                 (let ((_hd177752177768_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177748177755_)))
                                       (_tl177753177770_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177748177755_))))
                                   (let* ((_id177773_ _hd177752177768_)
                                          (_depth177775_ _tl177753177770_))
                                     (declare (not safe))
                                     (_K177751177765_
                                      _depth177775_
                                      _id177773_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177750177759_)))))
                         _mvars177740_
                         _pvars177742_))
                   (__tmp183032
                    (if (let () (declare (not safe)) (eq? _fender177736_ '#t))
                        _body177737_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177736_
                           _body177737_
                           _E177744_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp183033 __tmp183032))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177742_
                                                 __tmp183031))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match177228_
                                           _hd177735_
                                           _target177643_
                                           _e177739_
                                           _mvars177740_
                                           _K177777_
                                           _E177744_)))))))))
                      (let* ((_e177649177669_ _clause177645_)
                             (_E177658177673_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177649177669_))))
                             (_E177651177707_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177649177669_))
                                    (let ((_e177659177677_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177649177669_))))
                                      (let ((_hd177660177680_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177659177677_)))
                                            (_tl177661177682_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177659177677_))))
                                        (let ((_hd177685_ _hd177660177680_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177661177682_))
                                              (let ((_e177662177687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177661177682_))))
                                                (let ((_hd177663177690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177662177687_)))
                                                      (_tl177664177692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177662177687_))))
                                                  (let ((_fender177695_
                                                         _hd177663177690_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177664177692_))
                                                        (let ((_e177665177697_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177664177692_))))
                  (let ((_hd177666177700_
                         (let () (declare (not safe)) (##car _e177665177697_)))
                        (_tl177667177702_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177665177697_))))
                    (let ((_body177705_ _hd177666177700_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177667177702_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177648_
                                 _hd177685_
                                 _fender177695_
                                 _body177705_))
                              (let () (declare (not safe)) (_E177658177673_)))
                          (let () (declare (not safe)) (_E177658177673_))))))
                (let () (declare (not safe)) (_E177658177673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177658177673_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177658177673_)))))
                             (_E177650177731_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177649177669_))
                                    (let ((_e177652177711_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177649177669_))))
                                      (let ((_hd177653177714_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177652177711_)))
                                            (_tl177654177716_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177652177711_))))
                                        (let ((_hd177719_ _hd177653177714_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177654177716_))
                                              (let ((_e177655177721_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177654177716_))))
                                                (let ((_hd177656177724_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177655177721_)))
                                                      (_tl177657177726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177655177721_))))
                                                  (let ((_body177729_
                                                         _hd177656177724_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177657177726_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177648_
                                                               _hd177719_
                                                               '#t
                                                               _body177729_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177651177707_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177651177707_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177651177707_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177651177707_))))))
                        (let () (declare (not safe)) (_E177650177731_))))))
                 (_generate-match177228_
                  (lambda (_where177392_
                           _target177393_
                           _hd177394_
                           _mvars177395_
                           _K177396_
                           _E177397_)
                    (letrec ((_BUG177399_
                              (lambda (_q177641_)
                                (error '"BUG: syntax-case; generate"
                                       _stx177220_
                                       _hd177394_
                                       _q177641_)))
                             (_recur177400_
                              (lambda (_e177491_
                                       _vars177492_
                                       _target177493_
                                       _E177494_
                                       _k177495_)
                                (let* ((_e177496177503_ _e177491_)
                                       (_E177498177507_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177496177503_)))
                                       (_K177499177629_
                                        (lambda (_body177510_ _tag177511_)
                                          (let ((_$e177513_ _tag177511_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177513_))
                                                (_k177495_ _vars177492_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177513_))
                                                    (let ((__tmp183144
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177493_)))
                                                          (__tmp183140
                                                           (let ((__tmp183142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183143
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e177223_
                                    _body177510_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?177221_
                             __tmp183143
                             _target177493_)))
                         (__tmp183141 (_k177495_ _vars177492_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp183142 __tmp183141 _E177494_))))
              (declare (not safe))
              (gx#core-list 'if __tmp183144 __tmp183140 _E177494_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177513_))
                                                        (_k177495_
                                                         (let ((__tmp183139
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177510_ _target177493_))))
                   (declare (not safe))
                   (cons __tmp183139 _vars177492_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177513_))
                    (let ((_$e177516_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177517_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177518_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp183138
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177493_)))
                            (__tmp183119
                             (let ((__tmp183133
                                    (let ((__tmp183134
                                           (let ((__tmp183137
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177516_ '())))
                                                 (__tmp183135
                                                  (let ((__tmp183136
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e177222_
                                                            _target177493_))))
                                                    (declare (not safe))
                                                    (cons __tmp183136 '()))))
                                             (declare (not safe))
                                             (cons __tmp183137 __tmp183135))))
                                      (declare (not safe))
                                      (cons __tmp183134 '())))
                                   (__tmp183120
                                    (let ((__tmp183123
                                           (let ((__tmp183129
                                                  (let ((__tmp183132
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp183130
                 (let ((__tmp183131
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177516_))))
                   (declare (not safe))
                   (cons __tmp183131 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183132
                                                          __tmp183130)))
                                                 (__tmp183124
                                                  (let ((__tmp183125
                                                         (let ((__tmp183128
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177518_ '())))
                       (__tmp183126
                        (let ((__tmp183127
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177516_))))
                          (declare (not safe))
                          (cons __tmp183127 '()))))
                   (declare (not safe))
                   (cons __tmp183128 __tmp183126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183125 '()))))
                                             (declare (not safe))
                                             (cons __tmp183129 __tmp183124)))
                                          (__tmp183121
                                           (let* ((_body177519177526_
                                                   _body177510_)
                                                  (_E177521177530_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177519177526_)))
                                                  (_K177522177538_
                                                   (lambda (_tl177533_
                                                            _hd177534_)
                                                     (let ((__tmp183122
                                                            (lambda (_vars177536_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177400_
                         _tl177533_
                         _vars177536_
                         _$tl177518_
                         _E177494_
                         _k177495_)))))
               (declare (not safe))
               (_recur177400_
                _hd177534_
                _vars177492_
                _$hd177517_
                _E177494_
                __tmp183122)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177519177526_))
                                                 (let ((_hd177523177541_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177519177526_)))
                                                       (_tl177524177543_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177519177526_))))
                                                   (let* ((_hd177546_
                                                           _hd177523177541_)
                                                          (_tl177548_
                                                           _tl177524177543_))
                                                     (declare (not safe))
                                                     (_K177522177538_
                                                      _tl177548_
                                                      _hd177546_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177521177530_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp183123
                                       __tmp183121))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp183133
                                __tmp183120))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp183138 __tmp183119 _E177494_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177513_))
                        (let* ((_body177549177556_ _body177510_)
                               (_E177551177560_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177549177556_)))
                               (_K177552177611_
                                (lambda (_tl177563_ _hd177564_)
                                  (let* ((_rlen177566_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177401_ _tl177563_)))
                                         (_$target177568_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177570_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177572_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177574_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177576_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177578_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177580_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177582_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177402_ _hd177564_)))
                                         (_lvars177584_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177582_)))
                                         (_tlvars177586_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177582_)))
                                         (_linit177590_
                                          (map (lambda (_var177588_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177584_)))
                                    (letrec ((_make-loop177593_
                                              (lambda (_vars177597_)
                                                (let ((__tmp183070
                                                       (let ((__tmp183071
                                                              (let ((__tmp183107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177574_ '())))
                            (__tmp183072
                             (let ((__tmp183073
                                    (let ((__tmp183106
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177570_ _lvars177584_)))
                                          (__tmp183074
                                           (let ((__tmp183105
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177570_)))
                                                 (__tmp183083
                                                  (let ((__tmp183100
                                                         (let ((__tmp183101
                                                                (let ((__tmp183104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177576_ '())))
                              (__tmp183102
                               (let ((__tmp183103
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e177222_
                                         _$hd177570_))))
                                 (declare (not safe))
                                 (cons __tmp183103 '()))))
                          (declare (not safe))
                          (cons __tmp183104 __tmp183102))))
                   (declare (not safe))
                   (cons __tmp183101 '())))
                (__tmp183084
                 (let ((__tmp183090
                        (let ((__tmp183096
                               (let ((__tmp183099
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177578_ '())))
                                     (__tmp183097
                                      (let ((__tmp183098
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177576_))))
                                        (declare (not safe))
                                        (cons __tmp183098 '()))))
                                 (declare (not safe))
                                 (cons __tmp183099 __tmp183097)))
                              (__tmp183091
                               (let ((__tmp183092
                                      (let ((__tmp183095
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177580_ '())))
                                            (__tmp183093
                                             (let ((__tmp183094
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177576_))))
                                               (declare (not safe))
                                               (cons __tmp183094 '()))))
                                        (declare (not safe))
                                        (cons __tmp183095 __tmp183093))))
                                 (declare (not safe))
                                 (cons __tmp183092 '()))))
                          (declare (not safe))
                          (cons __tmp183096 __tmp183091)))
                       (__tmp183085
                        (let ((__tmp183086
                               (lambda (_hdvars177599_)
                                 (let ((__tmp183087
                                        (let ((__tmp183088
                                               (map (lambda (_svar177601_
                                                             _lvar177602_)
                                                      (let ((__tmp183089
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177601_ _hdvars177599_ _BUG177399_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp183089 _lvar177602_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177582_
                                                    _lvars177584_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177580_ __tmp183088))))
                                   (declare (not safe))
                                   (cons _$lp177574_ __tmp183087)))))
                          (declare (not safe))
                          (_recur177400_
                           _hd177564_
                           '()
                           _$lp-hd177578_
                           _E177494_
                           __tmp183086))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp183090 __tmp183085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183100
                                                     __tmp183084)))
                                                 (__tmp183075
                                                  (let ((__tmp183079
                                                         (map (lambda (_lvar177604_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177605_)
                        (let ((__tmp183082
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177605_ '())))
                              (__tmp183080
                               (let ((__tmp183081
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177604_))))
                                 (declare (not safe))
                                 (cons __tmp183081 '()))))
                          (declare (not safe))
                          (cons __tmp183082 __tmp183080)))
                      _lvars177584_
                      _tlvars177586_))
                (__tmp183076
                 (_k177495_
                  (let ((__tmp183077
                         (lambda (_svar177607_ _tlvar177608_ _r177609_)
                           (let ((__tmp183078
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177607_ _tlvar177608_))))
                             (declare (not safe))
                             (cons __tmp183078 _r177609_)))))
                    (declare (not safe))
                    (foldl2 __tmp183077
                            _vars177597_
                            _svars177582_
                            _tlvars177586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183079
                                                     __tmp183076))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp183105
                                              __tmp183083
                                              __tmp183075))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp183106
                                       __tmp183074))))
                               (declare (not safe))
                               (cons __tmp183073 '()))))
                        (declare (not safe))
                        (cons __tmp183107 __tmp183072))))
                 (declare (not safe))
                 (cons __tmp183071 '())))
              (__tmp183068
               (let ((__tmp183069
                      (let ()
                        (declare (not safe))
                        (cons _$target177568_ _linit177590_))))
                 (declare (not safe))
                 (cons _$lp177574_ __tmp183069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp183070
                                                   __tmp183068)))))
                                      (let ((_body177595_
                                             (let ((__tmp183109
                                                    (let ((__tmp183110
                                                           (let ((__tmp183113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183114
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177572_ '()))))
                            (declare (not safe))
                            (cons _$target177568_ __tmp183114)))
                         (__tmp183111
                          (let ((__tmp183112
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177493_
                                    _rlen177566_))))
                            (declare (not safe))
                            (cons __tmp183112 '()))))
                     (declare (not safe))
                     (cons __tmp183113 __tmp183111))))
              (declare (not safe))
              (cons __tmp183110 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183108
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177400_
                                                       _tl177563_
                                                       _vars177492_
                                                       _$tl177572_
                                                       _E177494_
                                                       _make-loop177593_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183109
                                                __tmp183108))))
                                        (let ((__tmp183118
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177493_)))
                                              (__tmp183115
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177566_))
                                                   _body177595_
                                                   (let ((__tmp183116
                                                          (let ((__tmp183117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177493_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp183117 _rlen177566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp183116
                                                      _body177595_
                                                      _E177494_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp183118
                                           __tmp183115
                                           _E177494_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177549177556_))
                              (let ((_hd177553177614_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177549177556_)))
                                    (_tl177554177616_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177549177556_))))
                                (let* ((_hd177619_ _hd177553177614_)
                                       (_tl177621_ _tl177554177616_))
                                  (declare (not safe))
                                  (_K177552177611_ _tl177621_ _hd177619_)))
                              (let () (declare (not safe)) (_E177551177560_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177513_))
                            (let ((__tmp183067
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177493_)))
                                  (__tmp183066 (_k177495_ _vars177492_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp183067
                               __tmp183066
                               _E177494_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177513_))
                                (let ((_$e177623_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp183065
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177493_)))
                                        (__tmp183057
                                         (let ((__tmp183059
                                                (let ((__tmp183060
                                                       (let ((__tmp183064
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177623_ '())))
                     (__tmp183061
                      (let ((__tmp183062
                             (let ((__tmp183063
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e177222_
                                       _target177493_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp183063))))
                        (declare (not safe))
                        (cons __tmp183062 '()))))
                 (declare (not safe))
                 (cons __tmp183064 __tmp183061))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp183060 '())))
                                               (__tmp183058
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177400_
                                                   _body177510_
                                                   _vars177492_
                                                   _$e177623_
                                                   _E177494_
                                                   _k177495_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp183059
                                            __tmp183058))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp183065
                                     __tmp183057
                                     _E177494_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177513_))
                                    (let ((_$e177625_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp183056
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177493_)))
                                            (__tmp183048
                                             (let ((__tmp183050
                                                    (let ((__tmp183051
                                                           (let ((__tmp183055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177625_ '())))
                         (__tmp183052
                          (let ((__tmp183053
                                 (let ((__tmp183054
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e177222_
                                           _target177493_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp183054))))
                            (declare (not safe))
                            (cons __tmp183053 '()))))
                     (declare (not safe))
                     (cons __tmp183055 __tmp183052))))
              (declare (not safe))
              (cons __tmp183051 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183049
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177400_
                                                       _body177510_
                                                       _vars177492_
                                                       _$e177625_
                                                       _E177494_
                                                       _k177495_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183050
                                                __tmp183049))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp183056
                                         __tmp183048
                                         _E177494_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177513_))
                                        (let ((_$e177627_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp183047
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177493_)))
                                                (__tmp183038
                                                 (let ((__tmp183042
                                                        (let ((__tmp183043
                                                               (let ((__tmp183046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177627_ '())))
                             (__tmp183044
                              (let ((__tmp183045
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177493_))))
                                (declare (not safe))
                                (cons __tmp183045 '()))))
                         (declare (not safe))
                         (cons __tmp183046 __tmp183044))))
                  (declare (not safe))
                  (cons __tmp183043 '())))
               (__tmp183039
                (let ((__tmp183041
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177627_ _body177510_)))
                      (__tmp183040 (_k177495_ _vars177492_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp183041 __tmp183040 _E177494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp183042
                                                    __tmp183039))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp183047
                                             __tmp183038
                                             _E177494_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177399_ _e177491_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177496177503_))
                                      (let ((_hd177500177632_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177496177503_)))
                                            (_tl177501177634_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177496177503_))))
                                        (let* ((_tag177637_ _hd177500177632_)
                                               (_body177639_ _tl177501177634_))
                                          (declare (not safe))
                                          (_K177499177629_
                                           _body177639_
                                           _tag177637_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177498177507_))))))
                             (_splice-rlen177401_
                              (lambda (_e177453_)
                                (let _lp177455_ ((_e177457_ _e177453_)
                                                 (_n177458_ '0))
                                  (let* ((_e177459177466_ _e177457_)
                                         (_E177461177470_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177459177466_)))
                                         (_K177462177479_
                                          (lambda (_body177473_ _tag177474_)
                                            (let ((_$e177476_ _tag177474_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177476_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx177220_
                                                     _where177392_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177476_))
                                                      (let ((__tmp183146
                                                             (cdr _body177473_))
                                                            (__tmp183145
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177458_ '1))))
                (declare (not safe))
                (_lp177455_ __tmp183146 __tmp183145))
              _n177458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177459177466_))
                                        (let ((_hd177463177482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177459177466_)))
                                              (_tl177464177484_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177459177466_))))
                                          (let* ((_tag177487_ _hd177463177482_)
                                                 (_body177489_
                                                  _tl177464177484_))
                                            (declare (not safe))
                                            (_K177462177479_
                                             _body177489_
                                             _tag177487_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177461177470_)))))))
                             (_splice-vars177402_
                              (lambda (_e177409_)
                                (let _recur177411_ ((_e177413_ _e177409_)
                                                    (_vars177414_ '()))
                                  (let* ((_e177415177422_ _e177413_)
                                         (_E177417177426_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177415177422_)))
                                         (_K177418177441_
                                          (lambda (_body177429_ _tag177430_)
                                            (let ((_$e177432_ _tag177430_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177432_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177429_
                                                          _vars177414_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177432_))
                  (let () (declare (not safe)) (eq? 'splice _$e177432_)))
              (let ((__tmp183149 (cdr _body177429_))
                    (__tmp183147
                     (let ((__tmp183148 (car _body177429_)))
                       (declare (not safe))
                       (_recur177411_ __tmp183148 _vars177414_))))
                (declare (not safe))
                (_recur177411_ __tmp183149 __tmp183147))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177432_))
                      (let () (declare (not safe)) (eq? 'box _$e177432_)))
                  (let ()
                    (declare (not safe))
                    (_recur177411_ _body177429_ _vars177414_))
                  _vars177414_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177415177422_))
                                        (let ((_hd177419177444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177415177422_)))
                                              (_tl177420177446_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177415177422_))))
                                          (let* ((_tag177449_ _hd177419177444_)
                                                 (_body177451_
                                                  _tl177420177446_))
                                            (declare (not safe))
                                            (_K177418177441_
                                             _body177451_
                                             _tag177449_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177417177426_)))))))
                             (_make-body177403_
                              (lambda (_vars177405_)
                                (let ((__tmp183150
                                       (map (lambda (_mvar177407_)
                                              (let ((__tmp183151
                                                     (car _mvar177407_)))
                                                (declare (not safe))
                                                (assgetq __tmp183151
                                                         _vars177405_
                                                         _BUG177399_)))
                                            _mvars177395_)))
                                  (declare (not safe))
                                  (cons _K177396_ __tmp183150)))))
                      (let ()
                        (declare (not safe))
                        (_recur177400_
                         _hd177394_
                         '()
                         _target177393_
                         _E177397_
                         _make-body177403_)))))
                 (_parse-clause177229_
                  (lambda (_hd177298_ _ids177299_)
                    (let _recur177301_ ((_e177303_ _hd177298_)
                                        (_vars177304_ '())
                                        (_depth177305_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177303_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177303_))
                              (values '(any) _vars177304_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177303_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx177220_
                                     _hd177298_))
                                  (if (let ((__tmp183167
                                             (lambda (_id177307_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177303_
                                                  _id177307_)))))
                                        (declare (not safe))
                                        (find __tmp183167 _ids177299_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177303_))
                                              _vars177304_)
                                      (if (let ((__tmp183165
                                                 (lambda (_var177309_)
                                                   (let ((__tmp183166
                                                          (car _var177309_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177303_
                                                      __tmp183166)))))
                                            (declare (not safe))
                                            (find __tmp183165 _vars177304_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx177220_
                                             _e177303_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177303_))
                                                  (let ((__tmp183164
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183164
                                                          _vars177304_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177303_))
                              (let* ((_e177310177317_ _e177303_)
                                     (_E177312177321_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177310177317_))))
                                     (_E177311177382_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177310177317_))
                                            (let ((_e177313177325_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177310177317_))))
                                              (let ((_hd177314177328_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177313177325_)))
                                                    (_tl177315177330_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177313177325_))))
                                                (let* ((_hd177333_
                                                        _hd177314177328_)
                                                       (_rest177335_
                                                        _tl177315177330_))
                                                  (if '#t
                                                      (let* ((_make-pair177350_
                                                              (lambda (_tag177337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177338_
                               _tl177339_)
                        (let* ((_hd-depth177341_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177337_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177305_ '1))
                                    _depth177305_))
                               (_g183159_
                                (let ()
                                  (declare (not safe))
                                  (_recur177301_
                                   _hd177338_
                                   _vars177304_
                                   _hd-depth177341_))))
                          (begin
                            (let ((_g183160_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g183159_)
                                         (##vector-length _g183159_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g183160_ 2)))
                                  (error "Context expects 2 values"
                                         _g183160_)))
                            (let ((_hd177343_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183159_ 0)))
                                  (_vars177344_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183159_ 1))))
                              (let ((_g183161_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177301_
                                        _tl177339_
                                        _vars177344_
                                        _depth177305_))))
                                (begin
                                  (let ((_g183162_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g183161_)
                                               (##vector-length _g183161_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g183162_ 2)))
                                        (error "Context expects 2 values"
                                               _g183162_)))
                                  (let ((_tl177346_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183161_ 0)))
                                        (_vars177347_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183161_ 1))))
                                    (let ()
                                      (values (let ((__tmp183163
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177343_
                                                             _tl177346_))))
                                                (declare (not safe))
                                                (cons _tag177337_ __tmp183163))
                                              _vars177347_))))))))))
                     (_e177351177358_ _rest177335_)
                     (_E177353177362_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177350_ 'cons _hd177333_ _rest177335_))))
                     (_E177352177378_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177351177358_))
                            (let ((_e177354177366_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177351177358_))))
                              (let ((_hd177355177369_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177354177366_)))
                                    (_tl177356177371_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177354177366_))))
                                (let* ((_rest-hd177374_ _hd177355177369_)
                                       (_rest-tl177376_ _tl177356177371_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177374_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177350_
                                             'splice
                                             _hd177333_
                                             _rest-tl177376_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177350_
                                             'cons
                                             _hd177333_
                                             _rest177335_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177353177362_))))))
                            (let () (declare (not safe)) (_E177353177362_))))))
                (let () (declare (not safe)) (_E177352177378_)))
              (let () (declare (not safe)) (_E177312177321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177312177321_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177311177382_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177303_))
                                  (values '(null) _vars177304_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177303_))
                                      (let ((_g183156_
                                             (let ((__tmp183158
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177303_)))))
                                               (declare (not safe))
                                               (_recur177301_
                                                __tmp183158
                                                _vars177304_
                                                _depth177305_))))
                                        (begin
                                          (let ((_g183157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g183156_)
                                                       (##vector-length
                                                        _g183156_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g183157_ 2)))
                                                (error "Context expects 2 values"
                                                       _g183157_)))
                                          (let ((_e177386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g183156_ 0)))
                                                (_vars177387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g183156_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177386_))
                                                    _vars177387_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177303_))
                                          (let ((_g183153_
                                                 (let ((__tmp183155
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177303_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177301_
                                                    __tmp183155
                                                    _vars177304_
                                                    _depth177305_))))
                                            (begin
                                              (let ((_g183154_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183153_)
                                                           (##vector-length
                                                            _g183153_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183154_)))
                                              (let ((_e177389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183153_
                                                        0)))
                                                    (_vars177390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183153_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177389_))
                                                        _vars177390_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177303_))
                                              (values (let ((__tmp183152
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177303_))))
                (declare (not safe))
                (cons 'datum __tmp183152))
              _vars177304_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx177220_
                                                 _e177303_))))))))))))
          (let* ((_e177230177243_ _stx177220_)
                 (_E177232177247_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e177230177243_))))
                 (_E177231177294_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177230177243_))
                        (let ((_e177233177251_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177230177243_))))
                          (let ((_hd177234177254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177233177251_)))
                                (_tl177235177256_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177233177251_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177235177256_))
                                (let ((_e177236177259_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177235177256_))))
                                  (let ((_hd177237177262_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177236177259_)))
                                        (_tl177238177264_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177236177259_))))
                                    (let ((_expr177267_ _hd177237177262_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl177238177264_))
                                          (let ((_e177239177269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl177238177264_))))
                                            (let ((_hd177240177272_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177239177269_)))
                                                  (_tl177241177274_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177239177269_))))
                                              (let* ((_ids177277_
                                                      _hd177240177272_)
                                                     (_clauses177279_
                                                      _tl177241177274_))
                                                (if '#t
                                                    (if (let ((__tmp183185
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177277_))))
                  (declare (not safe))
                  (not __tmp183185))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx177220_
                   _ids177277_))
                (if (let ((__tmp183184
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177279_))))
                      (declare (not safe))
                      (not __tmp183184))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx177220_))
                    (let* ((_ids177281_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177277_)))
                           (_clauses177283_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177279_)))
                           (_clause-ids177285_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177283_)))
                           (_E177287_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177289_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177291_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177283_))
                                _E177287_
                                (car _clause-ids177285_))))
                      (let ((__tmp183169
                             (let ((__tmp183170
                                    (let ((__tmp183172
                                           (let ((__tmp183177
                                                  (let ((__tmp183178
                                                         (let ((__tmp183183
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177287_ '())))
                       (__tmp183179
                        (let ((__tmp183180
                               (let ((__tmp183182
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177289_ '())))
                                     (__tmp183181
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177289_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp183182
                                  __tmp183181))))
                          (declare (not safe))
                          (cons __tmp183180 '()))))
                   (declare (not safe))
                   (cons __tmp183183 __tmp183179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183178 '())))
                                                 (__tmp183173
                                                  (let ((__tmp183176
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings177225_
                                                            _target177289_
                                                            _ids177281_
                                                            _clauses177283_
                                                            _clause-ids177285_
                                                            _E177287_)))
                                                        (__tmp183174
                                                         (let ((__tmp183175
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177267_ '()))))
                   (declare (not safe))
                   (cons _first177291_ __tmp183175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body177226_
                                                     __tmp183176
                                                     __tmp183174))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp183177
                                              __tmp183173)))
                                          (__tmp183171
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx177220_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp183172
                                       __tmp183171))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp183170)))
                            (__tmp183168
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx177220_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp183169 __tmp183168)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177232177247_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177232177247_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177232177247_)))))
                        (let () (declare (not safe)) (_E177232177247_))))))
            (let () (declare (not safe)) (_E177231177294_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177930_)
        (let* ((_identifier=?177932_ 'free-identifier=?)
               (_unwrap-e177934_ 'syntax-e)
               (_wrap-e177936_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177930_
           _identifier=?177932_
           _unwrap-e177934_
           _wrap-e177936_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177938_ _identifier=?177939_)
        (let* ((_unwrap-e177941_ 'syntax-e) (_wrap-e177943_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177938_
           _identifier=?177939_
           _unwrap-e177941_
           _wrap-e177943_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177945_ _identifier=?177946_ _unwrap-e177947_)
        (let ((_wrap-e177949_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177945_
           _identifier=?177946_
           _unwrap-e177947_
           _wrap-e177949_))))
    (define gx#macro-expand-syntax-case
      (lambda _g183187_
        (let ((_g183186_ (let () (declare (not safe)) (##length _g183187_))))
          (cond ((let () (declare (not safe)) (##fx= _g183186_ 1))
                 (apply (lambda (_stx177930_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177930_)))
                        _g183187_))
                ((let () (declare (not safe)) (##fx= _g183186_ 2))
                 (apply (lambda (_stx177938_ _identifier=?177939_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177938_
                             _identifier=?177939_)))
                        _g183187_))
                ((let () (declare (not safe)) (##fx= _g183186_ 3))
                 (apply (lambda (_stx177945_
                                 _identifier=?177946_
                                 _unwrap-e177947_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177945_
                             _identifier=?177946_
                             _unwrap-e177947_)))
                        _g183187_))
                ((let () (declare (not safe)) (##fx= _g183186_ 4))
                 (apply (lambda (_stx177951_
                                 _identifier=?177952_
                                 _unwrap-e177953_
                                 _wrap-e177954_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177951_
                             _identifier=?177952_
                             _unwrap-e177953_
                             _wrap-e177954_)))
                        _g183187_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g183187_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx177217_)
        (if (let () (declare (not safe)) (gx#identifier? _stx177217_))
            (let ((__tmp183188
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx177217_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp183188 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd177175_ . _rest177176_)
        (let ((_len177178_ (length _hd177175_)))
          (let _lp177180_ ((_rest177182_ _rest177176_))
            (let* ((_rest177183177191_ _rest177182_)
                   (_else177185177199_ (lambda () '#!void))
                   (_K177187177205_
                    (lambda (_rest177202_ _hd177203_)
                      (if (fx= _len177178_ (length _hd177203_))
                          (let ()
                            (declare (not safe))
                            (_lp177180_ _rest177202_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd177203_))))))
              (if (let () (declare (not safe)) (##pair? _rest177183177191_))
                  (let ((_hd177188177208_
                         (let ()
                           (declare (not safe))
                           (##car _rest177183177191_)))
                        (_tl177189177210_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest177183177191_))))
                    (let* ((_hd177213_ _hd177188177208_)
                           (_rest177215_ _tl177189177210_))
                      (declare (not safe))
                      (_K177187177205_ _rest177215_ _hd177213_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx177133_ _n177134_)
        (let _lp177136_ ((_rest177138_ _stx177133_) (_r177139_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest177138_))
              (let* ((_g177140177147_
                      (let () (declare (not safe)) (gx#syntax-e _rest177138_)))
                     (_E177142177151_
                      (lambda ()
                        (error '"No clause matching" _g177140177147_)))
                     (_K177143177157_
                      (lambda (_rest177154_ _hd177155_)
                        (let ((__tmp183193
                               (let ()
                                 (declare (not safe))
                                 (cons _hd177155_ _r177139_))))
                          (declare (not safe))
                          (_lp177136_ _rest177154_ __tmp183193)))))
                (if (let () (declare (not safe)) (##pair? _g177140177147_))
                    (let ((_hd177144177160_
                           (let ()
                             (declare (not safe))
                             (##car _g177140177147_)))
                          (_tl177145177162_
                           (let ()
                             (declare (not safe))
                             (##cdr _g177140177147_))))
                      (let* ((_hd177165_ _hd177144177160_)
                             (_rest177167_ _tl177145177162_))
                        (declare (not safe))
                        (_K177143177157_ _rest177167_ _hd177165_)))
                    (let () (declare (not safe)) (_E177142177151_))))
              (let _lp177169_ ((_n177171_ _n177134_)
                               (_l177172_ _r177139_)
                               (_r177173_ _rest177138_))
                (if (let () (declare (not safe)) (null? _l177172_))
                    (values _l177172_ _r177173_)
                    (if (fxpositive? _n177171_)
                        (let ((__tmp183192
                               (let ()
                                 (declare (not safe))
                                 (fx- _n177171_ '1)))
                              (__tmp183191 (cdr _l177172_))
                              (__tmp183189
                               (let ((__tmp183190 (car _l177172_)))
                                 (declare (not safe))
                                 (cons __tmp183190 _r177173_))))
                          (declare (not safe))
                          (_lp177169_ __tmp183192 __tmp183191 __tmp183189))
                        (values (reverse _l177172_) _r177173_))))))))))
