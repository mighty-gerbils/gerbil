(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707767844)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp184827 (list gx#expander::t))
            (__tmp184825
             (let ((__tmp184826
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp184826 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp184827
         '(id depth)
         __tmp184825
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180254_
        (apply make-instance gx#syntax-pattern::t _$args180254_)))
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
      (lambda (_self180251_ _stx180252_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180252_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx179733_)
        (letrec ((_generate179735_
                  (lambda (_e179962_)
                    (letrec ((_BUG179964_
                              (lambda (_q180126_)
                                (error '"BUG: syntax; generate"
                                       _stx179733_
                                       _e179962_
                                       _q180126_)))
                             (_local-pattern-e179965_
                              (lambda (_pat180124_)
                                (let ((__tmp184828
                                       (##structure-ref
                                        _pat180124_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp184828))))
                             (_getvar179966_
                              (lambda (_q180121_ _vars180122_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180121_
                                           _vars180122_
                                           _BUG179964_))))
                             (_getarg179967_
                              (lambda (_arg180087_ _vars180088_)
                                (let* ((_arg180089180096_ _arg180087_)
                                       (_E180091180100_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180089180096_)))
                                       (_K180092180109_
                                        (lambda (_e180103_ _tag180104_)
                                          (let ((_$e180106_ _tag180104_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180106_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar179966_
                                                   _e180103_
                                                   _vars180088_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180106_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e179965_
                                                       _e180103_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG179964_
                                                       _arg180087_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180089180096_))
                                      (let ((_hd180093180112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180089180096_)))
                                            (_tl180094180114_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180089180096_))))
                                        (let* ((_tag180117_ _hd180093180112_)
                                               (_e180119_ _tl180094180114_))
                                          (declare (not safe))
                                          (_K180092180109_
                                           _e180119_
                                           _tag180117_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180091180100_)))))))
                      (let _recur179969_ ((_e179971_ _e179962_)
                                          (_vars179972_ '()))
                        (let* ((_e179973179980_ _e179971_)
                               (_E179975179984_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e179973179980_)))
                               (_K179976180075_
                                (lambda (_body179987_ _tag179988_)
                                  (let ((_$e179990_ _tag179988_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179990_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body179987_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e179990_))
                                            (let ((_id179993_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body179987_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id179993_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks179995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id179993_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks179995_))
                                                        (let ((__tmp184856
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body179987_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp184856))
                (let ((__tmp184855
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body179987_)))
                      (__tmp184854
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body179987_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp184855
                   __tmp184854
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id179993_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body179987_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG179964_
                                                         _e179971_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e179990_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e179965_
                                                   _body179987_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e179990_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar179966_
                                                       _body179987_
                                                       _vars179972_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e179990_))
                                                        (let ((__tmp184852
                                                               (let ((__tmp184853
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body179987_)))
                         (declare (not safe))
                         (_recur179969_ __tmp184853 _vars179972_)))
                      (__tmp184850
                       (let ((__tmp184851 (cdr _body179987_)))
                         (declare (not safe))
                         (_recur179969_ __tmp184851 _vars179972_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp184852 __tmp184850))
                (if (let () (declare (not safe)) (eq? 'vector _$e179990_))
                    (let ((__tmp184849
                           (let ()
                             (declare (not safe))
                             (_recur179969_ _body179987_ _vars179972_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp184849))
                    (if (let () (declare (not safe)) (eq? 'box _$e179990_))
                        (let ((__tmp184848
                               (let ()
                                 (declare (not safe))
                                 (_recur179969_ _body179987_ _vars179972_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp184848))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e179990_))
                            (let* ((_body179996180007_ _body179987_)
                                   (_E179998180011_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body179996180007_)))
                                   (_K179999180049_
                                    (lambda (_args180014_
                                             _iv180015_
                                             _hd180016_
                                             _depth180017_)
                                      (let* ((_targets180023_
                                              (map (lambda (_g180018180020_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg179967_
                                                        _g180018180020_
                                                        _vars179972_)))
                                                   _args180014_))
                                             (_fold-in180025_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args180014_)))
                                             (_fold-out180027_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args180029_
                                              (let ((__tmp184829
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out180027_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp184829
                                                        _fold-in180025_)))
                                             (_lambda-body180046_
                                              (if (fx> _depth180017_ '1)
                                                  (let ((_r-args180037_
                                                         (map (lambda (_arg180031_)
                                                                (let ((__tmp184834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg180031_)))
                          (declare (not safe))
                          (cons 'ref __tmp184834)))
                      _args180014_))
                (_r-vars180038_
                 (let ((__tmp184835
                        (lambda (_arg180033_ _var180034_ _r180035_)
                          (let ((__tmp184836
                                 (let ((__tmp184837 (cdr _arg180033_)))
                                   (declare (not safe))
                                   (cons __tmp184837 _var180034_))))
                            (declare (not safe))
                            (cons __tmp184836 _r180035_)))))
                   (declare (not safe))
                   (foldr2 __tmp184835
                           _vars179972_
                           _args180014_
                           _fold-in180025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp184838
                                                           (let ((__tmp184839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184843
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth180017_ '1)))
                                (__tmp184840
                                 (let ((__tmp184841
                                        (let ((__tmp184842
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out180027_))))
                                          (declare (not safe))
                                          (cons __tmp184842 _r-args180037_))))
                                   (declare (not safe))
                                   (cons _hd180016_ __tmp184841))))
                            (declare (not safe))
                            (cons __tmp184843 __tmp184840))))
                     (declare (not safe))
                     (cons 'splice __tmp184839))))
              (declare (not safe))
              (_recur179969_ __tmp184838 _r-vars180038_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180044_
                                                          (let ((__tmp184830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180040_ _var180041_ _r180042_)
                           (let ((__tmp184831
                                  (let ((__tmp184832 (cdr _arg180040_)))
                                    (declare (not safe))
                                    (cons __tmp184832 _var180041_))))
                             (declare (not safe))
                             (cons __tmp184831 _r180042_)))))
                    (declare (not safe))
                    (foldr2 __tmp184830
                            _vars179972_
                            _args180014_
                            _fold-in180025_)))
                 (__tmp184833
                  (let ()
                    (declare (not safe))
                    (_recur179969_ _hd180016_ _hd-vars180044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp184833
                                                     _fold-out180027_)))))
                                        (let ((__tmp184847
                                               (if (fx> (length _targets180023_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets180023_))
                                                   '#!void))
                                              (__tmp184844
                                               (let ((__tmp184846
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args180029_
                                                         _lambda-body180046_)))
                                                     (__tmp184845
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur179969_
                                                         _iv180015_
                                                         _vars179972_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp184846
                                                  __tmp184845
                                                  _targets180023_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp184847
                                           __tmp184844))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body179996180007_))
                                  (let ((_hd180000180052_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body179996180007_)))
                                        (_tl180001180054_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body179996180007_))))
                                    (let ((_depth180057_ _hd180000180052_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl180001180054_))
                                          (let ((_hd180002180059_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl180001180054_)))
                                                (_tl180003180061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl180001180054_))))
                                            (let ((_hd180064_
                                                   _hd180002180059_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl180003180061_))
                                                  (let ((_hd180004180066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl180003180061_)))
                                                        (_tl180005180068_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl180003180061_))))
                                                    (let* ((_iv180071_
                                                            _hd180004180066_)
                                                           (_args180073_
                                                            _tl180005180068_))
                                                      (declare (not safe))
                                                      (_K179999180049_
                                                       _args180073_
                                                       _iv180071_
                                                       _hd180064_
                                                       _depth180057_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179998180011_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179998180011_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E179998180011_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e179990_))
                                _body179987_
                                (let ()
                                  (declare (not safe))
                                  (_BUG179964_ _e179971_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e179973179980_))
                              (let ((_hd179977180078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179973179980_)))
                                    (_tl179978180080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179973179980_))))
                                (let* ((_tag180083_ _hd179977180078_)
                                       (_body180085_ _tl179978180080_))
                                  (declare (not safe))
                                  (_K179976180075_ _body180085_ _tag180083_)))
                              (let ()
                                (declare (not safe))
                                (_E179975179984_))))))))
                 (_parse179736_
                  (lambda (_e179777_)
                    (letrec ((_make-cons179779_
                              (lambda (_hd179954_ _tl179955_)
                                (let ((_g184857_ _hd179954_)
                                      (_g184859_ _tl179955_))
                                  (begin
                                    (let ((_g184858_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184857_)
                                                 (##vector-length _g184857_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184858_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184858_)))
                                    (let ((_g184860_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184859_)
                                                 (##vector-length _g184859_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184860_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184860_)))
                                    (let ((_hd-e179957_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184857_ 0)))
                                          (_hd-vars179958_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184857_ 1))))
                                      (let ((_tl-e179959_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184859_ 0)))
                                            (_tl-vars179960_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184859_ 1))))
                                        (values (let ((__tmp184861
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e179957_
                                                               _tl-e179959_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp184861))
                                                (append _hd-vars179958_
                                                        _tl-vars179960_))))))))
                             (_make-splice179780_
                              (lambda (_where179893_
                                       _depth179894_
                                       _hd179895_
                                       _tl179896_)
                                (let ((_g184862_ _hd179895_)
                                      (_g184864_ _tl179896_))
                                  (begin
                                    (let ((_g184863_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184862_)
                                                 (##vector-length _g184862_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184863_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184863_)))
                                    (let ((_g184865_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184864_)
                                                 (##vector-length _g184864_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184865_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184865_)))
                                    (let ((_hd-e179898_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184862_ 0)))
                                          (_hd-vars179899_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184862_ 1))))
                                      (let ((_tl-e179900_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184864_ 0)))
                                            (_tl-vars179901_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g184864_ 1))))
                                        (let _lp179903_ ((_rest179905_
                                                          _hd-vars179899_)
                                                         (_targets179906_ '())
                                                         (_vars179907_
                                                          _tl-vars179901_))
                                          (let* ((_rest179908179918_
                                                  _rest179905_)
                                                 (_else179910179926_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets179906_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx179733_
                                                           _where179893_))
                                                        (values (let ((__tmp184866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp184867
                                      (let ((__tmp184868
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e179900_
                                                     _targets179906_))))
                                        (declare (not safe))
                                        (cons _hd-e179898_ __tmp184868))))
                                 (declare (not safe))
                                 (cons _depth179894_ __tmp184867))))
                          (declare (not safe))
                          (cons 'splice __tmp184866))
                        _vars179907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K179912179935_
                                                  (lambda (_rest179929_
                                                           _hd-pat179930_
                                                           _hd-depth*179931_)
                                                    (let ((_hd-depth179933_
                                                           (fx- _hd-depth*179931_
                                                                _depth179894_)))
                                                      (if (fxpositive?
                                                           _hd-depth179933_)
                                                          (let ((__tmp184873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp184874
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat179930_))))
                           (declare (not safe))
                           (cons __tmp184874 _targets179906_)))
                        (__tmp184871
                         (let ((__tmp184872
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth179933_ _hd-pat179930_))))
                           (declare (not safe))
                           (cons __tmp184872 _vars179907_))))
                    (declare (not safe))
                    (_lp179903_ _rest179929_ __tmp184873 __tmp184871))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth179933_))
                      (let ((__tmp184869
                             (let ((__tmp184870
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat179930_))))
                               (declare (not safe))
                               (cons __tmp184870 _targets179906_))))
                        (declare (not safe))
                        (_lp179903_ _rest179929_ __tmp184869 _vars179907_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx179733_
                         _where179893_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest179908179918_))
                                                (let ((_hd179913179938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest179908179918_)))
                                                      (_tl179914179940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest179908179918_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd179913179938_))
                                                      (let ((_hd179915179943_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd179913179938_)))
                    (_tl179916179945_
                     (let () (declare (not safe)) (##cdr _hd179913179938_))))
                (let* ((_hd-depth*179948_ _hd179915179943_)
                       (_hd-pat179950_ _tl179916179945_)
                       (_rest179952_ _tl179914179940_))
                  (declare (not safe))
                  (_K179912179935_
                   _rest179952_
                   _hd-pat179950_
                   _hd-depth*179948_)))
              (let () (declare (not safe)) (_else179910179926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else179910179926_)))))))))))
                             (_recur179781_
                              (lambda (_e179786_ _is-e?179787_)
                                (if (_is-e?179787_ _e179786_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx179733_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e179786_))
                                        (let* ((_pat179789_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e179786_)))
                                               (_depth179791_
                                                (##structure-ref
                                                 _pat179789_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth179791_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat179789_))
                                                      (let ((__tmp184890
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth179791_ _pat179789_))))
                (declare (not safe))
                (cons __tmp184890 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat179789_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e179786_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e179786_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e179786_))
                                                (let* ((_e179793179800_
                                                        _e179786_)
                                                       (_E179795179804_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e179793179800_))))
                                                       (_E179794179883_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e179793179800_))
                      (let ((_e179796179808_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e179793179800_))))
                        (let ((_hd179797179811_
                               (let ()
                                 (declare (not safe))
                                 (##car _e179796179808_)))
                              (_tl179798179813_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e179796179808_))))
                          (let* ((_hd179816_ _hd179797179811_)
                                 (_rest179818_ _tl179798179813_))
                            (if '#t
                                (if (_is-e?179787_ _hd179816_)
                                    (let* ((_e179819179826_ _rest179818_)
                                           (_E179821179830_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx179733_
                                                 _e179786_))))
                                           (_E179820179844_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e179819179826_))
                                                  (let ((_e179822179834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e179819179826_))))
                                                    (let ((_hd179823179837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e179822179834_)))
                                                          (_tl179824179839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e179822179834_))))
                                                      (let ((_rest179842_
                                                             _hd179823179837_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl179824179839_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur179781_ _rest179842_ false))
                        (let () (declare (not safe)) (_E179821179830_)))
                    (let () (declare (not safe)) (_E179821179830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179821179830_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E179820179844_)))
                                    (let _lp179848_ ((_rest179850_
                                                      _rest179818_)
                                                     (_depth179851_ '0))
                                      (let* ((_e179852179859_ _rest179850_)
                                             (_E179854179863_
                                              (lambda ()
                                                (if (fxpositive? _depth179851_)
                                                    (let ((__tmp184884
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179781_
                                                              _hd179816_
                                                              _is-e?179787_)))
                                                          (__tmp184883
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179781_
                                                              _rest179850_
                                                              _is-e?179787_))))
                                                      (declare (not safe))
                                                      (_make-splice179780_
                                                       _e179786_
                                                       _depth179851_
                                                       __tmp184884
                                                       __tmp184883))
                                                    (let ((__tmp184882
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179781_
                                                              _hd179816_
                                                              _is-e?179787_)))
                                                          (__tmp184881
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur179781_
                                                              _rest179850_
                                                              _is-e?179787_))))
                                                      (declare (not safe))
                                                      (_make-cons179779_
                                                       __tmp184882
                                                       __tmp184881)))))
                                             (_E179853179879_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e179852179859_))
                                                    (let ((_e179855179867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e179852179859_))))
                                                      (let ((_hd179856179870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e179855179867_)))
                    (_tl179857179872_
                     (let () (declare (not safe)) (##cdr _e179855179867_))))
                (let* ((_rest-hd179875_ _hd179856179870_)
                       (_rest-tl179877_ _tl179857179872_))
                  (if '#t
                      (if (_is-e?179787_ _rest-hd179875_)
                          (let ((__tmp184889
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth179851_ '1))))
                            (declare (not safe))
                            (_lp179848_ _rest-tl179877_ __tmp184889))
                          (if (fxpositive? _depth179851_)
                              (let ((__tmp184888
                                     (let ()
                                       (declare (not safe))
                                       (_recur179781_
                                        _hd179816_
                                        _is-e?179787_)))
                                    (__tmp184887
                                     (let ()
                                       (declare (not safe))
                                       (_recur179781_
                                        _rest179850_
                                        _is-e?179787_))))
                                (declare (not safe))
                                (_make-splice179780_
                                 _e179786_
                                 _depth179851_
                                 __tmp184888
                                 __tmp184887))
                              (let ((__tmp184886
                                     (let ()
                                       (declare (not safe))
                                       (_recur179781_
                                        _hd179816_
                                        _is-e?179787_)))
                                    (__tmp184885
                                     (let ()
                                       (declare (not safe))
                                       (_recur179781_
                                        _rest179850_
                                        _is-e?179787_))))
                                (declare (not safe))
                                (_make-cons179779_ __tmp184886 __tmp184885))))
                      (let () (declare (not safe)) (_E179854179863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179854179863_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E179853179879_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E179795179804_))))))
                      (let () (declare (not safe)) (_E179795179804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E179794179883_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e179786_))
                                                    (let ((_g184878_
                                                           (let ((__tmp184880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e179786_)))))
                     (declare (not safe))
                     (_recur179781_ __tmp184880 _is-e?179787_))))
              (begin
                (let ((_g184879_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g184878_)
                             (##vector-length _g184878_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g184879_ 2)))
                      (error "Context expects 2 values" _g184879_)))
                (let ((_e179887_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184878_ 0)))
                      (_vars179888_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g184878_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e179887_))
                          _vars179888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e179786_))
                                                        (let ((_g184875_
                                                               (let ((__tmp184877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e179786_)))))
                         (declare (not safe))
                         (_recur179781_ __tmp184877 _is-e?179787_))))
                  (begin
                    (let ((_g184876_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g184875_)
                                 (##vector-length _g184875_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g184876_ 2)))
                          (error "Context expects 2 values" _g184876_)))
                    (let ((_e179890_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184875_ 0)))
                          (_vars179891_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g184875_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e179890_))
                              _vars179891_))))
                (values (let () (declare (not safe)) (cons 'datum _e179786_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g184891_
                             (let ()
                               (declare (not safe))
                               (_recur179781_ _e179777_ gx#ellipsis?))))
                        (begin
                          (let ((_g184892_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g184891_)
                                       (##vector-length _g184891_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g184892_ 2)))
                                (error "Context expects 2 values" _g184892_)))
                          (let ((_tree179783_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184891_ 0)))
                                (_vars179784_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g184891_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars179784_))
                                _tree179783_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx179733_
                                   _vars179784_))))))))))
          (let* ((_e179737179747_ _stx179733_)
                 (_E179739179751_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx179733_))))
                 (_E179738179773_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179737179747_))
                        (let ((_e179740179755_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179737179747_))))
                          (let ((_hd179741179758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179740179755_)))
                                (_tl179742179760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179740179755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179742179760_))
                                (let ((_e179743179763_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179742179760_))))
                                  (let ((_hd179744179766_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179743179763_)))
                                        (_tl179745179768_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179743179763_))))
                                    (let ((_form179771_ _hd179744179766_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl179745179768_))
                                          (if '#t
                                              (let ((__tmp184894
                                                     (let ((__tmp184895
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse179736_
                                                               _form179771_))))
                                                       (declare (not safe))
                                                       (_generate179735_
                                                        __tmp184895)))
                                                    (__tmp184893
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx179733_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp184894
                                                 __tmp184893))
                                              (let ()
                                                (declare (not safe))
                                                (_E179739179751_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E179739179751_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179739179751_)))))
                        (let () (declare (not safe)) (_E179739179751_))))))
            (let () (declare (not safe)) (_E179738179773_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx178997_
               _identifier=?178998_
               _unwrap-e178999_
               _wrap-e179000_)
        (letrec ((_generate-bindings179002_
                  (lambda (_target179597_
                           _ids179598_
                           _clauses179599_
                           _clause-ids179600_
                           _E179601_)
                    (letrec ((_generate1179603_
                              (lambda (_clause179700_
                                       _clause-id179701_
                                       _E179702_)
                                (let ((__tmp184900
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id179701_ '())))
                                      (__tmp184896
                                       (let ((__tmp184897
                                              (let ((__tmp184899
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179597_
                                                             '())))
                                                    (__tmp184898
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause179004_
                                                        _target179597_
                                                        _ids179598_
                                                        _clause179700_
                                                        _E179702_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp184899
                                                 __tmp184898))))
                                         (declare (not safe))
                                         (cons __tmp184897 '()))))
                                  (declare (not safe))
                                  (cons __tmp184900 __tmp184896)))))
                      (let _lp179605_ ((_rest179607_ _clauses179599_)
                                       (_rest-ids179608_ _clause-ids179600_)
                                       (_bindings179609_ '()))
                        (let* ((_rest179610179618_ _rest179607_)
                               (_else179612179626_
                                (lambda () _bindings179609_))
                               (_K179614179688_
                                (lambda (_rest179629_ _clause179630_)
                                  (let* ((_rest-ids179631179638_
                                          _rest-ids179608_)
                                         (_E179633179642_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids179631179638_)))
                                         (_K179634179676_
                                          (lambda (_rest-ids179645_
                                                   _clause-id179646_)
                                            (let* ((_rest-ids179647179655_
                                                    _rest-ids179645_)
                                                   (_else179649179663_
                                                    (lambda ()
                                                      (let ((__tmp184901
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1179603_
                        _clause179630_
                        _clause-id179646_
                        _E179601_))))
                (declare (not safe))
                (cons __tmp184901 _bindings179609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K179651179668_
                                                    (lambda (_next-clause-id179666_)
                                                      (let ((__tmp184902
                                                             (let ((__tmp184903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1179603_
                               _clause179630_
                               _clause-id179646_
                               _next-clause-id179666_))))
                       (declare (not safe))
                       (cons __tmp184903 _bindings179609_))))
                (declare (not safe))
                (_lp179605_ _rest179629_ _rest-ids179645_ __tmp184902)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids179647179655_))
                                                  (let* ((_hd179652179671_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids179647179655_)))
                                                         (_next-clause-id179674_
                                                          _hd179652179671_))
                                                    (declare (not safe))
                                                    (_K179651179668_
                                                     _next-clause-id179674_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else179649179663_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids179631179638_))
                                        (let ((_hd179635179679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids179631179638_)))
                                              (_tl179636179681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids179631179638_))))
                                          (let* ((_clause-id179684_
                                                  _hd179635179679_)
                                                 (_rest-ids179686_
                                                  _tl179636179681_))
                                            (declare (not safe))
                                            (_K179634179676_
                                             _rest-ids179686_
                                             _clause-id179684_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179633179642_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest179610179618_))
                              (let ((_hd179615179691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest179610179618_)))
                                    (_tl179616179693_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest179610179618_))))
                                (let* ((_clause179696_ _hd179615179691_)
                                       (_rest179698_ _tl179616179693_))
                                  (declare (not safe))
                                  (_K179614179688_
                                   _rest179698_
                                   _clause179696_)))
                              (let ()
                                (declare (not safe))
                                (_else179612179626_))))))))
                 (_generate-body179003_
                  (lambda (_bindings179557_ _body179558_)
                    (let _recur179560_ ((_rest179562_ _bindings179557_))
                      (let* ((_rest179563179571_ _rest179562_)
                             (_else179565179579_ (lambda () _body179558_))
                             (_K179567179585_
                              (lambda (_rest179582_ _hd179583_)
                                (let ((__tmp184905
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd179583_ '())))
                                      (__tmp184904
                                       (let ()
                                         (declare (not safe))
                                         (_recur179560_ _rest179582_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp184905
                                   __tmp184904)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest179563179571_))
                            (let ((_hd179568179588_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest179563179571_)))
                                  (_tl179569179590_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest179563179571_))))
                              (let* ((_hd179593_ _hd179568179588_)
                                     (_rest179595_ _tl179569179590_))
                                (declare (not safe))
                                (_K179567179585_ _rest179595_ _hd179593_)))
                            (let ()
                              (declare (not safe))
                              (_else179565179579_)))))))
                 (_generate-clause179004_
                  (lambda (_target179420_ _ids179421_ _clause179422_ _E179423_)
                    (letrec ((_generate1179425_
                              (lambda (_hd179512_ _fender179513_ _body179514_)
                                (let ((_g184906_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause179006_
                                          _hd179512_
                                          _ids179421_))))
                                  (begin
                                    (let ((_g184907_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g184906_)
                                                 (##vector-length _g184906_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g184907_ 2)))
                                          (error "Context expects 2 values"
                                                 _g184907_)))
                                    (let ((_e179516_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184906_ 0)))
                                          (_mvars179517_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g184906_ 1))))
                                      (let* ((_pvars179519_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars179517_))))
                                             (_E179521_
                                              (let ((__tmp184908
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target179420_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E179423_ __tmp184908)))
                                             (_K179554_
                                              (let ((__tmp184909
                                                     (let ((__tmp184911
                                                            (map (lambda (_mvar179523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar179524_)
                           (let* ((_mvar179525179532_ _mvar179523_)
                                  (_E179527179536_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar179525179532_)))
                                  (_K179528179542_
                                   (lambda (_depth179539_ _id179540_)
                                     (let ((__tmp184912
                                            (let ((__tmp184913
                                                   (let ((__tmp184915
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id179540_)))
                                                         (__tmp184914
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar179524_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp184915
                                                      __tmp184914
                                                      _depth179539_))))
                                              (declare (not safe))
                                              (cons __tmp184913 '()))))
                                       (declare (not safe))
                                       (cons _id179540_ __tmp184912)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar179525179532_))
                                 (let ((_hd179529179545_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar179525179532_)))
                                       (_tl179530179547_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar179525179532_))))
                                   (let* ((_id179550_ _hd179529179545_)
                                          (_depth179552_ _tl179530179547_))
                                     (declare (not safe))
                                     (_K179528179542_
                                      _depth179552_
                                      _id179550_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E179527179536_)))))
                         _mvars179517_
                         _pvars179519_))
                   (__tmp184910
                    (if (let () (declare (not safe)) (eq? _fender179513_ '#t))
                        _body179514_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender179513_
                           _body179514_
                           _E179521_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp184911 __tmp184910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars179519_
                                                 __tmp184909))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match179005_
                                           _hd179512_
                                           _target179420_
                                           _e179516_
                                           _mvars179517_
                                           _K179554_
                                           _E179521_)))))))))
                      (let* ((_e179426179446_ _clause179422_)
                             (_E179435179450_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e179426179446_))))
                             (_E179428179484_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179426179446_))
                                    (let ((_e179436179454_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179426179446_))))
                                      (let ((_hd179437179457_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179436179454_)))
                                            (_tl179438179459_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179436179454_))))
                                        (let ((_hd179462_ _hd179437179457_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179438179459_))
                                              (let ((_e179439179464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179438179459_))))
                                                (let ((_hd179440179467_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179439179464_)))
                                                      (_tl179441179469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179439179464_))))
                                                  (let ((_fender179472_
                                                         _hd179440179467_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl179441179469_))
                                                        (let ((_e179442179474_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl179441179469_))))
                  (let ((_hd179443179477_
                         (let () (declare (not safe)) (##car _e179442179474_)))
                        (_tl179444179479_
                         (let ()
                           (declare (not safe))
                           (##cdr _e179442179474_))))
                    (let ((_body179482_ _hd179443179477_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl179444179479_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1179425_
                                 _hd179462_
                                 _fender179472_
                                 _body179482_))
                              (let () (declare (not safe)) (_E179435179450_)))
                          (let () (declare (not safe)) (_E179435179450_))))))
                (let () (declare (not safe)) (_E179435179450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E179435179450_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179435179450_)))))
                             (_E179427179508_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e179426179446_))
                                    (let ((_e179429179488_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e179426179446_))))
                                      (let ((_hd179430179491_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179429179488_)))
                                            (_tl179431179493_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179429179488_))))
                                        (let ((_hd179496_ _hd179430179491_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl179431179493_))
                                              (let ((_e179432179498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl179431179493_))))
                                                (let ((_hd179433179501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e179432179498_)))
                                                      (_tl179434179503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e179432179498_))))
                                                  (let ((_body179506_
                                                         _hd179433179501_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl179434179503_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1179425_
                                                               _hd179496_
                                                               '#t
                                                               _body179506_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E179428179484_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E179428179484_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E179428179484_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E179428179484_))))))
                        (let () (declare (not safe)) (_E179427179508_))))))
                 (_generate-match179005_
                  (lambda (_where179169_
                           _target179170_
                           _hd179171_
                           _mvars179172_
                           _K179173_
                           _E179174_)
                    (letrec ((_BUG179176_
                              (lambda (_q179418_)
                                (error '"BUG: syntax-case; generate"
                                       _stx178997_
                                       _hd179171_
                                       _q179418_)))
                             (_recur179177_
                              (lambda (_e179268_
                                       _vars179269_
                                       _target179270_
                                       _E179271_
                                       _k179272_)
                                (let* ((_e179273179280_ _e179268_)
                                       (_E179275179284_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179273179280_)))
                                       (_K179276179406_
                                        (lambda (_body179287_ _tag179288_)
                                          (let ((_$e179290_ _tag179288_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179290_))
                                                (_k179272_ _vars179269_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179290_))
                                                    (let ((__tmp185022
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179270_)))
                                                          (__tmp185018
                                                           (let ((__tmp185020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185021
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e179000_
                                    _body179287_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?178998_
                             __tmp185021
                             _target179270_)))
                         (__tmp185019 (_k179272_ _vars179269_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp185020 __tmp185019 _E179271_))))
              (declare (not safe))
              (gx#core-list 'if __tmp185022 __tmp185018 _E179271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179290_))
                                                        (_k179272_
                                                         (let ((__tmp185017
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179287_ _target179270_))))
                   (declare (not safe))
                   (cons __tmp185017 _vars179269_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179290_))
                    (let ((_$e179293_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179294_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl179295_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp185016
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179270_)))
                            (__tmp184997
                             (let ((__tmp185011
                                    (let ((__tmp185012
                                           (let ((__tmp185015
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179293_ '())))
                                                 (__tmp185013
                                                  (let ((__tmp185014
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e178999_
                                                            _target179270_))))
                                                    (declare (not safe))
                                                    (cons __tmp185014 '()))))
                                             (declare (not safe))
                                             (cons __tmp185015 __tmp185013))))
                                      (declare (not safe))
                                      (cons __tmp185012 '())))
                                   (__tmp184998
                                    (let ((__tmp185001
                                           (let ((__tmp185007
                                                  (let ((__tmp185010
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp185008
                 (let ((__tmp185009
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179293_))))
                   (declare (not safe))
                   (cons __tmp185009 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185010
                                                          __tmp185008)))
                                                 (__tmp185002
                                                  (let ((__tmp185003
                                                         (let ((__tmp185006
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl179295_ '())))
                       (__tmp185004
                        (let ((__tmp185005
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179293_))))
                          (declare (not safe))
                          (cons __tmp185005 '()))))
                   (declare (not safe))
                   (cons __tmp185006 __tmp185004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185003 '()))))
                                             (declare (not safe))
                                             (cons __tmp185007 __tmp185002)))
                                          (__tmp184999
                                           (let* ((_body179296179303_
                                                   _body179287_)
                                                  (_E179298179307_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body179296179303_)))
                                                  (_K179299179315_
                                                   (lambda (_tl179310_
                                                            _hd179311_)
                                                     (let ((__tmp185000
                                                            (lambda (_vars179313_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179177_
                         _tl179310_
                         _vars179313_
                         _$tl179295_
                         _E179271_
                         _k179272_)))))
               (declare (not safe))
               (_recur179177_
                _hd179311_
                _vars179269_
                _$hd179294_
                _E179271_
                __tmp185000)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body179296179303_))
                                                 (let ((_hd179300179318_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body179296179303_)))
                                                       (_tl179301179320_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body179296179303_))))
                                                   (let* ((_hd179323_
                                                           _hd179300179318_)
                                                          (_tl179325_
                                                           _tl179301179320_))
                                                     (declare (not safe))
                                                     (_K179299179315_
                                                      _tl179325_
                                                      _hd179323_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E179298179307_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp185001
                                       __tmp184999))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp185011
                                __tmp184998))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp185016 __tmp184997 _E179271_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179290_))
                        (let* ((_body179326179333_ _body179287_)
                               (_E179328179337_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body179326179333_)))
                               (_K179329179388_
                                (lambda (_tl179340_ _hd179341_)
                                  (let* ((_rlen179343_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179178_ _tl179340_)))
                                         (_$target179345_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd179347_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl179349_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp179351_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e179353_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd179355_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl179357_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars179359_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179179_ _hd179341_)))
                                         (_lvars179361_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179359_)))
                                         (_tlvars179363_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars179359_)))
                                         (_linit179367_
                                          (map (lambda (_var179365_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars179361_)))
                                    (letrec ((_make-loop179370_
                                              (lambda (_vars179374_)
                                                (let ((__tmp184948
                                                       (let ((__tmp184949
                                                              (let ((__tmp184985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp179351_ '())))
                            (__tmp184950
                             (let ((__tmp184951
                                    (let ((__tmp184984
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd179347_ _lvars179361_)))
                                          (__tmp184952
                                           (let ((__tmp184983
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd179347_)))
                                                 (__tmp184961
                                                  (let ((__tmp184978
                                                         (let ((__tmp184979
                                                                (let ((__tmp184982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e179353_ '())))
                              (__tmp184980
                               (let ((__tmp184981
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e178999_
                                         _$hd179347_))))
                                 (declare (not safe))
                                 (cons __tmp184981 '()))))
                          (declare (not safe))
                          (cons __tmp184982 __tmp184980))))
                   (declare (not safe))
                   (cons __tmp184979 '())))
                (__tmp184962
                 (let ((__tmp184968
                        (let ((__tmp184974
                               (let ((__tmp184977
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd179355_ '())))
                                     (__tmp184975
                                      (let ((__tmp184976
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e179353_))))
                                        (declare (not safe))
                                        (cons __tmp184976 '()))))
                                 (declare (not safe))
                                 (cons __tmp184977 __tmp184975)))
                              (__tmp184969
                               (let ((__tmp184970
                                      (let ((__tmp184973
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl179357_ '())))
                                            (__tmp184971
                                             (let ((__tmp184972
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e179353_))))
                                               (declare (not safe))
                                               (cons __tmp184972 '()))))
                                        (declare (not safe))
                                        (cons __tmp184973 __tmp184971))))
                                 (declare (not safe))
                                 (cons __tmp184970 '()))))
                          (declare (not safe))
                          (cons __tmp184974 __tmp184969)))
                       (__tmp184963
                        (let ((__tmp184964
                               (lambda (_hdvars179376_)
                                 (let ((__tmp184965
                                        (let ((__tmp184966
                                               (map (lambda (_svar179378_
                                                             _lvar179379_)
                                                      (let ((__tmp184967
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar179378_ _hdvars179376_ _BUG179176_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp184967 _lvar179379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars179359_
                                                    _lvars179361_)))
                                          (declare (not safe))
                                          (cons _$lp-tl179357_ __tmp184966))))
                                   (declare (not safe))
                                   (cons _$lp179351_ __tmp184965)))))
                          (declare (not safe))
                          (_recur179177_
                           _hd179341_
                           '()
                           _$lp-hd179355_
                           _E179271_
                           __tmp184964))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp184968 __tmp184963))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184978
                                                     __tmp184962)))
                                                 (__tmp184953
                                                  (let ((__tmp184957
                                                         (map (lambda (_lvar179381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar179382_)
                        (let ((__tmp184960
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar179382_ '())))
                              (__tmp184958
                               (let ((__tmp184959
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar179381_))))
                                 (declare (not safe))
                                 (cons __tmp184959 '()))))
                          (declare (not safe))
                          (cons __tmp184960 __tmp184958)))
                      _lvars179361_
                      _tlvars179363_))
                (__tmp184954
                 (_k179272_
                  (let ((__tmp184955
                         (lambda (_svar179384_ _tlvar179385_ _r179386_)
                           (let ((__tmp184956
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar179384_ _tlvar179385_))))
                             (declare (not safe))
                             (cons __tmp184956 _r179386_)))))
                    (declare (not safe))
                    (foldl2 __tmp184955
                            _vars179374_
                            _svars179359_
                            _tlvars179363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp184957
                                                     __tmp184954))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp184983
                                              __tmp184961
                                              __tmp184953))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp184984
                                       __tmp184952))))
                               (declare (not safe))
                               (cons __tmp184951 '()))))
                        (declare (not safe))
                        (cons __tmp184985 __tmp184950))))
                 (declare (not safe))
                 (cons __tmp184949 '())))
              (__tmp184946
               (let ((__tmp184947
                      (let ()
                        (declare (not safe))
                        (cons _$target179345_ _linit179367_))))
                 (declare (not safe))
                 (cons _$lp179351_ __tmp184947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp184948
                                                   __tmp184946)))))
                                      (let ((_body179372_
                                             (let ((__tmp184987
                                                    (let ((__tmp184988
                                                           (let ((__tmp184991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp184992
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl179349_ '()))))
                            (declare (not safe))
                            (cons _$target179345_ __tmp184992)))
                         (__tmp184989
                          (let ((__tmp184990
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179270_
                                    _rlen179343_))))
                            (declare (not safe))
                            (cons __tmp184990 '()))))
                     (declare (not safe))
                     (cons __tmp184991 __tmp184989))))
              (declare (not safe))
              (cons __tmp184988 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184986
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179177_
                                                       _tl179340_
                                                       _vars179269_
                                                       _$tl179349_
                                                       _E179271_
                                                       _make-loop179370_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184987
                                                __tmp184986))))
                                        (let ((__tmp184996
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179270_)))
                                              (__tmp184993
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen179343_))
                                                   _body179372_
                                                   (let ((__tmp184994
                                                          (let ((__tmp184995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179270_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp184995 _rlen179343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp184994
                                                      _body179372_
                                                      _E179271_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp184996
                                           __tmp184993
                                           _E179271_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body179326179333_))
                              (let ((_hd179330179391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body179326179333_)))
                                    (_tl179331179393_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body179326179333_))))
                                (let* ((_hd179396_ _hd179330179391_)
                                       (_tl179398_ _tl179331179393_))
                                  (declare (not safe))
                                  (_K179329179388_ _tl179398_ _hd179396_)))
                              (let () (declare (not safe)) (_E179328179337_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179290_))
                            (let ((__tmp184945
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179270_)))
                                  (__tmp184944 (_k179272_ _vars179269_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp184945
                               __tmp184944
                               _E179271_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179290_))
                                (let ((_$e179400_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp184943
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179270_)))
                                        (__tmp184935
                                         (let ((__tmp184937
                                                (let ((__tmp184938
                                                       (let ((__tmp184942
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e179400_ '())))
                     (__tmp184939
                      (let ((__tmp184940
                             (let ((__tmp184941
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e178999_
                                       _target179270_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp184941))))
                        (declare (not safe))
                        (cons __tmp184940 '()))))
                 (declare (not safe))
                 (cons __tmp184942 __tmp184939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp184938 '())))
                                               (__tmp184936
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179177_
                                                   _body179287_
                                                   _vars179269_
                                                   _$e179400_
                                                   _E179271_
                                                   _k179272_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp184937
                                            __tmp184936))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp184943
                                     __tmp184935
                                     _E179271_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179290_))
                                    (let ((_$e179402_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp184934
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179270_)))
                                            (__tmp184926
                                             (let ((__tmp184928
                                                    (let ((__tmp184929
                                                           (let ((__tmp184933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e179402_ '())))
                         (__tmp184930
                          (let ((__tmp184931
                                 (let ((__tmp184932
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e178999_
                                           _target179270_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp184932))))
                            (declare (not safe))
                            (cons __tmp184931 '()))))
                     (declare (not safe))
                     (cons __tmp184933 __tmp184930))))
              (declare (not safe))
              (cons __tmp184929 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp184927
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179177_
                                                       _body179287_
                                                       _vars179269_
                                                       _$e179402_
                                                       _E179271_
                                                       _k179272_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp184928
                                                __tmp184927))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp184934
                                         __tmp184926
                                         _E179271_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179290_))
                                        (let ((_$e179404_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp184925
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179270_)))
                                                (__tmp184916
                                                 (let ((__tmp184920
                                                        (let ((__tmp184921
                                                               (let ((__tmp184924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e179404_ '())))
                             (__tmp184922
                              (let ((__tmp184923
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179270_))))
                                (declare (not safe))
                                (cons __tmp184923 '()))))
                         (declare (not safe))
                         (cons __tmp184924 __tmp184922))))
                  (declare (not safe))
                  (cons __tmp184921 '())))
               (__tmp184917
                (let ((__tmp184919
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e179404_ _body179287_)))
                      (__tmp184918 (_k179272_ _vars179269_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp184919 __tmp184918 _E179271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp184920
                                                    __tmp184917))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp184925
                                             __tmp184916
                                             _E179271_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179176_ _e179268_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179273179280_))
                                      (let ((_hd179277179409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179273179280_)))
                                            (_tl179278179411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179273179280_))))
                                        (let* ((_tag179414_ _hd179277179409_)
                                               (_body179416_ _tl179278179411_))
                                          (declare (not safe))
                                          (_K179276179406_
                                           _body179416_
                                           _tag179414_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179275179284_))))))
                             (_splice-rlen179178_
                              (lambda (_e179230_)
                                (let _lp179232_ ((_e179234_ _e179230_)
                                                 (_n179235_ '0))
                                  (let* ((_e179236179243_ _e179234_)
                                         (_E179238179247_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179236179243_)))
                                         (_K179239179256_
                                          (lambda (_body179250_ _tag179251_)
                                            (let ((_$e179253_ _tag179251_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179253_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx178997_
                                                     _where179169_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179253_))
                                                      (let ((__tmp185024
                                                             (cdr _body179250_))
                                                            (__tmp185023
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179235_ '1))))
                (declare (not safe))
                (_lp179232_ __tmp185024 __tmp185023))
              _n179235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179236179243_))
                                        (let ((_hd179240179259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179236179243_)))
                                              (_tl179241179261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179236179243_))))
                                          (let* ((_tag179264_ _hd179240179259_)
                                                 (_body179266_
                                                  _tl179241179261_))
                                            (declare (not safe))
                                            (_K179239179256_
                                             _body179266_
                                             _tag179264_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179238179247_)))))))
                             (_splice-vars179179_
                              (lambda (_e179186_)
                                (let _recur179188_ ((_e179190_ _e179186_)
                                                    (_vars179191_ '()))
                                  (let* ((_e179192179199_ _e179190_)
                                         (_E179194179203_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179192179199_)))
                                         (_K179195179218_
                                          (lambda (_body179206_ _tag179207_)
                                            (let ((_$e179209_ _tag179207_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179209_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179206_
                                                          _vars179191_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179209_))
                  (let () (declare (not safe)) (eq? 'splice _$e179209_)))
              (let ((__tmp185027 (cdr _body179206_))
                    (__tmp185025
                     (let ((__tmp185026 (car _body179206_)))
                       (declare (not safe))
                       (_recur179188_ __tmp185026 _vars179191_))))
                (declare (not safe))
                (_recur179188_ __tmp185027 __tmp185025))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179209_))
                      (let () (declare (not safe)) (eq? 'box _$e179209_)))
                  (let ()
                    (declare (not safe))
                    (_recur179188_ _body179206_ _vars179191_))
                  _vars179191_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179192179199_))
                                        (let ((_hd179196179221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179192179199_)))
                                              (_tl179197179223_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179192179199_))))
                                          (let* ((_tag179226_ _hd179196179221_)
                                                 (_body179228_
                                                  _tl179197179223_))
                                            (declare (not safe))
                                            (_K179195179218_
                                             _body179228_
                                             _tag179226_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179194179203_)))))))
                             (_make-body179180_
                              (lambda (_vars179182_)
                                (let ((__tmp185028
                                       (map (lambda (_mvar179184_)
                                              (let ((__tmp185029
                                                     (car _mvar179184_)))
                                                (declare (not safe))
                                                (assgetq __tmp185029
                                                         _vars179182_
                                                         _BUG179176_)))
                                            _mvars179172_)))
                                  (declare (not safe))
                                  (cons _K179173_ __tmp185028)))))
                      (let ()
                        (declare (not safe))
                        (_recur179177_
                         _hd179171_
                         '()
                         _target179170_
                         _E179174_
                         _make-body179180_)))))
                 (_parse-clause179006_
                  (lambda (_hd179075_ _ids179076_)
                    (let _recur179078_ ((_e179080_ _hd179075_)
                                        (_vars179081_ '())
                                        (_depth179082_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179080_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179080_))
                              (values '(any) _vars179081_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179080_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx178997_
                                     _hd179075_))
                                  (if (let ((__tmp185045
                                             (lambda (_id179084_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179080_
                                                  _id179084_)))))
                                        (declare (not safe))
                                        (find __tmp185045 _ids179076_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179080_))
                                              _vars179081_)
                                      (if (let ((__tmp185043
                                                 (lambda (_var179086_)
                                                   (let ((__tmp185044
                                                          (car _var179086_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179080_
                                                      __tmp185044)))))
                                            (declare (not safe))
                                            (find __tmp185043 _vars179081_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx178997_
                                             _e179080_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179080_))
                                                  (let ((__tmp185042
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185042
                                                          _vars179081_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179080_))
                              (let* ((_e179087179094_ _e179080_)
                                     (_E179089179098_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179087179094_))))
                                     (_E179088179159_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179087179094_))
                                            (let ((_e179090179102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179087179094_))))
                                              (let ((_hd179091179105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179090179102_)))
                                                    (_tl179092179107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179090179102_))))
                                                (let* ((_hd179110_
                                                        _hd179091179105_)
                                                       (_rest179112_
                                                        _tl179092179107_))
                                                  (if '#t
                                                      (let* ((_make-pair179127_
                                                              (lambda (_tag179114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179115_
                               _tl179116_)
                        (let* ((_hd-depth179118_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179114_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179082_ '1))
                                    _depth179082_))
                               (_g185037_
                                (let ()
                                  (declare (not safe))
                                  (_recur179078_
                                   _hd179115_
                                   _vars179081_
                                   _hd-depth179118_))))
                          (begin
                            (let ((_g185038_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185037_)
                                         (##vector-length _g185037_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185038_ 2)))
                                  (error "Context expects 2 values"
                                         _g185038_)))
                            (let ((_hd179120_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185037_ 0)))
                                  (_vars179121_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185037_ 1))))
                              (let ((_g185039_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179078_
                                        _tl179116_
                                        _vars179121_
                                        _depth179082_))))
                                (begin
                                  (let ((_g185040_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185039_)
                                               (##vector-length _g185039_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185040_ 2)))
                                        (error "Context expects 2 values"
                                               _g185040_)))
                                  (let ((_tl179123_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185039_ 0)))
                                        (_vars179124_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185039_ 1))))
                                    (let ()
                                      (values (let ((__tmp185041
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179120_
                                                             _tl179123_))))
                                                (declare (not safe))
                                                (cons _tag179114_ __tmp185041))
                                              _vars179124_))))))))))
                     (_e179128179135_ _rest179112_)
                     (_E179130179139_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179127_ 'cons _hd179110_ _rest179112_))))
                     (_E179129179155_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179128179135_))
                            (let ((_e179131179143_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179128179135_))))
                              (let ((_hd179132179146_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179131179143_)))
                                    (_tl179133179148_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179131179143_))))
                                (let* ((_rest-hd179151_ _hd179132179146_)
                                       (_rest-tl179153_ _tl179133179148_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179151_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179127_
                                             'splice
                                             _hd179110_
                                             _rest-tl179153_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179127_
                                             'cons
                                             _hd179110_
                                             _rest179112_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179130179139_))))))
                            (let () (declare (not safe)) (_E179130179139_))))))
                (let () (declare (not safe)) (_E179129179155_)))
              (let () (declare (not safe)) (_E179089179098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179089179098_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179088179159_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179080_))
                                  (values '(null) _vars179081_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179080_))
                                      (let ((_g185034_
                                             (let ((__tmp185036
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179080_)))))
                                               (declare (not safe))
                                               (_recur179078_
                                                __tmp185036
                                                _vars179081_
                                                _depth179082_))))
                                        (begin
                                          (let ((_g185035_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185034_)
                                                       (##vector-length
                                                        _g185034_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185035_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185035_)))
                                          (let ((_e179163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185034_ 0)))
                                                (_vars179164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185034_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179163_))
                                                    _vars179164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179080_))
                                          (let ((_g185031_
                                                 (let ((__tmp185033
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179078_
                                                    __tmp185033
                                                    _vars179081_
                                                    _depth179082_))))
                                            (begin
                                              (let ((_g185032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g185031_)
                                                           (##vector-length
                                                            _g185031_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g185032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g185032_)))
                                              (let ((_e179166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185031_
                                                        0)))
                                                    (_vars179167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185031_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179166_))
                                                        _vars179167_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179080_))
                                              (values (let ((__tmp185030
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179080_))))
                (declare (not safe))
                (cons 'datum __tmp185030))
              _vars179081_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx178997_
                                                 _e179080_))))))))))))
          (let* ((_e179007179020_ _stx178997_)
                 (_E179009179024_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e179007179020_))))
                 (_E179008179071_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179007179020_))
                        (let ((_e179010179028_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179007179020_))))
                          (let ((_hd179011179031_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179010179028_)))
                                (_tl179012179033_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179010179028_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179012179033_))
                                (let ((_e179013179036_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179012179033_))))
                                  (let ((_hd179014179039_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179013179036_)))
                                        (_tl179015179041_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179013179036_))))
                                    (let ((_expr179044_ _hd179014179039_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl179015179041_))
                                          (let ((_e179016179046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl179015179041_))))
                                            (let ((_hd179017179049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e179016179046_)))
                                                  (_tl179018179051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e179016179046_))))
                                              (let* ((_ids179054_
                                                      _hd179017179049_)
                                                     (_clauses179056_
                                                      _tl179018179051_))
                                                (if '#t
                                                    (if (let ((__tmp185063
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179054_))))
                  (declare (not safe))
                  (not __tmp185063))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx178997_
                   _ids179054_))
                (if (let ((__tmp185062
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179056_))))
                      (declare (not safe))
                      (not __tmp185062))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx178997_))
                    (let* ((_ids179058_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179054_)))
                           (_clauses179060_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179056_)))
                           (_clause-ids179062_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179060_)))
                           (_E179064_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179066_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179068_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179060_))
                                _E179064_
                                (car _clause-ids179062_))))
                      (let ((__tmp185047
                             (let ((__tmp185048
                                    (let ((__tmp185050
                                           (let ((__tmp185055
                                                  (let ((__tmp185056
                                                         (let ((__tmp185061
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179064_ '())))
                       (__tmp185057
                        (let ((__tmp185058
                               (let ((__tmp185060
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179066_ '())))
                                     (__tmp185059
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179066_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185060
                                  __tmp185059))))
                          (declare (not safe))
                          (cons __tmp185058 '()))))
                   (declare (not safe))
                   (cons __tmp185061 __tmp185057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185056 '())))
                                                 (__tmp185051
                                                  (let ((__tmp185054
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings179002_
                                                            _target179066_
                                                            _ids179058_
                                                            _clauses179060_
                                                            _clause-ids179062_
                                                            _E179064_)))
                                                        (__tmp185052
                                                         (let ((__tmp185053
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179044_ '()))))
                   (declare (not safe))
                   (cons _first179068_ __tmp185053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body179003_
                                                     __tmp185054
                                                     __tmp185052))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185055
                                              __tmp185051)))
                                          (__tmp185049
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx178997_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185050
                                       __tmp185049))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185048)))
                            (__tmp185046
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx178997_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185047 __tmp185046)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179009179024_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179009179024_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179009179024_)))))
                        (let () (declare (not safe)) (_E179009179024_))))))
            (let () (declare (not safe)) (_E179008179071_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx179707_)
        (let* ((_identifier=?179709_ 'free-identifier=?)
               (_unwrap-e179711_ 'syntax-e)
               (_wrap-e179713_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179707_
           _identifier=?179709_
           _unwrap-e179711_
           _wrap-e179713_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx179715_ _identifier=?179716_)
        (let* ((_unwrap-e179718_ 'syntax-e) (_wrap-e179720_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179715_
           _identifier=?179716_
           _unwrap-e179718_
           _wrap-e179720_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx179722_ _identifier=?179723_ _unwrap-e179724_)
        (let ((_wrap-e179726_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx179722_
           _identifier=?179723_
           _unwrap-e179724_
           _wrap-e179726_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185065_
        (let ((_g185064_ (let () (declare (not safe)) (##length _g185065_))))
          (cond ((let () (declare (not safe)) (##fx= _g185064_ 1))
                 (apply (lambda (_stx179707_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx179707_)))
                        _g185065_))
                ((let () (declare (not safe)) (##fx= _g185064_ 2))
                 (apply (lambda (_stx179715_ _identifier=?179716_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx179715_
                             _identifier=?179716_)))
                        _g185065_))
                ((let () (declare (not safe)) (##fx= _g185064_ 3))
                 (apply (lambda (_stx179722_
                                 _identifier=?179723_
                                 _unwrap-e179724_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx179722_
                             _identifier=?179723_
                             _unwrap-e179724_)))
                        _g185065_))
                ((let () (declare (not safe)) (##fx= _g185064_ 4))
                 (apply (lambda (_stx179728_
                                 _identifier=?179729_
                                 _unwrap-e179730_
                                 _wrap-e179731_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx179728_
                             _identifier=?179729_
                             _unwrap-e179730_
                             _wrap-e179731_)))
                        _g185065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185065_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx178994_)
        (if (let () (declare (not safe)) (gx#identifier? _stx178994_))
            (let ((__tmp185066
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx178994_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185066 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd178952_ . _rest178953_)
        (let ((_len178955_ (length _hd178952_)))
          (let _lp178957_ ((_rest178959_ _rest178953_))
            (let* ((_rest178960178968_ _rest178959_)
                   (_else178962178976_ (lambda () '#!void))
                   (_K178964178982_
                    (lambda (_rest178979_ _hd178980_)
                      (if (fx= _len178955_ (length _hd178980_))
                          (let ()
                            (declare (not safe))
                            (_lp178957_ _rest178979_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd178980_))))))
              (if (let () (declare (not safe)) (##pair? _rest178960178968_))
                  (let ((_hd178965178985_
                         (let ()
                           (declare (not safe))
                           (##car _rest178960178968_)))
                        (_tl178966178987_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest178960178968_))))
                    (let* ((_hd178990_ _hd178965178985_)
                           (_rest178992_ _tl178966178987_))
                      (declare (not safe))
                      (_K178964178982_ _rest178992_ _hd178990_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx178910_ _n178911_)
        (let _lp178913_ ((_rest178915_ _stx178910_) (_r178916_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest178915_))
              (let* ((_g178917178924_
                      (let () (declare (not safe)) (gx#syntax-e _rest178915_)))
                     (_E178919178928_
                      (lambda ()
                        (error '"No clause matching" _g178917178924_)))
                     (_K178920178934_
                      (lambda (_rest178931_ _hd178932_)
                        (let ((__tmp185071
                               (let ()
                                 (declare (not safe))
                                 (cons _hd178932_ _r178916_))))
                          (declare (not safe))
                          (_lp178913_ _rest178931_ __tmp185071)))))
                (if (let () (declare (not safe)) (##pair? _g178917178924_))
                    (let ((_hd178921178937_
                           (let ()
                             (declare (not safe))
                             (##car _g178917178924_)))
                          (_tl178922178939_
                           (let ()
                             (declare (not safe))
                             (##cdr _g178917178924_))))
                      (let* ((_hd178942_ _hd178921178937_)
                             (_rest178944_ _tl178922178939_))
                        (declare (not safe))
                        (_K178920178934_ _rest178944_ _hd178942_)))
                    (let () (declare (not safe)) (_E178919178928_))))
              (let _lp178946_ ((_n178948_ _n178911_)
                               (_l178949_ _r178916_)
                               (_r178950_ _rest178915_))
                (if (let () (declare (not safe)) (null? _l178949_))
                    (values _l178949_ _r178950_)
                    (if (fxpositive? _n178948_)
                        (let ((__tmp185070
                               (let ()
                                 (declare (not safe))
                                 (fx- _n178948_ '1)))
                              (__tmp185069 (cdr _l178949_))
                              (__tmp185067
                               (let ((__tmp185068 (car _l178949_)))
                                 (declare (not safe))
                                 (cons __tmp185068 _r178950_))))
                          (declare (not safe))
                          (_lp178946_ __tmp185070 __tmp185069 __tmp185067))
                        (values (reverse _l178949_) _r178950_))))))))))
