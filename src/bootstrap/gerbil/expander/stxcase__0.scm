(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707620171)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182962
             (let ((__tmp182963
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182963 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp182962
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178491_
        (apply make-struct-instance gx#syntax-pattern::t _$args178491_)))
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
      (lambda (_self178488_ _stx178489_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178489_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177970_)
        (letrec ((_generate177972_
                  (lambda (_e178199_)
                    (letrec ((_BUG178201_
                              (lambda (_q178363_)
                                (error '"BUG: syntax; generate"
                                       _stx177970_
                                       _e178199_
                                       _q178363_)))
                             (_local-pattern-e178202_
                              (lambda (_pat178361_)
                                (let ((__tmp182964
                                       (##structure-ref
                                        _pat178361_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182964))))
                             (_getvar178203_
                              (lambda (_q178358_ _vars178359_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178358_
                                           _vars178359_
                                           _BUG178201_))))
                             (_getarg178204_
                              (lambda (_arg178324_ _vars178325_)
                                (let* ((_arg178326178333_ _arg178324_)
                                       (_E178328178337_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178326178333_)))
                                       (_K178329178346_
                                        (lambda (_e178340_ _tag178341_)
                                          (let ((_$e178343_ _tag178341_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178343_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar178203_
                                                   _e178340_
                                                   _vars178325_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178343_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e178202_
                                                       _e178340_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG178201_
                                                       _arg178324_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178326178333_))
                                      (let ((_hd178330178349_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178326178333_)))
                                            (_tl178331178351_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178326178333_))))
                                        (let* ((_tag178354_ _hd178330178349_)
                                               (_e178356_ _tl178331178351_))
                                          (declare (not safe))
                                          (_K178329178346_
                                           _e178356_
                                           _tag178354_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178328178337_)))))))
                      (let _recur178206_ ((_e178208_ _e178199_)
                                          (_vars178209_ '()))
                        (let* ((_e178210178217_ _e178208_)
                               (_E178212178221_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e178210178217_)))
                               (_K178213178312_
                                (lambda (_body178224_ _tag178225_)
                                  (let ((_$e178227_ _tag178225_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e178227_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body178224_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e178227_))
                                            (let ((_id178230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body178224_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id178230_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks178232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id178230_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks178232_))
                                                        (let ((__tmp182992
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body178224_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182992))
                (let ((__tmp182991
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body178224_)))
                      (__tmp182990
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body178224_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182991
                   __tmp182990
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id178230_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body178224_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG178201_
                                                         _e178208_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e178227_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e178202_
                                                   _body178224_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e178227_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar178203_
                                                       _body178224_
                                                       _vars178209_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e178227_))
                                                        (let ((__tmp182988
                                                               (let ((__tmp182989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body178224_)))
                         (declare (not safe))
                         (_recur178206_ __tmp182989 _vars178209_)))
                      (__tmp182986
                       (let ((__tmp182987 (cdr _body178224_)))
                         (declare (not safe))
                         (_recur178206_ __tmp182987 _vars178209_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182988 __tmp182986))
                (if (let () (declare (not safe)) (eq? 'vector _$e178227_))
                    (let ((__tmp182985
                           (let ()
                             (declare (not safe))
                             (_recur178206_ _body178224_ _vars178209_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182985))
                    (if (let () (declare (not safe)) (eq? 'box _$e178227_))
                        (let ((__tmp182984
                               (let ()
                                 (declare (not safe))
                                 (_recur178206_ _body178224_ _vars178209_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182984))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e178227_))
                            (let* ((_body178233178244_ _body178224_)
                                   (_E178235178248_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body178233178244_)))
                                   (_K178236178286_
                                    (lambda (_args178251_
                                             _iv178252_
                                             _hd178253_
                                             _depth178254_)
                                      (let* ((_targets178260_
                                              (map (lambda (_g178255178257_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg178204_
                                                        _g178255178257_
                                                        _vars178209_)))
                                                   _args178251_))
                                             (_fold-in178262_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args178251_)))
                                             (_fold-out178264_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178266_
                                              (let ((__tmp182965
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178264_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182965
                                                        _fold-in178262_)))
                                             (_lambda-body178283_
                                              (if (fx> _depth178254_ '1)
                                                  (let ((_r-args178274_
                                                         (map (lambda (_arg178268_)
                                                                (let ((__tmp182970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178268_)))
                          (declare (not safe))
                          (cons 'ref __tmp182970)))
                      _args178251_))
                (_r-vars178275_
                 (let ((__tmp182971
                        (lambda (_arg178270_ _var178271_ _r178272_)
                          (let ((__tmp182972
                                 (let ((__tmp182973 (cdr _arg178270_)))
                                   (declare (not safe))
                                   (cons __tmp182973 _var178271_))))
                            (declare (not safe))
                            (cons __tmp182972 _r178272_)))))
                   (declare (not safe))
                   (foldr2 __tmp182971
                           _vars178209_
                           _args178251_
                           _fold-in178262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182974
                                                           (let ((__tmp182975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182979
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178254_ '1)))
                                (__tmp182976
                                 (let ((__tmp182977
                                        (let ((__tmp182978
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178264_))))
                                          (declare (not safe))
                                          (cons __tmp182978 _r-args178274_))))
                                   (declare (not safe))
                                   (cons _hd178253_ __tmp182977))))
                            (declare (not safe))
                            (cons __tmp182979 __tmp182976))))
                     (declare (not safe))
                     (cons 'splice __tmp182975))))
              (declare (not safe))
              (_recur178206_ __tmp182974 _r-vars178275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178281_
                                                          (let ((__tmp182966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178277_ _var178278_ _r178279_)
                           (let ((__tmp182967
                                  (let ((__tmp182968 (cdr _arg178277_)))
                                    (declare (not safe))
                                    (cons __tmp182968 _var178278_))))
                             (declare (not safe))
                             (cons __tmp182967 _r178279_)))))
                    (declare (not safe))
                    (foldr2 __tmp182966
                            _vars178209_
                            _args178251_
                            _fold-in178262_)))
                 (__tmp182969
                  (let ()
                    (declare (not safe))
                    (_recur178206_ _hd178253_ _hd-vars178281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182969
                                                     _fold-out178264_)))))
                                        (let ((__tmp182983
                                               (if (fx> (length _targets178260_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178260_))
                                                   '#!void))
                                              (__tmp182980
                                               (let ((__tmp182982
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178266_
                                                         _lambda-body178283_)))
                                                     (__tmp182981
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur178206_
                                                         _iv178252_
                                                         _vars178209_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182982
                                                  __tmp182981
                                                  _targets178260_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182983
                                           __tmp182980))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body178233178244_))
                                  (let ((_hd178237178289_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body178233178244_)))
                                        (_tl178238178291_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body178233178244_))))
                                    (let ((_depth178294_ _hd178237178289_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl178238178291_))
                                          (let ((_hd178239178296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl178238178291_)))
                                                (_tl178240178298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl178238178291_))))
                                            (let ((_hd178301_
                                                   _hd178239178296_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl178240178298_))
                                                  (let ((_hd178241178303_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl178240178298_)))
                                                        (_tl178242178305_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl178240178298_))))
                                                    (let* ((_iv178308_
                                                            _hd178241178303_)
                                                           (_args178310_
                                                            _tl178242178305_))
                                                      (declare (not safe))
                                                      (_K178236178286_
                                                       _args178310_
                                                       _iv178308_
                                                       _hd178301_
                                                       _depth178294_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178235178248_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178235178248_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E178235178248_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e178227_))
                                _body178224_
                                (let ()
                                  (declare (not safe))
                                  (_BUG178201_ _e178208_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e178210178217_))
                              (let ((_hd178214178315_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e178210178217_)))
                                    (_tl178215178317_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e178210178217_))))
                                (let* ((_tag178320_ _hd178214178315_)
                                       (_body178322_ _tl178215178317_))
                                  (declare (not safe))
                                  (_K178213178312_ _body178322_ _tag178320_)))
                              (let ()
                                (declare (not safe))
                                (_E178212178221_))))))))
                 (_parse177973_
                  (lambda (_e178014_)
                    (letrec ((_make-cons178016_
                              (lambda (_hd178191_ _tl178192_)
                                (let ((_g182993_ _hd178191_)
                                      (_g182995_ _tl178192_))
                                  (begin
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
                                    (let ((_g182996_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182995_)
                                                 (##vector-length _g182995_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182996_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182996_)))
                                    (let ((_hd-e178194_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182993_ 0)))
                                          (_hd-vars178195_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182993_ 1))))
                                      (let ((_tl-e178196_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182995_ 0)))
                                            (_tl-vars178197_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182995_ 1))))
                                        (values (let ((__tmp182997
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e178194_
                                                               _tl-e178196_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182997))
                                                (append _hd-vars178195_
                                                        _tl-vars178197_))))))))
                             (_make-splice178017_
                              (lambda (_where178130_
                                       _depth178131_
                                       _hd178132_
                                       _tl178133_)
                                (let ((_g182998_ _hd178132_)
                                      (_g183000_ _tl178133_))
                                  (begin
                                    (let ((_g182999_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182998_)
                                                 (##vector-length _g182998_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182999_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182999_)))
                                    (let ((_g183001_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183000_)
                                                 (##vector-length _g183000_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183001_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183001_)))
                                    (let ((_hd-e178135_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182998_ 0)))
                                          (_hd-vars178136_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182998_ 1))))
                                      (let ((_tl-e178137_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g183000_ 0)))
                                            (_tl-vars178138_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g183000_ 1))))
                                        (let _lp178140_ ((_rest178142_
                                                          _hd-vars178136_)
                                                         (_targets178143_ '())
                                                         (_vars178144_
                                                          _tl-vars178138_))
                                          (let* ((_rest178145178155_
                                                  _rest178142_)
                                                 (_else178147178163_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets178143_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177970_
                                                           _where178130_))
                                                        (values (let ((__tmp183002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp183003
                                      (let ((__tmp183004
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e178137_
                                                     _targets178143_))))
                                        (declare (not safe))
                                        (cons _hd-e178135_ __tmp183004))))
                                 (declare (not safe))
                                 (cons _depth178131_ __tmp183003))))
                          (declare (not safe))
                          (cons 'splice __tmp183002))
                        _vars178144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K178149178172_
                                                  (lambda (_rest178166_
                                                           _hd-pat178167_
                                                           _hd-depth*178168_)
                                                    (let ((_hd-depth178170_
                                                           (fx- _hd-depth*178168_
                                                                _depth178131_)))
                                                      (if (fxpositive?
                                                           _hd-depth178170_)
                                                          (let ((__tmp183009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp183010
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat178167_))))
                           (declare (not safe))
                           (cons __tmp183010 _targets178143_)))
                        (__tmp183007
                         (let ((__tmp183008
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth178170_ _hd-pat178167_))))
                           (declare (not safe))
                           (cons __tmp183008 _vars178144_))))
                    (declare (not safe))
                    (_lp178140_ _rest178166_ __tmp183009 __tmp183007))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth178170_))
                      (let ((__tmp183005
                             (let ((__tmp183006
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat178167_))))
                               (declare (not safe))
                               (cons __tmp183006 _targets178143_))))
                        (declare (not safe))
                        (_lp178140_ _rest178166_ __tmp183005 _vars178144_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177970_
                         _where178130_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest178145178155_))
                                                (let ((_hd178150178175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest178145178155_)))
                                                      (_tl178151178177_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest178145178155_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd178150178175_))
                                                      (let ((_hd178152178180_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd178150178175_)))
                    (_tl178153178182_
                     (let () (declare (not safe)) (##cdr _hd178150178175_))))
                (let* ((_hd-depth*178185_ _hd178152178180_)
                       (_hd-pat178187_ _tl178153178182_)
                       (_rest178189_ _tl178151178177_))
                  (declare (not safe))
                  (_K178149178172_
                   _rest178189_
                   _hd-pat178187_
                   _hd-depth*178185_)))
              (let () (declare (not safe)) (_else178147178163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else178147178163_)))))))))))
                             (_recur178018_
                              (lambda (_e178023_ _is-e?178024_)
                                (if (_is-e?178024_ _e178023_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177970_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e178023_))
                                        (let* ((_pat178026_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e178023_)))
                                               (_depth178028_
                                                (##structure-ref
                                                 _pat178026_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth178028_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat178026_))
                                                      (let ((__tmp183026
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth178028_ _pat178026_))))
                (declare (not safe))
                (cons __tmp183026 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat178026_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e178023_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e178023_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e178023_))
                                                (let* ((_e178030178037_
                                                        _e178023_)
                                                       (_E178032178041_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e178030178037_))))
                                                       (_E178031178120_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e178030178037_))
                      (let ((_e178033178045_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e178030178037_))))
                        (let ((_hd178034178048_
                               (let ()
                                 (declare (not safe))
                                 (##car _e178033178045_)))
                              (_tl178035178050_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e178033178045_))))
                          (let* ((_hd178053_ _hd178034178048_)
                                 (_rest178055_ _tl178035178050_))
                            (if '#t
                                (if (_is-e?178024_ _hd178053_)
                                    (let* ((_e178056178063_ _rest178055_)
                                           (_E178058178067_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177970_
                                                 _e178023_))))
                                           (_E178057178081_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e178056178063_))
                                                  (let ((_e178059178071_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e178056178063_))))
                                                    (let ((_hd178060178074_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e178059178071_)))
                                                          (_tl178061178076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e178059178071_))))
                                                      (let ((_rest178079_
                                                             _hd178060178074_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl178061178076_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur178018_ _rest178079_ false))
                        (let () (declare (not safe)) (_E178058178067_)))
                    (let () (declare (not safe)) (_E178058178067_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178058178067_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E178057178081_)))
                                    (let _lp178085_ ((_rest178087_
                                                      _rest178055_)
                                                     (_depth178088_ '0))
                                      (let* ((_e178089178096_ _rest178087_)
                                             (_E178091178100_
                                              (lambda ()
                                                (if (fxpositive? _depth178088_)
                                                    (let ((__tmp183020
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178018_
                                                              _hd178053_
                                                              _is-e?178024_)))
                                                          (__tmp183019
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178018_
                                                              _rest178087_
                                                              _is-e?178024_))))
                                                      (declare (not safe))
                                                      (_make-splice178017_
                                                       _e178023_
                                                       _depth178088_
                                                       __tmp183020
                                                       __tmp183019))
                                                    (let ((__tmp183018
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178018_
                                                              _hd178053_
                                                              _is-e?178024_)))
                                                          (__tmp183017
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur178018_
                                                              _rest178087_
                                                              _is-e?178024_))))
                                                      (declare (not safe))
                                                      (_make-cons178016_
                                                       __tmp183018
                                                       __tmp183017)))))
                                             (_E178090178116_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e178089178096_))
                                                    (let ((_e178092178104_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e178089178096_))))
                                                      (let ((_hd178093178107_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e178092178104_)))
                    (_tl178094178109_
                     (let () (declare (not safe)) (##cdr _e178092178104_))))
                (let* ((_rest-hd178112_ _hd178093178107_)
                       (_rest-tl178114_ _tl178094178109_))
                  (if '#t
                      (if (_is-e?178024_ _rest-hd178112_)
                          (let ((__tmp183025
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth178088_ '1))))
                            (declare (not safe))
                            (_lp178085_ _rest-tl178114_ __tmp183025))
                          (if (fxpositive? _depth178088_)
                              (let ((__tmp183024
                                     (let ()
                                       (declare (not safe))
                                       (_recur178018_
                                        _hd178053_
                                        _is-e?178024_)))
                                    (__tmp183023
                                     (let ()
                                       (declare (not safe))
                                       (_recur178018_
                                        _rest178087_
                                        _is-e?178024_))))
                                (declare (not safe))
                                (_make-splice178017_
                                 _e178023_
                                 _depth178088_
                                 __tmp183024
                                 __tmp183023))
                              (let ((__tmp183022
                                     (let ()
                                       (declare (not safe))
                                       (_recur178018_
                                        _hd178053_
                                        _is-e?178024_)))
                                    (__tmp183021
                                     (let ()
                                       (declare (not safe))
                                       (_recur178018_
                                        _rest178087_
                                        _is-e?178024_))))
                                (declare (not safe))
                                (_make-cons178016_ __tmp183022 __tmp183021))))
                      (let () (declare (not safe)) (_E178091178100_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178091178100_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E178090178116_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E178032178041_))))))
                      (let () (declare (not safe)) (_E178032178041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178031178120_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e178023_))
                                                    (let ((_g183014_
                                                           (let ((__tmp183016
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e178023_)))))
                     (declare (not safe))
                     (_recur178018_ __tmp183016 _is-e?178024_))))
              (begin
                (let ((_g183015_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g183014_)
                             (##vector-length _g183014_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g183015_ 2)))
                      (error "Context expects 2 values" _g183015_)))
                (let ((_e178124_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183014_ 0)))
                      (_vars178125_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g183014_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e178124_))
                          _vars178125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e178023_))
                                                        (let ((_g183011_
                                                               (let ((__tmp183013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e178023_)))))
                         (declare (not safe))
                         (_recur178018_ __tmp183013 _is-e?178024_))))
                  (begin
                    (let ((_g183012_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g183011_)
                                 (##vector-length _g183011_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g183012_ 2)))
                          (error "Context expects 2 values" _g183012_)))
                    (let ((_e178127_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g183011_ 0)))
                          (_vars178128_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g183011_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e178127_))
                              _vars178128_))))
                (values (let () (declare (not safe)) (cons 'datum _e178023_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g183027_
                             (let ()
                               (declare (not safe))
                               (_recur178018_ _e178014_ gx#ellipsis?))))
                        (begin
                          (let ((_g183028_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g183027_)
                                       (##vector-length _g183027_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g183028_ 2)))
                                (error "Context expects 2 values" _g183028_)))
                          (let ((_tree178020_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183027_ 0)))
                                (_vars178021_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g183027_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars178021_))
                                _tree178020_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177970_
                                   _vars178021_))))))))))
          (let* ((_e177974177984_ _stx177970_)
                 (_E177976177988_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177970_))))
                 (_E177975178010_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177974177984_))
                        (let ((_e177977177992_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177974177984_))))
                          (let ((_hd177978177995_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177977177992_)))
                                (_tl177979177997_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177977177992_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177979177997_))
                                (let ((_e177980178000_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177979177997_))))
                                  (let ((_hd177981178003_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177980178000_)))
                                        (_tl177982178005_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177980178000_))))
                                    (let ((_form178008_ _hd177981178003_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177982178005_))
                                          (if '#t
                                              (let ((__tmp183030
                                                     (let ((__tmp183031
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177973_
                                                               _form178008_))))
                                                       (declare (not safe))
                                                       (_generate177972_
                                                        __tmp183031)))
                                                    (__tmp183029
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177970_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp183030
                                                 __tmp183029))
                                              (let ()
                                                (declare (not safe))
                                                (_E177976177988_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177976177988_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177976177988_)))))
                        (let () (declare (not safe)) (_E177976177988_))))))
            (let () (declare (not safe)) (_E177975178010_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx177234_
               _identifier=?177235_
               _unwrap-e177236_
               _wrap-e177237_)
        (letrec ((_generate-bindings177239_
                  (lambda (_target177834_
                           _ids177835_
                           _clauses177836_
                           _clause-ids177837_
                           _E177838_)
                    (letrec ((_generate1177840_
                              (lambda (_clause177937_
                                       _clause-id177938_
                                       _E177939_)
                                (let ((__tmp183036
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177938_ '())))
                                      (__tmp183032
                                       (let ((__tmp183033
                                              (let ((__tmp183035
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177834_
                                                             '())))
                                                    (__tmp183034
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause177241_
                                                        _target177834_
                                                        _ids177835_
                                                        _clause177937_
                                                        _E177939_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp183035
                                                 __tmp183034))))
                                         (declare (not safe))
                                         (cons __tmp183033 '()))))
                                  (declare (not safe))
                                  (cons __tmp183036 __tmp183032)))))
                      (let _lp177842_ ((_rest177844_ _clauses177836_)
                                       (_rest-ids177845_ _clause-ids177837_)
                                       (_bindings177846_ '()))
                        (let* ((_rest177847177855_ _rest177844_)
                               (_else177849177863_
                                (lambda () _bindings177846_))
                               (_K177851177925_
                                (lambda (_rest177866_ _clause177867_)
                                  (let* ((_rest-ids177868177875_
                                          _rest-ids177845_)
                                         (_E177870177879_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177868177875_)))
                                         (_K177871177913_
                                          (lambda (_rest-ids177882_
                                                   _clause-id177883_)
                                            (let* ((_rest-ids177884177892_
                                                    _rest-ids177882_)
                                                   (_else177886177900_
                                                    (lambda ()
                                                      (let ((__tmp183037
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177840_
                        _clause177867_
                        _clause-id177883_
                        _E177838_))))
                (declare (not safe))
                (cons __tmp183037 _bindings177846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177888177905_
                                                    (lambda (_next-clause-id177903_)
                                                      (let ((__tmp183038
                                                             (let ((__tmp183039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177840_
                               _clause177867_
                               _clause-id177883_
                               _next-clause-id177903_))))
                       (declare (not safe))
                       (cons __tmp183039 _bindings177846_))))
                (declare (not safe))
                (_lp177842_ _rest177866_ _rest-ids177882_ __tmp183038)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177884177892_))
                                                  (let* ((_hd177889177908_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177884177892_)))
                                                         (_next-clause-id177911_
                                                          _hd177889177908_))
                                                    (declare (not safe))
                                                    (_K177888177905_
                                                     _next-clause-id177911_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177886177900_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177868177875_))
                                        (let ((_hd177872177916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177868177875_)))
                                              (_tl177873177918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177868177875_))))
                                          (let* ((_clause-id177921_
                                                  _hd177872177916_)
                                                 (_rest-ids177923_
                                                  _tl177873177918_))
                                            (declare (not safe))
                                            (_K177871177913_
                                             _rest-ids177923_
                                             _clause-id177921_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177870177879_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177847177855_))
                              (let ((_hd177852177928_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177847177855_)))
                                    (_tl177853177930_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177847177855_))))
                                (let* ((_clause177933_ _hd177852177928_)
                                       (_rest177935_ _tl177853177930_))
                                  (declare (not safe))
                                  (_K177851177925_
                                   _rest177935_
                                   _clause177933_)))
                              (let ()
                                (declare (not safe))
                                (_else177849177863_))))))))
                 (_generate-body177240_
                  (lambda (_bindings177794_ _body177795_)
                    (let _recur177797_ ((_rest177799_ _bindings177794_))
                      (let* ((_rest177800177808_ _rest177799_)
                             (_else177802177816_ (lambda () _body177795_))
                             (_K177804177822_
                              (lambda (_rest177819_ _hd177820_)
                                (let ((__tmp183041
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177820_ '())))
                                      (__tmp183040
                                       (let ()
                                         (declare (not safe))
                                         (_recur177797_ _rest177819_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp183041
                                   __tmp183040)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177800177808_))
                            (let ((_hd177805177825_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177800177808_)))
                                  (_tl177806177827_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177800177808_))))
                              (let* ((_hd177830_ _hd177805177825_)
                                     (_rest177832_ _tl177806177827_))
                                (declare (not safe))
                                (_K177804177822_ _rest177832_ _hd177830_)))
                            (let ()
                              (declare (not safe))
                              (_else177802177816_)))))))
                 (_generate-clause177241_
                  (lambda (_target177657_ _ids177658_ _clause177659_ _E177660_)
                    (letrec ((_generate1177662_
                              (lambda (_hd177749_ _fender177750_ _body177751_)
                                (let ((_g183042_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause177243_
                                          _hd177749_
                                          _ids177658_))))
                                  (begin
                                    (let ((_g183043_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g183042_)
                                                 (##vector-length _g183042_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g183043_ 2)))
                                          (error "Context expects 2 values"
                                                 _g183043_)))
                                    (let ((_e177753_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183042_ 0)))
                                          (_mvars177754_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g183042_ 1))))
                                      (let* ((_pvars177756_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177754_))))
                                             (_E177758_
                                              (let ((__tmp183044
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177657_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177660_ __tmp183044)))
                                             (_K177791_
                                              (let ((__tmp183045
                                                     (let ((__tmp183047
                                                            (map (lambda (_mvar177760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177761_)
                           (let* ((_mvar177762177769_ _mvar177760_)
                                  (_E177764177773_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177762177769_)))
                                  (_K177765177779_
                                   (lambda (_depth177776_ _id177777_)
                                     (let ((__tmp183048
                                            (let ((__tmp183049
                                                   (let ((__tmp183051
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177777_)))
                                                         (__tmp183050
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177761_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp183051
                                                      __tmp183050
                                                      _depth177776_))))
                                              (declare (not safe))
                                              (cons __tmp183049 '()))))
                                       (declare (not safe))
                                       (cons _id177777_ __tmp183048)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177762177769_))
                                 (let ((_hd177766177782_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177762177769_)))
                                       (_tl177767177784_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177762177769_))))
                                   (let* ((_id177787_ _hd177766177782_)
                                          (_depth177789_ _tl177767177784_))
                                     (declare (not safe))
                                     (_K177765177779_
                                      _depth177789_
                                      _id177787_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177764177773_)))))
                         _mvars177754_
                         _pvars177756_))
                   (__tmp183046
                    (if (let () (declare (not safe)) (eq? _fender177750_ '#t))
                        _body177751_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177750_
                           _body177751_
                           _E177758_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp183047 __tmp183046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177756_
                                                 __tmp183045))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match177242_
                                           _hd177749_
                                           _target177657_
                                           _e177753_
                                           _mvars177754_
                                           _K177791_
                                           _E177758_)))))))))
                      (let* ((_e177663177683_ _clause177659_)
                             (_E177672177687_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177663177683_))))
                             (_E177665177721_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177663177683_))
                                    (let ((_e177673177691_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177663177683_))))
                                      (let ((_hd177674177694_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177673177691_)))
                                            (_tl177675177696_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177673177691_))))
                                        (let ((_hd177699_ _hd177674177694_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177675177696_))
                                              (let ((_e177676177701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177675177696_))))
                                                (let ((_hd177677177704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177676177701_)))
                                                      (_tl177678177706_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177676177701_))))
                                                  (let ((_fender177709_
                                                         _hd177677177704_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177678177706_))
                                                        (let ((_e177679177711_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177678177706_))))
                  (let ((_hd177680177714_
                         (let () (declare (not safe)) (##car _e177679177711_)))
                        (_tl177681177716_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177679177711_))))
                    (let ((_body177719_ _hd177680177714_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177681177716_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177662_
                                 _hd177699_
                                 _fender177709_
                                 _body177719_))
                              (let () (declare (not safe)) (_E177672177687_)))
                          (let () (declare (not safe)) (_E177672177687_))))))
                (let () (declare (not safe)) (_E177672177687_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177672177687_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177672177687_)))))
                             (_E177664177745_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177663177683_))
                                    (let ((_e177666177725_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177663177683_))))
                                      (let ((_hd177667177728_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177666177725_)))
                                            (_tl177668177730_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177666177725_))))
                                        (let ((_hd177733_ _hd177667177728_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177668177730_))
                                              (let ((_e177669177735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177668177730_))))
                                                (let ((_hd177670177738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177669177735_)))
                                                      (_tl177671177740_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177669177735_))))
                                                  (let ((_body177743_
                                                         _hd177670177738_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177671177740_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177662_
                                                               _hd177733_
                                                               '#t
                                                               _body177743_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177665177721_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177665177721_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177665177721_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177665177721_))))))
                        (let () (declare (not safe)) (_E177664177745_))))))
                 (_generate-match177242_
                  (lambda (_where177406_
                           _target177407_
                           _hd177408_
                           _mvars177409_
                           _K177410_
                           _E177411_)
                    (letrec ((_BUG177413_
                              (lambda (_q177655_)
                                (error '"BUG: syntax-case; generate"
                                       _stx177234_
                                       _hd177408_
                                       _q177655_)))
                             (_recur177414_
                              (lambda (_e177505_
                                       _vars177506_
                                       _target177507_
                                       _E177508_
                                       _k177509_)
                                (let* ((_e177510177517_ _e177505_)
                                       (_E177512177521_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177510177517_)))
                                       (_K177513177643_
                                        (lambda (_body177524_ _tag177525_)
                                          (let ((_$e177527_ _tag177525_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177527_))
                                                (_k177509_ _vars177506_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177527_))
                                                    (let ((__tmp183158
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177507_)))
                                                          (__tmp183154
                                                           (let ((__tmp183156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183157
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e177237_
                                    _body177524_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?177235_
                             __tmp183157
                             _target177507_)))
                         (__tmp183155 (_k177509_ _vars177506_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp183156 __tmp183155 _E177508_))))
              (declare (not safe))
              (gx#core-list 'if __tmp183158 __tmp183154 _E177508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177527_))
                                                        (_k177509_
                                                         (let ((__tmp183153
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177524_ _target177507_))))
                   (declare (not safe))
                   (cons __tmp183153 _vars177506_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177527_))
                    (let ((_$e177530_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177531_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177532_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp183152
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177507_)))
                            (__tmp183133
                             (let ((__tmp183147
                                    (let ((__tmp183148
                                           (let ((__tmp183151
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177530_ '())))
                                                 (__tmp183149
                                                  (let ((__tmp183150
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e177236_
                                                            _target177507_))))
                                                    (declare (not safe))
                                                    (cons __tmp183150 '()))))
                                             (declare (not safe))
                                             (cons __tmp183151 __tmp183149))))
                                      (declare (not safe))
                                      (cons __tmp183148 '())))
                                   (__tmp183134
                                    (let ((__tmp183137
                                           (let ((__tmp183143
                                                  (let ((__tmp183146
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp183144
                 (let ((__tmp183145
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177530_))))
                   (declare (not safe))
                   (cons __tmp183145 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183146
                                                          __tmp183144)))
                                                 (__tmp183138
                                                  (let ((__tmp183139
                                                         (let ((__tmp183142
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177532_ '())))
                       (__tmp183140
                        (let ((__tmp183141
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177530_))))
                          (declare (not safe))
                          (cons __tmp183141 '()))))
                   (declare (not safe))
                   (cons __tmp183142 __tmp183140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183139 '()))))
                                             (declare (not safe))
                                             (cons __tmp183143 __tmp183138)))
                                          (__tmp183135
                                           (let* ((_body177533177540_
                                                   _body177524_)
                                                  (_E177535177544_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177533177540_)))
                                                  (_K177536177552_
                                                   (lambda (_tl177547_
                                                            _hd177548_)
                                                     (let ((__tmp183136
                                                            (lambda (_vars177550_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177414_
                         _tl177547_
                         _vars177550_
                         _$tl177532_
                         _E177508_
                         _k177509_)))))
               (declare (not safe))
               (_recur177414_
                _hd177548_
                _vars177506_
                _$hd177531_
                _E177508_
                __tmp183136)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177533177540_))
                                                 (let ((_hd177537177555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177533177540_)))
                                                       (_tl177538177557_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177533177540_))))
                                                   (let* ((_hd177560_
                                                           _hd177537177555_)
                                                          (_tl177562_
                                                           _tl177538177557_))
                                                     (declare (not safe))
                                                     (_K177536177552_
                                                      _tl177562_
                                                      _hd177560_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177535177544_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp183137
                                       __tmp183135))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp183147
                                __tmp183134))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp183152 __tmp183133 _E177508_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177527_))
                        (let* ((_body177563177570_ _body177524_)
                               (_E177565177574_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177563177570_)))
                               (_K177566177625_
                                (lambda (_tl177577_ _hd177578_)
                                  (let* ((_rlen177580_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177415_ _tl177577_)))
                                         (_$target177582_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177584_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177586_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177588_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177590_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177592_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177594_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177596_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177416_ _hd177578_)))
                                         (_lvars177598_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177596_)))
                                         (_tlvars177600_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177596_)))
                                         (_linit177604_
                                          (map (lambda (_var177602_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177598_)))
                                    (letrec ((_make-loop177607_
                                              (lambda (_vars177611_)
                                                (let ((__tmp183084
                                                       (let ((__tmp183085
                                                              (let ((__tmp183121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177588_ '())))
                            (__tmp183086
                             (let ((__tmp183087
                                    (let ((__tmp183120
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177584_ _lvars177598_)))
                                          (__tmp183088
                                           (let ((__tmp183119
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177584_)))
                                                 (__tmp183097
                                                  (let ((__tmp183114
                                                         (let ((__tmp183115
                                                                (let ((__tmp183118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177590_ '())))
                              (__tmp183116
                               (let ((__tmp183117
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e177236_
                                         _$hd177584_))))
                                 (declare (not safe))
                                 (cons __tmp183117 '()))))
                          (declare (not safe))
                          (cons __tmp183118 __tmp183116))))
                   (declare (not safe))
                   (cons __tmp183115 '())))
                (__tmp183098
                 (let ((__tmp183104
                        (let ((__tmp183110
                               (let ((__tmp183113
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177592_ '())))
                                     (__tmp183111
                                      (let ((__tmp183112
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177590_))))
                                        (declare (not safe))
                                        (cons __tmp183112 '()))))
                                 (declare (not safe))
                                 (cons __tmp183113 __tmp183111)))
                              (__tmp183105
                               (let ((__tmp183106
                                      (let ((__tmp183109
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177594_ '())))
                                            (__tmp183107
                                             (let ((__tmp183108
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177590_))))
                                               (declare (not safe))
                                               (cons __tmp183108 '()))))
                                        (declare (not safe))
                                        (cons __tmp183109 __tmp183107))))
                                 (declare (not safe))
                                 (cons __tmp183106 '()))))
                          (declare (not safe))
                          (cons __tmp183110 __tmp183105)))
                       (__tmp183099
                        (let ((__tmp183100
                               (lambda (_hdvars177613_)
                                 (let ((__tmp183101
                                        (let ((__tmp183102
                                               (map (lambda (_svar177615_
                                                             _lvar177616_)
                                                      (let ((__tmp183103
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177615_ _hdvars177613_ _BUG177413_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp183103 _lvar177616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177596_
                                                    _lvars177598_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177594_ __tmp183102))))
                                   (declare (not safe))
                                   (cons _$lp177588_ __tmp183101)))))
                          (declare (not safe))
                          (_recur177414_
                           _hd177578_
                           '()
                           _$lp-hd177592_
                           _E177508_
                           __tmp183100))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp183104 __tmp183099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183114
                                                     __tmp183098)))
                                                 (__tmp183089
                                                  (let ((__tmp183093
                                                         (map (lambda (_lvar177618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177619_)
                        (let ((__tmp183096
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177619_ '())))
                              (__tmp183094
                               (let ((__tmp183095
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177618_))))
                                 (declare (not safe))
                                 (cons __tmp183095 '()))))
                          (declare (not safe))
                          (cons __tmp183096 __tmp183094)))
                      _lvars177598_
                      _tlvars177600_))
                (__tmp183090
                 (_k177509_
                  (let ((__tmp183091
                         (lambda (_svar177621_ _tlvar177622_ _r177623_)
                           (let ((__tmp183092
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177621_ _tlvar177622_))))
                             (declare (not safe))
                             (cons __tmp183092 _r177623_)))))
                    (declare (not safe))
                    (foldl2 __tmp183091
                            _vars177611_
                            _svars177596_
                            _tlvars177600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183093
                                                     __tmp183090))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp183119
                                              __tmp183097
                                              __tmp183089))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp183120
                                       __tmp183088))))
                               (declare (not safe))
                               (cons __tmp183087 '()))))
                        (declare (not safe))
                        (cons __tmp183121 __tmp183086))))
                 (declare (not safe))
                 (cons __tmp183085 '())))
              (__tmp183082
               (let ((__tmp183083
                      (let ()
                        (declare (not safe))
                        (cons _$target177582_ _linit177604_))))
                 (declare (not safe))
                 (cons _$lp177588_ __tmp183083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp183084
                                                   __tmp183082)))))
                                      (let ((_body177609_
                                             (let ((__tmp183123
                                                    (let ((__tmp183124
                                                           (let ((__tmp183127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183128
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177586_ '()))))
                            (declare (not safe))
                            (cons _$target177582_ __tmp183128)))
                         (__tmp183125
                          (let ((__tmp183126
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177507_
                                    _rlen177580_))))
                            (declare (not safe))
                            (cons __tmp183126 '()))))
                     (declare (not safe))
                     (cons __tmp183127 __tmp183125))))
              (declare (not safe))
              (cons __tmp183124 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183122
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177414_
                                                       _tl177577_
                                                       _vars177506_
                                                       _$tl177586_
                                                       _E177508_
                                                       _make-loop177607_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183123
                                                __tmp183122))))
                                        (let ((__tmp183132
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177507_)))
                                              (__tmp183129
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177580_))
                                                   _body177609_
                                                   (let ((__tmp183130
                                                          (let ((__tmp183131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177507_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp183131 _rlen177580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp183130
                                                      _body177609_
                                                      _E177508_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp183132
                                           __tmp183129
                                           _E177508_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177563177570_))
                              (let ((_hd177567177628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177563177570_)))
                                    (_tl177568177630_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177563177570_))))
                                (let* ((_hd177633_ _hd177567177628_)
                                       (_tl177635_ _tl177568177630_))
                                  (declare (not safe))
                                  (_K177566177625_ _tl177635_ _hd177633_)))
                              (let () (declare (not safe)) (_E177565177574_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177527_))
                            (let ((__tmp183081
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177507_)))
                                  (__tmp183080 (_k177509_ _vars177506_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp183081
                               __tmp183080
                               _E177508_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177527_))
                                (let ((_$e177637_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp183079
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177507_)))
                                        (__tmp183071
                                         (let ((__tmp183073
                                                (let ((__tmp183074
                                                       (let ((__tmp183078
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177637_ '())))
                     (__tmp183075
                      (let ((__tmp183076
                             (let ((__tmp183077
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e177236_
                                       _target177507_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp183077))))
                        (declare (not safe))
                        (cons __tmp183076 '()))))
                 (declare (not safe))
                 (cons __tmp183078 __tmp183075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp183074 '())))
                                               (__tmp183072
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177414_
                                                   _body177524_
                                                   _vars177506_
                                                   _$e177637_
                                                   _E177508_
                                                   _k177509_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp183073
                                            __tmp183072))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp183079
                                     __tmp183071
                                     _E177508_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177527_))
                                    (let ((_$e177639_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp183070
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177507_)))
                                            (__tmp183062
                                             (let ((__tmp183064
                                                    (let ((__tmp183065
                                                           (let ((__tmp183069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177639_ '())))
                         (__tmp183066
                          (let ((__tmp183067
                                 (let ((__tmp183068
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e177236_
                                           _target177507_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp183068))))
                            (declare (not safe))
                            (cons __tmp183067 '()))))
                     (declare (not safe))
                     (cons __tmp183069 __tmp183066))))
              (declare (not safe))
              (cons __tmp183065 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183063
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177414_
                                                       _body177524_
                                                       _vars177506_
                                                       _$e177639_
                                                       _E177508_
                                                       _k177509_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183064
                                                __tmp183063))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp183070
                                         __tmp183062
                                         _E177508_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177527_))
                                        (let ((_$e177641_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp183061
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177507_)))
                                                (__tmp183052
                                                 (let ((__tmp183056
                                                        (let ((__tmp183057
                                                               (let ((__tmp183060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177641_ '())))
                             (__tmp183058
                              (let ((__tmp183059
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177507_))))
                                (declare (not safe))
                                (cons __tmp183059 '()))))
                         (declare (not safe))
                         (cons __tmp183060 __tmp183058))))
                  (declare (not safe))
                  (cons __tmp183057 '())))
               (__tmp183053
                (let ((__tmp183055
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177641_ _body177524_)))
                      (__tmp183054 (_k177509_ _vars177506_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp183055 __tmp183054 _E177508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp183056
                                                    __tmp183053))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp183061
                                             __tmp183052
                                             _E177508_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177413_ _e177505_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177510177517_))
                                      (let ((_hd177514177646_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177510177517_)))
                                            (_tl177515177648_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177510177517_))))
                                        (let* ((_tag177651_ _hd177514177646_)
                                               (_body177653_ _tl177515177648_))
                                          (declare (not safe))
                                          (_K177513177643_
                                           _body177653_
                                           _tag177651_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177512177521_))))))
                             (_splice-rlen177415_
                              (lambda (_e177467_)
                                (let _lp177469_ ((_e177471_ _e177467_)
                                                 (_n177472_ '0))
                                  (let* ((_e177473177480_ _e177471_)
                                         (_E177475177484_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177473177480_)))
                                         (_K177476177493_
                                          (lambda (_body177487_ _tag177488_)
                                            (let ((_$e177490_ _tag177488_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177490_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx177234_
                                                     _where177406_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177490_))
                                                      (let ((__tmp183160
                                                             (cdr _body177487_))
                                                            (__tmp183159
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177472_ '1))))
                (declare (not safe))
                (_lp177469_ __tmp183160 __tmp183159))
              _n177472_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177473177480_))
                                        (let ((_hd177477177496_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177473177480_)))
                                              (_tl177478177498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177473177480_))))
                                          (let* ((_tag177501_ _hd177477177496_)
                                                 (_body177503_
                                                  _tl177478177498_))
                                            (declare (not safe))
                                            (_K177476177493_
                                             _body177503_
                                             _tag177501_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177475177484_)))))))
                             (_splice-vars177416_
                              (lambda (_e177423_)
                                (let _recur177425_ ((_e177427_ _e177423_)
                                                    (_vars177428_ '()))
                                  (let* ((_e177429177436_ _e177427_)
                                         (_E177431177440_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177429177436_)))
                                         (_K177432177455_
                                          (lambda (_body177443_ _tag177444_)
                                            (let ((_$e177446_ _tag177444_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177446_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177443_
                                                          _vars177428_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177446_))
                  (let () (declare (not safe)) (eq? 'splice _$e177446_)))
              (let ((__tmp183163 (cdr _body177443_))
                    (__tmp183161
                     (let ((__tmp183162 (car _body177443_)))
                       (declare (not safe))
                       (_recur177425_ __tmp183162 _vars177428_))))
                (declare (not safe))
                (_recur177425_ __tmp183163 __tmp183161))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177446_))
                      (let () (declare (not safe)) (eq? 'box _$e177446_)))
                  (let ()
                    (declare (not safe))
                    (_recur177425_ _body177443_ _vars177428_))
                  _vars177428_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177429177436_))
                                        (let ((_hd177433177458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177429177436_)))
                                              (_tl177434177460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177429177436_))))
                                          (let* ((_tag177463_ _hd177433177458_)
                                                 (_body177465_
                                                  _tl177434177460_))
                                            (declare (not safe))
                                            (_K177432177455_
                                             _body177465_
                                             _tag177463_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177431177440_)))))))
                             (_make-body177417_
                              (lambda (_vars177419_)
                                (let ((__tmp183164
                                       (map (lambda (_mvar177421_)
                                              (let ((__tmp183165
                                                     (car _mvar177421_)))
                                                (declare (not safe))
                                                (assgetq __tmp183165
                                                         _vars177419_
                                                         _BUG177413_)))
                                            _mvars177409_)))
                                  (declare (not safe))
                                  (cons _K177410_ __tmp183164)))))
                      (let ()
                        (declare (not safe))
                        (_recur177414_
                         _hd177408_
                         '()
                         _target177407_
                         _E177411_
                         _make-body177417_)))))
                 (_parse-clause177243_
                  (lambda (_hd177312_ _ids177313_)
                    (let _recur177315_ ((_e177317_ _hd177312_)
                                        (_vars177318_ '())
                                        (_depth177319_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177317_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177317_))
                              (values '(any) _vars177318_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177317_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx177234_
                                     _hd177312_))
                                  (if (let ((__tmp183181
                                             (lambda (_id177321_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177317_
                                                  _id177321_)))))
                                        (declare (not safe))
                                        (find __tmp183181 _ids177313_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177317_))
                                              _vars177318_)
                                      (if (let ((__tmp183179
                                                 (lambda (_var177323_)
                                                   (let ((__tmp183180
                                                          (car _var177323_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177317_
                                                      __tmp183180)))))
                                            (declare (not safe))
                                            (find __tmp183179 _vars177318_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx177234_
                                             _e177317_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177317_))
                                                  (let ((__tmp183178
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183178
                                                          _vars177318_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177317_))
                              (let* ((_e177324177331_ _e177317_)
                                     (_E177326177335_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177324177331_))))
                                     (_E177325177396_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177324177331_))
                                            (let ((_e177327177339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177324177331_))))
                                              (let ((_hd177328177342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177327177339_)))
                                                    (_tl177329177344_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177327177339_))))
                                                (let* ((_hd177347_
                                                        _hd177328177342_)
                                                       (_rest177349_
                                                        _tl177329177344_))
                                                  (if '#t
                                                      (let* ((_make-pair177364_
                                                              (lambda (_tag177351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177352_
                               _tl177353_)
                        (let* ((_hd-depth177355_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177351_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177319_ '1))
                                    _depth177319_))
                               (_g183173_
                                (let ()
                                  (declare (not safe))
                                  (_recur177315_
                                   _hd177352_
                                   _vars177318_
                                   _hd-depth177355_))))
                          (begin
                            (let ((_g183174_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g183173_)
                                         (##vector-length _g183173_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g183174_ 2)))
                                  (error "Context expects 2 values"
                                         _g183174_)))
                            (let ((_hd177357_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183173_ 0)))
                                  (_vars177358_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183173_ 1))))
                              (let ((_g183175_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177315_
                                        _tl177353_
                                        _vars177358_
                                        _depth177319_))))
                                (begin
                                  (let ((_g183176_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g183175_)
                                               (##vector-length _g183175_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g183176_ 2)))
                                        (error "Context expects 2 values"
                                               _g183176_)))
                                  (let ((_tl177360_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183175_ 0)))
                                        (_vars177361_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183175_ 1))))
                                    (let ()
                                      (values (let ((__tmp183177
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177357_
                                                             _tl177360_))))
                                                (declare (not safe))
                                                (cons _tag177351_ __tmp183177))
                                              _vars177361_))))))))))
                     (_e177365177372_ _rest177349_)
                     (_E177367177376_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177364_ 'cons _hd177347_ _rest177349_))))
                     (_E177366177392_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177365177372_))
                            (let ((_e177368177380_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177365177372_))))
                              (let ((_hd177369177383_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177368177380_)))
                                    (_tl177370177385_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177368177380_))))
                                (let* ((_rest-hd177388_ _hd177369177383_)
                                       (_rest-tl177390_ _tl177370177385_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177388_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177364_
                                             'splice
                                             _hd177347_
                                             _rest-tl177390_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177364_
                                             'cons
                                             _hd177347_
                                             _rest177349_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177367177376_))))))
                            (let () (declare (not safe)) (_E177367177376_))))))
                (let () (declare (not safe)) (_E177366177392_)))
              (let () (declare (not safe)) (_E177326177335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177326177335_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177325177396_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177317_))
                                  (values '(null) _vars177318_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177317_))
                                      (let ((_g183170_
                                             (let ((__tmp183172
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177317_)))))
                                               (declare (not safe))
                                               (_recur177315_
                                                __tmp183172
                                                _vars177318_
                                                _depth177319_))))
                                        (begin
                                          (let ((_g183171_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g183170_)
                                                       (##vector-length
                                                        _g183170_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g183171_ 2)))
                                                (error "Context expects 2 values"
                                                       _g183171_)))
                                          (let ((_e177400_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g183170_ 0)))
                                                (_vars177401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g183170_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177400_))
                                                    _vars177401_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177317_))
                                          (let ((_g183167_
                                                 (let ((__tmp183169
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177315_
                                                    __tmp183169
                                                    _vars177318_
                                                    _depth177319_))))
                                            (begin
                                              (let ((_g183168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183167_)
                                                           (##vector-length
                                                            _g183167_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183168_)))
                                              (let ((_e177403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183167_
                                                        0)))
                                                    (_vars177404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183167_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177403_))
                                                        _vars177404_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177317_))
                                              (values (let ((__tmp183166
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177317_))))
                (declare (not safe))
                (cons 'datum __tmp183166))
              _vars177318_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx177234_
                                                 _e177317_))))))))))))
          (let* ((_e177244177257_ _stx177234_)
                 (_E177246177261_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e177244177257_))))
                 (_E177245177308_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177244177257_))
                        (let ((_e177247177265_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177244177257_))))
                          (let ((_hd177248177268_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177247177265_)))
                                (_tl177249177270_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177247177265_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177249177270_))
                                (let ((_e177250177273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177249177270_))))
                                  (let ((_hd177251177276_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177250177273_)))
                                        (_tl177252177278_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177250177273_))))
                                    (let ((_expr177281_ _hd177251177276_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl177252177278_))
                                          (let ((_e177253177283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl177252177278_))))
                                            (let ((_hd177254177286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177253177283_)))
                                                  (_tl177255177288_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177253177283_))))
                                              (let* ((_ids177291_
                                                      _hd177254177286_)
                                                     (_clauses177293_
                                                      _tl177255177288_))
                                                (if '#t
                                                    (if (let ((__tmp183199
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177291_))))
                  (declare (not safe))
                  (not __tmp183199))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx177234_
                   _ids177291_))
                (if (let ((__tmp183198
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177293_))))
                      (declare (not safe))
                      (not __tmp183198))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx177234_))
                    (let* ((_ids177295_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177291_)))
                           (_clauses177297_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177293_)))
                           (_clause-ids177299_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177297_)))
                           (_E177301_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177303_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177305_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177297_))
                                _E177301_
                                (car _clause-ids177299_))))
                      (let ((__tmp183183
                             (let ((__tmp183184
                                    (let ((__tmp183186
                                           (let ((__tmp183191
                                                  (let ((__tmp183192
                                                         (let ((__tmp183197
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177301_ '())))
                       (__tmp183193
                        (let ((__tmp183194
                               (let ((__tmp183196
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177303_ '())))
                                     (__tmp183195
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177303_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp183196
                                  __tmp183195))))
                          (declare (not safe))
                          (cons __tmp183194 '()))))
                   (declare (not safe))
                   (cons __tmp183197 __tmp183193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183192 '())))
                                                 (__tmp183187
                                                  (let ((__tmp183190
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings177239_
                                                            _target177303_
                                                            _ids177295_
                                                            _clauses177297_
                                                            _clause-ids177299_
                                                            _E177301_)))
                                                        (__tmp183188
                                                         (let ((__tmp183189
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177281_ '()))))
                   (declare (not safe))
                   (cons _first177305_ __tmp183189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body177240_
                                                     __tmp183190
                                                     __tmp183188))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp183191
                                              __tmp183187)))
                                          (__tmp183185
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx177234_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp183186
                                       __tmp183185))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp183184)))
                            (__tmp183182
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx177234_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp183183 __tmp183182)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177246177261_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177246177261_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177246177261_)))))
                        (let () (declare (not safe)) (_E177246177261_))))))
            (let () (declare (not safe)) (_E177245177308_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177944_)
        (let* ((_identifier=?177946_ 'free-identifier=?)
               (_unwrap-e177948_ 'syntax-e)
               (_wrap-e177950_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177944_
           _identifier=?177946_
           _unwrap-e177948_
           _wrap-e177950_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177952_ _identifier=?177953_)
        (let* ((_unwrap-e177955_ 'syntax-e) (_wrap-e177957_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177952_
           _identifier=?177953_
           _unwrap-e177955_
           _wrap-e177957_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177959_ _identifier=?177960_ _unwrap-e177961_)
        (let ((_wrap-e177963_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177959_
           _identifier=?177960_
           _unwrap-e177961_
           _wrap-e177963_))))
    (define gx#macro-expand-syntax-case
      (lambda _g183201_
        (let ((_g183200_ (let () (declare (not safe)) (##length _g183201_))))
          (cond ((let () (declare (not safe)) (##fx= _g183200_ 1))
                 (apply (lambda (_stx177944_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177944_)))
                        _g183201_))
                ((let () (declare (not safe)) (##fx= _g183200_ 2))
                 (apply (lambda (_stx177952_ _identifier=?177953_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177952_
                             _identifier=?177953_)))
                        _g183201_))
                ((let () (declare (not safe)) (##fx= _g183200_ 3))
                 (apply (lambda (_stx177959_
                                 _identifier=?177960_
                                 _unwrap-e177961_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177959_
                             _identifier=?177960_
                             _unwrap-e177961_)))
                        _g183201_))
                ((let () (declare (not safe)) (##fx= _g183200_ 4))
                 (apply (lambda (_stx177965_
                                 _identifier=?177966_
                                 _unwrap-e177967_
                                 _wrap-e177968_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177965_
                             _identifier=?177966_
                             _unwrap-e177967_
                             _wrap-e177968_)))
                        _g183201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g183201_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx177231_)
        (if (let () (declare (not safe)) (gx#identifier? _stx177231_))
            (let ((__tmp183202
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx177231_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp183202 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd177189_ . _rest177190_)
        (let ((_len177192_ (length _hd177189_)))
          (let _lp177194_ ((_rest177196_ _rest177190_))
            (let* ((_rest177197177205_ _rest177196_)
                   (_else177199177213_ (lambda () '#!void))
                   (_K177201177219_
                    (lambda (_rest177216_ _hd177217_)
                      (if (fx= _len177192_ (length _hd177217_))
                          (let ()
                            (declare (not safe))
                            (_lp177194_ _rest177216_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd177217_))))))
              (if (let () (declare (not safe)) (##pair? _rest177197177205_))
                  (let ((_hd177202177222_
                         (let ()
                           (declare (not safe))
                           (##car _rest177197177205_)))
                        (_tl177203177224_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest177197177205_))))
                    (let* ((_hd177227_ _hd177202177222_)
                           (_rest177229_ _tl177203177224_))
                      (declare (not safe))
                      (_K177201177219_ _rest177229_ _hd177227_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx177147_ _n177148_)
        (let _lp177150_ ((_rest177152_ _stx177147_) (_r177153_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest177152_))
              (let* ((_g177154177161_
                      (let () (declare (not safe)) (gx#syntax-e _rest177152_)))
                     (_E177156177165_
                      (lambda ()
                        (error '"No clause matching" _g177154177161_)))
                     (_K177157177171_
                      (lambda (_rest177168_ _hd177169_)
                        (let ((__tmp183207
                               (let ()
                                 (declare (not safe))
                                 (cons _hd177169_ _r177153_))))
                          (declare (not safe))
                          (_lp177150_ _rest177168_ __tmp183207)))))
                (if (let () (declare (not safe)) (##pair? _g177154177161_))
                    (let ((_hd177158177174_
                           (let ()
                             (declare (not safe))
                             (##car _g177154177161_)))
                          (_tl177159177176_
                           (let ()
                             (declare (not safe))
                             (##cdr _g177154177161_))))
                      (let* ((_hd177179_ _hd177158177174_)
                             (_rest177181_ _tl177159177176_))
                        (declare (not safe))
                        (_K177157177171_ _rest177181_ _hd177179_)))
                    (let () (declare (not safe)) (_E177156177165_))))
              (let _lp177183_ ((_n177185_ _n177148_)
                               (_l177186_ _r177153_)
                               (_r177187_ _rest177152_))
                (if (let () (declare (not safe)) (null? _l177186_))
                    (values _l177186_ _r177187_)
                    (if (fxpositive? _n177185_)
                        (let ((__tmp183206
                               (let ()
                                 (declare (not safe))
                                 (fx- _n177185_ '1)))
                              (__tmp183205 (cdr _l177186_))
                              (__tmp183203
                               (let ((__tmp183204 (car _l177186_)))
                                 (declare (not safe))
                                 (cons __tmp183204 _r177187_))))
                          (declare (not safe))
                          (_lp177183_ __tmp183206 __tmp183205 __tmp183203))
                        (values (reverse _l177186_) _r177187_))))))))))
