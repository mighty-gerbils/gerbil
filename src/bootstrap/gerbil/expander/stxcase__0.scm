(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708168070)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp192875 (list gx#expander::t))
            (__tmp192873
             (let ((__tmp192874
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192874 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp192875
         '(id depth)
         __tmp192873
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args188302_
        (apply make-instance gx#syntax-pattern::t _$args188302_)))
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
      (lambda (_self188299_ _stx188300_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx188300_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx187781_)
        (letrec ((_generate187783_
                  (lambda (_e188010_)
                    (letrec ((_BUG188012_
                              (lambda (_q188174_)
                                (error '"BUG: syntax; generate"
                                       _stx187781_
                                       _e188010_
                                       _q188174_)))
                             (_local-pattern-e188013_
                              (lambda (_pat188172_)
                                (let ((__tmp192876
                                       (##structure-ref
                                        _pat188172_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp192876))))
                             (_getvar188014_
                              (lambda (_q188169_ _vars188170_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q188169_
                                           _vars188170_
                                           _BUG188012_))))
                             (_getarg188015_
                              (lambda (_arg188135_ _vars188136_)
                                (let* ((_arg188137188144_ _arg188135_)
                                       (_E188139188148_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg188137188144_)))
                                       (_K188140188157_
                                        (lambda (_e188151_ _tag188152_)
                                          (let ((_$e188154_ _tag188152_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e188154_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar188014_
                                                   _e188151_
                                                   _vars188136_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e188154_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e188013_
                                                       _e188151_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG188012_
                                                       _arg188135_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg188137188144_))
                                      (let ((_hd188141188160_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg188137188144_)))
                                            (_tl188142188162_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg188137188144_))))
                                        (let* ((_tag188165_ _hd188141188160_)
                                               (_e188167_ _tl188142188162_))
                                          (declare (not safe))
                                          (_K188140188157_
                                           _e188167_
                                           _tag188165_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E188139188148_)))))))
                      (let _recur188017_ ((_e188019_ _e188010_)
                                          (_vars188020_ '()))
                        (let* ((_e188021188028_ _e188019_)
                               (_E188023188032_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e188021188028_)))
                               (_K188024188123_
                                (lambda (_body188035_ _tag188036_)
                                  (let ((_$e188038_ _tag188036_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e188038_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body188035_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e188038_))
                                            (let ((_id188041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body188035_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id188041_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks188043_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id188041_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks188043_))
                                                        (let ((__tmp192904
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body188035_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp192904))
                (let ((__tmp192903
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body188035_)))
                      (__tmp192902
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body188035_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp192903
                   __tmp192902
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id188041_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body188035_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG188012_
                                                         _e188019_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e188038_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e188013_
                                                   _body188035_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e188038_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar188014_
                                                       _body188035_
                                                       _vars188020_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e188038_))
                                                        (let ((__tmp192900
                                                               (let ((__tmp192901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body188035_)))
                         (declare (not safe))
                         (_recur188017_ __tmp192901 _vars188020_)))
                      (__tmp192898
                       (let ((__tmp192899 (cdr _body188035_)))
                         (declare (not safe))
                         (_recur188017_ __tmp192899 _vars188020_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp192900 __tmp192898))
                (if (let () (declare (not safe)) (eq? 'vector _$e188038_))
                    (let ((__tmp192897
                           (let ()
                             (declare (not safe))
                             (_recur188017_ _body188035_ _vars188020_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp192897))
                    (if (let () (declare (not safe)) (eq? 'box _$e188038_))
                        (let ((__tmp192896
                               (let ()
                                 (declare (not safe))
                                 (_recur188017_ _body188035_ _vars188020_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp192896))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e188038_))
                            (let* ((_body188044188055_ _body188035_)
                                   (_E188046188059_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body188044188055_)))
                                   (_K188047188097_
                                    (lambda (_args188062_
                                             _iv188063_
                                             _hd188064_
                                             _depth188065_)
                                      (let* ((_targets188071_
                                              (map (lambda (_g188066188068_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg188015_
                                                        _g188066188068_
                                                        _vars188020_)))
                                                   _args188062_))
                                             (_fold-in188073_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args188062_)))
                                             (_fold-out188075_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args188077_
                                              (let ((__tmp192877
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out188075_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp192877
                                                        _fold-in188073_)))
                                             (_lambda-body188094_
                                              (if (fx> _depth188065_ '1)
                                                  (let ((_r-args188085_
                                                         (map (lambda (_arg188079_)
                                                                (let ((__tmp192882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg188079_)))
                          (declare (not safe))
                          (cons 'ref __tmp192882)))
                      _args188062_))
                (_r-vars188086_
                 (let ((__tmp192883
                        (lambda (_arg188081_ _var188082_ _r188083_)
                          (let ((__tmp192884
                                 (let ((__tmp192885 (cdr _arg188081_)))
                                   (declare (not safe))
                                   (cons __tmp192885 _var188082_))))
                            (declare (not safe))
                            (cons __tmp192884 _r188083_)))))
                   (declare (not safe))
                   (foldr2 __tmp192883
                           _vars188020_
                           _args188062_
                           _fold-in188073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp192886
                                                           (let ((__tmp192887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp192891
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth188065_ '1)))
                                (__tmp192888
                                 (let ((__tmp192889
                                        (let ((__tmp192890
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out188075_))))
                                          (declare (not safe))
                                          (cons __tmp192890 _r-args188085_))))
                                   (declare (not safe))
                                   (cons _hd188064_ __tmp192889))))
                            (declare (not safe))
                            (cons __tmp192891 __tmp192888))))
                     (declare (not safe))
                     (cons 'splice __tmp192887))))
              (declare (not safe))
              (_recur188017_ __tmp192886 _r-vars188086_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars188092_
                                                          (let ((__tmp192878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg188088_ _var188089_ _r188090_)
                           (let ((__tmp192879
                                  (let ((__tmp192880 (cdr _arg188088_)))
                                    (declare (not safe))
                                    (cons __tmp192880 _var188089_))))
                             (declare (not safe))
                             (cons __tmp192879 _r188090_)))))
                    (declare (not safe))
                    (foldr2 __tmp192878
                            _vars188020_
                            _args188062_
                            _fold-in188073_)))
                 (__tmp192881
                  (let ()
                    (declare (not safe))
                    (_recur188017_ _hd188064_ _hd-vars188092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp192881
                                                     _fold-out188075_)))))
                                        (let ((__tmp192895
                                               (if (fx> (length _targets188071_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets188071_))
                                                   '#!void))
                                              (__tmp192892
                                               (let ((__tmp192894
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args188077_
                                                         _lambda-body188094_)))
                                                     (__tmp192893
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur188017_
                                                         _iv188063_
                                                         _vars188020_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp192894
                                                  __tmp192893
                                                  _targets188071_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp192895
                                           __tmp192892))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body188044188055_))
                                  (let ((_hd188048188100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body188044188055_)))
                                        (_tl188049188102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body188044188055_))))
                                    (let ((_depth188105_ _hd188048188100_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl188049188102_))
                                          (let ((_hd188050188107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl188049188102_)))
                                                (_tl188051188109_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl188049188102_))))
                                            (let ((_hd188112_
                                                   _hd188050188107_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl188051188109_))
                                                  (let ((_hd188052188114_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl188051188109_)))
                                                        (_tl188053188116_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl188051188109_))))
                                                    (let* ((_iv188119_
                                                            _hd188052188114_)
                                                           (_args188121_
                                                            _tl188053188116_))
                                                      (declare (not safe))
                                                      (_K188047188097_
                                                       _args188121_
                                                       _iv188119_
                                                       _hd188112_
                                                       _depth188105_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E188046188059_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E188046188059_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E188046188059_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e188038_))
                                _body188035_
                                (let ()
                                  (declare (not safe))
                                  (_BUG188012_ _e188019_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e188021188028_))
                              (let ((_hd188025188126_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e188021188028_)))
                                    (_tl188026188128_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e188021188028_))))
                                (let* ((_tag188131_ _hd188025188126_)
                                       (_body188133_ _tl188026188128_))
                                  (declare (not safe))
                                  (_K188024188123_ _body188133_ _tag188131_)))
                              (let ()
                                (declare (not safe))
                                (_E188023188032_))))))))
                 (_parse187784_
                  (lambda (_e187825_)
                    (letrec ((_make-cons187827_
                              (lambda (_hd188002_ _tl188003_)
                                (let ((_g192905_ _hd188002_)
                                      (_g192907_ _tl188003_))
                                  (begin
                                    (let ((_g192906_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192905_)
                                                 (##vector-length _g192905_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192906_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192906_)))
                                    (let ((_g192908_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192907_)
                                                 (##vector-length _g192907_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192908_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192908_)))
                                    (let ((_hd-e188005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192905_ 0)))
                                          (_hd-vars188006_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192905_ 1))))
                                      (let ((_tl-e188007_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192907_ 0)))
                                            (_tl-vars188008_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192907_ 1))))
                                        (values (let ((__tmp192909
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e188005_
                                                               _tl-e188007_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp192909))
                                                (append _hd-vars188006_
                                                        _tl-vars188008_))))))))
                             (_make-splice187828_
                              (lambda (_where187941_
                                       _depth187942_
                                       _hd187943_
                                       _tl187944_)
                                (let ((_g192910_ _hd187943_)
                                      (_g192912_ _tl187944_))
                                  (begin
                                    (let ((_g192911_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192910_)
                                                 (##vector-length _g192910_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192911_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192911_)))
                                    (let ((_g192913_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192912_)
                                                 (##vector-length _g192912_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192913_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192913_)))
                                    (let ((_hd-e187946_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192910_ 0)))
                                          (_hd-vars187947_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192910_ 1))))
                                      (let ((_tl-e187948_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192912_ 0)))
                                            (_tl-vars187949_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192912_ 1))))
                                        (let _lp187951_ ((_rest187953_
                                                          _hd-vars187947_)
                                                         (_targets187954_ '())
                                                         (_vars187955_
                                                          _tl-vars187949_))
                                          (let* ((_rest187956187966_
                                                  _rest187953_)
                                                 (_else187958187974_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets187954_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx187781_
                                                           _where187941_))
                                                        (values (let ((__tmp192914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp192915
                                      (let ((__tmp192916
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e187948_
                                                     _targets187954_))))
                                        (declare (not safe))
                                        (cons _hd-e187946_ __tmp192916))))
                                 (declare (not safe))
                                 (cons _depth187942_ __tmp192915))))
                          (declare (not safe))
                          (cons 'splice __tmp192914))
                        _vars187955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K187960187983_
                                                  (lambda (_rest187977_
                                                           _hd-pat187978_
                                                           _hd-depth*187979_)
                                                    (let ((_hd-depth187981_
                                                           (fx- _hd-depth*187979_
                                                                _depth187942_)))
                                                      (if (fxpositive?
                                                           _hd-depth187981_)
                                                          (let ((__tmp192921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp192922
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat187978_))))
                           (declare (not safe))
                           (cons __tmp192922 _targets187954_)))
                        (__tmp192919
                         (let ((__tmp192920
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth187981_ _hd-pat187978_))))
                           (declare (not safe))
                           (cons __tmp192920 _vars187955_))))
                    (declare (not safe))
                    (_lp187951_ _rest187977_ __tmp192921 __tmp192919))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth187981_))
                      (let ((__tmp192917
                             (let ((__tmp192918
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat187978_))))
                               (declare (not safe))
                               (cons __tmp192918 _targets187954_))))
                        (declare (not safe))
                        (_lp187951_ _rest187977_ __tmp192917 _vars187955_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx187781_
                         _where187941_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest187956187966_))
                                                (let ((_hd187961187986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest187956187966_)))
                                                      (_tl187962187988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest187956187966_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd187961187986_))
                                                      (let ((_hd187963187991_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd187961187986_)))
                    (_tl187964187993_
                     (let () (declare (not safe)) (##cdr _hd187961187986_))))
                (let* ((_hd-depth*187996_ _hd187963187991_)
                       (_hd-pat187998_ _tl187964187993_)
                       (_rest188000_ _tl187962187988_))
                  (declare (not safe))
                  (_K187960187983_
                   _rest188000_
                   _hd-pat187998_
                   _hd-depth*187996_)))
              (let () (declare (not safe)) (_else187958187974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else187958187974_)))))))))))
                             (_recur187829_
                              (lambda (_e187834_ _is-e?187835_)
                                (if (_is-e?187835_ _e187834_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx187781_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e187834_))
                                        (let* ((_pat187837_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e187834_)))
                                               (_depth187839_
                                                (##structure-ref
                                                 _pat187837_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth187839_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat187837_))
                                                      (let ((__tmp192938
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth187839_ _pat187837_))))
                (declare (not safe))
                (cons __tmp192938 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat187837_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e187834_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e187834_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e187834_))
                                                (let* ((_e187841187848_
                                                        _e187834_)
                                                       (_E187843187852_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e187841187848_))))
                                                       (_E187842187931_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e187841187848_))
                      (let ((_e187844187856_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e187841187848_))))
                        (let ((_hd187845187859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187844187856_)))
                              (_tl187846187861_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187844187856_))))
                          (let* ((_hd187864_ _hd187845187859_)
                                 (_rest187866_ _tl187846187861_))
                            (if '#t
                                (if (_is-e?187835_ _hd187864_)
                                    (let* ((_e187867187874_ _rest187866_)
                                           (_E187869187878_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx187781_
                                                 _e187834_))))
                                           (_E187868187892_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e187867187874_))
                                                  (let ((_e187870187882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e187867187874_))))
                                                    (let ((_hd187871187885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e187870187882_)))
                                                          (_tl187872187887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e187870187882_))))
                                                      (let ((_rest187890_
                                                             _hd187871187885_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl187872187887_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur187829_ _rest187890_ false))
                        (let () (declare (not safe)) (_E187869187878_)))
                    (let () (declare (not safe)) (_E187869187878_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E187869187878_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E187868187892_)))
                                    (let _lp187896_ ((_rest187898_
                                                      _rest187866_)
                                                     (_depth187899_ '0))
                                      (let* ((_e187900187907_ _rest187898_)
                                             (_E187902187911_
                                              (lambda ()
                                                (if (fxpositive? _depth187899_)
                                                    (let ((__tmp192932
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187829_
                                                              _hd187864_
                                                              _is-e?187835_)))
                                                          (__tmp192931
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187829_
                                                              _rest187898_
                                                              _is-e?187835_))))
                                                      (declare (not safe))
                                                      (_make-splice187828_
                                                       _e187834_
                                                       _depth187899_
                                                       __tmp192932
                                                       __tmp192931))
                                                    (let ((__tmp192930
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187829_
                                                              _hd187864_
                                                              _is-e?187835_)))
                                                          (__tmp192929
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187829_
                                                              _rest187898_
                                                              _is-e?187835_))))
                                                      (declare (not safe))
                                                      (_make-cons187827_
                                                       __tmp192930
                                                       __tmp192929)))))
                                             (_E187901187927_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e187900187907_))
                                                    (let ((_e187903187915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e187900187907_))))
                                                      (let ((_hd187904187918_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e187903187915_)))
                    (_tl187905187920_
                     (let () (declare (not safe)) (##cdr _e187903187915_))))
                (let* ((_rest-hd187923_ _hd187904187918_)
                       (_rest-tl187925_ _tl187905187920_))
                  (if '#t
                      (if (_is-e?187835_ _rest-hd187923_)
                          (let ((__tmp192937
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth187899_ '1))))
                            (declare (not safe))
                            (_lp187896_ _rest-tl187925_ __tmp192937))
                          (if (fxpositive? _depth187899_)
                              (let ((__tmp192936
                                     (let ()
                                       (declare (not safe))
                                       (_recur187829_
                                        _hd187864_
                                        _is-e?187835_)))
                                    (__tmp192935
                                     (let ()
                                       (declare (not safe))
                                       (_recur187829_
                                        _rest187898_
                                        _is-e?187835_))))
                                (declare (not safe))
                                (_make-splice187828_
                                 _e187834_
                                 _depth187899_
                                 __tmp192936
                                 __tmp192935))
                              (let ((__tmp192934
                                     (let ()
                                       (declare (not safe))
                                       (_recur187829_
                                        _hd187864_
                                        _is-e?187835_)))
                                    (__tmp192933
                                     (let ()
                                       (declare (not safe))
                                       (_recur187829_
                                        _rest187898_
                                        _is-e?187835_))))
                                (declare (not safe))
                                (_make-cons187827_ __tmp192934 __tmp192933))))
                      (let () (declare (not safe)) (_E187902187911_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E187902187911_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E187901187927_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E187843187852_))))))
                      (let () (declare (not safe)) (_E187843187852_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E187842187931_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e187834_))
                                                    (let ((_g192926_
                                                           (let ((__tmp192928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e187834_)))))
                     (declare (not safe))
                     (_recur187829_ __tmp192928 _is-e?187835_))))
              (begin
                (let ((_g192927_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g192926_)
                             (##vector-length _g192926_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g192927_ 2)))
                      (error "Context expects 2 values" _g192927_)))
                (let ((_e187935_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g192926_ 0)))
                      (_vars187936_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g192926_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e187935_))
                          _vars187936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e187834_))
                                                        (let ((_g192923_
                                                               (let ((__tmp192925
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e187834_)))))
                         (declare (not safe))
                         (_recur187829_ __tmp192925 _is-e?187835_))))
                  (begin
                    (let ((_g192924_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g192923_)
                                 (##vector-length _g192923_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g192924_ 2)))
                          (error "Context expects 2 values" _g192924_)))
                    (let ((_e187938_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g192923_ 0)))
                          (_vars187939_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g192923_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e187938_))
                              _vars187939_))))
                (values (let () (declare (not safe)) (cons 'datum _e187834_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g192939_
                             (let ()
                               (declare (not safe))
                               (_recur187829_ _e187825_ gx#ellipsis?))))
                        (begin
                          (let ((_g192940_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g192939_)
                                       (##vector-length _g192939_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g192940_ 2)))
                                (error "Context expects 2 values" _g192940_)))
                          (let ((_tree187831_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g192939_ 0)))
                                (_vars187832_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g192939_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars187832_))
                                _tree187831_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx187781_
                                   _vars187832_))))))))))
          (let* ((_e187785187795_ _stx187781_)
                 (_E187787187799_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx187781_))))
                 (_E187786187821_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e187785187795_))
                        (let ((_e187788187803_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e187785187795_))))
                          (let ((_hd187789187806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187788187803_)))
                                (_tl187790187808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187788187803_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl187790187808_))
                                (let ((_e187791187811_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl187790187808_))))
                                  (let ((_hd187792187814_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e187791187811_)))
                                        (_tl187793187816_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e187791187811_))))
                                    (let ((_form187819_ _hd187792187814_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl187793187816_))
                                          (if '#t
                                              (let ((__tmp192942
                                                     (let ((__tmp192943
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse187784_
                                                               _form187819_))))
                                                       (declare (not safe))
                                                       (_generate187783_
                                                        __tmp192943)))
                                                    (__tmp192941
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx187781_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp192942
                                                 __tmp192941))
                                              (let ()
                                                (declare (not safe))
                                                (_E187787187799_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E187787187799_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E187787187799_)))))
                        (let () (declare (not safe)) (_E187787187799_))))))
            (let () (declare (not safe)) (_E187786187821_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx187045_
               _identifier=?187046_
               _unwrap-e187047_
               _wrap-e187048_)
        (letrec ((_generate-bindings187050_
                  (lambda (_target187645_
                           _ids187646_
                           _clauses187647_
                           _clause-ids187648_
                           _E187649_)
                    (letrec ((_generate1187651_
                              (lambda (_clause187748_
                                       _clause-id187749_
                                       _E187750_)
                                (let ((__tmp192948
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id187749_ '())))
                                      (__tmp192944
                                       (let ((__tmp192945
                                              (let ((__tmp192947
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target187645_
                                                             '())))
                                                    (__tmp192946
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause187052_
                                                        _target187645_
                                                        _ids187646_
                                                        _clause187748_
                                                        _E187750_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp192947
                                                 __tmp192946))))
                                         (declare (not safe))
                                         (cons __tmp192945 '()))))
                                  (declare (not safe))
                                  (cons __tmp192948 __tmp192944)))))
                      (let _lp187653_ ((_rest187655_ _clauses187647_)
                                       (_rest-ids187656_ _clause-ids187648_)
                                       (_bindings187657_ '()))
                        (let* ((_rest187658187666_ _rest187655_)
                               (_else187660187674_
                                (lambda () _bindings187657_))
                               (_K187662187736_
                                (lambda (_rest187677_ _clause187678_)
                                  (let* ((_rest-ids187679187686_
                                          _rest-ids187656_)
                                         (_E187681187690_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids187679187686_)))
                                         (_K187682187724_
                                          (lambda (_rest-ids187693_
                                                   _clause-id187694_)
                                            (let* ((_rest-ids187695187703_
                                                    _rest-ids187693_)
                                                   (_else187697187711_
                                                    (lambda ()
                                                      (let ((__tmp192949
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1187651_
                        _clause187678_
                        _clause-id187694_
                        _E187649_))))
                (declare (not safe))
                (cons __tmp192949 _bindings187657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K187699187716_
                                                    (lambda (_next-clause-id187714_)
                                                      (let ((__tmp192950
                                                             (let ((__tmp192951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1187651_
                               _clause187678_
                               _clause-id187694_
                               _next-clause-id187714_))))
                       (declare (not safe))
                       (cons __tmp192951 _bindings187657_))))
                (declare (not safe))
                (_lp187653_ _rest187677_ _rest-ids187693_ __tmp192950)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids187695187703_))
                                                  (let* ((_hd187700187719_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids187695187703_)))
                                                         (_next-clause-id187722_
                                                          _hd187700187719_))
                                                    (declare (not safe))
                                                    (_K187699187716_
                                                     _next-clause-id187722_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else187697187711_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids187679187686_))
                                        (let ((_hd187683187727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids187679187686_)))
                                              (_tl187684187729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids187679187686_))))
                                          (let* ((_clause-id187732_
                                                  _hd187683187727_)
                                                 (_rest-ids187734_
                                                  _tl187684187729_))
                                            (declare (not safe))
                                            (_K187682187724_
                                             _rest-ids187734_
                                             _clause-id187732_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E187681187690_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest187658187666_))
                              (let ((_hd187663187739_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest187658187666_)))
                                    (_tl187664187741_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest187658187666_))))
                                (let* ((_clause187744_ _hd187663187739_)
                                       (_rest187746_ _tl187664187741_))
                                  (declare (not safe))
                                  (_K187662187736_
                                   _rest187746_
                                   _clause187744_)))
                              (let ()
                                (declare (not safe))
                                (_else187660187674_))))))))
                 (_generate-body187051_
                  (lambda (_bindings187605_ _body187606_)
                    (let _recur187608_ ((_rest187610_ _bindings187605_))
                      (let* ((_rest187611187619_ _rest187610_)
                             (_else187613187627_ (lambda () _body187606_))
                             (_K187615187633_
                              (lambda (_rest187630_ _hd187631_)
                                (let ((__tmp192953
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd187631_ '())))
                                      (__tmp192952
                                       (let ()
                                         (declare (not safe))
                                         (_recur187608_ _rest187630_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp192953
                                   __tmp192952)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest187611187619_))
                            (let ((_hd187616187636_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest187611187619_)))
                                  (_tl187617187638_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest187611187619_))))
                              (let* ((_hd187641_ _hd187616187636_)
                                     (_rest187643_ _tl187617187638_))
                                (declare (not safe))
                                (_K187615187633_ _rest187643_ _hd187641_)))
                            (let ()
                              (declare (not safe))
                              (_else187613187627_)))))))
                 (_generate-clause187052_
                  (lambda (_target187468_ _ids187469_ _clause187470_ _E187471_)
                    (letrec ((_generate1187473_
                              (lambda (_hd187560_ _fender187561_ _body187562_)
                                (let ((_g192954_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause187054_
                                          _hd187560_
                                          _ids187469_))))
                                  (begin
                                    (let ((_g192955_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192954_)
                                                 (##vector-length _g192954_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192955_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192955_)))
                                    (let ((_e187564_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192954_ 0)))
                                          (_mvars187565_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192954_ 1))))
                                      (let* ((_pvars187567_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars187565_))))
                                             (_E187569_
                                              (let ((__tmp192956
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target187468_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E187471_ __tmp192956)))
                                             (_K187602_
                                              (let ((__tmp192957
                                                     (let ((__tmp192959
                                                            (map (lambda (_mvar187571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar187572_)
                           (let* ((_mvar187573187580_ _mvar187571_)
                                  (_E187575187584_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar187573187580_)))
                                  (_K187576187590_
                                   (lambda (_depth187587_ _id187588_)
                                     (let ((__tmp192960
                                            (let ((__tmp192961
                                                   (let ((__tmp192963
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id187588_)))
                                                         (__tmp192962
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar187572_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp192963
                                                      __tmp192962
                                                      _depth187587_))))
                                              (declare (not safe))
                                              (cons __tmp192961 '()))))
                                       (declare (not safe))
                                       (cons _id187588_ __tmp192960)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar187573187580_))
                                 (let ((_hd187577187593_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar187573187580_)))
                                       (_tl187578187595_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar187573187580_))))
                                   (let* ((_id187598_ _hd187577187593_)
                                          (_depth187600_ _tl187578187595_))
                                     (declare (not safe))
                                     (_K187576187590_
                                      _depth187600_
                                      _id187598_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E187575187584_)))))
                         _mvars187565_
                         _pvars187567_))
                   (__tmp192958
                    (if (let () (declare (not safe)) (eq? _fender187561_ '#t))
                        _body187562_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender187561_
                           _body187562_
                           _E187569_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp192959 __tmp192958))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars187567_
                                                 __tmp192957))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match187053_
                                           _hd187560_
                                           _target187468_
                                           _e187564_
                                           _mvars187565_
                                           _K187602_
                                           _E187569_)))))))))
                      (let* ((_e187474187494_ _clause187470_)
                             (_E187483187498_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e187474187494_))))
                             (_E187476187532_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e187474187494_))
                                    (let ((_e187484187502_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e187474187494_))))
                                      (let ((_hd187485187505_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e187484187502_)))
                                            (_tl187486187507_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e187484187502_))))
                                        (let ((_hd187510_ _hd187485187505_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl187486187507_))
                                              (let ((_e187487187512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl187486187507_))))
                                                (let ((_hd187488187515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e187487187512_)))
                                                      (_tl187489187517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e187487187512_))))
                                                  (let ((_fender187520_
                                                         _hd187488187515_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl187489187517_))
                                                        (let ((_e187490187522_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl187489187517_))))
                  (let ((_hd187491187525_
                         (let () (declare (not safe)) (##car _e187490187522_)))
                        (_tl187492187527_
                         (let ()
                           (declare (not safe))
                           (##cdr _e187490187522_))))
                    (let ((_body187530_ _hd187491187525_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl187492187527_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1187473_
                                 _hd187510_
                                 _fender187520_
                                 _body187530_))
                              (let () (declare (not safe)) (_E187483187498_)))
                          (let () (declare (not safe)) (_E187483187498_))))))
                (let () (declare (not safe)) (_E187483187498_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E187483187498_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E187483187498_)))))
                             (_E187475187556_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e187474187494_))
                                    (let ((_e187477187536_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e187474187494_))))
                                      (let ((_hd187478187539_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e187477187536_)))
                                            (_tl187479187541_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e187477187536_))))
                                        (let ((_hd187544_ _hd187478187539_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl187479187541_))
                                              (let ((_e187480187546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl187479187541_))))
                                                (let ((_hd187481187549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e187480187546_)))
                                                      (_tl187482187551_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e187480187546_))))
                                                  (let ((_body187554_
                                                         _hd187481187549_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl187482187551_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1187473_
                                                               _hd187544_
                                                               '#t
                                                               _body187554_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E187476187532_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E187476187532_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E187476187532_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E187476187532_))))))
                        (let () (declare (not safe)) (_E187475187556_))))))
                 (_generate-match187053_
                  (lambda (_where187217_
                           _target187218_
                           _hd187219_
                           _mvars187220_
                           _K187221_
                           _E187222_)
                    (letrec ((_BUG187224_
                              (lambda (_q187466_)
                                (error '"BUG: syntax-case; generate"
                                       _stx187045_
                                       _hd187219_
                                       _q187466_)))
                             (_recur187225_
                              (lambda (_e187316_
                                       _vars187317_
                                       _target187318_
                                       _E187319_
                                       _k187320_)
                                (let* ((_e187321187328_ _e187316_)
                                       (_E187323187332_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e187321187328_)))
                                       (_K187324187454_
                                        (lambda (_body187335_ _tag187336_)
                                          (let ((_$e187338_ _tag187336_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e187338_))
                                                (_k187320_ _vars187317_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e187338_))
                                                    (let ((__tmp193070
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target187318_)))
                                                          (__tmp193066
                                                           (let ((__tmp193068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193069
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e187048_
                                    _body187335_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?187046_
                             __tmp193069
                             _target187318_)))
                         (__tmp193067 (_k187320_ _vars187317_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp193068 __tmp193067 _E187319_))))
              (declare (not safe))
              (gx#core-list 'if __tmp193070 __tmp193066 _E187319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e187338_))
                                                        (_k187320_
                                                         (let ((__tmp193065
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body187335_ _target187318_))))
                   (declare (not safe))
                   (cons __tmp193065 _vars187317_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e187338_))
                    (let ((_$e187341_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd187342_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl187343_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp193064
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target187318_)))
                            (__tmp193045
                             (let ((__tmp193059
                                    (let ((__tmp193060
                                           (let ((__tmp193063
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e187341_ '())))
                                                 (__tmp193061
                                                  (let ((__tmp193062
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e187047_
                                                            _target187318_))))
                                                    (declare (not safe))
                                                    (cons __tmp193062 '()))))
                                             (declare (not safe))
                                             (cons __tmp193063 __tmp193061))))
                                      (declare (not safe))
                                      (cons __tmp193060 '())))
                                   (__tmp193046
                                    (let ((__tmp193049
                                           (let ((__tmp193055
                                                  (let ((__tmp193058
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd187342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp193056
                 (let ((__tmp193057
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e187341_))))
                   (declare (not safe))
                   (cons __tmp193057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193058
                                                          __tmp193056)))
                                                 (__tmp193050
                                                  (let ((__tmp193051
                                                         (let ((__tmp193054
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl187343_ '())))
                       (__tmp193052
                        (let ((__tmp193053
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e187341_))))
                          (declare (not safe))
                          (cons __tmp193053 '()))))
                   (declare (not safe))
                   (cons __tmp193054 __tmp193052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193051 '()))))
                                             (declare (not safe))
                                             (cons __tmp193055 __tmp193050)))
                                          (__tmp193047
                                           (let* ((_body187344187351_
                                                   _body187335_)
                                                  (_E187346187355_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body187344187351_)))
                                                  (_K187347187363_
                                                   (lambda (_tl187358_
                                                            _hd187359_)
                                                     (let ((__tmp193048
                                                            (lambda (_vars187361_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur187225_
                         _tl187358_
                         _vars187361_
                         _$tl187343_
                         _E187319_
                         _k187320_)))))
               (declare (not safe))
               (_recur187225_
                _hd187359_
                _vars187317_
                _$hd187342_
                _E187319_
                __tmp193048)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body187344187351_))
                                                 (let ((_hd187348187366_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body187344187351_)))
                                                       (_tl187349187368_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body187344187351_))))
                                                   (let* ((_hd187371_
                                                           _hd187348187366_)
                                                          (_tl187373_
                                                           _tl187349187368_))
                                                     (declare (not safe))
                                                     (_K187347187363_
                                                      _tl187373_
                                                      _hd187371_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E187346187355_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp193049
                                       __tmp193047))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp193059
                                __tmp193046))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp193064 __tmp193045 _E187319_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e187338_))
                        (let* ((_body187374187381_ _body187335_)
                               (_E187376187385_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body187374187381_)))
                               (_K187377187436_
                                (lambda (_tl187388_ _hd187389_)
                                  (let* ((_rlen187391_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen187226_ _tl187388_)))
                                         (_$target187393_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd187395_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl187397_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp187399_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e187401_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd187403_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl187405_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars187407_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars187227_ _hd187389_)))
                                         (_lvars187409_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars187407_)))
                                         (_tlvars187411_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars187407_)))
                                         (_linit187415_
                                          (map (lambda (_var187413_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars187409_)))
                                    (letrec ((_make-loop187418_
                                              (lambda (_vars187422_)
                                                (let ((__tmp192996
                                                       (let ((__tmp192997
                                                              (let ((__tmp193033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp187399_ '())))
                            (__tmp192998
                             (let ((__tmp192999
                                    (let ((__tmp193032
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd187395_ _lvars187409_)))
                                          (__tmp193000
                                           (let ((__tmp193031
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd187395_)))
                                                 (__tmp193009
                                                  (let ((__tmp193026
                                                         (let ((__tmp193027
                                                                (let ((__tmp193030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e187401_ '())))
                              (__tmp193028
                               (let ((__tmp193029
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e187047_
                                         _$hd187395_))))
                                 (declare (not safe))
                                 (cons __tmp193029 '()))))
                          (declare (not safe))
                          (cons __tmp193030 __tmp193028))))
                   (declare (not safe))
                   (cons __tmp193027 '())))
                (__tmp193010
                 (let ((__tmp193016
                        (let ((__tmp193022
                               (let ((__tmp193025
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd187403_ '())))
                                     (__tmp193023
                                      (let ((__tmp193024
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e187401_))))
                                        (declare (not safe))
                                        (cons __tmp193024 '()))))
                                 (declare (not safe))
                                 (cons __tmp193025 __tmp193023)))
                              (__tmp193017
                               (let ((__tmp193018
                                      (let ((__tmp193021
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl187405_ '())))
                                            (__tmp193019
                                             (let ((__tmp193020
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e187401_))))
                                               (declare (not safe))
                                               (cons __tmp193020 '()))))
                                        (declare (not safe))
                                        (cons __tmp193021 __tmp193019))))
                                 (declare (not safe))
                                 (cons __tmp193018 '()))))
                          (declare (not safe))
                          (cons __tmp193022 __tmp193017)))
                       (__tmp193011
                        (let ((__tmp193012
                               (lambda (_hdvars187424_)
                                 (let ((__tmp193013
                                        (let ((__tmp193014
                                               (map (lambda (_svar187426_
                                                             _lvar187427_)
                                                      (let ((__tmp193015
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar187426_ _hdvars187424_ _BUG187224_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp193015 _lvar187427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars187407_
                                                    _lvars187409_)))
                                          (declare (not safe))
                                          (cons _$lp-tl187405_ __tmp193014))))
                                   (declare (not safe))
                                   (cons _$lp187399_ __tmp193013)))))
                          (declare (not safe))
                          (_recur187225_
                           _hd187389_
                           '()
                           _$lp-hd187403_
                           _E187319_
                           __tmp193012))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp193016 __tmp193011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp193026
                                                     __tmp193010)))
                                                 (__tmp193001
                                                  (let ((__tmp193005
                                                         (map (lambda (_lvar187429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar187430_)
                        (let ((__tmp193008
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar187430_ '())))
                              (__tmp193006
                               (let ((__tmp193007
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar187429_))))
                                 (declare (not safe))
                                 (cons __tmp193007 '()))))
                          (declare (not safe))
                          (cons __tmp193008 __tmp193006)))
                      _lvars187409_
                      _tlvars187411_))
                (__tmp193002
                 (_k187320_
                  (let ((__tmp193003
                         (lambda (_svar187432_ _tlvar187433_ _r187434_)
                           (let ((__tmp193004
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar187432_ _tlvar187433_))))
                             (declare (not safe))
                             (cons __tmp193004 _r187434_)))))
                    (declare (not safe))
                    (foldl2 __tmp193003
                            _vars187422_
                            _svars187407_
                            _tlvars187411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp193005
                                                     __tmp193002))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp193031
                                              __tmp193009
                                              __tmp193001))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp193032
                                       __tmp193000))))
                               (declare (not safe))
                               (cons __tmp192999 '()))))
                        (declare (not safe))
                        (cons __tmp193033 __tmp192998))))
                 (declare (not safe))
                 (cons __tmp192997 '())))
              (__tmp192994
               (let ((__tmp192995
                      (let ()
                        (declare (not safe))
                        (cons _$target187393_ _linit187415_))))
                 (declare (not safe))
                 (cons _$lp187399_ __tmp192995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp192996
                                                   __tmp192994)))))
                                      (let ((_body187420_
                                             (let ((__tmp193035
                                                    (let ((__tmp193036
                                                           (let ((__tmp193039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp193040
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl187397_ '()))))
                            (declare (not safe))
                            (cons _$target187393_ __tmp193040)))
                         (__tmp193037
                          (let ((__tmp193038
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target187318_
                                    _rlen187391_))))
                            (declare (not safe))
                            (cons __tmp193038 '()))))
                     (declare (not safe))
                     (cons __tmp193039 __tmp193037))))
              (declare (not safe))
              (cons __tmp193036 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp193034
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur187225_
                                                       _tl187388_
                                                       _vars187317_
                                                       _$tl187397_
                                                       _E187319_
                                                       _make-loop187418_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp193035
                                                __tmp193034))))
                                        (let ((__tmp193044
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target187318_)))
                                              (__tmp193041
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen187391_))
                                                   _body187420_
                                                   (let ((__tmp193042
                                                          (let ((__tmp193043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target187318_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp193043 _rlen187391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp193042
                                                      _body187420_
                                                      _E187319_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp193044
                                           __tmp193041
                                           _E187319_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body187374187381_))
                              (let ((_hd187378187439_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body187374187381_)))
                                    (_tl187379187441_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body187374187381_))))
                                (let* ((_hd187444_ _hd187378187439_)
                                       (_tl187446_ _tl187379187441_))
                                  (declare (not safe))
                                  (_K187377187436_ _tl187446_ _hd187444_)))
                              (let () (declare (not safe)) (_E187376187385_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e187338_))
                            (let ((__tmp192993
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target187318_)))
                                  (__tmp192992 (_k187320_ _vars187317_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp192993
                               __tmp192992
                               _E187319_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e187338_))
                                (let ((_$e187448_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp192991
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target187318_)))
                                        (__tmp192983
                                         (let ((__tmp192985
                                                (let ((__tmp192986
                                                       (let ((__tmp192990
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e187448_ '())))
                     (__tmp192987
                      (let ((__tmp192988
                             (let ((__tmp192989
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e187047_
                                       _target187318_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp192989))))
                        (declare (not safe))
                        (cons __tmp192988 '()))))
                 (declare (not safe))
                 (cons __tmp192990 __tmp192987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192986 '())))
                                               (__tmp192984
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur187225_
                                                   _body187335_
                                                   _vars187317_
                                                   _$e187448_
                                                   _E187319_
                                                   _k187320_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp192985
                                            __tmp192984))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp192991
                                     __tmp192983
                                     _E187319_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e187338_))
                                    (let ((_$e187450_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp192982
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target187318_)))
                                            (__tmp192974
                                             (let ((__tmp192976
                                                    (let ((__tmp192977
                                                           (let ((__tmp192981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e187450_ '())))
                         (__tmp192978
                          (let ((__tmp192979
                                 (let ((__tmp192980
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e187047_
                                           _target187318_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp192980))))
                            (declare (not safe))
                            (cons __tmp192979 '()))))
                     (declare (not safe))
                     (cons __tmp192981 __tmp192978))))
              (declare (not safe))
              (cons __tmp192977 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192975
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur187225_
                                                       _body187335_
                                                       _vars187317_
                                                       _$e187450_
                                                       _E187319_
                                                       _k187320_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192976
                                                __tmp192975))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp192982
                                         __tmp192974
                                         _E187319_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e187338_))
                                        (let ((_$e187452_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp192973
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target187318_)))
                                                (__tmp192964
                                                 (let ((__tmp192968
                                                        (let ((__tmp192969
                                                               (let ((__tmp192972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e187452_ '())))
                             (__tmp192970
                              (let ((__tmp192971
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target187318_))))
                                (declare (not safe))
                                (cons __tmp192971 '()))))
                         (declare (not safe))
                         (cons __tmp192972 __tmp192970))))
                  (declare (not safe))
                  (cons __tmp192969 '())))
               (__tmp192965
                (let ((__tmp192967
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e187452_ _body187335_)))
                      (__tmp192966 (_k187320_ _vars187317_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp192967 __tmp192966 _E187319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp192968
                                                    __tmp192965))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp192973
                                             __tmp192964
                                             _E187319_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG187224_ _e187316_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e187321187328_))
                                      (let ((_hd187325187457_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e187321187328_)))
                                            (_tl187326187459_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e187321187328_))))
                                        (let* ((_tag187462_ _hd187325187457_)
                                               (_body187464_ _tl187326187459_))
                                          (declare (not safe))
                                          (_K187324187454_
                                           _body187464_
                                           _tag187462_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E187323187332_))))))
                             (_splice-rlen187226_
                              (lambda (_e187278_)
                                (let _lp187280_ ((_e187282_ _e187278_)
                                                 (_n187283_ '0))
                                  (let* ((_e187284187291_ _e187282_)
                                         (_E187286187295_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e187284187291_)))
                                         (_K187287187304_
                                          (lambda (_body187298_ _tag187299_)
                                            (let ((_$e187301_ _tag187299_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e187301_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx187045_
                                                     _where187217_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e187301_))
                                                      (let ((__tmp193072
                                                             (cdr _body187298_))
                                                            (__tmp193071
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n187283_ '1))))
                (declare (not safe))
                (_lp187280_ __tmp193072 __tmp193071))
              _n187283_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e187284187291_))
                                        (let ((_hd187288187307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e187284187291_)))
                                              (_tl187289187309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e187284187291_))))
                                          (let* ((_tag187312_ _hd187288187307_)
                                                 (_body187314_
                                                  _tl187289187309_))
                                            (declare (not safe))
                                            (_K187287187304_
                                             _body187314_
                                             _tag187312_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E187286187295_)))))))
                             (_splice-vars187227_
                              (lambda (_e187234_)
                                (let _recur187236_ ((_e187238_ _e187234_)
                                                    (_vars187239_ '()))
                                  (let* ((_e187240187247_ _e187238_)
                                         (_E187242187251_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e187240187247_)))
                                         (_K187243187266_
                                          (lambda (_body187254_ _tag187255_)
                                            (let ((_$e187257_ _tag187255_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e187257_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body187254_
                                                          _vars187239_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e187257_))
                  (let () (declare (not safe)) (eq? 'splice _$e187257_)))
              (let ((__tmp193075 (cdr _body187254_))
                    (__tmp193073
                     (let ((__tmp193074 (car _body187254_)))
                       (declare (not safe))
                       (_recur187236_ __tmp193074 _vars187239_))))
                (declare (not safe))
                (_recur187236_ __tmp193075 __tmp193073))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e187257_))
                      (let () (declare (not safe)) (eq? 'box _$e187257_)))
                  (let ()
                    (declare (not safe))
                    (_recur187236_ _body187254_ _vars187239_))
                  _vars187239_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e187240187247_))
                                        (let ((_hd187244187269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e187240187247_)))
                                              (_tl187245187271_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e187240187247_))))
                                          (let* ((_tag187274_ _hd187244187269_)
                                                 (_body187276_
                                                  _tl187245187271_))
                                            (declare (not safe))
                                            (_K187243187266_
                                             _body187276_
                                             _tag187274_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E187242187251_)))))))
                             (_make-body187228_
                              (lambda (_vars187230_)
                                (let ((__tmp193076
                                       (map (lambda (_mvar187232_)
                                              (let ((__tmp193077
                                                     (car _mvar187232_)))
                                                (declare (not safe))
                                                (assgetq __tmp193077
                                                         _vars187230_
                                                         _BUG187224_)))
                                            _mvars187220_)))
                                  (declare (not safe))
                                  (cons _K187221_ __tmp193076)))))
                      (let ()
                        (declare (not safe))
                        (_recur187225_
                         _hd187219_
                         '()
                         _target187218_
                         _E187222_
                         _make-body187228_)))))
                 (_parse-clause187054_
                  (lambda (_hd187123_ _ids187124_)
                    (let _recur187126_ ((_e187128_ _hd187123_)
                                        (_vars187129_ '())
                                        (_depth187130_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e187128_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e187128_))
                              (values '(any) _vars187129_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e187128_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx187045_
                                     _hd187123_))
                                  (if (let ((__tmp193093
                                             (lambda (_id187132_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e187128_
                                                  _id187132_)))))
                                        (declare (not safe))
                                        (find __tmp193093 _ids187124_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e187128_))
                                              _vars187129_)
                                      (if (let ((__tmp193091
                                                 (lambda (_var187134_)
                                                   (let ((__tmp193092
                                                          (car _var187134_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e187128_
                                                      __tmp193092)))))
                                            (declare (not safe))
                                            (find __tmp193091 _vars187129_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx187045_
                                             _e187128_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e187128_))
                                                  (let ((__tmp193090
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e187128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth187130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193090
                                                          _vars187129_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e187128_))
                              (let* ((_e187135187142_ _e187128_)
                                     (_E187137187146_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e187135187142_))))
                                     (_E187136187207_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e187135187142_))
                                            (let ((_e187138187150_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e187135187142_))))
                                              (let ((_hd187139187153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e187138187150_)))
                                                    (_tl187140187155_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e187138187150_))))
                                                (let* ((_hd187158_
                                                        _hd187139187153_)
                                                       (_rest187160_
                                                        _tl187140187155_))
                                                  (if '#t
                                                      (let* ((_make-pair187175_
                                                              (lambda (_tag187162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd187163_
                               _tl187164_)
                        (let* ((_hd-depth187166_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag187162_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth187130_ '1))
                                    _depth187130_))
                               (_g193085_
                                (let ()
                                  (declare (not safe))
                                  (_recur187126_
                                   _hd187163_
                                   _vars187129_
                                   _hd-depth187166_))))
                          (begin
                            (let ((_g193086_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g193085_)
                                         (##vector-length _g193085_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g193086_ 2)))
                                  (error "Context expects 2 values"
                                         _g193086_)))
                            (let ((_hd187168_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g193085_ 0)))
                                  (_vars187169_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g193085_ 1))))
                              (let ((_g193087_
                                     (let ()
                                       (declare (not safe))
                                       (_recur187126_
                                        _tl187164_
                                        _vars187169_
                                        _depth187130_))))
                                (begin
                                  (let ((_g193088_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g193087_)
                                               (##vector-length _g193087_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g193088_ 2)))
                                        (error "Context expects 2 values"
                                               _g193088_)))
                                  (let ((_tl187171_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g193087_ 0)))
                                        (_vars187172_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g193087_ 1))))
                                    (let ()
                                      (values (let ((__tmp193089
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd187168_
                                                             _tl187171_))))
                                                (declare (not safe))
                                                (cons _tag187162_ __tmp193089))
                                              _vars187172_))))))))))
                     (_e187176187183_ _rest187160_)
                     (_E187178187187_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair187175_ 'cons _hd187158_ _rest187160_))))
                     (_E187177187203_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e187176187183_))
                            (let ((_e187179187191_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e187176187183_))))
                              (let ((_hd187180187194_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e187179187191_)))
                                    (_tl187181187196_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e187179187191_))))
                                (let* ((_rest-hd187199_ _hd187180187194_)
                                       (_rest-tl187201_ _tl187181187196_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd187199_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair187175_
                                             'splice
                                             _hd187158_
                                             _rest-tl187201_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair187175_
                                             'cons
                                             _hd187158_
                                             _rest187160_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E187178187187_))))))
                            (let () (declare (not safe)) (_E187178187187_))))))
                (let () (declare (not safe)) (_E187177187203_)))
              (let () (declare (not safe)) (_E187137187146_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E187137187146_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E187136187207_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e187128_))
                                  (values '(null) _vars187129_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e187128_))
                                      (let ((_g193082_
                                             (let ((__tmp193084
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e187128_)))))
                                               (declare (not safe))
                                               (_recur187126_
                                                __tmp193084
                                                _vars187129_
                                                _depth187130_))))
                                        (begin
                                          (let ((_g193083_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g193082_)
                                                       (##vector-length
                                                        _g193082_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g193083_ 2)))
                                                (error "Context expects 2 values"
                                                       _g193083_)))
                                          (let ((_e187211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g193082_ 0)))
                                                (_vars187212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g193082_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e187211_))
                                                    _vars187212_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e187128_))
                                          (let ((_g193079_
                                                 (let ((__tmp193081
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e187128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur187126_
                                                    __tmp193081
                                                    _vars187129_
                                                    _depth187130_))))
                                            (begin
                                              (let ((_g193080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g193079_)
                                                           (##vector-length
                                                            _g193079_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g193080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g193080_)))
                                              (let ((_e187214_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g193079_
                                                        0)))
                                                    (_vars187215_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g193079_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e187214_))
                                                        _vars187215_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e187128_))
                                              (values (let ((__tmp193078
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e187128_))))
                (declare (not safe))
                (cons 'datum __tmp193078))
              _vars187129_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx187045_
                                                 _e187128_))))))))))))
          (let* ((_e187055187068_ _stx187045_)
                 (_E187057187072_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e187055187068_))))
                 (_E187056187119_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e187055187068_))
                        (let ((_e187058187076_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e187055187068_))))
                          (let ((_hd187059187079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187058187076_)))
                                (_tl187060187081_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187058187076_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl187060187081_))
                                (let ((_e187061187084_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl187060187081_))))
                                  (let ((_hd187062187087_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e187061187084_)))
                                        (_tl187063187089_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e187061187084_))))
                                    (let ((_expr187092_ _hd187062187087_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl187063187089_))
                                          (let ((_e187064187094_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl187063187089_))))
                                            (let ((_hd187065187097_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e187064187094_)))
                                                  (_tl187066187099_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e187064187094_))))
                                              (let* ((_ids187102_
                                                      _hd187065187097_)
                                                     (_clauses187104_
                                                      _tl187066187099_))
                                                (if '#t
                                                    (if (let ((__tmp193111
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids187102_))))
                  (declare (not safe))
                  (not __tmp193111))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx187045_
                   _ids187102_))
                (if (let ((__tmp193110
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses187104_))))
                      (declare (not safe))
                      (not __tmp193110))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx187045_))
                    (let* ((_ids187106_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids187102_)))
                           (_clauses187108_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses187104_)))
                           (_clause-ids187110_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses187108_)))
                           (_E187112_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target187114_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first187116_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses187108_))
                                _E187112_
                                (car _clause-ids187110_))))
                      (let ((__tmp193095
                             (let ((__tmp193096
                                    (let ((__tmp193098
                                           (let ((__tmp193103
                                                  (let ((__tmp193104
                                                         (let ((__tmp193109
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E187112_ '())))
                       (__tmp193105
                        (let ((__tmp193106
                               (let ((__tmp193108
                                      (let ()
                                        (declare (not safe))
                                        (cons _target187114_ '())))
                                     (__tmp193107
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target187114_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp193108
                                  __tmp193107))))
                          (declare (not safe))
                          (cons __tmp193106 '()))))
                   (declare (not safe))
                   (cons __tmp193109 __tmp193105))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp193104 '())))
                                                 (__tmp193099
                                                  (let ((__tmp193102
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings187050_
                                                            _target187114_
                                                            _ids187106_
                                                            _clauses187108_
                                                            _clause-ids187110_
                                                            _E187112_)))
                                                        (__tmp193100
                                                         (let ((__tmp193101
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr187092_ '()))))
                   (declare (not safe))
                   (cons _first187116_ __tmp193101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body187051_
                                                     __tmp193102
                                                     __tmp193100))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp193103
                                              __tmp193099)))
                                          (__tmp193097
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx187045_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp193098
                                       __tmp193097))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp193096)))
                            (__tmp193094
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx187045_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp193095 __tmp193094)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E187057187072_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E187057187072_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E187057187072_)))))
                        (let () (declare (not safe)) (_E187057187072_))))))
            (let () (declare (not safe)) (_E187056187119_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx187755_)
        (let* ((_identifier=?187757_ 'free-identifier=?)
               (_unwrap-e187759_ 'syntax-e)
               (_wrap-e187761_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187755_
           _identifier=?187757_
           _unwrap-e187759_
           _wrap-e187761_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx187763_ _identifier=?187764_)
        (let* ((_unwrap-e187766_ 'syntax-e) (_wrap-e187768_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187763_
           _identifier=?187764_
           _unwrap-e187766_
           _wrap-e187768_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx187770_ _identifier=?187771_ _unwrap-e187772_)
        (let ((_wrap-e187774_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187770_
           _identifier=?187771_
           _unwrap-e187772_
           _wrap-e187774_))))
    (define gx#macro-expand-syntax-case
      (lambda _g193113_
        (let ((_g193112_ (let () (declare (not safe)) (##length _g193113_))))
          (cond ((let () (declare (not safe)) (##fx= _g193112_ 1))
                 (apply (lambda (_stx187755_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx187755_)))
                        _g193113_))
                ((let () (declare (not safe)) (##fx= _g193112_ 2))
                 (apply (lambda (_stx187763_ _identifier=?187764_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx187763_
                             _identifier=?187764_)))
                        _g193113_))
                ((let () (declare (not safe)) (##fx= _g193112_ 3))
                 (apply (lambda (_stx187770_
                                 _identifier=?187771_
                                 _unwrap-e187772_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx187770_
                             _identifier=?187771_
                             _unwrap-e187772_)))
                        _g193113_))
                ((let () (declare (not safe)) (##fx= _g193112_ 4))
                 (apply (lambda (_stx187776_
                                 _identifier=?187777_
                                 _unwrap-e187778_
                                 _wrap-e187779_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx187776_
                             _identifier=?187777_
                             _unwrap-e187778_
                             _wrap-e187779_)))
                        _g193113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g193113_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx187042_)
        (if (let () (declare (not safe)) (gx#identifier? _stx187042_))
            (let ((__tmp193114
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx187042_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp193114 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd187000_ . _rest187001_)
        (let ((_len187003_ (length _hd187000_)))
          (let _lp187005_ ((_rest187007_ _rest187001_))
            (let* ((_rest187008187016_ _rest187007_)
                   (_else187010187024_ (lambda () '#!void))
                   (_K187012187030_
                    (lambda (_rest187027_ _hd187028_)
                      (if (fx= _len187003_ (length _hd187028_))
                          (let ()
                            (declare (not safe))
                            (_lp187005_ _rest187027_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd187028_))))))
              (if (let () (declare (not safe)) (##pair? _rest187008187016_))
                  (let ((_hd187013187033_
                         (let ()
                           (declare (not safe))
                           (##car _rest187008187016_)))
                        (_tl187014187035_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest187008187016_))))
                    (let* ((_hd187038_ _hd187013187033_)
                           (_rest187040_ _tl187014187035_))
                      (declare (not safe))
                      (_K187012187030_ _rest187040_ _hd187038_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx186958_ _n186959_)
        (let _lp186961_ ((_rest186963_ _stx186958_) (_r186964_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest186963_))
              (let* ((_g186965186972_
                      (let () (declare (not safe)) (gx#syntax-e _rest186963_)))
                     (_E186967186976_
                      (lambda ()
                        (error '"No clause matching" _g186965186972_)))
                     (_K186968186982_
                      (lambda (_rest186979_ _hd186980_)
                        (let ((__tmp193119
                               (let ()
                                 (declare (not safe))
                                 (cons _hd186980_ _r186964_))))
                          (declare (not safe))
                          (_lp186961_ _rest186979_ __tmp193119)))))
                (if (let () (declare (not safe)) (##pair? _g186965186972_))
                    (let ((_hd186969186985_
                           (let ()
                             (declare (not safe))
                             (##car _g186965186972_)))
                          (_tl186970186987_
                           (let ()
                             (declare (not safe))
                             (##cdr _g186965186972_))))
                      (let* ((_hd186990_ _hd186969186985_)
                             (_rest186992_ _tl186970186987_))
                        (declare (not safe))
                        (_K186968186982_ _rest186992_ _hd186990_)))
                    (let () (declare (not safe)) (_E186967186976_))))
              (let _lp186994_ ((_n186996_ _n186959_)
                               (_l186997_ _r186964_)
                               (_r186998_ _rest186963_))
                (if (let () (declare (not safe)) (null? _l186997_))
                    (values _l186997_ _r186998_)
                    (if (fxpositive? _n186996_)
                        (let ((__tmp193118
                               (let ()
                                 (declare (not safe))
                                 (fx- _n186996_ '1)))
                              (__tmp193117 (cdr _l186997_))
                              (__tmp193115
                               (let ((__tmp193116 (car _l186997_)))
                                 (declare (not safe))
                                 (cons __tmp193116 _r186998_))))
                          (declare (not safe))
                          (_lp186994_ __tmp193118 __tmp193117 __tmp193115))
                        (values (reverse _l186997_) _r186998_))))))))))
