(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx304816_)
      (let* ((_g304820304838_
              (lambda (_g304821304834_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304821304834_))))
             (_g304819304893_
              (lambda (_g304821304842_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304821304842_))
                    (let ((_e304826304845_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304821304842_))))
                      (let ((_hd304825304849_
                             (let ()
                               (declare (not safe))
                               (##car _e304826304845_)))
                            (_tl304824304852_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304826304845_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl304824304852_))
                            (let ((_e304829304855_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl304824304852_))))
                              (let ((_hd304828304859_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e304829304855_)))
                                    (_tl304827304862_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e304829304855_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl304827304862_))
                                    (let ((_e304832304865_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl304827304862_))))
                                      (let ((_hd304831304869_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e304832304865_)))
                                            (_tl304830304872_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e304832304865_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl304830304872_))
                                            ((lambda (_L304875_ _L304877_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L304877_))
                                                   (let ((__tmp312925
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp312920
                                                          (let ((__tmp312922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp312924
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp312923
                                (let ()
                                  (declare (not safe))
                                  (cons _L304877_ '()))))
                           (declare (not safe))
                           (cons __tmp312924 __tmp312923)))
                        (__tmp312921
                         (let () (declare (not safe)) (cons _L304875_ '()))))
                    (declare (not safe))
                    (cons __tmp312922 __tmp312921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp312925
                                                           __tmp312920))
                                                   (_g304820304838_
                                                    _g304821304842_)))
                                             _hd304831304869_
                                             _hd304828304859_)
                                            (_g304820304838_
                                             _g304821304842_))))
                                    (_g304820304838_ _g304821304842_))))
                            (_g304820304838_ _g304821304842_))))
                    (_g304820304838_ _g304821304842_)))))
        (_g304819304893_ _$stx304816_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx304897_)
      (let* ((_g304901304930_
              (lambda (_g304902304926_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g304902304926_))))
             (_g304900305030_
              (lambda (_g304902304934_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g304902304934_))
                    (let ((_e304907304937_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g304902304934_))))
                      (let ((_hd304906304941_
                             (let ()
                               (declare (not safe))
                               (##car _e304907304937_)))
                            (_tl304905304944_
                             (let ()
                               (declare (not safe))
                               (##cdr _e304907304937_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl304905304944_))
                            (let ((_g312926_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl304905304944_
                                      '0))))
                              (begin
                                (let ((_g312927_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g312926_)
                                             (##vector-length _g312926_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g312927_ 2)))
                                      (error "Context expects 2 values"
                                             _g312927_)))
                                (let ((_target304908304947_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312926_ 0)))
                                      (_tl304910304950_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312926_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304910304950_))
                                      (letrec ((_loop304911304953_
                                                (lambda (_hd304909304957_
                                                         _type304915304960_
                                                         _symbol304916304962_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd304909304957_))
                                                      (let ((_e304912304965_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd304909304957_))))
                (let ((_lp-hd304913304969_
                       (let () (declare (not safe)) (##car _e304912304965_)))
                      (_lp-tl304914304972_
                       (let () (declare (not safe)) (##cdr _e304912304965_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd304913304969_))
                      (let ((_e304921304975_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd304913304969_))))
                        (let ((_hd304920304979_
                               (let ()
                                 (declare (not safe))
                                 (##car _e304921304975_)))
                              (_tl304919304982_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e304921304975_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl304919304982_))
                              (let ((_e304924304985_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl304919304982_))))
                                (let ((_hd304923304989_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e304924304985_)))
                                      (_tl304922304992_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e304924304985_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl304922304992_))
                                      (_loop304911304953_
                                       _lp-tl304914304972_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd304923304989_
                                               _type304915304960_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd304920304979_
                                               _symbol304916304962_)))
                                      (_g304901304930_ _g304902304934_))))
                              (_g304901304930_ _g304902304934_))))
                      (_g304901304930_ _g304902304934_))))
              (let ((_type304917304995_ (reverse _type304915304960_))
                    (_symbol304918304998_ (reverse _symbol304916304962_)))
                ((lambda (_L305001_ _L305003_)
                   (let ((__tmp312934
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp312928
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L305001_
                               _L305003_))
                            (let ((__tmp312929
                                   (lambda (_g305018305022_
                                            _g305019305025_
                                            _g305020305027_)
                                     (let ((__tmp312930
                                            (let ((__tmp312933
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp312931
                                                   (let ((__tmp312932
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g305018305022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g305019305025_
                                                           __tmp312932))))
                                              (declare (not safe))
                                              (cons __tmp312933 __tmp312931))))
                                       (declare (not safe))
                                       (cons __tmp312930 _g305020305027_)))))
                              (declare (not safe))
                              (foldr2 __tmp312929 '() _L305001_ _L305003_)))))
                     (declare (not safe))
                     (cons __tmp312934 __tmp312928)))
                 _type304917304995_
                 _symbol304918304998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop304911304953_
                                         _target304908304947_
                                         '()
                                         '()))
                                      (_g304901304930_ _g304902304934_)))))
                            (_g304901304930_ _g304902304934_))))
                    (_g304901304930_ _g304902304934_)))))
        (_g304900305030_ _$stx304897_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx305035_)
      (let* ((___stx312485312486_ _$stx305035_)
             (_g305040305082_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312485312486_)))))
        (let ((___kont312488312489_
               (lambda (_L305210_ _L305212_ _L305213_ _L305214_)
                 (let ((__tmp312948
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp312935
                        (let ((__tmp312945
                               (let ((__tmp312947
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp312946
                                      (let ()
                                        (declare (not safe))
                                        (cons _L305214_ '()))))
                                 (declare (not safe))
                                 (cons __tmp312947 __tmp312946)))
                              (__tmp312936
                               (let ((__tmp312942
                                      (let ((__tmp312944
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp312943
                                             (let ()
                                               (declare (not safe))
                                               (cons _L305213_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312944 __tmp312943)))
                                     (__tmp312937
                                      (let ((__tmp312939
                                             (let ((__tmp312941
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp312940
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L305212_ '()))))
                                               (declare (not safe))
                                               (cons __tmp312941 __tmp312940)))
                                            (__tmp312938
                                             (let ()
                                               (declare (not safe))
                                               (cons _L305210_ '()))))
                                        (declare (not safe))
                                        (cons __tmp312939 __tmp312938))))
                                 (declare (not safe))
                                 (cons __tmp312942 __tmp312937))))
                          (declare (not safe))
                          (cons __tmp312945 __tmp312936))))
                   (declare (not safe))
                   (cons __tmp312948 __tmp312935))))
              (___kont312490312491_
               (lambda (_L305129_ _L305131_ _L305132_ _L305133_)
                 (let ((__tmp312949
                        (let ((__tmp312950
                               (let ((__tmp312951
                                      (let ((__tmp312952
                                             (let ((__tmp312953
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp312953 '()))))
                                        (declare (not safe))
                                        (cons _L305129_ __tmp312952))))
                                 (declare (not safe))
                                 (cons _L305131_ __tmp312951))))
                          (declare (not safe))
                          (cons _L305132_ __tmp312950))))
                   (declare (not safe))
                   (cons _L305133_ __tmp312949)))))
          (let ((___match312524312525_
                 (lambda (_e305048305160_
                          _hd305047305164_
                          _tl305046305167_
                          _e305051305170_
                          _hd305050305174_
                          _tl305049305177_
                          _e305054305180_
                          _hd305053305184_
                          _tl305052305187_
                          _e305057305190_
                          _hd305056305194_
                          _tl305055305197_
                          _e305060305200_
                          _hd305059305204_
                          _tl305058305207_)
                   (let ((_L305210_ _hd305059305204_)
                         (_L305212_ _hd305056305194_)
                         (_L305213_ _hd305053305184_)
                         (_L305214_ _hd305050305174_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L305214_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L305213_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L305212_)))
                         (___kont312488312489_
                          _L305210_
                          _L305212_
                          _L305213_
                          _L305214_)
                         (let () (declare (not safe)) (_g305040305082_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312485312486_))
                (let ((_e305048305160_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312485312486_))))
                  (let ((_tl305046305167_
                         (let () (declare (not safe)) (##cdr _e305048305160_)))
                        (_hd305047305164_
                         (let ()
                           (declare (not safe))
                           (##car _e305048305160_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl305046305167_))
                        (let ((_e305051305170_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl305046305167_))))
                          (let ((_tl305049305177_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e305051305170_)))
                                (_hd305050305174_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e305051305170_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl305049305177_))
                                (let ((_e305054305180_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl305049305177_))))
                                  (let ((_tl305052305187_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e305054305180_)))
                                        (_hd305053305184_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e305054305180_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl305052305187_))
                                        (let ((_e305057305190_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl305052305187_))))
                                          (let ((_tl305055305197_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e305057305190_)))
                                                (_hd305056305194_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e305057305190_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl305055305197_))
                                                (let ((_e305060305200_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl305055305197_))))
                                                  (let ((_tl305058305207_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e305060305200_)))
                                                        (_hd305059305204_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e305060305200_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl305058305207_))
                                                        (___match312524312525_
                                                         _e305048305160_
                                                         _hd305047305164_
                                                         _tl305046305167_
                                                         _e305051305170_
                                                         _hd305050305174_
                                                         _tl305049305177_
                                                         _e305054305180_
                                                         _hd305053305184_
                                                         _tl305052305187_
                                                         _e305057305190_
                                                         _hd305056305194_
                                                         _tl305055305197_
                                                         _e305060305200_
                                                         _hd305059305204_
                                                         _tl305058305207_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g305040305082_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305055305197_))
                                                    (___kont312490312491_
                                                     _hd305056305194_
                                                     _hd305053305184_
                                                     _hd305050305174_
                                                     _hd305047305164_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g305040305082_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g305040305082_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g305040305082_)))))
                        (let () (declare (not safe)) (_g305040305082_)))))
                (let () (declare (not safe)) (_g305040305082_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx305239_)
      (let* ((_g305243305278_
              (lambda (_g305244305274_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305244305274_))))
             (_g305242305397_
              (lambda (_g305244305282_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305244305282_))
                    (let ((_e305250305285_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305244305282_))))
                      (let ((_hd305249305289_
                             (let ()
                               (declare (not safe))
                               (##car _e305250305285_)))
                            (_tl305248305292_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305250305285_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl305248305292_))
                            (let ((_g312954_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl305248305292_
                                      '0))))
                              (begin
                                (let ((_g312955_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g312954_)
                                             (##vector-length _g312954_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g312955_ 2)))
                                      (error "Context expects 2 values"
                                             _g312955_)))
                                (let ((_target305251305295_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312954_ 0)))
                                      (_tl305253305298_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g312954_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl305253305298_))
                                      (letrec ((_loop305254305301_
                                                (lambda (_hd305252305305_
                                                         _symbol305258305308_
                                                         _method305259305310_
                                                         _type-t305260305312_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd305252305305_))
                                                      (let ((_e305255305315_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd305252305305_))))
                (let ((_lp-hd305256305319_
                       (let () (declare (not safe)) (##car _e305255305315_)))
                      (_lp-tl305257305322_
                       (let () (declare (not safe)) (##cdr _e305255305315_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd305256305319_))
                      (let ((_e305266305325_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd305256305319_))))
                        (let ((_hd305265305329_
                               (let ()
                                 (declare (not safe))
                                 (##car _e305266305325_)))
                              (_tl305264305332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e305266305325_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl305264305332_))
                              (let ((_e305269305335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl305264305332_))))
                                (let ((_hd305268305339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e305269305335_)))
                                      (_tl305267305342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e305269305335_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl305267305342_))
                                      (let ((_e305272305345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl305267305342_))))
                                        (let ((_hd305271305349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e305272305345_)))
                                              (_tl305270305352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e305272305345_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl305270305352_))
                                              (_loop305254305301_
                                               _lp-tl305257305322_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd305271305349_
                                                       _symbol305258305308_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd305268305339_
                                                       _method305259305310_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd305265305329_
                                                       _type-t305260305312_)))
                                              (_g305243305278_
                                               _g305244305282_))))
                                      (_g305243305278_ _g305244305282_))))
                              (_g305243305278_ _g305244305282_))))
                      (_g305243305278_ _g305244305282_))))
              (let ((_symbol305261305355_ (reverse _symbol305258305308_))
                    (_method305262305358_ (reverse _method305259305310_))
                    (_type-t305263305360_ (reverse _type-t305260305312_)))
                ((lambda (_L305363_ _L305365_ _L305366_)
                   (let ((__tmp312963
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp312956
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L305363_
                               _L305365_
                               _L305366_))
                            (let ((__tmp312957
                                   (lambda (_g305382305387_
                                            _g305383305390_
                                            _g305384305392_
                                            _g305385305394_)
                                     (let ((__tmp312958
                                            (let ((__tmp312962
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp312959
                                                   (let ((__tmp312960
                                                          (let ((__tmp312961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g305382305387_ '()))))
                    (declare (not safe))
                    (cons _g305383305390_ __tmp312961))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g305384305392_
                                                           __tmp312960))))
                                              (declare (not safe))
                                              (cons __tmp312962 __tmp312959))))
                                       (declare (not safe))
                                       (cons __tmp312958 _g305385305394_)))))
                              (declare (not safe))
                              (foldr* __tmp312957
                                      '()
                                      _L305363_
                                      _L305365_
                                      _L305366_)))))
                     (declare (not safe))
                     (cons __tmp312963 __tmp312956)))
                 _symbol305261305355_
                 _method305262305358_
                 _type-t305263305360_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop305254305301_
                                         _target305251305295_
                                         '()
                                         '()
                                         '()))
                                      (_g305243305278_ _g305244305282_)))))
                            (_g305243305278_ _g305244305282_))))
                    (_g305243305278_ _g305244305282_)))))
        (_g305242305397_ _$stx305239_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx305402_)
      (let* ((_g305406305439_
              (lambda (_g305407305435_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305407305435_))))
             (_g305405305553_
              (lambda (_g305407305443_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305407305443_))
                    (let ((_e305413305446_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305407305443_))))
                      (let ((_hd305412305450_
                             (let ()
                               (declare (not safe))
                               (##car _e305413305446_)))
                            (_tl305411305453_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305413305446_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305411305453_))
                            (let ((_e305416305456_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305411305453_))))
                              (let ((_hd305415305460_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305416305456_)))
                                    (_tl305414305463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305416305456_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl305414305463_))
                                    (let ((_g312964_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl305414305463_
                                              '0))))
                                      (begin
                                        (let ((_g312965_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g312964_)
                                                     (##vector-length
                                                      _g312964_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g312965_ 2)))
                                              (error "Context expects 2 values"
                                                     _g312965_)))
                                        (let ((_target305417305466_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g312964_ 0)))
                                              (_tl305419305469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g312964_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl305419305469_))
                                              (letrec ((_loop305420305472_
                                                        (lambda (_hd305418305476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol305424305479_
                         _method305425305481_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd305418305476_))
                      (let ((_e305421305484_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd305418305476_))))
                        (let ((_lp-hd305422305488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e305421305484_)))
                              (_lp-tl305423305491_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e305421305484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd305422305488_))
                              (let ((_e305430305494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd305422305488_))))
                                (let ((_hd305429305498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e305430305494_)))
                                      (_tl305428305501_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e305430305494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl305428305501_))
                                      (let ((_e305433305504_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl305428305501_))))
                                        (let ((_hd305432305508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e305433305504_)))
                                              (_tl305431305511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e305433305504_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl305431305511_))
                                              (_loop305420305472_
                                               _lp-tl305423305491_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd305432305508_
                                                       _symbol305424305479_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd305429305498_
                                                       _method305425305481_)))
                                              (_g305406305439_
                                               _g305407305443_))))
                                      (_g305406305439_ _g305407305443_))))
                              (_g305406305439_ _g305407305443_))))
                      (let ((_symbol305426305514_
                             (reverse _symbol305424305479_))
                            (_method305427305517_
                             (reverse _method305425305481_)))
                        ((lambda (_L305520_ _L305522_ _L305523_)
                           (let ((__tmp312973
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp312966
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L305520_
                                       _L305522_))
                                    (let ((__tmp312967
                                           (lambda (_g305541305545_
                                                    _g305542305548_
                                                    _g305543305550_)
                                             (let ((__tmp312968
                                                    (let ((__tmp312972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp312969
                                                           (let ((__tmp312970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp312971
                                 (let ()
                                   (declare (not safe))
                                   (cons _g305541305545_ '()))))
                            (declare (not safe))
                            (cons _g305542305548_ __tmp312971))))
                     (declare (not safe))
                     (cons _L305523_ __tmp312970))))
              (declare (not safe))
              (cons __tmp312972 __tmp312969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp312968
                                                     _g305543305550_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp312967
                                              '()
                                              _L305520_
                                              _L305522_)))))
                             (declare (not safe))
                             (cons __tmp312973 __tmp312966)))
                         _symbol305426305514_
                         _method305427305517_
                         _hd305415305460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop305420305472_
                                                 _target305417305466_
                                                 '()
                                                 '()))
                                              (_g305406305439_
                                               _g305407305443_)))))
                                    (_g305406305439_ _g305407305443_))))
                            (_g305406305439_ _g305407305443_))))
                    (_g305406305439_ _g305407305443_)))))
        (_g305405305553_ _$stx305402_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx305558_)
      (let* ((_g305562305576_
              (lambda (_g305563305572_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305563305572_))))
             (_g305561305617_
              (lambda (_g305563305580_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305563305580_))
                    (let ((_e305567305583_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305563305580_))))
                      (let ((_hd305566305587_
                             (let ()
                               (declare (not safe))
                               (##car _e305567305583_)))
                            (_tl305565305590_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305567305583_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305565305590_))
                            (let ((_e305570305593_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305565305590_))))
                              (let ((_hd305569305597_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305570305593_)))
                                    (_tl305568305600_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305570305593_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl305568305600_))
                                    ((lambda (_L305603_)
                                       (let ((__tmp312978
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp312974
                                              (let ((__tmp312975
                                                     (let ((__tmp312977
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp312976
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L305603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp312977 __tmp312976))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp312975 '()))))
                                         (declare (not safe))
                                         (cons __tmp312978 __tmp312974)))
                                     _hd305569305597_)
                                    (_g305562305576_ _g305563305580_))))
                            (_g305562305576_ _g305563305580_))))
                    (_g305562305576_ _g305563305580_)))))
        (_g305561305617_ _$stx305558_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx305621_)
      (let* ((_g305625305675_
              (lambda (_g305626305671_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305626305671_))))
             (_g305624305842_
              (lambda (_g305626305679_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305626305679_))
                    (let ((_e305639305682_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305626305679_))))
                      (let ((_hd305638305686_
                             (let ()
                               (declare (not safe))
                               (##car _e305639305682_)))
                            (_tl305637305689_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305639305682_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305637305689_))
                            (let ((_e305642305692_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305637305689_))))
                              (let ((_hd305641305696_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305642305692_)))
                                    (_tl305640305699_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305642305692_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305640305699_))
                                    (let ((_e305645305702_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305640305699_))))
                                      (let ((_hd305644305706_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305645305702_)))
                                            (_tl305643305709_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305645305702_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305643305709_))
                                            (let ((_e305648305712_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305643305709_))))
                                              (let ((_hd305647305716_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305648305712_)))
                                                    (_tl305646305719_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305648305712_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl305646305719_))
                                                    (let ((_e305651305722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl305646305719_))))
                                                      (let ((_hd305650305726_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e305651305722_)))
                    (_tl305649305729_
                     (let () (declare (not safe)) (##cdr _e305651305722_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl305649305729_))
                    (let ((_e305654305732_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl305649305729_))))
                      (let ((_hd305653305736_
                             (let ()
                               (declare (not safe))
                               (##car _e305654305732_)))
                            (_tl305652305739_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305654305732_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305652305739_))
                            (let ((_e305657305742_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305652305739_))))
                              (let ((_hd305656305746_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305657305742_)))
                                    (_tl305655305749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305657305742_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305655305749_))
                                    (let ((_e305660305752_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305655305749_))))
                                      (let ((_hd305659305756_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305660305752_)))
                                            (_tl305658305759_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305660305752_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305658305759_))
                                            (let ((_e305663305762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305658305759_))))
                                              (let ((_hd305662305766_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305663305762_)))
                                                    (_tl305661305769_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305663305762_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl305661305769_))
                                                    (let ((_e305666305772_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl305661305769_))))
                                                      (let ((_hd305665305776_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e305666305772_)))
                    (_tl305664305779_
                     (let () (declare (not safe)) (##cdr _e305666305772_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl305664305779_))
                    (let ((_e305669305782_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl305664305779_))))
                      (let ((_hd305668305786_
                             (let ()
                               (declare (not safe))
                               (##car _e305669305782_)))
                            (_tl305667305789_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305669305782_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl305667305789_))
                            ((lambda (_L305792_
                                      _L305794_
                                      _L305795_
                                      _L305796_
                                      _L305797_
                                      _L305798_
                                      _L305799_
                                      _L305800_
                                      _L305801_
                                      _L305802_)
                               (let ((__tmp313013
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp312979
                                      (let ((__tmp313010
                                             (let ((__tmp313012
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp313011
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L305802_ '()))))
                                               (declare (not safe))
                                               (cons __tmp313012 __tmp313011)))
                                            (__tmp312980
                                             (let ((__tmp313007
                                                    (let ((__tmp313009
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp313008
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L305801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp313009 __tmp313008)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp312981
                                                    (let ((__tmp313004
                                                           (let ((__tmp313006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp313005
                          (let () (declare (not safe)) (cons _L305800_ '()))))
                     (declare (not safe))
                     (cons __tmp313006 __tmp313005)))
                  (__tmp312982
                   (let ((__tmp313001
                          (let ((__tmp313003
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp313002
                                 (let ()
                                   (declare (not safe))
                                   (cons _L305799_ '()))))
                            (declare (not safe))
                            (cons __tmp313003 __tmp313002)))
                         (__tmp312983
                          (let ((__tmp312998
                                 (let ((__tmp313000
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp312999
                                        (let ()
                                          (declare (not safe))
                                          (cons _L305798_ '()))))
                                   (declare (not safe))
                                   (cons __tmp313000 __tmp312999)))
                                (__tmp312984
                                 (let ((__tmp312995
                                        (let ((__tmp312997
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp312996
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L305797_ '()))))
                                          (declare (not safe))
                                          (cons __tmp312997 __tmp312996)))
                                       (__tmp312985
                                        (let ((__tmp312986
                                               (let ((__tmp312987
                                                      (let ((__tmp312992
                                                             (let ((__tmp312994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp312993
                            (let ()
                              (declare (not safe))
                              (cons _L305794_ '()))))
                       (declare (not safe))
                       (cons __tmp312994 __tmp312993)))
                    (__tmp312988
                     (let ((__tmp312989
                            (let ((__tmp312991
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp312990
                                   (let ()
                                     (declare (not safe))
                                     (cons _L305792_ '()))))
                              (declare (not safe))
                              (cons __tmp312991 __tmp312990))))
                       (declare (not safe))
                       (cons __tmp312989 '()))))
                (declare (not safe))
                (cons __tmp312992 __tmp312988))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L305795_
                                                       __tmp312987))))
                                          (declare (not safe))
                                          (cons _L305796_ __tmp312986))))
                                   (declare (not safe))
                                   (cons __tmp312995 __tmp312985))))
                            (declare (not safe))
                            (cons __tmp312998 __tmp312984))))
                     (declare (not safe))
                     (cons __tmp313001 __tmp312983))))
              (declare (not safe))
              (cons __tmp313004 __tmp312982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp313007
                                                     __tmp312981))))
                                        (declare (not safe))
                                        (cons __tmp313010 __tmp312980))))
                                 (declare (not safe))
                                 (cons __tmp313013 __tmp312979)))
                             _hd305668305786_
                             _hd305665305776_
                             _hd305662305766_
                             _hd305659305756_
                             _hd305656305746_
                             _hd305653305736_
                             _hd305650305726_
                             _hd305647305716_
                             _hd305644305706_
                             _hd305641305696_)
                            (_g305625305675_ _g305626305679_))))
                    (_g305625305675_ _g305626305679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g305625305675_
                                                     _g305626305679_))))
                                            (_g305625305675_
                                             _g305626305679_))))
                                    (_g305625305675_ _g305626305679_))))
                            (_g305625305675_ _g305626305679_))))
                    (_g305625305675_ _g305626305679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g305625305675_
                                                     _g305626305679_))))
                                            (_g305625305675_
                                             _g305626305679_))))
                                    (_g305625305675_ _g305626305679_))))
                            (_g305625305675_ _g305626305679_))))
                    (_g305625305675_ _g305626305679_)))))
        (_g305624305842_ _$stx305621_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx305846_)
      (let* ((_g305850305864_
              (lambda (_g305851305860_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305851305860_))))
             (_g305849305905_
              (lambda (_g305851305868_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305851305868_))
                    (let ((_e305855305871_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305851305868_))))
                      (let ((_hd305854305875_
                             (let ()
                               (declare (not safe))
                               (##car _e305855305871_)))
                            (_tl305853305878_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305855305871_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305853305878_))
                            (let ((_e305858305881_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305853305878_))))
                              (let ((_hd305857305885_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305858305881_)))
                                    (_tl305856305888_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305858305881_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl305856305888_))
                                    ((lambda (_L305891_)
                                       (let ((__tmp313018
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp313014
                                              (let ((__tmp313015
                                                     (let ((__tmp313017
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp313016
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L305891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp313017 __tmp313016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp313015 '()))))
                                         (declare (not safe))
                                         (cons __tmp313018 __tmp313014)))
                                     _hd305857305885_)
                                    (_g305850305864_ _g305851305868_))))
                            (_g305850305864_ _g305851305868_))))
                    (_g305850305864_ _g305851305868_)))))
        (_g305849305905_ _$stx305846_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx305909_)
      (let* ((_g305913305927_
              (lambda (_g305914305923_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305914305923_))))
             (_g305912305968_
              (lambda (_g305914305931_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305914305931_))
                    (let ((_e305918305934_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305914305931_))))
                      (let ((_hd305917305938_
                             (let ()
                               (declare (not safe))
                               (##car _e305918305934_)))
                            (_tl305916305941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305918305934_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305916305941_))
                            (let ((_e305921305944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305916305941_))))
                              (let ((_hd305920305948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305921305944_)))
                                    (_tl305919305951_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305921305944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl305919305951_))
                                    ((lambda (_L305954_)
                                       (let ((__tmp313023
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp313019
                                              (let ((__tmp313020
                                                     (let ((__tmp313022
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp313021
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L305954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp313022 __tmp313021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp313020 '()))))
                                         (declare (not safe))
                                         (cons __tmp313023 __tmp313019)))
                                     _hd305920305948_)
                                    (_g305913305927_ _g305914305931_))))
                            (_g305913305927_ _g305914305931_))))
                    (_g305913305927_ _g305914305931_)))))
        (_g305912305968_ _$stx305909_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx305972_)
      (let* ((_g305976305998_
              (lambda (_g305977305994_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g305977305994_))))
             (_g305975306067_
              (lambda (_g305977306002_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g305977306002_))
                    (let ((_e305983306005_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g305977306002_))))
                      (let ((_hd305982306009_
                             (let ()
                               (declare (not safe))
                               (##car _e305983306005_)))
                            (_tl305981306012_
                             (let ()
                               (declare (not safe))
                               (##cdr _e305983306005_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl305981306012_))
                            (let ((_e305986306015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl305981306012_))))
                              (let ((_hd305985306019_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e305986306015_)))
                                    (_tl305984306022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e305986306015_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl305984306022_))
                                    (let ((_e305989306025_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl305984306022_))))
                                      (let ((_hd305988306029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e305989306025_)))
                                            (_tl305987306032_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e305989306025_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl305987306032_))
                                            (let ((_e305992306035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl305987306032_))))
                                              (let ((_hd305991306039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e305992306035_)))
                                                    (_tl305990306042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e305992306035_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl305990306042_))
                                                    ((lambda (_L306045_
                                                              _L306047_
                                                              _L306048_)
                                                       (let ((__tmp313033
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp313024
                      (let ((__tmp313030
                             (let ((__tmp313032
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp313031
                                    (let ()
                                      (declare (not safe))
                                      (cons _L306048_ '()))))
                               (declare (not safe))
                               (cons __tmp313032 __tmp313031)))
                            (__tmp313025
                             (let ((__tmp313027
                                    (let ((__tmp313029
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp313028
                                           (let ()
                                             (declare (not safe))
                                             (cons _L306047_ '()))))
                                      (declare (not safe))
                                      (cons __tmp313029 __tmp313028)))
                                   (__tmp313026
                                    (let ()
                                      (declare (not safe))
                                      (cons _L306045_ '()))))
                               (declare (not safe))
                               (cons __tmp313027 __tmp313026))))
                        (declare (not safe))
                        (cons __tmp313030 __tmp313025))))
                 (declare (not safe))
                 (cons __tmp313033 __tmp313024)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd305991306039_
                                                     _hd305988306029_
                                                     _hd305985306019_)
                                                    (_g305976305998_
                                                     _g305977306002_))))
                                            (_g305976305998_
                                             _g305977306002_))))
                                    (_g305976305998_ _g305977306002_))))
                            (_g305976305998_ _g305977306002_))))
                    (_g305976305998_ _g305977306002_)))))
        (_g305975306067_ _$stx305972_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx306071_)
      (let* ((_g306075306097_
              (lambda (_g306076306093_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g306076306093_))))
             (_g306074306166_
              (lambda (_g306076306101_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g306076306101_))
                    (let ((_e306082306104_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g306076306101_))))
                      (let ((_hd306081306108_
                             (let ()
                               (declare (not safe))
                               (##car _e306082306104_)))
                            (_tl306080306111_
                             (let ()
                               (declare (not safe))
                               (##cdr _e306082306104_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl306080306111_))
                            (let ((_e306085306114_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl306080306111_))))
                              (let ((_hd306084306118_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e306085306114_)))
                                    (_tl306083306121_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e306085306114_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl306083306121_))
                                    (let ((_e306088306124_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl306083306121_))))
                                      (let ((_hd306087306128_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306088306124_)))
                                            (_tl306086306131_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306088306124_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl306086306131_))
                                            (let ((_e306091306134_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl306086306131_))))
                                              (let ((_hd306090306138_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e306091306134_)))
                                                    (_tl306089306141_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e306091306134_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl306089306141_))
                                                    ((lambda (_L306144_
                                                              _L306146_
                                                              _L306147_)
                                                       (let ((__tmp313043
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp313034
                      (let ((__tmp313040
                             (let ((__tmp313042
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp313041
                                    (let ()
                                      (declare (not safe))
                                      (cons _L306147_ '()))))
                               (declare (not safe))
                               (cons __tmp313042 __tmp313041)))
                            (__tmp313035
                             (let ((__tmp313037
                                    (let ((__tmp313039
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp313038
                                           (let ()
                                             (declare (not safe))
                                             (cons _L306146_ '()))))
                                      (declare (not safe))
                                      (cons __tmp313039 __tmp313038)))
                                   (__tmp313036
                                    (let ()
                                      (declare (not safe))
                                      (cons _L306144_ '()))))
                               (declare (not safe))
                               (cons __tmp313037 __tmp313036))))
                        (declare (not safe))
                        (cons __tmp313040 __tmp313035))))
                 (declare (not safe))
                 (cons __tmp313043 __tmp313034)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd306090306138_
                                                     _hd306087306128_
                                                     _hd306084306118_)
                                                    (_g306075306097_
                                                     _g306076306101_))))
                                            (_g306075306097_
                                             _g306076306101_))))
                                    (_g306075306097_ _g306076306101_))))
                            (_g306075306097_ _g306076306101_))))
                    (_g306075306097_ _g306076306101_)))))
        (_g306074306166_ _$stx306071_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx306170_)
      (let* ((___stx312553312554_ _$stx306170_)
             (_g306178306246_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312553312554_)))))
        (let ((___kont312556312557_
               (lambda (_L306524_ _L306526_)
                 (let ((__tmp313059
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp313044
                        (let ((__tmp313055
                               (let ((__tmp313058
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp313056
                                      (let ((__tmp313057
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp313057 '()))))
                                 (declare (not safe))
                                 (cons __tmp313058 __tmp313056)))
                              (__tmp313045
                               (let ((__tmp313052
                                      (let ((__tmp313054
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp313053
                                             (let ()
                                               (declare (not safe))
                                               (cons _L306526_ '()))))
                                        (declare (not safe))
                                        (cons __tmp313054 __tmp313053)))
                                     (__tmp313046
                                      (let ((__tmp313047
                                             (let ((__tmp313048
                                                    (let ((__tmp313049
                                                           (let ((__tmp313051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp313050
                          (let () (declare (not safe)) (cons _L306524_ '()))))
                     (declare (not safe))
                     (cons __tmp313051 __tmp313050))))
              (declare (not safe))
              (cons __tmp313049 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L306524_ __tmp313048))))
                                        (declare (not safe))
                                        (cons '#f __tmp313047))))
                                 (declare (not safe))
                                 (cons __tmp313052 __tmp313046))))
                          (declare (not safe))
                          (cons __tmp313055 __tmp313045))))
                   (declare (not safe))
                   (cons __tmp313059 __tmp313044))))
              (___kont312558312559_
               (lambda (_L306455_ _L306457_)
                 (let ((__tmp313060
                        (let ((__tmp313061
                               (let ((__tmp313062
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L306455_ __tmp313062))))
                          (declare (not safe))
                          (cons 'primitive: __tmp313061))))
                   (declare (not safe))
                   (cons _L306457_ __tmp313060))))
              (___kont312560312561_
               (lambda (_L306394_ _L306396_)
                 (let ((__tmp313076
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp313063
                        (let ((__tmp313072
                               (let ((__tmp313075
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp313073
                                      (let ((__tmp313074
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp313074 '()))))
                                 (declare (not safe))
                                 (cons __tmp313075 __tmp313073)))
                              (__tmp313064
                               (let ((__tmp313069
                                      (let ((__tmp313071
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp313070
                                             (let ()
                                               (declare (not safe))
                                               (cons _L306396_ '()))))
                                        (declare (not safe))
                                        (cons __tmp313071 __tmp313070)))
                                     (__tmp313065
                                      (let ((__tmp313066
                                             (let ((__tmp313068
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp313067
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L306394_ '()))))
                                               (declare (not safe))
                                               (cons __tmp313068
                                                     __tmp313067))))
                                        (declare (not safe))
                                        (cons __tmp313066 '()))))
                                 (declare (not safe))
                                 (cons __tmp313069 __tmp313065))))
                          (declare (not safe))
                          (cons __tmp313072 __tmp313064))))
                   (declare (not safe))
                   (cons __tmp313076 __tmp313063))))
              (___kont312562312563_
               (lambda (_L306326_ _L306328_)
                 (let ((__tmp313090
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp313077
                        (let ((__tmp313086
                               (let ((__tmp313089
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp313087
                                      (let ((__tmp313088
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp313088 '()))))
                                 (declare (not safe))
                                 (cons __tmp313089 __tmp313087)))
                              (__tmp313078
                               (let ((__tmp313083
                                      (let ((__tmp313085
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp313084
                                             (let ()
                                               (declare (not safe))
                                               (cons _L306328_ '()))))
                                        (declare (not safe))
                                        (cons __tmp313085 __tmp313084)))
                                     (__tmp313079
                                      (let ((__tmp313080
                                             (let ((__tmp313082
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp313081
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L306326_ '()))))
                                               (declare (not safe))
                                               (cons __tmp313082
                                                     __tmp313081))))
                                        (declare (not safe))
                                        (cons __tmp313080 '()))))
                                 (declare (not safe))
                                 (cons __tmp313083 __tmp313079))))
                          (declare (not safe))
                          (cons __tmp313086 __tmp313078))))
                   (declare (not safe))
                   (cons __tmp313090 __tmp313077))))
              (___kont312564312565_
               (lambda (_L306273_ _L306275_)
                 (let ((__tmp313091
                        (let ((__tmp313092
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L306273_ __tmp313092))))
                   (declare (not safe))
                   (cons _L306275_ __tmp313091)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx312553312554_))
              (let ((_e306184306480_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx312553312554_))))
                (let ((_tl306182306487_
                       (let () (declare (not safe)) (##cdr _e306184306480_)))
                      (_hd306183306484_
                       (let () (declare (not safe)) (##car _e306184306480_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl306182306487_))
                      (let ((_e306187306490_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl306182306487_))))
                        (let ((_tl306185306497_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e306187306490_)))
                              (_hd306186306494_
                               (let ()
                                 (declare (not safe))
                                 (##car _e306187306490_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl306185306497_))
                              (let ((_e306190306500_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl306185306497_))))
                                (let ((_tl306188306507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e306190306500_)))
                                      (_hd306189306504_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e306190306500_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd306189306504_))
                                      (let ((_e306191306510_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd306189306504_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e306191306510_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl306188306507_))
                                                (let ((_e306194306514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl306188306507_))))
                                                  (let ((_tl306192306521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e306194306514_)))
                                                        (_hd306193306518_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e306194306514_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl306192306521_))
                                                        (___kont312556312557_
                                                         _hd306193306518_
                                                         _hd306186306494_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd306186306494_))
                                                            (let ((_e306203306441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd306186306494_))))
                      (declare (not safe))
                      (_g306178306246_))
                    (let () (declare (not safe)) (_g306178306246_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd306186306494_))
                                                    (let ((_e306203306441_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd306186306494_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e306203306441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl306188306507_))
                      (___kont312558312559_ _hd306189306504_ _hd306183306484_)
                      (let () (declare (not safe)) (_g306178306246_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl306188306507_))
                      (___kont312562312563_ _hd306189306504_ _hd306186306494_)
                      (let () (declare (not safe)) (_g306178306246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl306188306507_))
                                                        (___kont312562312563_
                                                         _hd306189306504_
                                                         _hd306186306494_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g306178306246_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd306186306494_))
                                                (let ((_e306203306441_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd306186306494_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e306203306441_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl306188306507_))
                                                          (___kont312558312559_
                                                           _hd306189306504_
                                                           _hd306183306484_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl306188306507_))
                      (let ((_e306221306384_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl306188306507_))))
                        (let ((_tl306219306391_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e306221306384_)))
                              (_hd306220306388_
                               (let ()
                                 (declare (not safe))
                                 (##car _e306221306384_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl306219306391_))
                              (___kont312560312561_
                               _hd306220306388_
                               _hd306189306504_)
                              (let ()
                                (declare (not safe))
                                (_g306178306246_)))))
                      (let () (declare (not safe)) (_g306178306246_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl306188306507_))
                  (___kont312562312563_ _hd306189306504_ _hd306186306494_)
                  (let () (declare (not safe)) (_g306178306246_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl306188306507_))
                                                    (___kont312562312563_
                                                     _hd306189306504_
                                                     _hd306186306494_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g306178306246_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd306186306494_))
                                          (let ((_e306203306441_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd306186306494_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e306203306441_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl306188306507_))
                                                    (___kont312558312559_
                                                     _hd306189306504_
                                                     _hd306183306484_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl306188306507_))
                                                        (let ((_e306221306384_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl306188306507_))))
                  (let ((_tl306219306391_
                         (let () (declare (not safe)) (##cdr _e306221306384_)))
                        (_hd306220306388_
                         (let ()
                           (declare (not safe))
                           (##car _e306221306384_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl306219306391_))
                        (___kont312560312561_
                         _hd306220306388_
                         _hd306189306504_)
                        (let () (declare (not safe)) (_g306178306246_)))))
                (let () (declare (not safe)) (_g306178306246_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl306188306507_))
                                                    (___kont312562312563_
                                                     _hd306189306504_
                                                     _hd306186306494_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g306178306246_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl306188306507_))
                                              (___kont312562312563_
                                               _hd306189306504_
                                               _hd306186306494_)
                                              (let ()
                                                (declare (not safe))
                                                (_g306178306246_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd306186306494_))
                                  (let ((_e306203306441_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd306186306494_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl306185306497_))
                                        (___kont312564312565_
                                         _hd306186306494_
                                         _hd306183306484_)
                                        (let ()
                                          (declare (not safe))
                                          (_g306178306246_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl306185306497_))
                                      (___kont312564312565_
                                       _hd306186306494_
                                       _hd306183306484_)
                                      (let ()
                                        (declare (not safe))
                                        (_g306178306246_)))))))
                      (let () (declare (not safe)) (_g306178306246_)))))
              (let () (declare (not safe)) (_g306178306246_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx306548_)
      (let* ((___stx312693312694_ _$stx306548_)
             (_g306553306608_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312693312694_)))))
        (let ((___kont312696312697_
               (lambda (_L306793_ _L306795_)
                 (let ((__tmp313108
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp313093
                        (let ((__tmp313104
                               (let ((__tmp313107
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp313105
                                      (let ((__tmp313106
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp313106 '()))))
                                 (declare (not safe))
                                 (cons __tmp313107 __tmp313105)))
                              (__tmp313094
                               (let ((__tmp313095
                                      (let ((__tmp313103
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp313096
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L306793_
                                                  _L306795_))
                                               (let ((__tmp313097
                                                      (lambda (_g306812306816_
                                                               _g306813306819_
                                                               _g306814306821_)
                                                        (let ((__tmp313098
                                                               (let ((__tmp313102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp313099
                              (let ((__tmp313100
                                     (let ((__tmp313101
                                            (let ()
                                              (declare (not safe))
                                              (cons _g306812306816_ '()))))
                                       (declare (not safe))
                                       (cons _g306813306819_ __tmp313101))))
                                (declare (not safe))
                                (cons 'primitive: __tmp313100))))
                         (declare (not safe))
                         (cons __tmp313102 __tmp313099))))
                  (declare (not safe))
                  (cons __tmp313098 _g306814306821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp313097
                                                         '()
                                                         _L306793_
                                                         _L306795_)))))
                                        (declare (not safe))
                                        (cons __tmp313103 __tmp313096))))
                                 (declare (not safe))
                                 (cons __tmp313095 '()))))
                          (declare (not safe))
                          (cons __tmp313104 __tmp313094))))
                   (declare (not safe))
                   (cons __tmp313108 __tmp313093))))
              (___kont312700312701_
               (lambda (_L306679_ _L306681_)
                 (let ((__tmp313123
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp313109
                        (let ((__tmp313119
                               (let ((__tmp313122
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp313120
                                      (let ((__tmp313121
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp313121 '()))))
                                 (declare (not safe))
                                 (cons __tmp313122 __tmp313120)))
                              (__tmp313110
                               (let ((__tmp313111
                                      (let ((__tmp313118
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp313112
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L306679_
                                                  _L306681_))
                                               (let ((__tmp313113
                                                      (lambda (_g306696306700_
                                                               _g306697306703_
                                                               _g306698306705_)
                                                        (let ((__tmp313114
                                                               (let ((__tmp313117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp313115
                              (let ((__tmp313116
                                     (let ()
                                       (declare (not safe))
                                       (cons _g306696306700_ '()))))
                                (declare (not safe))
                                (cons _g306697306703_ __tmp313116))))
                         (declare (not safe))
                         (cons __tmp313117 __tmp313115))))
                  (declare (not safe))
                  (cons __tmp313114 _g306698306705_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp313113
                                                         '()
                                                         _L306679_
                                                         _L306681_)))))
                                        (declare (not safe))
                                        (cons __tmp313118 __tmp313112))))
                                 (declare (not safe))
                                 (cons __tmp313111 '()))))
                          (declare (not safe))
                          (cons __tmp313119 __tmp313110))))
                   (declare (not safe))
                   (cons __tmp313123 __tmp313109)))))
          (let* ((___match312744312745_
                  (lambda (_e306585306615_
                           _hd306584306619_
                           _tl306583306622_
                           ___splice312702312703_
                           _target306586306625_
                           _tl306588306628_)
                    (letrec ((_loop306589306631_
                              (lambda (_hd306587306635_
                                       _dispatch306593306638_
                                       _arity306594306640_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd306587306635_))
                                    (let ((_e306590306643_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd306587306635_))))
                                      (let ((_lp-tl306592306650_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306590306643_)))
                                            (_lp-hd306591306647_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306590306643_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd306591306647_))
                                            (let ((_e306599306653_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd306591306647_))))
                                              (let ((_tl306597306660_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e306599306653_)))
                                                    (_hd306598306657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e306599306653_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl306597306660_))
                                                    (let ((_e306602306663_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl306597306660_))))
                                                      (let ((_tl306600306670_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e306602306663_)))
                    (_hd306601306667_
                     (let () (declare (not safe)) (##car _e306602306663_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl306600306670_))
                    (_loop306589306631_
                     _lp-tl306592306650_
                     (let ()
                       (declare (not safe))
                       (cons _hd306601306667_ _dispatch306593306638_))
                     (let ()
                       (declare (not safe))
                       (cons _hd306598306657_ _arity306594306640_)))
                    (let () (declare (not safe)) (_g306553306608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g306553306608_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g306553306608_)))))
                                    (let ((_arity306596306676_
                                           (reverse _arity306594306640_))
                                          (_dispatch306595306673_
                                           (reverse _dispatch306593306638_)))
                                      (___kont312700312701_
                                       _dispatch306595306673_
                                       _arity306596306676_))))))
                      (_loop306589306631_ _target306586306625_ '() '()))))
                 (___match312736312737_
                  (lambda (_e306585306615_ _hd306584306619_ _tl306583306622_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl306583306622_))
                        (let ((___splice312702312703_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl306583306622_
                                  '0))))
                          (let ((_tl306588306628_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice312702312703_ '1)))
                                (_target306586306625_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice312702312703_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl306588306628_))
                                (___match312744312745_
                                 _e306585306615_
                                 _hd306584306619_
                                 _tl306583306622_
                                 ___splice312702312703_
                                 _target306586306625_
                                 _tl306588306628_)
                                (let ()
                                  (declare (not safe))
                                  (_g306553306608_)))))
                        (let () (declare (not safe)) (_g306553306608_)))))
                 (___match312730312731_
                  (lambda (_e306559306715_
                           _hd306558306719_
                           _tl306557306722_
                           _e306562306725_
                           _hd306561306729_
                           _tl306560306732_
                           _e306563306735_
                           ___splice312698312699_
                           _target306564306739_
                           _tl306566306742_)
                    (letrec ((_loop306567306745_
                              (lambda (_hd306565306749_
                                       _dispatch306571306752_
                                       _arity306572306754_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd306565306749_))
                                    (let ((_e306568306757_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd306565306749_))))
                                      (let ((_lp-tl306570306764_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306568306757_)))
                                            (_lp-hd306569306761_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306568306757_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd306569306761_))
                                            (let ((_e306577306767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd306569306761_))))
                                              (let ((_tl306575306774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e306577306767_)))
                                                    (_hd306576306771_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e306577306767_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl306575306774_))
                                                    (let ((_e306580306777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl306575306774_))))
                                                      (let ((_tl306578306784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e306580306777_)))
                    (_hd306579306781_
                     (let () (declare (not safe)) (##car _e306580306777_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl306578306784_))
                    (_loop306567306745_
                     _lp-tl306570306764_
                     (let ()
                       (declare (not safe))
                       (cons _hd306579306781_ _dispatch306571306752_))
                     (let ()
                       (declare (not safe))
                       (cons _hd306576306771_ _arity306572306754_)))
                    (___match312736312737_
                     _e306559306715_
                     _hd306558306719_
                     _tl306557306722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match312736312737_
                                                     _e306559306715_
                                                     _hd306558306719_
                                                     _tl306557306722_))))
                                            (___match312736312737_
                                             _e306559306715_
                                             _hd306558306719_
                                             _tl306557306722_))))
                                    (let ((_arity306574306790_
                                           (reverse _arity306572306754_))
                                          (_dispatch306573306787_
                                           (reverse _dispatch306571306752_)))
                                      (___kont312696312697_
                                       _dispatch306573306787_
                                       _arity306574306790_))))))
                      (_loop306567306745_ _target306564306739_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312693312694_))
                (let ((_e306559306715_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312693312694_))))
                  (let ((_tl306557306722_
                         (let () (declare (not safe)) (##cdr _e306559306715_)))
                        (_hd306558306719_
                         (let ()
                           (declare (not safe))
                           (##car _e306559306715_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl306557306722_))
                        (let ((_e306562306725_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl306557306722_))))
                          (let ((_tl306560306732_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e306562306725_)))
                                (_hd306561306729_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e306562306725_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd306561306729_))
                                (let ((_e306563306735_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd306561306729_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e306563306735_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl306560306732_))
                                          (let ((___splice312698312699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl306560306732_
                                                    '0))))
                                            (let ((_tl306566306742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312698312699_
                                                      '1)))
                                                  (_target306564306739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312698312699_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl306566306742_))
                                                  (___match312730312731_
                                                   _e306559306715_
                                                   _hd306558306719_
                                                   _tl306557306722_
                                                   _e306562306725_
                                                   _hd306561306729_
                                                   _tl306560306732_
                                                   _e306563306735_
                                                   ___splice312698312699_
                                                   _target306564306739_
                                                   _tl306566306742_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl306557306722_))
                                                      (let ((___splice312702312703_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl306557306722_ '0))))
                (let ((_tl306588306628_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312702312703_ '1)))
                      (_target306586306625_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312702312703_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl306588306628_))
                      (___match312744312745_
                       _e306559306715_
                       _hd306558306719_
                       _tl306557306722_
                       ___splice312702312703_
                       _target306586306625_
                       _tl306588306628_)
                      (let () (declare (not safe)) (_g306553306608_)))))
              (let () (declare (not safe)) (_g306553306608_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl306557306722_))
                                              (let ((___splice312702312703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl306557306722_
                                                        '0))))
                                                (let ((_tl306588306628_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice312702312703_
                                                          '1)))
                                                      (_target306586306625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice312702312703_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl306588306628_))
                                                      (___match312744312745_
                                                       _e306559306715_
                                                       _hd306558306719_
                                                       _tl306557306722_
                                                       ___splice312702312703_
                                                       _target306586306625_
                                                       _tl306588306628_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g306553306608_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g306553306608_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl306557306722_))
                                          (let ((___splice312702312703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl306557306722_
                                                    '0))))
                                            (let ((_tl306588306628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312702312703_
                                                      '1)))
                                                  (_target306586306625_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice312702312703_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl306588306628_))
                                                  (___match312744312745_
                                                   _e306559306715_
                                                   _hd306558306719_
                                                   _tl306557306722_
                                                   ___splice312702312703_
                                                   _target306586306625_
                                                   _tl306588306628_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g306553306608_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g306553306608_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl306557306722_))
                                    (let ((___splice312702312703_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl306557306722_
                                              '0))))
                                      (let ((_tl306588306628_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312702312703_
                                                '1)))
                                            (_target306586306625_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312702312703_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306588306628_))
                                            (___match312744312745_
                                             _e306559306715_
                                             _hd306558306719_
                                             _tl306557306722_
                                             ___splice312702312703_
                                             _target306586306625_
                                             _tl306588306628_)
                                            (let ()
                                              (declare (not safe))
                                              (_g306553306608_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g306553306608_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl306557306722_))
                            (let ((___splice312702312703_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl306557306722_
                                      '0))))
                              (let ((_tl306588306628_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice312702312703_
                                        '1)))
                                    (_target306586306625_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice312702312703_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl306588306628_))
                                    (___match312744312745_
                                     _e306559306715_
                                     _hd306558306719_
                                     _tl306557306722_
                                     ___splice312702312703_
                                     _target306586306625_
                                     _tl306588306628_)
                                    (let ()
                                      (declare (not safe))
                                      (_g306553306608_)))))
                            (let () (declare (not safe)) (_g306553306608_))))))
                (let () (declare (not safe)) (_g306553306608_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx306830_)
      (let* ((_g306834306852_
              (lambda (_g306835306848_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g306835306848_))))
             (_g306833306907_
              (lambda (_g306835306856_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g306835306856_))
                    (let ((_e306840306859_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g306835306856_))))
                      (let ((_hd306839306863_
                             (let ()
                               (declare (not safe))
                               (##car _e306840306859_)))
                            (_tl306838306866_
                             (let ()
                               (declare (not safe))
                               (##cdr _e306840306859_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl306838306866_))
                            (let ((_e306843306869_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl306838306866_))))
                              (let ((_hd306842306873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e306843306869_)))
                                    (_tl306841306876_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e306843306869_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl306841306876_))
                                    (let ((_e306846306879_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl306841306876_))))
                                      (let ((_hd306845306883_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306846306879_)))
                                            (_tl306844306886_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306846306879_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306844306886_))
                                            ((lambda (_L306889_ _L306891_)
                                               (let ((__tmp313137
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp313124
                                                      (let ((__tmp313133
                                                             (let ((__tmp313136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp313134
                            (let ((__tmp313135
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp313135 '()))))
                       (declare (not safe))
                       (cons __tmp313136 __tmp313134)))
                    (__tmp313125
                     (let ((__tmp313130
                            (let ((__tmp313132
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp313131
                                   (let ()
                                     (declare (not safe))
                                     (cons _L306891_ '()))))
                              (declare (not safe))
                              (cons __tmp313132 __tmp313131)))
                           (__tmp313126
                            (let ((__tmp313127
                                   (let ((__tmp313129
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp313128
                                          (let ()
                                            (declare (not safe))
                                            (cons _L306889_ '()))))
                                     (declare (not safe))
                                     (cons __tmp313129 __tmp313128))))
                              (declare (not safe))
                              (cons __tmp313127 '()))))
                       (declare (not safe))
                       (cons __tmp313130 __tmp313126))))
                (declare (not safe))
                (cons __tmp313133 __tmp313125))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp313137
                                                       __tmp313124)))
                                             _hd306845306883_
                                             _hd306842306873_)
                                            (_g306834306852_
                                             _g306835306856_))))
                                    (_g306834306852_ _g306835306856_))))
                            (_g306834306852_ _g306835306856_))))
                    (_g306834306852_ _g306835306856_)))))
        (_g306833306907_ _$stx306830_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx306911_)
      (let* ((_g306915306933_
              (lambda (_g306916306929_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g306916306929_))))
             (_g306914306988_
              (lambda (_g306916306937_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g306916306937_))
                    (let ((_e306921306940_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g306916306937_))))
                      (let ((_hd306920306944_
                             (let ()
                               (declare (not safe))
                               (##car _e306921306940_)))
                            (_tl306919306947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e306921306940_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl306919306947_))
                            (let ((_e306924306950_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl306919306947_))))
                              (let ((_hd306923306954_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e306924306950_)))
                                    (_tl306922306957_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e306924306950_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl306922306957_))
                                    (let ((_e306927306960_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl306922306957_))))
                                      (let ((_hd306926306964_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e306927306960_)))
                                            (_tl306925306967_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e306927306960_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl306925306967_))
                                            ((lambda (_L306970_ _L306972_)
                                               (let ((__tmp313151
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp313138
                                                      (let ((__tmp313147
                                                             (let ((__tmp313150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp313148
                            (let ((__tmp313149
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp313149 '()))))
                       (declare (not safe))
                       (cons __tmp313150 __tmp313148)))
                    (__tmp313139
                     (let ((__tmp313144
                            (let ((__tmp313146
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp313145
                                   (let ()
                                     (declare (not safe))
                                     (cons _L306972_ '()))))
                              (declare (not safe))
                              (cons __tmp313146 __tmp313145)))
                           (__tmp313140
                            (let ((__tmp313141
                                   (let ((__tmp313143
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp313142
                                          (let ()
                                            (declare (not safe))
                                            (cons _L306970_ '()))))
                                     (declare (not safe))
                                     (cons __tmp313143 __tmp313142))))
                              (declare (not safe))
                              (cons __tmp313141 '()))))
                       (declare (not safe))
                       (cons __tmp313144 __tmp313140))))
                (declare (not safe))
                (cons __tmp313147 __tmp313139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp313151
                                                       __tmp313138)))
                                             _hd306926306964_
                                             _hd306923306954_)
                                            (_g306915306933_
                                             _g306916306937_))))
                                    (_g306915306933_ _g306916306937_))))
                            (_g306915306933_ _g306916306937_))))
                    (_g306915306933_ _g306916306937_)))))
        (_g306914306988_ _$stx306911_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx306992_)
      (let* ((___stx312747312748_ _$stx306992_)
             (_g306999307070_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312747312748_)))))
        (let ((___kont312750312751_
               (lambda (_L307361_ _L307363_)
                 (let ((__tmp313157
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp313152
                        (let ((__tmp313153
                               (let ((__tmp313154
                                      (let ((__tmp313156
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp313155
                                             (let ()
                                               (declare (not safe))
                                               (cons _L307361_ '()))))
                                        (declare (not safe))
                                        (cons __tmp313156 __tmp313155))))
                                 (declare (not safe))
                                 (cons __tmp313154 '()))))
                          (declare (not safe))
                          (cons _L307363_ __tmp313153))))
                   (declare (not safe))
                   (cons __tmp313157 __tmp313152))))
              (___kont312752312753_
               (lambda (_L307280_ _L307282_)
                 (let ((__tmp313166
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp313158
                        (let ((__tmp313159
                               (let ((__tmp313160
                                      (let ((__tmp313165
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp313161
                                             (let ((__tmp313162
                                                    (lambda (_g307301307304_
                                                             _g307302307307_)
                                                      (let ((__tmp313163
                                                             (let ((__tmp313164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g307301307304_ __tmp313164))))
                (declare (not safe))
                (cons __tmp313163 _g307302307307_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp313162
                                                       '()
                                                       _L307280_))))
                                        (declare (not safe))
                                        (cons __tmp313165 __tmp313161))))
                                 (declare (not safe))
                                 (cons __tmp313160 '()))))
                          (declare (not safe))
                          (cons _L307282_ __tmp313159))))
                   (declare (not safe))
                   (cons __tmp313166 __tmp313158))))
              (___kont312756312757_
               (lambda (_L307192_ _L307194_)
                 (let ((__tmp313173
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp313167
                        (let ((__tmp313168
                               (let ((__tmp313169
                                      (let ((__tmp313172
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp313170
                                             (let ((__tmp313171
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L307192_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp313171))))
                                        (declare (not safe))
                                        (cons __tmp313172 __tmp313170))))
                                 (declare (not safe))
                                 (cons __tmp313169 '()))))
                          (declare (not safe))
                          (cons _L307194_ __tmp313168))))
                   (declare (not safe))
                   (cons __tmp313173 __tmp313167))))
              (___kont312758312759_
               (lambda (_L307127_ _L307129_)
                 (let ((__tmp313183
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp313174
                        (let ((__tmp313175
                               (let ((__tmp313176
                                      (let ((__tmp313182
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp313177
                                             (let ((__tmp313178
                                                    (let ((__tmp313179
                                                           (lambda (_g307146307149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g307147307152_)
                     (let ((__tmp313180
                            (let ((__tmp313181
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g307146307149_ __tmp313181))))
                       (declare (not safe))
                       (cons __tmp313180 _g307147307152_)))))
              (declare (not safe))
              (foldr1 __tmp313179 '() _L307127_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp313178))))
                                        (declare (not safe))
                                        (cons __tmp313182 __tmp313177))))
                                 (declare (not safe))
                                 (cons __tmp313176 '()))))
                          (declare (not safe))
                          (cons _L307129_ __tmp313175))))
                   (declare (not safe))
                   (cons __tmp313183 __tmp313174)))))
          (let* ((___match312866312867_
                  (lambda (_e307052307077_
                           _hd307051307081_
                           _tl307050307084_
                           _e307055307087_
                           _hd307054307091_
                           _tl307053307094_
                           ___splice312760312761_
                           _target307056307097_
                           _tl307058307100_)
                    (letrec ((_loop307059307103_
                              (lambda (_hd307057307107_ _arity307063307110_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd307057307107_))
                                    (let ((_e307060307113_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd307057307107_))))
                                      (let ((_lp-tl307062307120_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e307060307113_)))
                                            (_lp-hd307061307117_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e307060307113_))))
                                        (_loop307059307103_
                                         _lp-tl307062307120_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd307061307117_
                                                 _arity307063307110_)))))
                                    (let ((_arity307064307123_
                                           (reverse _arity307063307110_)))
                                      (___kont312758312759_
                                       _arity307064307123_
                                       _hd307054307091_))))))
                      (_loop307059307103_ _target307056307097_ '()))))
                 (___match312826312827_
                  (lambda (_e307020307216_
                           _hd307019307220_
                           _tl307018307223_
                           _e307023307226_
                           _hd307022307230_
                           _tl307021307233_
                           _e307026307236_
                           _hd307025307240_
                           _tl307024307243_
                           _e307027307246_
                           ___splice312754312755_
                           _target307028307250_
                           _tl307030307253_)
                    (letrec ((_loop307031307256_
                              (lambda (_hd307029307260_ _arity307035307263_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd307029307260_))
                                    (let ((_e307032307266_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd307029307260_))))
                                      (let ((_lp-tl307034307273_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e307032307266_)))
                                            (_lp-hd307033307270_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e307032307266_))))
                                        (_loop307031307256_
                                         _lp-tl307034307273_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd307033307270_
                                                 _arity307035307263_)))))
                                    (let ((_arity307036307276_
                                           (reverse _arity307035307263_)))
                                      (___kont312752312753_
                                       _arity307036307276_
                                       _hd307022307230_))))))
                      (_loop307031307256_ _target307028307250_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312747312748_))
                (let ((_e307005307317_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312747312748_))))
                  (let ((_tl307003307324_
                         (let () (declare (not safe)) (##cdr _e307005307317_)))
                        (_hd307004307321_
                         (let ()
                           (declare (not safe))
                           (##car _e307005307317_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl307003307324_))
                        (let ((_e307008307327_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl307003307324_))))
                          (let ((_tl307006307334_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e307008307327_)))
                                (_hd307007307331_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e307008307327_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl307006307334_))
                                (let ((_e307011307337_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl307006307334_))))
                                  (let ((_tl307009307344_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e307011307337_)))
                                        (_hd307010307341_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e307011307337_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd307010307341_))
                                        (let ((_e307012307347_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd307010307341_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e307012307347_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl307009307344_))
                                                  (let ((_e307015307351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl307009307344_))))
                                                    (let ((_tl307013307358_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e307015307351_)))
                                                          (_hd307014307355_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e307015307351_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl307013307358_))
                                                          (___kont312750312751_
                                                           _hd307014307355_
                                                           _hd307007307331_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl307009307344_))
                      (let ((___splice312754312755_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl307009307344_ '0))))
                        (let ((_tl307030307253_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312754312755_ '1)))
                              (_target307028307250_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312754312755_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl307030307253_))
                              (___match312826312827_
                               _e307005307317_
                               _hd307004307321_
                               _tl307003307324_
                               _e307008307327_
                               _hd307007307331_
                               _tl307006307334_
                               _e307011307337_
                               _hd307010307341_
                               _tl307009307344_
                               _e307012307347_
                               ___splice312754312755_
                               _target307028307250_
                               _tl307030307253_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl307006307334_))
                                  (let ((___splice312760312761_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl307006307334_
                                            '0))))
                                    (let ((_tl307058307100_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice312760312761_
                                              '1)))
                                          (_target307056307097_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice312760312761_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl307058307100_))
                                          (___match312866312867_
                                           _e307005307317_
                                           _hd307004307321_
                                           _tl307003307324_
                                           _e307008307327_
                                           _hd307007307331_
                                           _tl307006307334_
                                           ___splice312760312761_
                                           _target307056307097_
                                           _tl307058307100_)
                                          (let ()
                                            (declare (not safe))
                                            (_g306999307070_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g306999307070_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl307006307334_))
                          (let ((___splice312760312761_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl307006307334_
                                    '0))))
                            (let ((_tl307058307100_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice312760312761_ '1)))
                                  (_target307056307097_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice312760312761_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl307058307100_))
                                  (___match312866312867_
                                   _e307005307317_
                                   _hd307004307321_
                                   _tl307003307324_
                                   _e307008307327_
                                   _hd307007307331_
                                   _tl307006307334_
                                   ___splice312760312761_
                                   _target307056307097_
                                   _tl307058307100_)
                                  (let ()
                                    (declare (not safe))
                                    (_g306999307070_)))))
                          (let () (declare (not safe)) (_g306999307070_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl307009307344_))
                                                      (let ((___splice312754312755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl307009307344_ '0))))
                (let ((_tl307030307253_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312754312755_ '1)))
                      (_target307028307250_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312754312755_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl307030307253_))
                      (___match312826312827_
                       _e307005307317_
                       _hd307004307321_
                       _tl307003307324_
                       _e307008307327_
                       _hd307007307331_
                       _tl307006307334_
                       _e307011307337_
                       _hd307010307341_
                       _tl307009307344_
                       _e307012307347_
                       ___splice312754312755_
                       _target307028307250_
                       _tl307030307253_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl307009307344_))
                          (___kont312756312757_
                           _hd307010307341_
                           _hd307007307331_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl307006307334_))
                              (let ((___splice312760312761_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl307006307334_
                                        '0))))
                                (let ((_tl307058307100_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice312760312761_
                                          '1)))
                                      (_target307056307097_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice312760312761_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl307058307100_))
                                      (___match312866312867_
                                       _e307005307317_
                                       _hd307004307321_
                                       _tl307003307324_
                                       _e307008307327_
                                       _hd307007307331_
                                       _tl307006307334_
                                       ___splice312760312761_
                                       _target307056307097_
                                       _tl307058307100_)
                                      (let ()
                                        (declare (not safe))
                                        (_g306999307070_)))))
                              (let ()
                                (declare (not safe))
                                (_g306999307070_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl307009307344_))
                  (___kont312756312757_ _hd307010307341_ _hd307007307331_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl307006307334_))
                      (let ((___splice312760312761_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl307006307334_ '0))))
                        (let ((_tl307058307100_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312760312761_ '1)))
                              (_target307056307097_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice312760312761_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl307058307100_))
                              (___match312866312867_
                               _e307005307317_
                               _hd307004307321_
                               _tl307003307324_
                               _e307008307327_
                               _hd307007307331_
                               _tl307006307334_
                               ___splice312760312761_
                               _target307056307097_
                               _tl307058307100_)
                              (let ()
                                (declare (not safe))
                                (_g306999307070_)))))
                      (let () (declare (not safe)) (_g306999307070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl307009307344_))
                                                  (___kont312756312757_
                                                   _hd307010307341_
                                                   _hd307007307331_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl307006307334_))
                                                      (let ((___splice312760312761_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl307006307334_ '0))))
                (let ((_tl307058307100_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312760312761_ '1)))
                      (_target307056307097_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice312760312761_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl307058307100_))
                      (___match312866312867_
                       _e307005307317_
                       _hd307004307321_
                       _tl307003307324_
                       _e307008307327_
                       _hd307007307331_
                       _tl307006307334_
                       ___splice312760312761_
                       _target307056307097_
                       _tl307058307100_)
                      (let () (declare (not safe)) (_g306999307070_)))))
              (let () (declare (not safe)) (_g306999307070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl307009307344_))
                                            (___kont312756312757_
                                             _hd307010307341_
                                             _hd307007307331_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl307006307334_))
                                                (let ((___splice312760312761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl307006307334_
                                                          '0))))
                                                  (let ((_tl307058307100_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice312760312761_
                                                            '1)))
                                                        (_target307056307097_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice312760312761_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl307058307100_))
                                                        (___match312866312867_
                                                         _e307005307317_
                                                         _hd307004307321_
                                                         _tl307003307324_
                                                         _e307008307327_
                                                         _hd307007307331_
                                                         _tl307006307334_
                                                         ___splice312760312761_
                                                         _target307056307097_
                                                         _tl307058307100_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g306999307070_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g306999307070_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl307006307334_))
                                    (let ((___splice312760312761_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl307006307334_
                                              '0))))
                                      (let ((_tl307058307100_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312760312761_
                                                '1)))
                                            (_target307056307097_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312760312761_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl307058307100_))
                                            (___match312866312867_
                                             _e307005307317_
                                             _hd307004307321_
                                             _tl307003307324_
                                             _e307008307327_
                                             _hd307007307331_
                                             _tl307006307334_
                                             ___splice312760312761_
                                             _target307056307097_
                                             _tl307058307100_)
                                            (let ()
                                              (declare (not safe))
                                              (_g306999307070_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g306999307070_))))))
                        (let () (declare (not safe)) (_g306999307070_)))))
                (let () (declare (not safe)) (_g306999307070_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx307387_)
      (let* ((___stx312869312870_ _$stx307387_)
             (_g307392307427_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx312869312870_)))))
        (let ((___kont312872312873_
               (lambda (_L307549_ _L307551_)
                 (let ((__tmp313189
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp313184
                        (let ((__tmp313185
                               (let ((__tmp313186
                                      (let ((__tmp313188
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp313187
                                             (let ()
                                               (declare (not safe))
                                               (cons _L307549_ '()))))
                                        (declare (not safe))
                                        (cons __tmp313188 __tmp313187))))
                                 (declare (not safe))
                                 (cons __tmp313186 '()))))
                          (declare (not safe))
                          (cons _L307551_ __tmp313185))))
                   (declare (not safe))
                   (cons __tmp313189 __tmp313184))))
              (___kont312874312875_
               (lambda (_L307484_ _L307486_)
                 (let ((__tmp313198
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp313190
                        (let ((__tmp313191
                               (let ((__tmp313192
                                      (let ((__tmp313197
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp313193
                                             (let ((__tmp313194
                                                    (lambda (_g307503307506_
                                                             _g307504307509_)
                                                      (let ((__tmp313195
                                                             (let ((__tmp313196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g307503307506_ __tmp313196))))
                (declare (not safe))
                (cons __tmp313195 _g307504307509_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp313194
                                                       '()
                                                       _L307484_))))
                                        (declare (not safe))
                                        (cons __tmp313197 __tmp313193))))
                                 (declare (not safe))
                                 (cons __tmp313192 '()))))
                          (declare (not safe))
                          (cons _L307486_ __tmp313191))))
                   (declare (not safe))
                   (cons __tmp313198 __tmp313190)))))
          (let ((___match312918312919_
                 (lambda (_e307409307434_
                          _hd307408307438_
                          _tl307407307441_
                          _e307412307444_
                          _hd307411307448_
                          _tl307410307451_
                          ___splice312876312877_
                          _target307413307454_
                          _tl307415307457_)
                   (letrec ((_loop307416307460_
                             (lambda (_hd307414307464_ _arity307420307467_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd307414307464_))
                                   (let ((_e307417307470_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd307414307464_))))
                                     (let ((_lp-tl307419307477_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e307417307470_)))
                                           (_lp-hd307418307474_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e307417307470_))))
                                       (_loop307416307460_
                                        _lp-tl307419307477_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd307418307474_
                                                _arity307420307467_)))))
                                   (let ((_arity307421307480_
                                          (reverse _arity307420307467_)))
                                     (___kont312874312875_
                                      _arity307421307480_
                                      _hd307411307448_))))))
                     (_loop307416307460_ _target307413307454_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx312869312870_))
                (let ((_e307398307519_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx312869312870_))))
                  (let ((_tl307396307526_
                         (let () (declare (not safe)) (##cdr _e307398307519_)))
                        (_hd307397307523_
                         (let ()
                           (declare (not safe))
                           (##car _e307398307519_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl307396307526_))
                        (let ((_e307401307529_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl307396307526_))))
                          (let ((_tl307399307536_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e307401307529_)))
                                (_hd307400307533_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e307401307529_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl307399307536_))
                                (let ((_e307404307539_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl307399307536_))))
                                  (let ((_tl307402307546_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e307404307539_)))
                                        (_hd307403307543_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e307404307539_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl307402307546_))
                                        (___kont312872312873_
                                         _hd307403307543_
                                         _hd307400307533_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl307399307536_))
                                            (let ((___splice312876312877_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl307399307536_
                                                      '0))))
                                              (let ((_tl307415307457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice312876312877_
                                                        '1)))
                                                    (_target307413307454_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice312876312877_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl307415307457_))
                                                    (___match312918312919_
                                                     _e307398307519_
                                                     _hd307397307523_
                                                     _tl307396307526_
                                                     _e307401307529_
                                                     _hd307400307533_
                                                     _tl307399307536_
                                                     ___splice312876312877_
                                                     _target307413307454_
                                                     _tl307415307457_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g307392307427_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g307392307427_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl307399307536_))
                                    (let ((___splice312876312877_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl307399307536_
                                              '0))))
                                      (let ((_tl307415307457_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312876312877_
                                                '1)))
                                            (_target307413307454_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice312876312877_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl307415307457_))
                                            (___match312918312919_
                                             _e307398307519_
                                             _hd307397307523_
                                             _tl307396307526_
                                             _e307401307529_
                                             _hd307400307533_
                                             _tl307399307536_
                                             ___splice312876312877_
                                             _target307413307454_
                                             _tl307415307457_)
                                            (let ()
                                              (declare (not safe))
                                              (_g307392307427_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g307392307427_))))))
                        (let () (declare (not safe)) (_g307392307427_)))))
                (let () (declare (not safe)) (_g307392307427_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx307571_)
      (let* ((_g307575307610_
              (lambda (_g307576307606_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g307576307606_))))
             (_g307574307738_
              (lambda (_g307576307614_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g307576307614_))
                    (let ((_e307581307617_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g307576307614_))))
                      (let ((_hd307580307621_
                             (let ()
                               (declare (not safe))
                               (##car _e307581307617_)))
                            (_tl307579307624_
                             (let ()
                               (declare (not safe))
                               (##cdr _e307581307617_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl307579307624_))
                            (let ((_g313199_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl307579307624_
                                      '0))))
                              (begin
                                (let ((_g313200_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g313199_)
                                             (##vector-length _g313199_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g313200_ 2)))
                                      (error "Context expects 2 values"
                                             _g313200_)))
                                (let ((_target307582307627_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g313199_ 0)))
                                      (_tl307584307630_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g313199_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl307584307630_))
                                      (letrec ((_loop307585307633_
                                                (lambda (_hd307583307637_
                                                         _arity307589307640_
                                                         _prim307590307642_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd307583307637_))
                                                      (let ((_e307586307645_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd307583307637_))))
                (let ((_lp-hd307587307649_
                       (let () (declare (not safe)) (##car _e307586307645_)))
                      (_lp-tl307588307652_
                       (let () (declare (not safe)) (##cdr _e307586307645_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd307587307649_))
                      (let ((_e307595307655_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd307587307649_))))
                        (let ((_hd307594307659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e307595307655_)))
                              (_tl307593307662_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e307595307655_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl307593307662_))
                              (let ((_g313209_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl307593307662_
                                        '0))))
                                (begin
                                  (let ((_g313210_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g313209_)
                                               (##vector-length _g313209_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g313210_ 2)))
                                        (error "Context expects 2 values"
                                               _g313210_)))
                                  (let ((_target307596307665_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g313209_ 0)))
                                        (_tl307598307668_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g313209_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl307598307668_))
                                        (letrec ((_loop307599307671_
                                                  (lambda (_hd307597307675_
                                                           _arity307603307678_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd307597307675_))
                                                        (let ((_e307600307681_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd307597307675_))))
                  (let ((_lp-hd307601307685_
                         (let () (declare (not safe)) (##car _e307600307681_)))
                        (_lp-tl307602307688_
                         (let ()
                           (declare (not safe))
                           (##cdr _e307600307681_))))
                    (_loop307599307671_
                     _lp-tl307602307688_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd307601307685_ _arity307603307678_)))))
                (let ((_arity307604307691_ (reverse _arity307603307678_)))
                  (_loop307585307633_
                   _lp-tl307588307652_
                   (let ()
                     (declare (not safe))
                     (cons _arity307604307691_ _arity307589307640_))
                   (let ()
                     (declare (not safe))
                     (cons _hd307594307659_ _prim307590307642_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop307599307671_
                                           _target307596307665_
                                           '()))
                                        (_g307575307610_ _g307576307614_)))))
                              (_g307575307610_ _g307576307614_))))
                      (_g307575307610_ _g307576307614_))))
              (let ((_arity307591307695_ (reverse _arity307589307640_))
                    (_prim307592307698_ (reverse _prim307590307642_)))
                ((lambda (_L307701_ _L307703_)
                   (let ((__tmp313208
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp313201
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L307701_
                               _L307703_))
                            (let ((__tmp313202
                                   (lambda (_g307718307724_
                                            _g307719307727_
                                            _g307720307729_)
                                     (let ((__tmp313203
                                            (let ((__tmp313207
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp313204
                                                   (let ((__tmp313205
                                                          (let ((__tmp313206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g307721307732_ _g307722307735_)
                           (let ()
                             (declare (not safe))
                             (cons _g307721307732_ _g307722307735_)))))
                    (declare (not safe))
                    (foldr1 __tmp313206 '() _g307718307724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g307719307727_
                                                           __tmp313205))))
                                              (declare (not safe))
                                              (cons __tmp313207 __tmp313204))))
                                       (declare (not safe))
                                       (cons __tmp313203 _g307720307729_)))))
                              (declare (not safe))
                              (foldr2 __tmp313202 '() _L307701_ _L307703_)))))
                     (declare (not safe))
                     (cons __tmp313208 __tmp313201)))
                 _arity307591307695_
                 _prim307592307698_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop307585307633_
                                         _target307582307627_
                                         '()
                                         '()))
                                      (_g307575307610_ _g307576307614_)))))
                            (_g307575307610_ _g307576307614_))))
                    (_g307575307610_ _g307576307614_)))))
        (_g307574307738_ _$stx307571_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx307744_)
      (let* ((_g307748307783_
              (lambda (_g307749307779_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g307749307779_))))
             (_g307747307911_
              (lambda (_g307749307787_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g307749307787_))
                    (let ((_e307754307790_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g307749307787_))))
                      (let ((_hd307753307794_
                             (let ()
                               (declare (not safe))
                               (##car _e307754307790_)))
                            (_tl307752307797_
                             (let ()
                               (declare (not safe))
                               (##cdr _e307754307790_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl307752307797_))
                            (let ((_g313211_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl307752307797_
                                      '0))))
                              (begin
                                (let ((_g313212_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g313211_)
                                             (##vector-length _g313211_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g313212_ 2)))
                                      (error "Context expects 2 values"
                                             _g313212_)))
                                (let ((_target307755307800_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g313211_ 0)))
                                      (_tl307757307803_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g313211_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl307757307803_))
                                      (letrec ((_loop307758307806_
                                                (lambda (_hd307756307810_
                                                         _arity307762307813_
                                                         _prim307763307815_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd307756307810_))
                                                      (let ((_e307759307818_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd307756307810_))))
                (let ((_lp-hd307760307822_
                       (let () (declare (not safe)) (##car _e307759307818_)))
                      (_lp-tl307761307825_
                       (let () (declare (not safe)) (##cdr _e307759307818_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd307760307822_))
                      (let ((_e307768307828_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd307760307822_))))
                        (let ((_hd307767307832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e307768307828_)))
                              (_tl307766307835_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e307768307828_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl307766307835_))
                              (let ((_g313221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl307766307835_
                                        '0))))
                                (begin
                                  (let ((_g313222_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g313221_)
                                               (##vector-length _g313221_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g313222_ 2)))
                                        (error "Context expects 2 values"
                                               _g313222_)))
                                  (let ((_target307769307838_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g313221_ 0)))
                                        (_tl307771307841_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g313221_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl307771307841_))
                                        (letrec ((_loop307772307844_
                                                  (lambda (_hd307770307848_
                                                           _arity307776307851_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd307770307848_))
                                                        (let ((_e307773307854_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd307770307848_))))
                  (let ((_lp-hd307774307858_
                         (let () (declare (not safe)) (##car _e307773307854_)))
                        (_lp-tl307775307861_
                         (let ()
                           (declare (not safe))
                           (##cdr _e307773307854_))))
                    (_loop307772307844_
                     _lp-tl307775307861_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd307774307858_ _arity307776307851_)))))
                (let ((_arity307777307864_ (reverse _arity307776307851_)))
                  (_loop307758307806_
                   _lp-tl307761307825_
                   (let ()
                     (declare (not safe))
                     (cons _arity307777307864_ _arity307762307813_))
                   (let ()
                     (declare (not safe))
                     (cons _hd307767307832_ _prim307763307815_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop307772307844_
                                           _target307769307838_
                                           '()))
                                        (_g307748307783_ _g307749307787_)))))
                              (_g307748307783_ _g307749307787_))))
                      (_g307748307783_ _g307749307787_))))
              (let ((_arity307764307868_ (reverse _arity307762307813_))
                    (_prim307765307871_ (reverse _prim307763307815_)))
                ((lambda (_L307874_ _L307876_)
                   (let ((__tmp313220
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp313213
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L307874_
                               _L307876_))
                            (let ((__tmp313214
                                   (lambda (_g307891307897_
                                            _g307892307900_
                                            _g307893307902_)
                                     (let ((__tmp313215
                                            (let ((__tmp313219
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp313216
                                                   (let ((__tmp313217
                                                          (let ((__tmp313218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g307894307905_ _g307895307908_)
                           (let ()
                             (declare (not safe))
                             (cons _g307894307905_ _g307895307908_)))))
                    (declare (not safe))
                    (foldr1 __tmp313218 '() _g307891307897_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g307892307900_
                                                           __tmp313217))))
                                              (declare (not safe))
                                              (cons __tmp313219 __tmp313216))))
                                       (declare (not safe))
                                       (cons __tmp313215 _g307893307902_)))))
                              (declare (not safe))
                              (foldr2 __tmp313214 '() _L307874_ _L307876_)))))
                     (declare (not safe))
                     (cons __tmp313220 __tmp313213)))
                 _arity307764307868_
                 _prim307765307871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop307758307806_
                                         _target307755307800_
                                         '()
                                         '()))
                                      (_g307748307783_ _g307749307787_)))))
                            (_g307748307783_ _g307749307787_))))
                    (_g307748307783_ _g307749307787_)))))
        (_g307747307911_ _$stx307744_)))))
