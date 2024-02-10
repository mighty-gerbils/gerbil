(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707601717)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182916
             (let ((__tmp182917
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182917 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp182916
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178445_
        (apply make-struct-instance gx#syntax-pattern::t _$args178445_)))
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
      (lambda (_self178442_ _stx178443_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178443_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177924_)
        (letrec ((_generate177926_
                  (lambda (_e178153_)
                    (letrec ((_BUG178155_
                              (lambda (_q178317_)
                                (error '"BUG: syntax; generate"
                                       _stx177924_
                                       _e178153_
                                       _q178317_)))
                             (_local-pattern-e178156_
                              (lambda (_pat178315_)
                                (let ((__tmp182918
                                       (##structure-ref
                                        _pat178315_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182918))))
                             (_getvar178157_
                              (lambda (_q178312_ _vars178313_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178312_
                                           _vars178313_
                                           _BUG178155_))))
                             (_getarg178158_
                              (lambda (_arg178278_ _vars178279_)
                                (let* ((_arg178280178287_ _arg178278_)
                                       (_E178282178291_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178280178287_)))
                                       (_K178283178300_
                                        (lambda (_e178294_ _tag178295_)
                                          (let ((_$e178297_ _tag178295_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178297_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar178157_
                                                   _e178294_
                                                   _vars178279_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178297_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e178156_
                                                       _e178294_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG178155_
                                                       _arg178278_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178280178287_))
                                      (let ((_hd178284178303_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178280178287_)))
                                            (_tl178285178305_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178280178287_))))
                                        (let* ((_tag178308_ _hd178284178303_)
                                               (_e178310_ _tl178285178305_))
                                          (declare (not safe))
                                          (_K178283178300_
                                           _e178310_
                                           _tag178308_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178282178291_)))))))
                      (let _recur178160_ ((_e178162_ _e178153_)
                                          (_vars178163_ '()))
                        (let* ((_e178164178171_ _e178162_)
                               (_E178166178175_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e178164178171_)))
                               (_K178167178266_
                                (lambda (_body178178_ _tag178179_)
                                  (let ((_$e178181_ _tag178179_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e178181_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body178178_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e178181_))
                                            (let ((_id178184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body178178_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id178184_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks178186_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id178184_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks178186_))
                                                        (let ((__tmp182946
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body178178_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182946))
                (let ((__tmp182945
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body178178_)))
                      (__tmp182944
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body178178_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182945
                   __tmp182944
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id178184_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body178178_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG178155_
                                                         _e178162_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e178181_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e178156_
                                                   _body178178_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e178181_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar178157_
                                                       _body178178_
                                                       _vars178163_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e178181_))
                                                        (let ((__tmp182942
                                                               (let ((__tmp182943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body178178_)))
                         (declare (not safe))
                         (_recur178160_ __tmp182943 _vars178163_)))
                      (__tmp182940
                       (let ((__tmp182941 (cdr _body178178_)))
                         (declare (not safe))
                         (_recur178160_ __tmp182941 _vars178163_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182942 __tmp182940))
                (if (let () (declare (not safe)) (eq? 'vector _$e178181_))
                    (let ((__tmp182939
                           (let ()
                             (declare (not safe))
                             (_recur178160_ _body178178_ _vars178163_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182939))
                    (if (let () (declare (not safe)) (eq? 'box _$e178181_))
                        (let ((__tmp182938
                               (let ()
                                 (declare (not safe))
                                 (_recur178160_ _body178178_ _vars178163_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182938))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e178181_))
                            (let* ((_body178187178198_ _body178178_)
                                   (_E178189178202_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body178187178198_)))
                                   (_K178190178240_
                                    (lambda (_args178205_
                                             _iv178206_
                                             _hd178207_
                                             _depth178208_)
                                      (let* ((_targets178214_
                                              (map (lambda (_g178209178211_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg178158_
                                                        _g178209178211_
                                                        _vars178163_)))
                                                   _args178205_))
                                             (_fold-in178216_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args178205_)))
                                             (_fold-out178218_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178220_
                                              (let ((__tmp182919
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178218_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182919
                                                        _fold-in178216_)))
                                             (_lambda-body178237_
                                              (if (fx> _depth178208_ '1)
                                                  (let ((_r-args178228_
                                                         (map (lambda (_arg178222_)
                                                                (let ((__tmp182924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178222_)))
                          (declare (not safe))
                          (cons 'ref __tmp182924)))
                      _args178205_))
                (_r-vars178229_
                 (let ((__tmp182925
                        (lambda (_arg178224_ _var178225_ _r178226_)
                          (let ((__tmp182926
                                 (let ((__tmp182927 (cdr _arg178224_)))
                                   (declare (not safe))
                                   (cons __tmp182927 _var178225_))))
                            (declare (not safe))
                            (cons __tmp182926 _r178226_)))))
                   (declare (not safe))
                   (foldr2 __tmp182925
                           _vars178163_
                           _args178205_
                           _fold-in178216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182928
                                                           (let ((__tmp182929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182933
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178208_ '1)))
                                (__tmp182930
                                 (let ((__tmp182931
                                        (let ((__tmp182932
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178218_))))
                                          (declare (not safe))
                                          (cons __tmp182932 _r-args178228_))))
                                   (declare (not safe))
                                   (cons _hd178207_ __tmp182931))))
                            (declare (not safe))
                            (cons __tmp182933 __tmp182930))))
                     (declare (not safe))
                     (cons 'splice __tmp182929))))
              (declare (not safe))
              (_recur178160_ __tmp182928 _r-vars178229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178235_
                                                          (let ((__tmp182920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178231_ _var178232_ _r178233_)
                           (let ((__tmp182921
                                  (let ((__tmp182922 (cdr _arg178231_)))
                                    (declare (not safe))
                                    (cons __tmp182922 _var178232_))))
                             (declare (not safe))
                             (cons __tmp182921 _r178233_)))))
                    (declare (not safe))
                    (foldr2 __tmp182920
                            _vars178163_
                            _args178205_
                            _fold-in178216_)))
                 (__tmp182923
                  (let ()
                    (declare (not safe))
                    (_recur178160_ _hd178207_ _hd-vars178235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182923
                                                     _fold-out178218_)))))
                                        (let ((__tmp182937
                                               (if (fx> (length _targets178214_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178214_))
                                                   '#!void))
                                              (__tmp182934
                                               (let ((__tmp182936
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178220_
                                                         _lambda-body178237_)))
                                                     (__tmp182935
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur178160_
                                                         _iv178206_
                                                         _vars178163_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182936
                                                  __tmp182935
                                                  _targets178214_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182937
                                           __tmp182934))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body178187178198_))
                                  (let ((_hd178191178243_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body178187178198_)))
                                        (_tl178192178245_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body178187178198_))))
                                    (let ((_depth178248_ _hd178191178243_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl178192178245_))
                                          (let ((_hd178193178250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl178192178245_)))
                                                (_tl178194178252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl178192178245_))))
                                            (let ((_hd178255_
                                                   _hd178193178250_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl178194178252_))
                                                  (let ((_hd178195178257_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl178194178252_)))
                                                        (_tl178196178259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl178194178252_))))
                                                    (let* ((_iv178262_
                                                            _hd178195178257_)
                                                           (_args178264_
                                                            _tl178196178259_))
                                                      (declare (not safe))
                                                      (_K178190178240_
                                                       _args178264_
                                                       _iv178262_
                                                       _hd178255_
                                                       _depth178248_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178189178202_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178189178202_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E178189178202_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e178181_))
                                _body178178_
                                (let ()
                                  (declare (not safe))
                                  (_BUG178155_ _e178162_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e178164178171_))
                              (let ((_hd178168178269_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e178164178171_)))
                                    (_tl178169178271_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e178164178171_))))
                                (let* ((_tag178274_ _hd178168178269_)
                                       (_body178276_ _tl178169178271_))
                                  (declare (not safe))
                                  (_K178167178266_ _body178276_ _tag178274_)))
                              (let ()
                                (declare (not safe))
                                (_E178166178175_))))))))
                 (_parse177927_
                  (lambda (_e177968_)
                    (letrec ((_make-cons177970_
                              (lambda (_hd178145_ _tl178146_)
                                (let ((_g182947_ _hd178145_)
                                      (_g182949_ _tl178146_))
                                  (begin
                                    (let ((_g182948_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182947_)
                                                 (##vector-length _g182947_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182948_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182948_)))
                                    (let ((_g182950_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182949_)
                                                 (##vector-length _g182949_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182950_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182950_)))
                                    (let ((_hd-e178148_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182947_ 0)))
                                          (_hd-vars178149_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182947_ 1))))
                                      (let ((_tl-e178150_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182949_ 0)))
                                            (_tl-vars178151_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182949_ 1))))
                                        (values (let ((__tmp182951
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e178148_
                                                               _tl-e178150_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182951))
                                                (append _hd-vars178149_
                                                        _tl-vars178151_))))))))
                             (_make-splice177971_
                              (lambda (_where178084_
                                       _depth178085_
                                       _hd178086_
                                       _tl178087_)
                                (let ((_g182952_ _hd178086_)
                                      (_g182954_ _tl178087_))
                                  (begin
                                    (let ((_g182953_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182952_)
                                                 (##vector-length _g182952_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182953_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182953_)))
                                    (let ((_g182955_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182954_)
                                                 (##vector-length _g182954_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182955_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182955_)))
                                    (let ((_hd-e178089_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182952_ 0)))
                                          (_hd-vars178090_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182952_ 1))))
                                      (let ((_tl-e178091_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182954_ 0)))
                                            (_tl-vars178092_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182954_ 1))))
                                        (let _lp178094_ ((_rest178096_
                                                          _hd-vars178090_)
                                                         (_targets178097_ '())
                                                         (_vars178098_
                                                          _tl-vars178092_))
                                          (let* ((_rest178099178109_
                                                  _rest178096_)
                                                 (_else178101178117_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets178097_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177924_
                                                           _where178084_))
                                                        (values (let ((__tmp182956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182957
                                      (let ((__tmp182958
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e178091_
                                                     _targets178097_))))
                                        (declare (not safe))
                                        (cons _hd-e178089_ __tmp182958))))
                                 (declare (not safe))
                                 (cons _depth178085_ __tmp182957))))
                          (declare (not safe))
                          (cons 'splice __tmp182956))
                        _vars178098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K178103178126_
                                                  (lambda (_rest178120_
                                                           _hd-pat178121_
                                                           _hd-depth*178122_)
                                                    (let ((_hd-depth178124_
                                                           (fx- _hd-depth*178122_
                                                                _depth178085_)))
                                                      (if (fxpositive?
                                                           _hd-depth178124_)
                                                          (let ((__tmp182963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182964
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat178121_))))
                           (declare (not safe))
                           (cons __tmp182964 _targets178097_)))
                        (__tmp182961
                         (let ((__tmp182962
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth178124_ _hd-pat178121_))))
                           (declare (not safe))
                           (cons __tmp182962 _vars178098_))))
                    (declare (not safe))
                    (_lp178094_ _rest178120_ __tmp182963 __tmp182961))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth178124_))
                      (let ((__tmp182959
                             (let ((__tmp182960
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat178121_))))
                               (declare (not safe))
                               (cons __tmp182960 _targets178097_))))
                        (declare (not safe))
                        (_lp178094_ _rest178120_ __tmp182959 _vars178098_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177924_
                         _where178084_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest178099178109_))
                                                (let ((_hd178104178129_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest178099178109_)))
                                                      (_tl178105178131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest178099178109_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd178104178129_))
                                                      (let ((_hd178106178134_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd178104178129_)))
                    (_tl178107178136_
                     (let () (declare (not safe)) (##cdr _hd178104178129_))))
                (let* ((_hd-depth*178139_ _hd178106178134_)
                       (_hd-pat178141_ _tl178107178136_)
                       (_rest178143_ _tl178105178131_))
                  (declare (not safe))
                  (_K178103178126_
                   _rest178143_
                   _hd-pat178141_
                   _hd-depth*178139_)))
              (let () (declare (not safe)) (_else178101178117_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else178101178117_)))))))))))
                             (_recur177972_
                              (lambda (_e177977_ _is-e?177978_)
                                (if (_is-e?177978_ _e177977_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177924_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e177977_))
                                        (let* ((_pat177980_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e177977_)))
                                               (_depth177982_
                                                (##structure-ref
                                                 _pat177980_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth177982_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat177980_))
                                                      (let ((__tmp182980
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth177982_ _pat177980_))))
                (declare (not safe))
                (cons __tmp182980 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat177980_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e177977_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e177977_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e177977_))
                                                (let* ((_e177984177991_
                                                        _e177977_)
                                                       (_E177986177995_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e177984177991_))))
                                                       (_E177985178074_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e177984177991_))
                      (let ((_e177987177999_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e177984177991_))))
                        (let ((_hd177988178002_
                               (let ()
                                 (declare (not safe))
                                 (##car _e177987177999_)))
                              (_tl177989178004_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e177987177999_))))
                          (let* ((_hd178007_ _hd177988178002_)
                                 (_rest178009_ _tl177989178004_))
                            (if '#t
                                (if (_is-e?177978_ _hd178007_)
                                    (let* ((_e178010178017_ _rest178009_)
                                           (_E178012178021_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177924_
                                                 _e177977_))))
                                           (_E178011178035_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e178010178017_))
                                                  (let ((_e178013178025_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e178010178017_))))
                                                    (let ((_hd178014178028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e178013178025_)))
                                                          (_tl178015178030_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e178013178025_))))
                                                      (let ((_rest178033_
                                                             _hd178014178028_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl178015178030_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur177972_ _rest178033_ false))
                        (let () (declare (not safe)) (_E178012178021_)))
                    (let () (declare (not safe)) (_E178012178021_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178012178021_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E178011178035_)))
                                    (let _lp178039_ ((_rest178041_
                                                      _rest178009_)
                                                     (_depth178042_ '0))
                                      (let* ((_e178043178050_ _rest178041_)
                                             (_E178045178054_
                                              (lambda ()
                                                (if (fxpositive? _depth178042_)
                                                    (let ((__tmp182974
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177972_
                                                              _hd178007_
                                                              _is-e?177978_)))
                                                          (__tmp182973
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177972_
                                                              _rest178041_
                                                              _is-e?177978_))))
                                                      (declare (not safe))
                                                      (_make-splice177971_
                                                       _e177977_
                                                       _depth178042_
                                                       __tmp182974
                                                       __tmp182973))
                                                    (let ((__tmp182972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177972_
                                                              _hd178007_
                                                              _is-e?177978_)))
                                                          (__tmp182971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177972_
                                                              _rest178041_
                                                              _is-e?177978_))))
                                                      (declare (not safe))
                                                      (_make-cons177970_
                                                       __tmp182972
                                                       __tmp182971)))))
                                             (_E178044178070_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e178043178050_))
                                                    (let ((_e178046178058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e178043178050_))))
                                                      (let ((_hd178047178061_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e178046178058_)))
                    (_tl178048178063_
                     (let () (declare (not safe)) (##cdr _e178046178058_))))
                (let* ((_rest-hd178066_ _hd178047178061_)
                       (_rest-tl178068_ _tl178048178063_))
                  (if '#t
                      (if (_is-e?177978_ _rest-hd178066_)
                          (let ((__tmp182979
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth178042_ '1))))
                            (declare (not safe))
                            (_lp178039_ _rest-tl178068_ __tmp182979))
                          (if (fxpositive? _depth178042_)
                              (let ((__tmp182978
                                     (let ()
                                       (declare (not safe))
                                       (_recur177972_
                                        _hd178007_
                                        _is-e?177978_)))
                                    (__tmp182977
                                     (let ()
                                       (declare (not safe))
                                       (_recur177972_
                                        _rest178041_
                                        _is-e?177978_))))
                                (declare (not safe))
                                (_make-splice177971_
                                 _e177977_
                                 _depth178042_
                                 __tmp182978
                                 __tmp182977))
                              (let ((__tmp182976
                                     (let ()
                                       (declare (not safe))
                                       (_recur177972_
                                        _hd178007_
                                        _is-e?177978_)))
                                    (__tmp182975
                                     (let ()
                                       (declare (not safe))
                                       (_recur177972_
                                        _rest178041_
                                        _is-e?177978_))))
                                (declare (not safe))
                                (_make-cons177970_ __tmp182976 __tmp182975))))
                      (let () (declare (not safe)) (_E178045178054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E178045178054_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E178044178070_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E177986177995_))))))
                      (let () (declare (not safe)) (_E177986177995_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177985178074_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e177977_))
                                                    (let ((_g182968_
                                                           (let ((__tmp182970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e177977_)))))
                     (declare (not safe))
                     (_recur177972_ __tmp182970 _is-e?177978_))))
              (begin
                (let ((_g182969_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g182968_)
                             (##vector-length _g182968_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g182969_ 2)))
                      (error "Context expects 2 values" _g182969_)))
                (let ((_e178078_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182968_ 0)))
                      (_vars178079_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182968_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e178078_))
                          _vars178079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e177977_))
                                                        (let ((_g182965_
                                                               (let ((__tmp182967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e177977_)))))
                         (declare (not safe))
                         (_recur177972_ __tmp182967 _is-e?177978_))))
                  (begin
                    (let ((_g182966_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g182965_)
                                 (##vector-length _g182965_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g182966_ 2)))
                          (error "Context expects 2 values" _g182966_)))
                    (let ((_e178081_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182965_ 0)))
                          (_vars178082_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182965_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e178081_))
                              _vars178082_))))
                (values (let () (declare (not safe)) (cons 'datum _e177977_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g182981_
                             (let ()
                               (declare (not safe))
                               (_recur177972_ _e177968_ gx#ellipsis?))))
                        (begin
                          (let ((_g182982_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g182981_)
                                       (##vector-length _g182981_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g182982_ 2)))
                                (error "Context expects 2 values" _g182982_)))
                          (let ((_tree177974_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182981_ 0)))
                                (_vars177975_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182981_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars177975_))
                                _tree177974_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177924_
                                   _vars177975_))))))))))
          (let* ((_e177928177938_ _stx177924_)
                 (_E177930177942_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177924_))))
                 (_E177929177964_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177928177938_))
                        (let ((_e177931177946_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177928177938_))))
                          (let ((_hd177932177949_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177931177946_)))
                                (_tl177933177951_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177931177946_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177933177951_))
                                (let ((_e177934177954_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177933177951_))))
                                  (let ((_hd177935177957_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177934177954_)))
                                        (_tl177936177959_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177934177954_))))
                                    (let ((_form177962_ _hd177935177957_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177936177959_))
                                          (if '#t
                                              (let ((__tmp182984
                                                     (let ((__tmp182985
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177927_
                                                               _form177962_))))
                                                       (declare (not safe))
                                                       (_generate177926_
                                                        __tmp182985)))
                                                    (__tmp182983
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177924_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp182984
                                                 __tmp182983))
                                              (let ()
                                                (declare (not safe))
                                                (_E177930177942_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177930177942_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177930177942_)))))
                        (let () (declare (not safe)) (_E177930177942_))))))
            (let () (declare (not safe)) (_E177929177964_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx177188_
               _identifier=?177189_
               _unwrap-e177190_
               _wrap-e177191_)
        (letrec ((_generate-bindings177193_
                  (lambda (_target177788_
                           _ids177789_
                           _clauses177790_
                           _clause-ids177791_
                           _E177792_)
                    (letrec ((_generate1177794_
                              (lambda (_clause177891_
                                       _clause-id177892_
                                       _E177893_)
                                (let ((__tmp182990
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177892_ '())))
                                      (__tmp182986
                                       (let ((__tmp182987
                                              (let ((__tmp182989
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177788_
                                                             '())))
                                                    (__tmp182988
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause177195_
                                                        _target177788_
                                                        _ids177789_
                                                        _clause177891_
                                                        _E177893_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp182989
                                                 __tmp182988))))
                                         (declare (not safe))
                                         (cons __tmp182987 '()))))
                                  (declare (not safe))
                                  (cons __tmp182990 __tmp182986)))))
                      (let _lp177796_ ((_rest177798_ _clauses177790_)
                                       (_rest-ids177799_ _clause-ids177791_)
                                       (_bindings177800_ '()))
                        (let* ((_rest177801177809_ _rest177798_)
                               (_else177803177817_
                                (lambda () _bindings177800_))
                               (_K177805177879_
                                (lambda (_rest177820_ _clause177821_)
                                  (let* ((_rest-ids177822177829_
                                          _rest-ids177799_)
                                         (_E177824177833_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177822177829_)))
                                         (_K177825177867_
                                          (lambda (_rest-ids177836_
                                                   _clause-id177837_)
                                            (let* ((_rest-ids177838177846_
                                                    _rest-ids177836_)
                                                   (_else177840177854_
                                                    (lambda ()
                                                      (let ((__tmp182991
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177794_
                        _clause177821_
                        _clause-id177837_
                        _E177792_))))
                (declare (not safe))
                (cons __tmp182991 _bindings177800_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177842177859_
                                                    (lambda (_next-clause-id177857_)
                                                      (let ((__tmp182992
                                                             (let ((__tmp182993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177794_
                               _clause177821_
                               _clause-id177837_
                               _next-clause-id177857_))))
                       (declare (not safe))
                       (cons __tmp182993 _bindings177800_))))
                (declare (not safe))
                (_lp177796_ _rest177820_ _rest-ids177836_ __tmp182992)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177838177846_))
                                                  (let* ((_hd177843177862_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177838177846_)))
                                                         (_next-clause-id177865_
                                                          _hd177843177862_))
                                                    (declare (not safe))
                                                    (_K177842177859_
                                                     _next-clause-id177865_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177840177854_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177822177829_))
                                        (let ((_hd177826177870_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177822177829_)))
                                              (_tl177827177872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177822177829_))))
                                          (let* ((_clause-id177875_
                                                  _hd177826177870_)
                                                 (_rest-ids177877_
                                                  _tl177827177872_))
                                            (declare (not safe))
                                            (_K177825177867_
                                             _rest-ids177877_
                                             _clause-id177875_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177824177833_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177801177809_))
                              (let ((_hd177806177882_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177801177809_)))
                                    (_tl177807177884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177801177809_))))
                                (let* ((_clause177887_ _hd177806177882_)
                                       (_rest177889_ _tl177807177884_))
                                  (declare (not safe))
                                  (_K177805177879_
                                   _rest177889_
                                   _clause177887_)))
                              (let ()
                                (declare (not safe))
                                (_else177803177817_))))))))
                 (_generate-body177194_
                  (lambda (_bindings177748_ _body177749_)
                    (let _recur177751_ ((_rest177753_ _bindings177748_))
                      (let* ((_rest177754177762_ _rest177753_)
                             (_else177756177770_ (lambda () _body177749_))
                             (_K177758177776_
                              (lambda (_rest177773_ _hd177774_)
                                (let ((__tmp182995
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177774_ '())))
                                      (__tmp182994
                                       (let ()
                                         (declare (not safe))
                                         (_recur177751_ _rest177773_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp182995
                                   __tmp182994)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177754177762_))
                            (let ((_hd177759177779_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177754177762_)))
                                  (_tl177760177781_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177754177762_))))
                              (let* ((_hd177784_ _hd177759177779_)
                                     (_rest177786_ _tl177760177781_))
                                (declare (not safe))
                                (_K177758177776_ _rest177786_ _hd177784_)))
                            (let ()
                              (declare (not safe))
                              (_else177756177770_)))))))
                 (_generate-clause177195_
                  (lambda (_target177611_ _ids177612_ _clause177613_ _E177614_)
                    (letrec ((_generate1177616_
                              (lambda (_hd177703_ _fender177704_ _body177705_)
                                (let ((_g182996_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause177197_
                                          _hd177703_
                                          _ids177612_))))
                                  (begin
                                    (let ((_g182997_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182996_)
                                                 (##vector-length _g182996_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182997_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182997_)))
                                    (let ((_e177707_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182996_ 0)))
                                          (_mvars177708_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182996_ 1))))
                                      (let* ((_pvars177710_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177708_))))
                                             (_E177712_
                                              (let ((__tmp182998
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177611_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177614_ __tmp182998)))
                                             (_K177745_
                                              (let ((__tmp182999
                                                     (let ((__tmp183001
                                                            (map (lambda (_mvar177714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177715_)
                           (let* ((_mvar177716177723_ _mvar177714_)
                                  (_E177718177727_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177716177723_)))
                                  (_K177719177733_
                                   (lambda (_depth177730_ _id177731_)
                                     (let ((__tmp183002
                                            (let ((__tmp183003
                                                   (let ((__tmp183005
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177731_)))
                                                         (__tmp183004
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177715_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp183005
                                                      __tmp183004
                                                      _depth177730_))))
                                              (declare (not safe))
                                              (cons __tmp183003 '()))))
                                       (declare (not safe))
                                       (cons _id177731_ __tmp183002)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177716177723_))
                                 (let ((_hd177720177736_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177716177723_)))
                                       (_tl177721177738_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177716177723_))))
                                   (let* ((_id177741_ _hd177720177736_)
                                          (_depth177743_ _tl177721177738_))
                                     (declare (not safe))
                                     (_K177719177733_
                                      _depth177743_
                                      _id177741_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177718177727_)))))
                         _mvars177708_
                         _pvars177710_))
                   (__tmp183000
                    (if (let () (declare (not safe)) (eq? _fender177704_ '#t))
                        _body177705_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177704_
                           _body177705_
                           _E177712_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp183001 __tmp183000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177710_
                                                 __tmp182999))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match177196_
                                           _hd177703_
                                           _target177611_
                                           _e177707_
                                           _mvars177708_
                                           _K177745_
                                           _E177712_)))))))))
                      (let* ((_e177617177637_ _clause177613_)
                             (_E177626177641_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177617177637_))))
                             (_E177619177675_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177617177637_))
                                    (let ((_e177627177645_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177617177637_))))
                                      (let ((_hd177628177648_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177627177645_)))
                                            (_tl177629177650_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177627177645_))))
                                        (let ((_hd177653_ _hd177628177648_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177629177650_))
                                              (let ((_e177630177655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177629177650_))))
                                                (let ((_hd177631177658_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177630177655_)))
                                                      (_tl177632177660_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177630177655_))))
                                                  (let ((_fender177663_
                                                         _hd177631177658_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177632177660_))
                                                        (let ((_e177633177665_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177632177660_))))
                  (let ((_hd177634177668_
                         (let () (declare (not safe)) (##car _e177633177665_)))
                        (_tl177635177670_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177633177665_))))
                    (let ((_body177673_ _hd177634177668_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177635177670_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177616_
                                 _hd177653_
                                 _fender177663_
                                 _body177673_))
                              (let () (declare (not safe)) (_E177626177641_)))
                          (let () (declare (not safe)) (_E177626177641_))))))
                (let () (declare (not safe)) (_E177626177641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177626177641_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177626177641_)))))
                             (_E177618177699_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177617177637_))
                                    (let ((_e177620177679_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177617177637_))))
                                      (let ((_hd177621177682_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177620177679_)))
                                            (_tl177622177684_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177620177679_))))
                                        (let ((_hd177687_ _hd177621177682_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177622177684_))
                                              (let ((_e177623177689_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177622177684_))))
                                                (let ((_hd177624177692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177623177689_)))
                                                      (_tl177625177694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177623177689_))))
                                                  (let ((_body177697_
                                                         _hd177624177692_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177625177694_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177616_
                                                               _hd177687_
                                                               '#t
                                                               _body177697_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177619177675_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177619177675_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177619177675_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177619177675_))))))
                        (let () (declare (not safe)) (_E177618177699_))))))
                 (_generate-match177196_
                  (lambda (_where177360_
                           _target177361_
                           _hd177362_
                           _mvars177363_
                           _K177364_
                           _E177365_)
                    (letrec ((_BUG177367_
                              (lambda (_q177609_)
                                (error '"BUG: syntax-case; generate"
                                       _stx177188_
                                       _hd177362_
                                       _q177609_)))
                             (_recur177368_
                              (lambda (_e177459_
                                       _vars177460_
                                       _target177461_
                                       _E177462_
                                       _k177463_)
                                (let* ((_e177464177471_ _e177459_)
                                       (_E177466177475_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177464177471_)))
                                       (_K177467177597_
                                        (lambda (_body177478_ _tag177479_)
                                          (let ((_$e177481_ _tag177479_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177481_))
                                                (_k177463_ _vars177460_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177481_))
                                                    (let ((__tmp183112
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177461_)))
                                                          (__tmp183108
                                                           (let ((__tmp183110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183111
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e177191_
                                    _body177478_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?177189_
                             __tmp183111
                             _target177461_)))
                         (__tmp183109 (_k177463_ _vars177460_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp183110 __tmp183109 _E177462_))))
              (declare (not safe))
              (gx#core-list 'if __tmp183112 __tmp183108 _E177462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177481_))
                                                        (_k177463_
                                                         (let ((__tmp183107
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177478_ _target177461_))))
                   (declare (not safe))
                   (cons __tmp183107 _vars177460_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177481_))
                    (let ((_$e177484_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177485_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177486_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp183106
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177461_)))
                            (__tmp183087
                             (let ((__tmp183101
                                    (let ((__tmp183102
                                           (let ((__tmp183105
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177484_ '())))
                                                 (__tmp183103
                                                  (let ((__tmp183104
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e177190_
                                                            _target177461_))))
                                                    (declare (not safe))
                                                    (cons __tmp183104 '()))))
                                             (declare (not safe))
                                             (cons __tmp183105 __tmp183103))))
                                      (declare (not safe))
                                      (cons __tmp183102 '())))
                                   (__tmp183088
                                    (let ((__tmp183091
                                           (let ((__tmp183097
                                                  (let ((__tmp183100
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp183098
                 (let ((__tmp183099
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177484_))))
                   (declare (not safe))
                   (cons __tmp183099 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183100
                                                          __tmp183098)))
                                                 (__tmp183092
                                                  (let ((__tmp183093
                                                         (let ((__tmp183096
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177486_ '())))
                       (__tmp183094
                        (let ((__tmp183095
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177484_))))
                          (declare (not safe))
                          (cons __tmp183095 '()))))
                   (declare (not safe))
                   (cons __tmp183096 __tmp183094))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183093 '()))))
                                             (declare (not safe))
                                             (cons __tmp183097 __tmp183092)))
                                          (__tmp183089
                                           (let* ((_body177487177494_
                                                   _body177478_)
                                                  (_E177489177498_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177487177494_)))
                                                  (_K177490177506_
                                                   (lambda (_tl177501_
                                                            _hd177502_)
                                                     (let ((__tmp183090
                                                            (lambda (_vars177504_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177368_
                         _tl177501_
                         _vars177504_
                         _$tl177486_
                         _E177462_
                         _k177463_)))))
               (declare (not safe))
               (_recur177368_
                _hd177502_
                _vars177460_
                _$hd177485_
                _E177462_
                __tmp183090)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177487177494_))
                                                 (let ((_hd177491177509_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177487177494_)))
                                                       (_tl177492177511_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177487177494_))))
                                                   (let* ((_hd177514_
                                                           _hd177491177509_)
                                                          (_tl177516_
                                                           _tl177492177511_))
                                                     (declare (not safe))
                                                     (_K177490177506_
                                                      _tl177516_
                                                      _hd177514_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177489177498_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp183091
                                       __tmp183089))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp183101
                                __tmp183088))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp183106 __tmp183087 _E177462_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177481_))
                        (let* ((_body177517177524_ _body177478_)
                               (_E177519177528_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177517177524_)))
                               (_K177520177579_
                                (lambda (_tl177531_ _hd177532_)
                                  (let* ((_rlen177534_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177369_ _tl177531_)))
                                         (_$target177536_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177538_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177540_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177542_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177544_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177546_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177548_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177550_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177370_ _hd177532_)))
                                         (_lvars177552_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177550_)))
                                         (_tlvars177554_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177550_)))
                                         (_linit177558_
                                          (map (lambda (_var177556_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177552_)))
                                    (letrec ((_make-loop177561_
                                              (lambda (_vars177565_)
                                                (let ((__tmp183038
                                                       (let ((__tmp183039
                                                              (let ((__tmp183075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177542_ '())))
                            (__tmp183040
                             (let ((__tmp183041
                                    (let ((__tmp183074
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177538_ _lvars177552_)))
                                          (__tmp183042
                                           (let ((__tmp183073
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177538_)))
                                                 (__tmp183051
                                                  (let ((__tmp183068
                                                         (let ((__tmp183069
                                                                (let ((__tmp183072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177544_ '())))
                              (__tmp183070
                               (let ((__tmp183071
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e177190_
                                         _$hd177538_))))
                                 (declare (not safe))
                                 (cons __tmp183071 '()))))
                          (declare (not safe))
                          (cons __tmp183072 __tmp183070))))
                   (declare (not safe))
                   (cons __tmp183069 '())))
                (__tmp183052
                 (let ((__tmp183058
                        (let ((__tmp183064
                               (let ((__tmp183067
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177546_ '())))
                                     (__tmp183065
                                      (let ((__tmp183066
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177544_))))
                                        (declare (not safe))
                                        (cons __tmp183066 '()))))
                                 (declare (not safe))
                                 (cons __tmp183067 __tmp183065)))
                              (__tmp183059
                               (let ((__tmp183060
                                      (let ((__tmp183063
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177548_ '())))
                                            (__tmp183061
                                             (let ((__tmp183062
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177544_))))
                                               (declare (not safe))
                                               (cons __tmp183062 '()))))
                                        (declare (not safe))
                                        (cons __tmp183063 __tmp183061))))
                                 (declare (not safe))
                                 (cons __tmp183060 '()))))
                          (declare (not safe))
                          (cons __tmp183064 __tmp183059)))
                       (__tmp183053
                        (let ((__tmp183054
                               (lambda (_hdvars177567_)
                                 (let ((__tmp183055
                                        (let ((__tmp183056
                                               (map (lambda (_svar177569_
                                                             _lvar177570_)
                                                      (let ((__tmp183057
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177569_ _hdvars177567_ _BUG177367_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp183057 _lvar177570_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177550_
                                                    _lvars177552_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177548_ __tmp183056))))
                                   (declare (not safe))
                                   (cons _$lp177542_ __tmp183055)))))
                          (declare (not safe))
                          (_recur177368_
                           _hd177532_
                           '()
                           _$lp-hd177546_
                           _E177462_
                           __tmp183054))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp183058 __tmp183053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183068
                                                     __tmp183052)))
                                                 (__tmp183043
                                                  (let ((__tmp183047
                                                         (map (lambda (_lvar177572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177573_)
                        (let ((__tmp183050
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177573_ '())))
                              (__tmp183048
                               (let ((__tmp183049
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177572_))))
                                 (declare (not safe))
                                 (cons __tmp183049 '()))))
                          (declare (not safe))
                          (cons __tmp183050 __tmp183048)))
                      _lvars177552_
                      _tlvars177554_))
                (__tmp183044
                 (_k177463_
                  (let ((__tmp183045
                         (lambda (_svar177575_ _tlvar177576_ _r177577_)
                           (let ((__tmp183046
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177575_ _tlvar177576_))))
                             (declare (not safe))
                             (cons __tmp183046 _r177577_)))))
                    (declare (not safe))
                    (foldl2 __tmp183045
                            _vars177565_
                            _svars177550_
                            _tlvars177554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp183047
                                                     __tmp183044))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp183073
                                              __tmp183051
                                              __tmp183043))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp183074
                                       __tmp183042))))
                               (declare (not safe))
                               (cons __tmp183041 '()))))
                        (declare (not safe))
                        (cons __tmp183075 __tmp183040))))
                 (declare (not safe))
                 (cons __tmp183039 '())))
              (__tmp183036
               (let ((__tmp183037
                      (let ()
                        (declare (not safe))
                        (cons _$target177536_ _linit177558_))))
                 (declare (not safe))
                 (cons _$lp177542_ __tmp183037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp183038
                                                   __tmp183036)))))
                                      (let ((_body177563_
                                             (let ((__tmp183077
                                                    (let ((__tmp183078
                                                           (let ((__tmp183081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp183082
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177540_ '()))))
                            (declare (not safe))
                            (cons _$target177536_ __tmp183082)))
                         (__tmp183079
                          (let ((__tmp183080
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177461_
                                    _rlen177534_))))
                            (declare (not safe))
                            (cons __tmp183080 '()))))
                     (declare (not safe))
                     (cons __tmp183081 __tmp183079))))
              (declare (not safe))
              (cons __tmp183078 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183076
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177368_
                                                       _tl177531_
                                                       _vars177460_
                                                       _$tl177540_
                                                       _E177462_
                                                       _make-loop177561_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183077
                                                __tmp183076))))
                                        (let ((__tmp183086
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177461_)))
                                              (__tmp183083
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177534_))
                                                   _body177563_
                                                   (let ((__tmp183084
                                                          (let ((__tmp183085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177461_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp183085 _rlen177534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp183084
                                                      _body177563_
                                                      _E177462_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp183086
                                           __tmp183083
                                           _E177462_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177517177524_))
                              (let ((_hd177521177582_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177517177524_)))
                                    (_tl177522177584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177517177524_))))
                                (let* ((_hd177587_ _hd177521177582_)
                                       (_tl177589_ _tl177522177584_))
                                  (declare (not safe))
                                  (_K177520177579_ _tl177589_ _hd177587_)))
                              (let () (declare (not safe)) (_E177519177528_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177481_))
                            (let ((__tmp183035
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177461_)))
                                  (__tmp183034 (_k177463_ _vars177460_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp183035
                               __tmp183034
                               _E177462_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177481_))
                                (let ((_$e177591_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp183033
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177461_)))
                                        (__tmp183025
                                         (let ((__tmp183027
                                                (let ((__tmp183028
                                                       (let ((__tmp183032
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177591_ '())))
                     (__tmp183029
                      (let ((__tmp183030
                             (let ((__tmp183031
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e177190_
                                       _target177461_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp183031))))
                        (declare (not safe))
                        (cons __tmp183030 '()))))
                 (declare (not safe))
                 (cons __tmp183032 __tmp183029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp183028 '())))
                                               (__tmp183026
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177368_
                                                   _body177478_
                                                   _vars177460_
                                                   _$e177591_
                                                   _E177462_
                                                   _k177463_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp183027
                                            __tmp183026))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp183033
                                     __tmp183025
                                     _E177462_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177481_))
                                    (let ((_$e177593_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp183024
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177461_)))
                                            (__tmp183016
                                             (let ((__tmp183018
                                                    (let ((__tmp183019
                                                           (let ((__tmp183023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177593_ '())))
                         (__tmp183020
                          (let ((__tmp183021
                                 (let ((__tmp183022
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e177190_
                                           _target177461_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp183022))))
                            (declare (not safe))
                            (cons __tmp183021 '()))))
                     (declare (not safe))
                     (cons __tmp183023 __tmp183020))))
              (declare (not safe))
              (cons __tmp183019 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp183017
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177368_
                                                       _body177478_
                                                       _vars177460_
                                                       _$e177593_
                                                       _E177462_
                                                       _k177463_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp183018
                                                __tmp183017))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp183024
                                         __tmp183016
                                         _E177462_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177481_))
                                        (let ((_$e177595_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp183015
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177461_)))
                                                (__tmp183006
                                                 (let ((__tmp183010
                                                        (let ((__tmp183011
                                                               (let ((__tmp183014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177595_ '())))
                             (__tmp183012
                              (let ((__tmp183013
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177461_))))
                                (declare (not safe))
                                (cons __tmp183013 '()))))
                         (declare (not safe))
                         (cons __tmp183014 __tmp183012))))
                  (declare (not safe))
                  (cons __tmp183011 '())))
               (__tmp183007
                (let ((__tmp183009
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177595_ _body177478_)))
                      (__tmp183008 (_k177463_ _vars177460_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp183009 __tmp183008 _E177462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp183010
                                                    __tmp183007))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp183015
                                             __tmp183006
                                             _E177462_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177367_ _e177459_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177464177471_))
                                      (let ((_hd177468177600_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177464177471_)))
                                            (_tl177469177602_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177464177471_))))
                                        (let* ((_tag177605_ _hd177468177600_)
                                               (_body177607_ _tl177469177602_))
                                          (declare (not safe))
                                          (_K177467177597_
                                           _body177607_
                                           _tag177605_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177466177475_))))))
                             (_splice-rlen177369_
                              (lambda (_e177421_)
                                (let _lp177423_ ((_e177425_ _e177421_)
                                                 (_n177426_ '0))
                                  (let* ((_e177427177434_ _e177425_)
                                         (_E177429177438_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177427177434_)))
                                         (_K177430177447_
                                          (lambda (_body177441_ _tag177442_)
                                            (let ((_$e177444_ _tag177442_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177444_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx177188_
                                                     _where177360_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177444_))
                                                      (let ((__tmp183114
                                                             (cdr _body177441_))
                                                            (__tmp183113
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177426_ '1))))
                (declare (not safe))
                (_lp177423_ __tmp183114 __tmp183113))
              _n177426_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177427177434_))
                                        (let ((_hd177431177450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177427177434_)))
                                              (_tl177432177452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177427177434_))))
                                          (let* ((_tag177455_ _hd177431177450_)
                                                 (_body177457_
                                                  _tl177432177452_))
                                            (declare (not safe))
                                            (_K177430177447_
                                             _body177457_
                                             _tag177455_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177429177438_)))))))
                             (_splice-vars177370_
                              (lambda (_e177377_)
                                (let _recur177379_ ((_e177381_ _e177377_)
                                                    (_vars177382_ '()))
                                  (let* ((_e177383177390_ _e177381_)
                                         (_E177385177394_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177383177390_)))
                                         (_K177386177409_
                                          (lambda (_body177397_ _tag177398_)
                                            (let ((_$e177400_ _tag177398_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177400_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177397_
                                                          _vars177382_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177400_))
                  (let () (declare (not safe)) (eq? 'splice _$e177400_)))
              (let ((__tmp183117 (cdr _body177397_))
                    (__tmp183115
                     (let ((__tmp183116 (car _body177397_)))
                       (declare (not safe))
                       (_recur177379_ __tmp183116 _vars177382_))))
                (declare (not safe))
                (_recur177379_ __tmp183117 __tmp183115))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177400_))
                      (let () (declare (not safe)) (eq? 'box _$e177400_)))
                  (let ()
                    (declare (not safe))
                    (_recur177379_ _body177397_ _vars177382_))
                  _vars177382_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177383177390_))
                                        (let ((_hd177387177412_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177383177390_)))
                                              (_tl177388177414_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177383177390_))))
                                          (let* ((_tag177417_ _hd177387177412_)
                                                 (_body177419_
                                                  _tl177388177414_))
                                            (declare (not safe))
                                            (_K177386177409_
                                             _body177419_
                                             _tag177417_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177385177394_)))))))
                             (_make-body177371_
                              (lambda (_vars177373_)
                                (let ((__tmp183118
                                       (map (lambda (_mvar177375_)
                                              (let ((__tmp183119
                                                     (car _mvar177375_)))
                                                (declare (not safe))
                                                (assgetq __tmp183119
                                                         _vars177373_
                                                         _BUG177367_)))
                                            _mvars177363_)))
                                  (declare (not safe))
                                  (cons _K177364_ __tmp183118)))))
                      (let ()
                        (declare (not safe))
                        (_recur177368_
                         _hd177362_
                         '()
                         _target177361_
                         _E177365_
                         _make-body177371_)))))
                 (_parse-clause177197_
                  (lambda (_hd177266_ _ids177267_)
                    (let _recur177269_ ((_e177271_ _hd177266_)
                                        (_vars177272_ '())
                                        (_depth177273_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177271_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177271_))
                              (values '(any) _vars177272_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177271_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx177188_
                                     _hd177266_))
                                  (if (let ((__tmp183135
                                             (lambda (_id177275_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177271_
                                                  _id177275_)))))
                                        (declare (not safe))
                                        (find __tmp183135 _ids177267_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177271_))
                                              _vars177272_)
                                      (if (let ((__tmp183133
                                                 (lambda (_var177277_)
                                                   (let ((__tmp183134
                                                          (car _var177277_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177271_
                                                      __tmp183134)))))
                                            (declare (not safe))
                                            (find __tmp183133 _vars177272_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx177188_
                                             _e177271_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177271_))
                                                  (let ((__tmp183132
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177273_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183132
                                                          _vars177272_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177271_))
                              (let* ((_e177278177285_ _e177271_)
                                     (_E177280177289_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177278177285_))))
                                     (_E177279177350_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177278177285_))
                                            (let ((_e177281177293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177278177285_))))
                                              (let ((_hd177282177296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177281177293_)))
                                                    (_tl177283177298_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177281177293_))))
                                                (let* ((_hd177301_
                                                        _hd177282177296_)
                                                       (_rest177303_
                                                        _tl177283177298_))
                                                  (if '#t
                                                      (let* ((_make-pair177318_
                                                              (lambda (_tag177305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177306_
                               _tl177307_)
                        (let* ((_hd-depth177309_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177305_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177273_ '1))
                                    _depth177273_))
                               (_g183127_
                                (let ()
                                  (declare (not safe))
                                  (_recur177269_
                                   _hd177306_
                                   _vars177272_
                                   _hd-depth177309_))))
                          (begin
                            (let ((_g183128_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g183127_)
                                         (##vector-length _g183127_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g183128_ 2)))
                                  (error "Context expects 2 values"
                                         _g183128_)))
                            (let ((_hd177311_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183127_ 0)))
                                  (_vars177312_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g183127_ 1))))
                              (let ((_g183129_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177269_
                                        _tl177307_
                                        _vars177312_
                                        _depth177273_))))
                                (begin
                                  (let ((_g183130_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g183129_)
                                               (##vector-length _g183129_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g183130_ 2)))
                                        (error "Context expects 2 values"
                                               _g183130_)))
                                  (let ((_tl177314_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183129_ 0)))
                                        (_vars177315_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g183129_ 1))))
                                    (let ()
                                      (values (let ((__tmp183131
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177311_
                                                             _tl177314_))))
                                                (declare (not safe))
                                                (cons _tag177305_ __tmp183131))
                                              _vars177315_))))))))))
                     (_e177319177326_ _rest177303_)
                     (_E177321177330_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177318_ 'cons _hd177301_ _rest177303_))))
                     (_E177320177346_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177319177326_))
                            (let ((_e177322177334_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177319177326_))))
                              (let ((_hd177323177337_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177322177334_)))
                                    (_tl177324177339_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177322177334_))))
                                (let* ((_rest-hd177342_ _hd177323177337_)
                                       (_rest-tl177344_ _tl177324177339_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177342_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177318_
                                             'splice
                                             _hd177301_
                                             _rest-tl177344_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177318_
                                             'cons
                                             _hd177301_
                                             _rest177303_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177321177330_))))))
                            (let () (declare (not safe)) (_E177321177330_))))))
                (let () (declare (not safe)) (_E177320177346_)))
              (let () (declare (not safe)) (_E177280177289_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177280177289_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177279177350_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177271_))
                                  (values '(null) _vars177272_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177271_))
                                      (let ((_g183124_
                                             (let ((__tmp183126
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177271_)))))
                                               (declare (not safe))
                                               (_recur177269_
                                                __tmp183126
                                                _vars177272_
                                                _depth177273_))))
                                        (begin
                                          (let ((_g183125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g183124_)
                                                       (##vector-length
                                                        _g183124_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g183125_ 2)))
                                                (error "Context expects 2 values"
                                                       _g183125_)))
                                          (let ((_e177354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g183124_ 0)))
                                                (_vars177355_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g183124_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177354_))
                                                    _vars177355_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177271_))
                                          (let ((_g183121_
                                                 (let ((__tmp183123
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177269_
                                                    __tmp183123
                                                    _vars177272_
                                                    _depth177273_))))
                                            (begin
                                              (let ((_g183122_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g183121_)
                                                           (##vector-length
                                                            _g183121_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g183122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g183122_)))
                                              (let ((_e177357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183121_
                                                        0)))
                                                    (_vars177358_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g183121_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177357_))
                                                        _vars177358_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177271_))
                                              (values (let ((__tmp183120
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177271_))))
                (declare (not safe))
                (cons 'datum __tmp183120))
              _vars177272_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx177188_
                                                 _e177271_))))))))))))
          (let* ((_e177198177211_ _stx177188_)
                 (_E177200177215_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e177198177211_))))
                 (_E177199177262_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177198177211_))
                        (let ((_e177201177219_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177198177211_))))
                          (let ((_hd177202177222_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177201177219_)))
                                (_tl177203177224_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177201177219_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177203177224_))
                                (let ((_e177204177227_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177203177224_))))
                                  (let ((_hd177205177230_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177204177227_)))
                                        (_tl177206177232_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177204177227_))))
                                    (let ((_expr177235_ _hd177205177230_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl177206177232_))
                                          (let ((_e177207177237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl177206177232_))))
                                            (let ((_hd177208177240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177207177237_)))
                                                  (_tl177209177242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177207177237_))))
                                              (let* ((_ids177245_
                                                      _hd177208177240_)
                                                     (_clauses177247_
                                                      _tl177209177242_))
                                                (if '#t
                                                    (if (let ((__tmp183153
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177245_))))
                  (declare (not safe))
                  (not __tmp183153))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx177188_
                   _ids177245_))
                (if (let ((__tmp183152
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177247_))))
                      (declare (not safe))
                      (not __tmp183152))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx177188_))
                    (let* ((_ids177249_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177245_)))
                           (_clauses177251_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177247_)))
                           (_clause-ids177253_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177251_)))
                           (_E177255_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177257_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177259_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177251_))
                                _E177255_
                                (car _clause-ids177253_))))
                      (let ((__tmp183137
                             (let ((__tmp183138
                                    (let ((__tmp183140
                                           (let ((__tmp183145
                                                  (let ((__tmp183146
                                                         (let ((__tmp183151
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177255_ '())))
                       (__tmp183147
                        (let ((__tmp183148
                               (let ((__tmp183150
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177257_ '())))
                                     (__tmp183149
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177257_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp183150
                                  __tmp183149))))
                          (declare (not safe))
                          (cons __tmp183148 '()))))
                   (declare (not safe))
                   (cons __tmp183151 __tmp183147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp183146 '())))
                                                 (__tmp183141
                                                  (let ((__tmp183144
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings177193_
                                                            _target177257_
                                                            _ids177249_
                                                            _clauses177251_
                                                            _clause-ids177253_
                                                            _E177255_)))
                                                        (__tmp183142
                                                         (let ((__tmp183143
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177235_ '()))))
                   (declare (not safe))
                   (cons _first177259_ __tmp183143))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body177194_
                                                     __tmp183144
                                                     __tmp183142))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp183145
                                              __tmp183141)))
                                          (__tmp183139
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx177188_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp183140
                                       __tmp183139))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp183138)))
                            (__tmp183136
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx177188_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp183137 __tmp183136)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177200177215_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177200177215_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177200177215_)))))
                        (let () (declare (not safe)) (_E177200177215_))))))
            (let () (declare (not safe)) (_E177199177262_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177898_)
        (let* ((_identifier=?177900_ 'free-identifier=?)
               (_unwrap-e177902_ 'syntax-e)
               (_wrap-e177904_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177898_
           _identifier=?177900_
           _unwrap-e177902_
           _wrap-e177904_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177906_ _identifier=?177907_)
        (let* ((_unwrap-e177909_ 'syntax-e) (_wrap-e177911_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177906_
           _identifier=?177907_
           _unwrap-e177909_
           _wrap-e177911_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177913_ _identifier=?177914_ _unwrap-e177915_)
        (let ((_wrap-e177917_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177913_
           _identifier=?177914_
           _unwrap-e177915_
           _wrap-e177917_))))
    (define gx#macro-expand-syntax-case
      (lambda _g183155_
        (let ((_g183154_ (let () (declare (not safe)) (##length _g183155_))))
          (cond ((let () (declare (not safe)) (##fx= _g183154_ 1))
                 (apply (lambda (_stx177898_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177898_)))
                        _g183155_))
                ((let () (declare (not safe)) (##fx= _g183154_ 2))
                 (apply (lambda (_stx177906_ _identifier=?177907_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177906_
                             _identifier=?177907_)))
                        _g183155_))
                ((let () (declare (not safe)) (##fx= _g183154_ 3))
                 (apply (lambda (_stx177913_
                                 _identifier=?177914_
                                 _unwrap-e177915_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177913_
                             _identifier=?177914_
                             _unwrap-e177915_)))
                        _g183155_))
                ((let () (declare (not safe)) (##fx= _g183154_ 4))
                 (apply (lambda (_stx177919_
                                 _identifier=?177920_
                                 _unwrap-e177921_
                                 _wrap-e177922_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177919_
                             _identifier=?177920_
                             _unwrap-e177921_
                             _wrap-e177922_)))
                        _g183155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g183155_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx177185_)
        (if (let () (declare (not safe)) (gx#identifier? _stx177185_))
            (let ((__tmp183156
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx177185_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp183156 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd177143_ . _rest177144_)
        (let ((_len177146_ (length _hd177143_)))
          (let _lp177148_ ((_rest177150_ _rest177144_))
            (let* ((_rest177151177159_ _rest177150_)
                   (_else177153177167_ (lambda () '#!void))
                   (_K177155177173_
                    (lambda (_rest177170_ _hd177171_)
                      (if (fx= _len177146_ (length _hd177171_))
                          (let ()
                            (declare (not safe))
                            (_lp177148_ _rest177170_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd177171_))))))
              (if (let () (declare (not safe)) (##pair? _rest177151177159_))
                  (let ((_hd177156177176_
                         (let ()
                           (declare (not safe))
                           (##car _rest177151177159_)))
                        (_tl177157177178_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest177151177159_))))
                    (let* ((_hd177181_ _hd177156177176_)
                           (_rest177183_ _tl177157177178_))
                      (declare (not safe))
                      (_K177155177173_ _rest177183_ _hd177181_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx177101_ _n177102_)
        (let _lp177104_ ((_rest177106_ _stx177101_) (_r177107_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest177106_))
              (let* ((_g177108177115_
                      (let () (declare (not safe)) (gx#syntax-e _rest177106_)))
                     (_E177110177119_
                      (lambda ()
                        (error '"No clause matching" _g177108177115_)))
                     (_K177111177125_
                      (lambda (_rest177122_ _hd177123_)
                        (let ((__tmp183161
                               (let ()
                                 (declare (not safe))
                                 (cons _hd177123_ _r177107_))))
                          (declare (not safe))
                          (_lp177104_ _rest177122_ __tmp183161)))))
                (if (let () (declare (not safe)) (##pair? _g177108177115_))
                    (let ((_hd177112177128_
                           (let ()
                             (declare (not safe))
                             (##car _g177108177115_)))
                          (_tl177113177130_
                           (let ()
                             (declare (not safe))
                             (##cdr _g177108177115_))))
                      (let* ((_hd177133_ _hd177112177128_)
                             (_rest177135_ _tl177113177130_))
                        (declare (not safe))
                        (_K177111177125_ _rest177135_ _hd177133_)))
                    (let () (declare (not safe)) (_E177110177119_))))
              (let _lp177137_ ((_n177139_ _n177102_)
                               (_l177140_ _r177107_)
                               (_r177141_ _rest177106_))
                (if (let () (declare (not safe)) (null? _l177140_))
                    (values _l177140_ _r177141_)
                    (if (fxpositive? _n177139_)
                        (let ((__tmp183160
                               (let ()
                                 (declare (not safe))
                                 (fx- _n177139_ '1)))
                              (__tmp183159 (cdr _l177140_))
                              (__tmp183157
                               (let ((__tmp183158 (car _l177140_)))
                                 (declare (not safe))
                                 (cons __tmp183158 _r177141_))))
                          (declare (not safe))
                          (_lp177137_ __tmp183160 __tmp183159 __tmp183157))
                        (values (reverse _l177140_) _r177141_))))))))))
