(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707618266)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182955
             (let ((__tmp182956
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182956 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp182955
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178484_
        (apply make-struct-instance gx#syntax-pattern::t _$args178484_)))
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
      (lambda (_self178481_ _stx178482_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178482_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177963_)
        (letrec ((_generate177965_
                  (lambda (_e178192_)
                    (letrec ((_BUG178194_
                              (lambda (_q178356_)
                                (error '"BUG: syntax; generate"
                                       _stx177963_
                                       _e178192_
                                       _q178356_)))
                             (_local-pattern-e178195_
                              (lambda (_pat178354_)
                                (let ((__tmp182957
                                       (##structure-ref
                                        _pat178354_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182957))))
                             (_getvar178196_
                              (lambda (_q178351_ _vars178352_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178351_
                                           _vars178352_
                                           _BUG178194_))))
                             (_getarg178197_
                              (lambda (_arg178317_ _vars178318_)
                                (let* ((_arg178319178326_ _arg178317_)
                                       (_E178321178330_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178319178326_)))
                                       (_K178322178339_
                                        (lambda (_e178333_ _tag178334_)
                                          (let ((_$e178336_ _tag178334_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178336_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar178196_
                                                   _e178333_
                                                   _vars178318_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178336_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e178195_
                                                       _e178333_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG178194_
                                                       _arg178317_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178319178326_))
                                      (let ((_hd178323178342_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178319178326_)))
                                            (_tl178324178344_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178319178326_))))
                                        (let* ((_tag178347_ _hd178323178342_)
                                               (_e178349_ _tl178324178344_))
                                          (declare (not safe))
                                          (_K178322178339_
                                           _e178349_
                                           _tag178347_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178321178330_)))))))
                      (let _recur178199_ ((_e178201_ _e178192_)
                                          (_vars178202_ '()))
                        (let* ((_e178203178210_ _e178201_)
                               (_E178205178214_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e178203178210_)))
                               (_K178206178305_
                                (lambda (_body178217_ _tag178218_)
                                  (let ((_$e178220_ _tag178218_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e178220_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body178217_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e178220_))
                                            (let ((_id178223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body178217_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id178223_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks178225_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id178223_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks178225_))
                                                        (let ((__tmp182985
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body178217_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182985))
                (let ((__tmp182984
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body178217_)))
                      (__tmp182983
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body178217_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182984
                   __tmp182983
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id178223_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body178217_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG178194_
                                                         _e178201_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e178220_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e178195_
                                                   _body178217_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e178220_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar178196_
                                                       _body178217_
                                                       _vars178202_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e178220_))
                                                        (let ((__tmp182981
                                                               (let ((__tmp182982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body178217_)))
                         (declare (not safe))
                         (_recur178199_ __tmp182982 _vars178202_)))
                      (__tmp182979
                       (let ((__tmp182980 (cdr _body178217_)))
                         (declare (not safe))
                         (_recur178199_ __tmp182980 _vars178202_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182981 __tmp182979))
                (if (let () (declare (not safe)) (eq? 'vector _$e178220_))
                    (let ((__tmp182978
                           (let ()
                             (declare (not safe))
                             (_recur178199_ _body178217_ _vars178202_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182978))
                    (if (let () (declare (not safe)) (eq? 'box _$e178220_))
                        (let ((__tmp182977
                               (let ()
                                 (declare (not safe))
                                 (_recur178199_ _body178217_ _vars178202_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182977))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e178220_))
                            (let* ((_body178226178237_ _body178217_)
                                   (_E178228178241_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body178226178237_)))
                                   (_K178229178279_
                                    (lambda (_args178244_
                                             _iv178245_
                                             _hd178246_
                                             _depth178247_)
                                      (let* ((_targets178253_
                                              (map (lambda (_g178248178250_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg178197_
                                                        _g178248178250_
                                                        _vars178202_)))
                                                   _args178244_))
                                             (_fold-in178255_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args178244_)))
                                             (_fold-out178257_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178259_
                                              (let ((__tmp182958
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178257_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182958
                                                        _fold-in178255_)))
                                             (_lambda-body178276_
                                              (if (fx> _depth178247_ '1)
                                                  (let ((_r-args178267_
                                                         (map (lambda (_arg178261_)
                                                                (let ((__tmp182963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178261_)))
                          (declare (not safe))
                          (cons 'ref __tmp182963)))
                      _args178244_))
                (_r-vars178268_
                 (let ((__tmp182964
                        (lambda (_arg178263_ _var178264_ _r178265_)
                          (let ((__tmp182965
                                 (let ((__tmp182966 (cdr _arg178263_)))
                                   (declare (not safe))
                                   (cons __tmp182966 _var178264_))))
                            (declare (not safe))
                            (cons __tmp182965 _r178265_)))))
                   (declare (not safe))
                   (foldr2 __tmp182964
                           _vars178202_
                           _args178244_
                           _fold-in178255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182967
                                                           (let ((__tmp182968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182972
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178247_ '1)))
                                (__tmp182969
                                 (let ((__tmp182970
                                        (let ((__tmp182971
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178257_))))
                                          (declare (not safe))
                                          (cons __tmp182971 _r-args178267_))))
                                   (declare (not safe))
                                   (cons _hd178246_ __tmp182970))))
                            (declare (not safe))
                            (cons __tmp182972 __tmp182969))))
                     (declare (not safe))
                     (cons 'splice __tmp182968))))
              (declare (not safe))
              (_recur178199_ __tmp182967 _r-vars178268_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178274_
                                                          (let ((__tmp182959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178270_ _var178271_ _r178272_)
                           (let ((__tmp182960
                                  (let ((__tmp182961 (cdr _arg178270_)))
                                    (declare (not safe))
                                    (cons __tmp182961 _var178271_))))
                             (declare (not safe))
                             (cons __tmp182960 _r178272_)))))
                    (declare (not safe))
                    (foldr2 __tmp182959
                            _vars178202_
                            _args178244_
                            _fold-in178255_)))
                 (__tmp182962
                  (let ()
                    (declare (not safe))
                    (_recur178199_ _hd178246_ _hd-vars178274_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182962
                                                     _fold-out178257_)))))
                                        (let ((__tmp182976
                                               (if (fx> (length _targets178253_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178253_))
                                                   '#!void))
                                              (__tmp182973
                                               (let ((__tmp182975
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178259_
                                                         _lambda-body178276_)))
                                                     (__tmp182974
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur178199_
                                                         _iv178245_
                                                         _vars178202_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182975
                                                  __tmp182974
                                                  _targets178253_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182976
                                           __tmp182973))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body178226178237_))
                                  (let ((_hd178230178282_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body178226178237_)))
                                        (_tl178231178284_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body178226178237_))))
                                    (let ((_depth178287_ _hd178230178282_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl178231178284_))
                                          (let ((_hd178232178289_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl178231178284_)))
                                                (_tl178233178291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl178231178284_))))
                                            (let ((_hd178294_
                                                   _hd178232178289_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl178233178291_))
                                                  (let ((_hd178234178296_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl178233178291_)))
                                                        (_tl178235178298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl178233178291_))))
                                                    (let* ((_iv178301_
                                                            _hd178234178296_)
                                                           (_args178303_
                                                            _tl178235178298_))
                                                      (declare (not safe))
                                                      (_K178229178279_
                                                       _args178303_
                                                       _iv178301_
                                                       _hd178294_
                                                       _depth178287_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178228178241_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178228178241_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E178228178241_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e178220_))
                                _body178217_
                                (let ()
                                  (declare (not safe))
                                  (_BUG178194_ _e178201_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e178203178210_))
                              (let ((_hd178207178308_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e178203178210_)))
                                    (_tl178208178310_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e178203178210_))))
                                (let* ((_tag178313_ _hd178207178308_)
                                       (_body178315_ _tl178208178310_))
                                  (declare (not safe))
                                  (_K178206178305_ _body178315_ _tag178313_)))
                              (let ()
                                (declare (not safe))
                                (_E178205178214_))))))))
                 (_parse177966_
                  (lambda (_e178007_)
                    (letrec ((_make-cons178009_
                              (lambda (_hd178184_ _tl178185_)
                                (let ((_g182986_ _hd178184_)
                                      (_g182988_ _tl178185_))
                                  (begin
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
                                    (let ((_hd-e178187_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182986_ 0)))
                                          (_hd-vars178188_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182986_ 1))))
                                      (let ((_tl-e178189_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182988_ 0)))
                                            (_tl-vars178190_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182988_ 1))))
                                        (values (let ((__tmp182990
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e178187_
                                                               _tl-e178189_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182990))
                                                (append _hd-vars178188_
                                                        _tl-vars178190_))))))))
                             (_make-splice178010_
                              (lambda (_where178123_
                                       _depth178124_
                                       _hd178125_
                                       _tl178126_)
                                (let ((_g182991_ _hd178125_)
                                      (_g182993_ _tl178126_))
                                  (begin
                                    (let ((_g182992_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182991_)
                                                 (##vector-length _g182991_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182992_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182992_)))
                                    (let ((_g182994_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182993_)
                                                 (##vector-length _g182993_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182994_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182994_)))
                                    (let ((_hd-e178128_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182991_ 0)))
                                          (_hd-vars178129_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182991_ 1))))
                                      (let ((_tl-e178130_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182993_ 0)))
                                            (_tl-vars178131_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182993_ 1))))
                                        (let _lp178133_ ((_rest178135_
                                                          _hd-vars178129_)
                                                         (_targets178136_ '())
                                                         (_vars178137_
                                                          _tl-vars178131_))
                                          (let* ((_rest178138178148_
                                                  _rest178135_)
                                                 (_else178140178156_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets178136_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177963_
                                                           _where178123_))
                                                        (values (let ((__tmp182995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182996
                                      (let ((__tmp182997
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e178130_
                                                     _targets178136_))))
                                        (declare (not safe))
                                        (cons _hd-e178128_ __tmp182997))))
                                 (declare (not safe))
                                 (cons _depth178124_ __tmp182996))))
                          (declare (not safe))
                          (cons 'splice __tmp182995))
                        _vars178137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K178142178165_
                                                  (lambda (_rest178159_
                                                           _hd-pat178160_
                                                           _hd-depth*178161_)
                                                    (let ((_hd-depth178163_
                                                           (fx- _hd-depth*178161_
                                                                _depth178124_)))
                                                      (if (fxpositive?
                                                           _hd-depth178163_)
                                                          (let ((__tmp183002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp183003
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat178160_))))
                           (declare (not safe))
                           (cons __tmp183003 _targets178136_)))
                        (__tmp183000
                         (let ((__tmp183001
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth178163_ _hd-pat178160_))))
                           (declare (not safe))
                           (cons __tmp183001 _vars178137_))))
                    (declare (not safe))
                    (_lp178133_ _rest178159_ __tmp183002 __tmp183000))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth178163_))
                      (let ((__tmp182998
                             (let ((__tmp182999
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat178160_))))
                               (declare (not safe))
                               (cons __tmp182999 _targets178136_))))
                        (declare (not safe))
                        (_lp178133_ _rest178159_ __tmp182998 _vars178137_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177963_
                         _where178123_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest178138178148_))
                                                (let ((_hd178143178168_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest178138178148_)))
                                                      (_tl178144178170_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest178138178148_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd178143178168_))
                                                      (let ((_hd178145178173_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd178143178168_)))
                    (_tl178146178175_
                     (let () (declare (not safe)) (##cdr _hd178143178168_))))
                (let* ((_hd-depth*178178_ _hd178145178173_)
                       (_hd-pat178180_ _tl178146178175_)
                       (_rest178182_ _tl178144178170_))
                  (declare (not safe))
                  (_K178142178165_
                   _rest178182_
                   _hd-pat178180_
                   _hd-depth*178178_)))
              (let () (declare (not safe)) (_else178140178156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else178140178156_)))))))))))
                             (_recur178011_
                              (lambda (_e178016_ _is-e?178017_)
                                (if (_is-e?178017_ _e178016_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177963_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e178016_))
                                        (let* ((_pat178019_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e178016_)))
                                               (_depth178021_
                                                (##structure-ref
                                                 _pat178019_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth178021_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat178019_))
                                                      (let ((__tmp183019
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth178021_ _pat178019_))))
                (declare (not safe))
                (cons __tmp183019 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat178019_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e178016_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e178016_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e178016_))
                                                (let* ((_e178023178030_
                                                        _e178016_)
                                                       (_E178025178034_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e178023178030_))))
                                                       (_E178024178113_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e178023178030_))
                      (let ((_e178026178038_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e178023178030_))))
                        (let ((_hd178027178041_
                               (let ()
                                 (declare (not safe))
                                 (##car _e178026178038_)))
                              (_tl178028178043_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e178026178038_))))
                          (let* ((_hd178046_ _hd178027178041_)
                                 (_rest178048_ _tl178028178043_))
                            (if '#t
                                (if (_is-e?178017_ _hd178046_)
                                    (let* ((_e178049178056_ _rest178048_)
                                           (_E178051178060_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177963_
                                                 _e178016_))))
                                           (_E178050178074_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e178049178056_))
                                                  (let ((_e178052178064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e178049178056_))))
                                                    (let ((_hd178053178067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e178052178064_)))
                                                          (_tl178054178069_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e178052178064_))))
                                                      (let ((_rest178072_
                                                             _hd178053178067_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl178054178069_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur178011_ _rest178072_ false))
                        (let () (declare (not safe)) (_E178051178060_)))
                    (let () (declare (not safe)) (_E178051178060_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178051178060_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E178050178074_)))
                                    (let _lp178078_ ((_rest178080_
                                                      _rest178048_)
                                                     (_depth178081_ '0))
                                      (let* ((_e178082178089_ _rest178080_)
                                             (_E178084178093_
                                              (lambda ()
                                                (if (fxpositive? _depth178081_)
                                                    (let ((__tmp183013
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178011_
                                                              _hd178046_
                                                              _is-e?178017_)))
                                                          (__tmp183012
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178011_
                                                              _rest178080_
                                                              _is-e?178017_))))
                                                      (declare (not safe))
                                                      (_make-splice178010_
                                                       _e178016_
                                                       _depth178081_
                                                       __tmp183013
                                                       __tmp183012))
                                                    (let ((__tmp183011
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178011_
                                                              _hd178046_
                                                              _is-e?178017_)))
                                                          (__tmp183010
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178011_
                                                              _rest178080_
                                                              _is-e?178017_))))
                                                      (declare (not safe))
                                                      (_make-cons178009_
                                                       __tmp183011
                                                       __tmp183010)))))
                                             (_E178083178109_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e178082178089_))
                                                    (let ((_e178085178097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e178082178089_))))
                                                      (let ((_hd178086178100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e178085178097_)))
                    (_tl178087178102_
                     (let () (declare (not safe)) (##cdr _e178085178097_))))
                (let* ((_rest-hd178105_ _hd178086178100_)
                       (_rest-tl178107_ _tl178087178102_))
                  (if '#t
                      (if (_is-e?178017_ _rest-hd178105_)
                          (let ((__tmp183018
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth178081_ '1))))
                            (declare (not safe))
                            (_lp178078_ _rest-tl178107_ __tmp183018))
                          (if (fxpositive? _depth178081_)
                              (let ((__tmp183017
                                     (let ()
                                       (declare (not safe))
                                       (_recur178011_
                                        _hd178046_
                                        _is-e?178017_)))
                                    (__tmp183016
                                     (let ()
                                       (declare (not safe))
                                       (_recur178011_
                                        _rest178080_
                                        _is-e?178017_))))
                                (declare (not safe))
                                (_make-splice178010_
                                 _e178016_
                                 _depth178081_
                                 __tmp183017
                                 __tmp183016))
                              (let ((__tmp183015
                                     (let ()
                                       (declare (not safe))
                                       (_recur178011_
                                        _hd178046_
                                        _is-e?178017_)))
                                    (__tmp183014
                                     (let ()
                                       (declare (not safe))
                                       (_recur178011_
                                        _rest178080_
                                        _is-e?178017_))))
                                (declare (not safe))
                                (_make-cons178009_ __tmp183015 __tmp183014))))
                      (let () (declare (not safe)) (_E178084178093_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178084178093_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E178083178109_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E178025178034_))))))
                      (let () (declare (not safe)) (_E178025178034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178024178113_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e178016_))
                                                    (let ((_g183007_
                                                           (let ((__tmp183009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e178016_)))))
                     (declare (not safe))
                     (_recur178011_ __tmp183009 _is-e?178017_))))
              (begin
                (let ((_g183008_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g183007_)
                             (##vector-length _g183007_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g183008_ 2)))
                      (error "Context expects 2 values" _g183008_)))
                (let ((_e178117_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183007_ 0)))
                      (_vars178118_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183007_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e178117_))
                          _vars178118_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e178016_))
                                                        (let ((_g183004_
                                                               (let ((__tmp183006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e178016_)))))
                         (declare (not safe))
                         (_recur178011_ __tmp183006 _is-e?178017_))))
                  (begin
                    (let ((_g183005_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g183004_)
                                 (##vector-length _g183004_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g183005_ 2)))
                          (error "Context expects 2 values" _g183005_)))
                    (let ((_e178120_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g183004_ 0)))
                          (_vars178121_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g183004_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e178120_))
                              _vars178121_))))
                (values (let () (declare (not safe)) (cons 'datum _e178016_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g183020_
                             (let ()
                               (declare (not safe))
                               (_recur178011_ _e178007_ gx#ellipsis?))))
                        (begin
                          (let ((_g183021_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g183020_)
                                       (##vector-length _g183020_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g183021_ 2)))
                                (error "Context expects 2 values" _g183021_)))
                          (let ((_tree178013_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183020_ 0)))
                                (_vars178014_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183020_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars178014_))
                                _tree178013_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177963_
                                   _vars178014_))))))))))
          (let* ((_e177967177977_ _stx177963_)
                 (_E177969177981_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177963_))))
                 (_E177968178003_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177967177977_))
                        (let ((_e177970177985_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177967177977_))))
                          (let ((_hd177971177988_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177970177985_)))
                                (_tl177972177990_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177970177985_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177972177990_))
                                (let ((_e177973177993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177972177990_))))
                                  (let ((_hd177974177996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177973177993_)))
                                        (_tl177975177998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177973177993_))))
                                    (let ((_form178001_ _hd177974177996_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177975177998_))
                                          (if '#t
                                              (let ((__tmp183023
                                                     (let ((__tmp183024
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177966_
                                                               _form178001_))))
                                                       (declare (not safe))
                                                       (_generate177965_
                                                        __tmp183024)))
                                                    (__tmp183022
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177963_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp183023
                                                 __tmp183022))
                                              (let ()
                                                (declare (not safe))
                                                (_E177969177981_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177969177981_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177969177981_)))))
                        (let () (declare (not safe)) (_E177969177981_))))))
            (let () (declare (not safe)) (_E177968178003_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx177227_
               _identifier=?177228_
               _unwrap-e177229_
               _wrap-e177230_)
        (letrec ((_generate-bindings177232_
                  (lambda (_target177827_
                           _ids177828_
                           _clauses177829_
                           _clause-ids177830_
                           _E177831_)
                    (letrec ((_generate1177833_
                              (lambda (_clause177930_
                                       _clause-id177931_
                                       _E177932_)
                                (let ((__tmp183029
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177931_ '())))
                                      (__tmp183025
                                       (let ((__tmp183026
                                              (let ((__tmp183028
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177827_
                                                             '())))
                                                    (__tmp183027
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause177234_
                                                        _target177827_
                                                        _ids177828_
                                                        _clause177930_
                                                        _E177932_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp183028
                                                 __tmp183027))))
                                         (declare (not safe))
                                         (cons __tmp183026 '()))))
                                  (declare (not safe))
                                  (cons __tmp183029 __tmp183025)))))
                      (let _lp177835_ ((_rest177837_ _clauses177829_)
                                       (_rest-ids177838_ _clause-ids177830_)
                                       (_bindings177839_ '()))
                        (let* ((_rest177840177848_ _rest177837_)
                               (_else177842177856_
                                (lambda () _bindings177839_))
                               (_K177844177918_
                                (lambda (_rest177859_ _clause177860_)
                                  (let* ((_rest-ids177861177868_
                                          _rest-ids177838_)
                                         (_E177863177872_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177861177868_)))
                                         (_K177864177906_
                                          (lambda (_rest-ids177875_
                                                   _clause-id177876_)
                                            (let* ((_rest-ids177877177885_
                                                    _rest-ids177875_)
                                                   (_else177879177893_
                                                    (lambda ()
                                                      (let ((__tmp183030
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177833_
                        _clause177860_
                        _clause-id177876_
                        _E177831_))))
                (declare (not safe))
                (cons __tmp183030 _bindings177839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177881177898_
                                                    (lambda (_next-clause-id177896_)
                                                      (let ((__tmp183031
                                                             (let ((__tmp183032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177833_
                               _clause177860_
                               _clause-id177876_
                               _next-clause-id177896_))))
                       (declare (not safe))
                       (cons __tmp183032 _bindings177839_))))
                (declare (not safe))
                (_lp177835_ _rest177859_ _rest-ids177875_ __tmp183031)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177877177885_))
                                                  (let* ((_hd177882177901_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177877177885_)))
                                                         (_next-clause-id177904_
                                                          _hd177882177901_))
                                                    (declare (not safe))
                                                    (_K177881177898_
                                                     _next-clause-id177904_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177879177893_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177861177868_))
                                        (let ((_hd177865177909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177861177868_)))
                                              (_tl177866177911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177861177868_))))
                                          (let* ((_clause-id177914_
                                                  _hd177865177909_)
                                                 (_rest-ids177916_
                                                  _tl177866177911_))
                                            (declare (not safe))
                                            (_K177864177906_
                                             _rest-ids177916_
                                             _clause-id177914_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177863177872_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177840177848_))
                              (let ((_hd177845177921_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177840177848_)))
                                    (_tl177846177923_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177840177848_))))
                                (let* ((_clause177926_ _hd177845177921_)
                                       (_rest177928_ _tl177846177923_))
                                  (declare (not safe))
                                  (_K177844177918_
                                   _rest177928_
                                   _clause177926_)))
                              (let ()
                                (declare (not safe))
                                (_else177842177856_))))))))
                 (_generate-body177233_
                  (lambda (_bindings177787_ _body177788_)
                    (let _recur177790_ ((_rest177792_ _bindings177787_))
                      (let* ((_rest177793177801_ _rest177792_)
                             (_else177795177809_ (lambda () _body177788_))
                             (_K177797177815_
                              (lambda (_rest177812_ _hd177813_)
                                (let ((__tmp183034
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177813_ '())))
                                      (__tmp183033
                                       (let ()
                                         (declare (not safe))
                                         (_recur177790_ _rest177812_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp183034
                                   __tmp183033)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177793177801_))
                            (let ((_hd177798177818_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177793177801_)))
                                  (_tl177799177820_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177793177801_))))
                              (let* ((_hd177823_ _hd177798177818_)
                                     (_rest177825_ _tl177799177820_))
                                (declare (not safe))
                                (_K177797177815_ _rest177825_ _hd177823_)))
                            (let ()
                              (declare (not safe))
                              (_else177795177809_)))))))
                 (_generate-clause177234_
                  (lambda (_target177650_ _ids177651_ _clause177652_ _E177653_)
                    (letrec ((_generate1177655_
                              (lambda (_hd177742_ _fender177743_ _body177744_)
                                (let ((_g183035_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause177236_
                                          _hd177742_
                                          _ids177651_))))
                                  (begin
                                    (let ((_g183036_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183035_)
                                                 (##vector-length _g183035_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183036_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183036_)))
                                    (let ((_e177746_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183035_ 0)))
                                          (_mvars177747_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183035_ 1))))
                                      (let* ((_pvars177749_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177747_))))
                                             (_E177751_
                                              (let ((__tmp183037
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177650_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177653_ __tmp183037)))
                                             (_K177784_
                                              (let ((__tmp183038
                                                     (let ((__tmp183040
                                                            (map (lambda (_mvar177753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177754_)
                           (let* ((_mvar177755177762_ _mvar177753_)
                                  (_E177757177766_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177755177762_)))
                                  (_K177758177772_
                                   (lambda (_depth177769_ _id177770_)
                                     (let ((__tmp183041
                                            (let ((__tmp183042
                                                   (let ((__tmp183044
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177770_)))
                                                         (__tmp183043
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177754_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp183044
                                                      __tmp183043
                                                      _depth177769_))))
                                              (declare (not safe))
                                              (cons __tmp183042 '()))))
                                       (declare (not safe))
                                       (cons _id177770_ __tmp183041)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177755177762_))
                                 (let ((_hd177759177775_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177755177762_)))
                                       (_tl177760177777_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177755177762_))))
                                   (let* ((_id177780_ _hd177759177775_)
                                          (_depth177782_ _tl177760177777_))
                                     (declare (not safe))
                                     (_K177758177772_
                                      _depth177782_
                                      _id177780_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177757177766_)))))
                         _mvars177747_
                         _pvars177749_))
                   (__tmp183039
                    (if (let () (declare (not safe)) (eq? _fender177743_ '#t))
                        _body177744_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177743_
                           _body177744_
                           _E177751_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp183040 __tmp183039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177749_
                                                 __tmp183038))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match177235_
                                           _hd177742_
                                           _target177650_
                                           _e177746_
                                           _mvars177747_
                                           _K177784_
                                           _E177751_)))))))))
                      (let* ((_e177656177676_ _clause177652_)
                             (_E177665177680_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177656177676_))))
                             (_E177658177714_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177656177676_))
                                    (let ((_e177666177684_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177656177676_))))
                                      (let ((_hd177667177687_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177666177684_)))
                                            (_tl177668177689_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177666177684_))))
                                        (let ((_hd177692_ _hd177667177687_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177668177689_))
                                              (let ((_e177669177694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177668177689_))))
                                                (let ((_hd177670177697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177669177694_)))
                                                      (_tl177671177699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177669177694_))))
                                                  (let ((_fender177702_
                                                         _hd177670177697_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177671177699_))
                                                        (let ((_e177672177704_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177671177699_))))
                  (let ((_hd177673177707_
                         (let () (declare (not safe)) (##car _e177672177704_)))
                        (_tl177674177709_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177672177704_))))
                    (let ((_body177712_ _hd177673177707_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177674177709_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177655_
                                 _hd177692_
                                 _fender177702_
                                 _body177712_))
                              (let () (declare (not safe)) (_E177665177680_)))
                          (let () (declare (not safe)) (_E177665177680_))))))
                (let () (declare (not safe)) (_E177665177680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177665177680_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177665177680_)))))
                             (_E177657177738_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177656177676_))
                                    (let ((_e177659177718_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177656177676_))))
                                      (let ((_hd177660177721_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177659177718_)))
                                            (_tl177661177723_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177659177718_))))
                                        (let ((_hd177726_ _hd177660177721_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177661177723_))
                                              (let ((_e177662177728_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177661177723_))))
                                                (let ((_hd177663177731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177662177728_)))
                                                      (_tl177664177733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177662177728_))))
                                                  (let ((_body177736_
                                                         _hd177663177731_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177664177733_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177655_
                                                               _hd177726_
                                                               '#t
                                                               _body177736_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177658177714_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177658177714_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177658177714_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177658177714_))))))
                        (let () (declare (not safe)) (_E177657177738_))))))
                 (_generate-match177235_
                  (lambda (_where177399_
                           _target177400_
                           _hd177401_
                           _mvars177402_
                           _K177403_
                           _E177404_)
                    (letrec ((_BUG177406_
                              (lambda (_q177648_)
                                (error '"BUG: syntax-case; generate"
                                       _stx177227_
                                       _hd177401_
                                       _q177648_)))
                             (_recur177407_
                              (lambda (_e177498_
                                       _vars177499_
                                       _target177500_
                                       _E177501_
                                       _k177502_)
                                (let* ((_e177503177510_ _e177498_)
                                       (_E177505177514_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177503177510_)))
                                       (_K177506177636_
                                        (lambda (_body177517_ _tag177518_)
                                          (let ((_$e177520_ _tag177518_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177520_))
                                                (_k177502_ _vars177499_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177520_))
                                                    (let ((__tmp183151
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177500_)))
                                                          (__tmp183147
                                                           (let ((__tmp183149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183150
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e177230_
                                    _body177517_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?177228_
                             __tmp183150
                             _target177500_)))
                         (__tmp183148 (_k177502_ _vars177499_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp183149 __tmp183148 _E177501_))))
              (declare (not safe))
              (gx#core-list 'if __tmp183151 __tmp183147 _E177501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177520_))
                                                        (_k177502_
                                                         (let ((__tmp183146
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177517_ _target177500_))))
                   (declare (not safe))
                   (cons __tmp183146 _vars177499_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177520_))
                    (let ((_$e177523_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177524_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177525_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp183145
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177500_)))
                            (__tmp183126
                             (let ((__tmp183140
                                    (let ((__tmp183141
                                           (let ((__tmp183144
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177523_ '())))
                                                 (__tmp183142
                                                  (let ((__tmp183143
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e177229_
                                                            _target177500_))))
                                                    (declare (not safe))
                                                    (cons __tmp183143 '()))))
                                             (declare (not safe))
                                             (cons __tmp183144 __tmp183142))))
                                      (declare (not safe))
                                      (cons __tmp183141 '())))
                                   (__tmp183127
                                    (let ((__tmp183130
                                           (let ((__tmp183136
                                                  (let ((__tmp183139
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp183137
                 (let ((__tmp183138
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177523_))))
                   (declare (not safe))
                   (cons __tmp183138 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183139
                                                          __tmp183137)))
                                                 (__tmp183131
                                                  (let ((__tmp183132
                                                         (let ((__tmp183135
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177525_ '())))
                       (__tmp183133
                        (let ((__tmp183134
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177523_))))
                          (declare (not safe))
                          (cons __tmp183134 '()))))
                   (declare (not safe))
                   (cons __tmp183135 __tmp183133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183132 '()))))
                                             (declare (not safe))
                                             (cons __tmp183136 __tmp183131)))
                                          (__tmp183128
                                           (let* ((_body177526177533_
                                                   _body177517_)
                                                  (_E177528177537_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177526177533_)))
                                                  (_K177529177545_
                                                   (lambda (_tl177540_
                                                            _hd177541_)
                                                     (let ((__tmp183129
                                                            (lambda (_vars177543_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177407_
                         _tl177540_
                         _vars177543_
                         _$tl177525_
                         _E177501_
                         _k177502_)))))
               (declare (not safe))
               (_recur177407_
                _hd177541_
                _vars177499_
                _$hd177524_
                _E177501_
                __tmp183129)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177526177533_))
                                                 (let ((_hd177530177548_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177526177533_)))
                                                       (_tl177531177550_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177526177533_))))
                                                   (let* ((_hd177553_
                                                           _hd177530177548_)
                                                          (_tl177555_
                                                           _tl177531177550_))
                                                     (declare (not safe))
                                                     (_K177529177545_
                                                      _tl177555_
                                                      _hd177553_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177528177537_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp183130
                                       __tmp183128))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp183140
                                __tmp183127))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp183145 __tmp183126 _E177501_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177520_))
                        (let* ((_body177556177563_ _body177517_)
                               (_E177558177567_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177556177563_)))
                               (_K177559177618_
                                (lambda (_tl177570_ _hd177571_)
                                  (let* ((_rlen177573_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177408_ _tl177570_)))
                                         (_$target177575_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177577_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177579_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177581_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177583_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177585_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177587_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177589_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177409_ _hd177571_)))
                                         (_lvars177591_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177589_)))
                                         (_tlvars177593_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177589_)))
                                         (_linit177597_
                                          (map (lambda (_var177595_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177591_)))
                                    (letrec ((_make-loop177600_
                                              (lambda (_vars177604_)
                                                (let ((__tmp183077
                                                       (let ((__tmp183078
                                                              (let ((__tmp183114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177581_ '())))
                            (__tmp183079
                             (let ((__tmp183080
                                    (let ((__tmp183113
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177577_ _lvars177591_)))
                                          (__tmp183081
                                           (let ((__tmp183112
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177577_)))
                                                 (__tmp183090
                                                  (let ((__tmp183107
                                                         (let ((__tmp183108
                                                                (let ((__tmp183111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177583_ '())))
                              (__tmp183109
                               (let ((__tmp183110
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e177229_
                                         _$hd177577_))))
                                 (declare (not safe))
                                 (cons __tmp183110 '()))))
                          (declare (not safe))
                          (cons __tmp183111 __tmp183109))))
                   (declare (not safe))
                   (cons __tmp183108 '())))
                (__tmp183091
                 (let ((__tmp183097
                        (let ((__tmp183103
                               (let ((__tmp183106
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177585_ '())))
                                     (__tmp183104
                                      (let ((__tmp183105
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177583_))))
                                        (declare (not safe))
                                        (cons __tmp183105 '()))))
                                 (declare (not safe))
                                 (cons __tmp183106 __tmp183104)))
                              (__tmp183098
                               (let ((__tmp183099
                                      (let ((__tmp183102
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177587_ '())))
                                            (__tmp183100
                                             (let ((__tmp183101
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177583_))))
                                               (declare (not safe))
                                               (cons __tmp183101 '()))))
                                        (declare (not safe))
                                        (cons __tmp183102 __tmp183100))))
                                 (declare (not safe))
                                 (cons __tmp183099 '()))))
                          (declare (not safe))
                          (cons __tmp183103 __tmp183098)))
                       (__tmp183092
                        (let ((__tmp183093
                               (lambda (_hdvars177606_)
                                 (let ((__tmp183094
                                        (let ((__tmp183095
                                               (map (lambda (_svar177608_
                                                             _lvar177609_)
                                                      (let ((__tmp183096
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177608_ _hdvars177606_ _BUG177406_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp183096 _lvar177609_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177589_
                                                    _lvars177591_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177587_ __tmp183095))))
                                   (declare (not safe))
                                   (cons _$lp177581_ __tmp183094)))))
                          (declare (not safe))
                          (_recur177407_
                           _hd177571_
                           '()
                           _$lp-hd177585_
                           _E177501_
                           __tmp183093))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp183097 __tmp183092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183107
                                                     __tmp183091)))
                                                 (__tmp183082
                                                  (let ((__tmp183086
                                                         (map (lambda (_lvar177611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177612_)
                        (let ((__tmp183089
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177612_ '())))
                              (__tmp183087
                               (let ((__tmp183088
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177611_))))
                                 (declare (not safe))
                                 (cons __tmp183088 '()))))
                          (declare (not safe))
                          (cons __tmp183089 __tmp183087)))
                      _lvars177591_
                      _tlvars177593_))
                (__tmp183083
                 (_k177502_
                  (let ((__tmp183084
                         (lambda (_svar177614_ _tlvar177615_ _r177616_)
                           (let ((__tmp183085
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177614_ _tlvar177615_))))
                             (declare (not safe))
                             (cons __tmp183085 _r177616_)))))
                    (declare (not safe))
                    (foldl2 __tmp183084
                            _vars177604_
                            _svars177589_
                            _tlvars177593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183086
                                                     __tmp183083))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp183112
                                              __tmp183090
                                              __tmp183082))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp183113
                                       __tmp183081))))
                               (declare (not safe))
                               (cons __tmp183080 '()))))
                        (declare (not safe))
                        (cons __tmp183114 __tmp183079))))
                 (declare (not safe))
                 (cons __tmp183078 '())))
              (__tmp183075
               (let ((__tmp183076
                      (let ()
                        (declare (not safe))
                        (cons _$target177575_ _linit177597_))))
                 (declare (not safe))
                 (cons _$lp177581_ __tmp183076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp183077
                                                   __tmp183075)))))
                                      (let ((_body177602_
                                             (let ((__tmp183116
                                                    (let ((__tmp183117
                                                           (let ((__tmp183120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183121
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177579_ '()))))
                            (declare (not safe))
                            (cons _$target177575_ __tmp183121)))
                         (__tmp183118
                          (let ((__tmp183119
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177500_
                                    _rlen177573_))))
                            (declare (not safe))
                            (cons __tmp183119 '()))))
                     (declare (not safe))
                     (cons __tmp183120 __tmp183118))))
              (declare (not safe))
              (cons __tmp183117 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183115
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177407_
                                                       _tl177570_
                                                       _vars177499_
                                                       _$tl177579_
                                                       _E177501_
                                                       _make-loop177600_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183116
                                                __tmp183115))))
                                        (let ((__tmp183125
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177500_)))
                                              (__tmp183122
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177573_))
                                                   _body177602_
                                                   (let ((__tmp183123
                                                          (let ((__tmp183124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177500_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp183124 _rlen177573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp183123
                                                      _body177602_
                                                      _E177501_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp183125
                                           __tmp183122
                                           _E177501_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177556177563_))
                              (let ((_hd177560177621_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177556177563_)))
                                    (_tl177561177623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177556177563_))))
                                (let* ((_hd177626_ _hd177560177621_)
                                       (_tl177628_ _tl177561177623_))
                                  (declare (not safe))
                                  (_K177559177618_ _tl177628_ _hd177626_)))
                              (let () (declare (not safe)) (_E177558177567_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177520_))
                            (let ((__tmp183074
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177500_)))
                                  (__tmp183073 (_k177502_ _vars177499_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp183074
                               __tmp183073
                               _E177501_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177520_))
                                (let ((_$e177630_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp183072
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177500_)))
                                        (__tmp183064
                                         (let ((__tmp183066
                                                (let ((__tmp183067
                                                       (let ((__tmp183071
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177630_ '())))
                     (__tmp183068
                      (let ((__tmp183069
                             (let ((__tmp183070
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e177229_
                                       _target177500_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp183070))))
                        (declare (not safe))
                        (cons __tmp183069 '()))))
                 (declare (not safe))
                 (cons __tmp183071 __tmp183068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp183067 '())))
                                               (__tmp183065
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177407_
                                                   _body177517_
                                                   _vars177499_
                                                   _$e177630_
                                                   _E177501_
                                                   _k177502_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp183066
                                            __tmp183065))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp183072
                                     __tmp183064
                                     _E177501_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177520_))
                                    (let ((_$e177632_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp183063
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177500_)))
                                            (__tmp183055
                                             (let ((__tmp183057
                                                    (let ((__tmp183058
                                                           (let ((__tmp183062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177632_ '())))
                         (__tmp183059
                          (let ((__tmp183060
                                 (let ((__tmp183061
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e177229_
                                           _target177500_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp183061))))
                            (declare (not safe))
                            (cons __tmp183060 '()))))
                     (declare (not safe))
                     (cons __tmp183062 __tmp183059))))
              (declare (not safe))
              (cons __tmp183058 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183056
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177407_
                                                       _body177517_
                                                       _vars177499_
                                                       _$e177632_
                                                       _E177501_
                                                       _k177502_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183057
                                                __tmp183056))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp183063
                                         __tmp183055
                                         _E177501_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177520_))
                                        (let ((_$e177634_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp183054
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177500_)))
                                                (__tmp183045
                                                 (let ((__tmp183049
                                                        (let ((__tmp183050
                                                               (let ((__tmp183053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177634_ '())))
                             (__tmp183051
                              (let ((__tmp183052
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177500_))))
                                (declare (not safe))
                                (cons __tmp183052 '()))))
                         (declare (not safe))
                         (cons __tmp183053 __tmp183051))))
                  (declare (not safe))
                  (cons __tmp183050 '())))
               (__tmp183046
                (let ((__tmp183048
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177634_ _body177517_)))
                      (__tmp183047 (_k177502_ _vars177499_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp183048 __tmp183047 _E177501_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp183049
                                                    __tmp183046))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp183054
                                             __tmp183045
                                             _E177501_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177406_ _e177498_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177503177510_))
                                      (let ((_hd177507177639_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177503177510_)))
                                            (_tl177508177641_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177503177510_))))
                                        (let* ((_tag177644_ _hd177507177639_)
                                               (_body177646_ _tl177508177641_))
                                          (declare (not safe))
                                          (_K177506177636_
                                           _body177646_
                                           _tag177644_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177505177514_))))))
                             (_splice-rlen177408_
                              (lambda (_e177460_)
                                (let _lp177462_ ((_e177464_ _e177460_)
                                                 (_n177465_ '0))
                                  (let* ((_e177466177473_ _e177464_)
                                         (_E177468177477_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177466177473_)))
                                         (_K177469177486_
                                          (lambda (_body177480_ _tag177481_)
                                            (let ((_$e177483_ _tag177481_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177483_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx177227_
                                                     _where177399_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177483_))
                                                      (let ((__tmp183153
                                                             (cdr _body177480_))
                                                            (__tmp183152
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177465_ '1))))
                (declare (not safe))
                (_lp177462_ __tmp183153 __tmp183152))
              _n177465_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177466177473_))
                                        (let ((_hd177470177489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177466177473_)))
                                              (_tl177471177491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177466177473_))))
                                          (let* ((_tag177494_ _hd177470177489_)
                                                 (_body177496_
                                                  _tl177471177491_))
                                            (declare (not safe))
                                            (_K177469177486_
                                             _body177496_
                                             _tag177494_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177468177477_)))))))
                             (_splice-vars177409_
                              (lambda (_e177416_)
                                (let _recur177418_ ((_e177420_ _e177416_)
                                                    (_vars177421_ '()))
                                  (let* ((_e177422177429_ _e177420_)
                                         (_E177424177433_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177422177429_)))
                                         (_K177425177448_
                                          (lambda (_body177436_ _tag177437_)
                                            (let ((_$e177439_ _tag177437_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177439_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177436_
                                                          _vars177421_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177439_))
                  (let () (declare (not safe)) (eq? 'splice _$e177439_)))
              (let ((__tmp183156 (cdr _body177436_))
                    (__tmp183154
                     (let ((__tmp183155 (car _body177436_)))
                       (declare (not safe))
                       (_recur177418_ __tmp183155 _vars177421_))))
                (declare (not safe))
                (_recur177418_ __tmp183156 __tmp183154))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177439_))
                      (let () (declare (not safe)) (eq? 'box _$e177439_)))
                  (let ()
                    (declare (not safe))
                    (_recur177418_ _body177436_ _vars177421_))
                  _vars177421_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177422177429_))
                                        (let ((_hd177426177451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177422177429_)))
                                              (_tl177427177453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177422177429_))))
                                          (let* ((_tag177456_ _hd177426177451_)
                                                 (_body177458_
                                                  _tl177427177453_))
                                            (declare (not safe))
                                            (_K177425177448_
                                             _body177458_
                                             _tag177456_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177424177433_)))))))
                             (_make-body177410_
                              (lambda (_vars177412_)
                                (let ((__tmp183157
                                       (map (lambda (_mvar177414_)
                                              (let ((__tmp183158
                                                     (car _mvar177414_)))
                                                (declare (not safe))
                                                (assgetq __tmp183158
                                                         _vars177412_
                                                         _BUG177406_)))
                                            _mvars177402_)))
                                  (declare (not safe))
                                  (cons _K177403_ __tmp183157)))))
                      (let ()
                        (declare (not safe))
                        (_recur177407_
                         _hd177401_
                         '()
                         _target177400_
                         _E177404_
                         _make-body177410_)))))
                 (_parse-clause177236_
                  (lambda (_hd177305_ _ids177306_)
                    (let _recur177308_ ((_e177310_ _hd177305_)
                                        (_vars177311_ '())
                                        (_depth177312_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177310_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177310_))
                              (values '(any) _vars177311_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177310_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx177227_
                                     _hd177305_))
                                  (if (let ((__tmp183174
                                             (lambda (_id177314_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177310_
                                                  _id177314_)))))
                                        (declare (not safe))
                                        (find __tmp183174 _ids177306_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177310_))
                                              _vars177311_)
                                      (if (let ((__tmp183172
                                                 (lambda (_var177316_)
                                                   (let ((__tmp183173
                                                          (car _var177316_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177310_
                                                      __tmp183173)))))
                                            (declare (not safe))
                                            (find __tmp183172 _vars177311_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx177227_
                                             _e177310_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177310_))
                                                  (let ((__tmp183171
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183171
                                                          _vars177311_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177310_))
                              (let* ((_e177317177324_ _e177310_)
                                     (_E177319177328_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177317177324_))))
                                     (_E177318177389_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177317177324_))
                                            (let ((_e177320177332_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177317177324_))))
                                              (let ((_hd177321177335_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177320177332_)))
                                                    (_tl177322177337_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177320177332_))))
                                                (let* ((_hd177340_
                                                        _hd177321177335_)
                                                       (_rest177342_
                                                        _tl177322177337_))
                                                  (if '#t
                                                      (let* ((_make-pair177357_
                                                              (lambda (_tag177344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177345_
                               _tl177346_)
                        (let* ((_hd-depth177348_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177344_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177312_ '1))
                                    _depth177312_))
                               (_g183166_
                                (let ()
                                  (declare (not safe))
                                  (_recur177308_
                                   _hd177345_
                                   _vars177311_
                                   _hd-depth177348_))))
                          (begin
                            (let ((_g183167_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g183166_)
                                         (##vector-length _g183166_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g183167_ 2)))
                                  (error "Context expects 2 values"
                                         _g183167_)))
                            (let ((_hd177350_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183166_ 0)))
                                  (_vars177351_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183166_ 1))))
                              (let ((_g183168_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177308_
                                        _tl177346_
                                        _vars177351_
                                        _depth177312_))))
                                (begin
                                  (let ((_g183169_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g183168_)
                                               (##vector-length _g183168_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g183169_ 2)))
                                        (error "Context expects 2 values"
                                               _g183169_)))
                                  (let ((_tl177353_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183168_ 0)))
                                        (_vars177354_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183168_ 1))))
                                    (let ()
                                      (values (let ((__tmp183170
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177350_
                                                             _tl177353_))))
                                                (declare (not safe))
                                                (cons _tag177344_ __tmp183170))
                                              _vars177354_))))))))))
                     (_e177358177365_ _rest177342_)
                     (_E177360177369_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177357_ 'cons _hd177340_ _rest177342_))))
                     (_E177359177385_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177358177365_))
                            (let ((_e177361177373_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177358177365_))))
                              (let ((_hd177362177376_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177361177373_)))
                                    (_tl177363177378_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177361177373_))))
                                (let* ((_rest-hd177381_ _hd177362177376_)
                                       (_rest-tl177383_ _tl177363177378_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177381_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177357_
                                             'splice
                                             _hd177340_
                                             _rest-tl177383_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177357_
                                             'cons
                                             _hd177340_
                                             _rest177342_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177360177369_))))))
                            (let () (declare (not safe)) (_E177360177369_))))))
                (let () (declare (not safe)) (_E177359177385_)))
              (let () (declare (not safe)) (_E177319177328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177319177328_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177318177389_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177310_))
                                  (values '(null) _vars177311_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177310_))
                                      (let ((_g183163_
                                             (let ((__tmp183165
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177310_)))))
                                               (declare (not safe))
                                               (_recur177308_
                                                __tmp183165
                                                _vars177311_
                                                _depth177312_))))
                                        (begin
                                          (let ((_g183164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g183163_)
                                                       (##vector-length
                                                        _g183163_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g183164_ 2)))
                                                (error "Context expects 2 values"
                                                       _g183164_)))
                                          (let ((_e177393_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g183163_ 0)))
                                                (_vars177394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g183163_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177393_))
                                                    _vars177394_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177310_))
                                          (let ((_g183160_
                                                 (let ((__tmp183162
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177308_
                                                    __tmp183162
                                                    _vars177311_
                                                    _depth177312_))))
                                            (begin
                                              (let ((_g183161_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183160_)
                                                           (##vector-length
                                                            _g183160_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183161_)))
                                              (let ((_e177396_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183160_
                                                        0)))
                                                    (_vars177397_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183160_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177396_))
                                                        _vars177397_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177310_))
                                              (values (let ((__tmp183159
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177310_))))
                (declare (not safe))
                (cons 'datum __tmp183159))
              _vars177311_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx177227_
                                                 _e177310_))))))))))))
          (let* ((_e177237177250_ _stx177227_)
                 (_E177239177254_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e177237177250_))))
                 (_E177238177301_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177237177250_))
                        (let ((_e177240177258_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177237177250_))))
                          (let ((_hd177241177261_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177240177258_)))
                                (_tl177242177263_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177240177258_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177242177263_))
                                (let ((_e177243177266_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177242177263_))))
                                  (let ((_hd177244177269_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177243177266_)))
                                        (_tl177245177271_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177243177266_))))
                                    (let ((_expr177274_ _hd177244177269_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl177245177271_))
                                          (let ((_e177246177276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl177245177271_))))
                                            (let ((_hd177247177279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177246177276_)))
                                                  (_tl177248177281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177246177276_))))
                                              (let* ((_ids177284_
                                                      _hd177247177279_)
                                                     (_clauses177286_
                                                      _tl177248177281_))
                                                (if '#t
                                                    (if (let ((__tmp183192
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177284_))))
                  (declare (not safe))
                  (not __tmp183192))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx177227_
                   _ids177284_))
                (if (let ((__tmp183191
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177286_))))
                      (declare (not safe))
                      (not __tmp183191))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx177227_))
                    (let* ((_ids177288_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177284_)))
                           (_clauses177290_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177286_)))
                           (_clause-ids177292_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177290_)))
                           (_E177294_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177296_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177298_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177290_))
                                _E177294_
                                (car _clause-ids177292_))))
                      (let ((__tmp183176
                             (let ((__tmp183177
                                    (let ((__tmp183179
                                           (let ((__tmp183184
                                                  (let ((__tmp183185
                                                         (let ((__tmp183190
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177294_ '())))
                       (__tmp183186
                        (let ((__tmp183187
                               (let ((__tmp183189
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177296_ '())))
                                     (__tmp183188
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177296_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp183189
                                  __tmp183188))))
                          (declare (not safe))
                          (cons __tmp183187 '()))))
                   (declare (not safe))
                   (cons __tmp183190 __tmp183186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183185 '())))
                                                 (__tmp183180
                                                  (let ((__tmp183183
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings177232_
                                                            _target177296_
                                                            _ids177288_
                                                            _clauses177290_
                                                            _clause-ids177292_
                                                            _E177294_)))
                                                        (__tmp183181
                                                         (let ((__tmp183182
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177274_ '()))))
                   (declare (not safe))
                   (cons _first177298_ __tmp183182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body177233_
                                                     __tmp183183
                                                     __tmp183181))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp183184
                                              __tmp183180)))
                                          (__tmp183178
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx177227_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp183179
                                       __tmp183178))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp183177)))
                            (__tmp183175
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx177227_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp183176 __tmp183175)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177239177254_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177239177254_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177239177254_)))))
                        (let () (declare (not safe)) (_E177239177254_))))))
            (let () (declare (not safe)) (_E177238177301_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177937_)
        (let* ((_identifier=?177939_ 'free-identifier=?)
               (_unwrap-e177941_ 'syntax-e)
               (_wrap-e177943_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177937_
           _identifier=?177939_
           _unwrap-e177941_
           _wrap-e177943_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177945_ _identifier=?177946_)
        (let* ((_unwrap-e177948_ 'syntax-e) (_wrap-e177950_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177945_
           _identifier=?177946_
           _unwrap-e177948_
           _wrap-e177950_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177952_ _identifier=?177953_ _unwrap-e177954_)
        (let ((_wrap-e177956_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177952_
           _identifier=?177953_
           _unwrap-e177954_
           _wrap-e177956_))))
    (define gx#macro-expand-syntax-case
      (lambda _g183194_
        (let ((_g183193_ (let () (declare (not safe)) (##length _g183194_))))
          (cond ((let () (declare (not safe)) (##fx= _g183193_ 1))
                 (apply (lambda (_stx177937_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177937_)))
                        _g183194_))
                ((let () (declare (not safe)) (##fx= _g183193_ 2))
                 (apply (lambda (_stx177945_ _identifier=?177946_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177945_
                             _identifier=?177946_)))
                        _g183194_))
                ((let () (declare (not safe)) (##fx= _g183193_ 3))
                 (apply (lambda (_stx177952_
                                 _identifier=?177953_
                                 _unwrap-e177954_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177952_
                             _identifier=?177953_
                             _unwrap-e177954_)))
                        _g183194_))
                ((let () (declare (not safe)) (##fx= _g183193_ 4))
                 (apply (lambda (_stx177958_
                                 _identifier=?177959_
                                 _unwrap-e177960_
                                 _wrap-e177961_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177958_
                             _identifier=?177959_
                             _unwrap-e177960_
                             _wrap-e177961_)))
                        _g183194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g183194_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx177224_)
        (if (let () (declare (not safe)) (gx#identifier? _stx177224_))
            (let ((__tmp183195
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx177224_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp183195 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd177182_ . _rest177183_)
        (let ((_len177185_ (length _hd177182_)))
          (let _lp177187_ ((_rest177189_ _rest177183_))
            (let* ((_rest177190177198_ _rest177189_)
                   (_else177192177206_ (lambda () '#!void))
                   (_K177194177212_
                    (lambda (_rest177209_ _hd177210_)
                      (if (fx= _len177185_ (length _hd177210_))
                          (let ()
                            (declare (not safe))
                            (_lp177187_ _rest177209_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd177210_))))))
              (if (let () (declare (not safe)) (##pair? _rest177190177198_))
                  (let ((_hd177195177215_
                         (let ()
                           (declare (not safe))
                           (##car _rest177190177198_)))
                        (_tl177196177217_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest177190177198_))))
                    (let* ((_hd177220_ _hd177195177215_)
                           (_rest177222_ _tl177196177217_))
                      (declare (not safe))
                      (_K177194177212_ _rest177222_ _hd177220_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx177140_ _n177141_)
        (let _lp177143_ ((_rest177145_ _stx177140_) (_r177146_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest177145_))
              (let* ((_g177147177154_
                      (let () (declare (not safe)) (gx#syntax-e _rest177145_)))
                     (_E177149177158_
                      (lambda ()
                        (error '"No clause matching" _g177147177154_)))
                     (_K177150177164_
                      (lambda (_rest177161_ _hd177162_)
                        (let ((__tmp183200
                               (let ()
                                 (declare (not safe))
                                 (cons _hd177162_ _r177146_))))
                          (declare (not safe))
                          (_lp177143_ _rest177161_ __tmp183200)))))
                (if (let () (declare (not safe)) (##pair? _g177147177154_))
                    (let ((_hd177151177167_
                           (let ()
                             (declare (not safe))
                             (##car _g177147177154_)))
                          (_tl177152177169_
                           (let ()
                             (declare (not safe))
                             (##cdr _g177147177154_))))
                      (let* ((_hd177172_ _hd177151177167_)
                             (_rest177174_ _tl177152177169_))
                        (declare (not safe))
                        (_K177150177164_ _rest177174_ _hd177172_)))
                    (let () (declare (not safe)) (_E177149177158_))))
              (let _lp177176_ ((_n177178_ _n177141_)
                               (_l177179_ _r177146_)
                               (_r177180_ _rest177145_))
                (if (let () (declare (not safe)) (null? _l177179_))
                    (values _l177179_ _r177180_)
                    (if (fxpositive? _n177178_)
                        (let ((__tmp183199
                               (let ()
                                 (declare (not safe))
                                 (fx- _n177178_ '1)))
                              (__tmp183198 (cdr _l177179_))
                              (__tmp183196
                               (let ((__tmp183197 (car _l177179_)))
                                 (declare (not safe))
                                 (cons __tmp183197 _r177180_))))
                          (declare (not safe))
                          (_lp177176_ __tmp183199 __tmp183198 __tmp183196))
                        (values (reverse _l177179_) _r177180_))))))))))
