(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708102803)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186184 (list gx#expander::t))
            (__tmp186182
             (let ((__tmp186183
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp186183 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186184
         '(id depth)
         __tmp186182
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args181611_
        (apply make-instance gx#syntax-pattern::t _$args181611_)))
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
      (lambda (_self181608_ _stx181609_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx181609_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx181090_)
        (letrec ((_generate181092_
                  (lambda (_e181319_)
                    (letrec ((_BUG181321_
                              (lambda (_q181483_)
                                (error '"BUG: syntax; generate"
                                       _stx181090_
                                       _e181319_
                                       _q181483_)))
                             (_local-pattern-e181322_
                              (lambda (_pat181481_)
                                (let ((__tmp186185
                                       (##structure-ref
                                        _pat181481_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186185))))
                             (_getvar181323_
                              (lambda (_q181478_ _vars181479_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q181478_
                                           _vars181479_
                                           _BUG181321_))))
                             (_getarg181324_
                              (lambda (_arg181444_ _vars181445_)
                                (let* ((_arg181446181453_ _arg181444_)
                                       (_E181448181457_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg181446181453_)))
                                       (_K181449181466_
                                        (lambda (_e181460_ _tag181461_)
                                          (let ((_$e181463_ _tag181461_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e181463_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar181323_
                                                   _e181460_
                                                   _vars181445_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e181463_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e181322_
                                                       _e181460_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG181321_
                                                       _arg181444_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg181446181453_))
                                      (let ((_hd181450181469_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg181446181453_)))
                                            (_tl181451181471_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg181446181453_))))
                                        (let* ((_tag181474_ _hd181450181469_)
                                               (_e181476_ _tl181451181471_))
                                          (declare (not safe))
                                          (_K181449181466_
                                           _e181476_
                                           _tag181474_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E181448181457_)))))))
                      (let _recur181326_ ((_e181328_ _e181319_)
                                          (_vars181329_ '()))
                        (let* ((_e181330181337_ _e181328_)
                               (_E181332181341_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e181330181337_)))
                               (_K181333181432_
                                (lambda (_body181344_ _tag181345_)
                                  (let ((_$e181347_ _tag181345_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e181347_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body181344_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e181347_))
                                            (let ((_id181350_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body181344_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id181350_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks181352_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id181350_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks181352_))
                                                        (let ((__tmp186213
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body181344_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186213))
                (let ((__tmp186212
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body181344_)))
                      (__tmp186211
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body181344_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186212
                   __tmp186211
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id181350_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body181344_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG181321_
                                                         _e181328_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e181347_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e181322_
                                                   _body181344_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e181347_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar181323_
                                                       _body181344_
                                                       _vars181329_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e181347_))
                                                        (let ((__tmp186209
                                                               (let ((__tmp186210
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body181344_)))
                         (declare (not safe))
                         (_recur181326_ __tmp186210 _vars181329_)))
                      (__tmp186207
                       (let ((__tmp186208 (cdr _body181344_)))
                         (declare (not safe))
                         (_recur181326_ __tmp186208 _vars181329_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp186209 __tmp186207))
                (if (let () (declare (not safe)) (eq? 'vector _$e181347_))
                    (let ((__tmp186206
                           (let ()
                             (declare (not safe))
                             (_recur181326_ _body181344_ _vars181329_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186206))
                    (if (let () (declare (not safe)) (eq? 'box _$e181347_))
                        (let ((__tmp186205
                               (let ()
                                 (declare (not safe))
                                 (_recur181326_ _body181344_ _vars181329_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186205))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e181347_))
                            (let* ((_body181353181364_ _body181344_)
                                   (_E181355181368_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body181353181364_)))
                                   (_K181356181406_
                                    (lambda (_args181371_
                                             _iv181372_
                                             _hd181373_
                                             _depth181374_)
                                      (let* ((_targets181380_
                                              (map (lambda (_g181375181377_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg181324_
                                                        _g181375181377_
                                                        _vars181329_)))
                                                   _args181371_))
                                             (_fold-in181382_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args181371_)))
                                             (_fold-out181384_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args181386_
                                              (let ((__tmp186186
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out181384_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp186186
                                                        _fold-in181382_)))
                                             (_lambda-body181403_
                                              (if (fx> _depth181374_ '1)
                                                  (let ((_r-args181394_
                                                         (map (lambda (_arg181388_)
                                                                (let ((__tmp186191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg181388_)))
                          (declare (not safe))
                          (cons 'ref __tmp186191)))
                      _args181371_))
                (_r-vars181395_
                 (let ((__tmp186192
                        (lambda (_arg181390_ _var181391_ _r181392_)
                          (let ((__tmp186193
                                 (let ((__tmp186194 (cdr _arg181390_)))
                                   (declare (not safe))
                                   (cons __tmp186194 _var181391_))))
                            (declare (not safe))
                            (cons __tmp186193 _r181392_)))))
                   (declare (not safe))
                   (foldr2 __tmp186192
                           _vars181329_
                           _args181371_
                           _fold-in181382_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186195
                                                           (let ((__tmp186196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186200
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth181374_ '1)))
                                (__tmp186197
                                 (let ((__tmp186198
                                        (let ((__tmp186199
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out181384_))))
                                          (declare (not safe))
                                          (cons __tmp186199 _r-args181394_))))
                                   (declare (not safe))
                                   (cons _hd181373_ __tmp186198))))
                            (declare (not safe))
                            (cons __tmp186200 __tmp186197))))
                     (declare (not safe))
                     (cons 'splice __tmp186196))))
              (declare (not safe))
              (_recur181326_ __tmp186195 _r-vars181395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars181401_
                                                          (let ((__tmp186187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg181397_ _var181398_ _r181399_)
                           (let ((__tmp186188
                                  (let ((__tmp186189 (cdr _arg181397_)))
                                    (declare (not safe))
                                    (cons __tmp186189 _var181398_))))
                             (declare (not safe))
                             (cons __tmp186188 _r181399_)))))
                    (declare (not safe))
                    (foldr2 __tmp186187
                            _vars181329_
                            _args181371_
                            _fold-in181382_)))
                 (__tmp186190
                  (let ()
                    (declare (not safe))
                    (_recur181326_ _hd181373_ _hd-vars181401_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186190
                                                     _fold-out181384_)))))
                                        (let ((__tmp186204
                                               (if (fx> (length _targets181380_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets181380_))
                                                   '#!void))
                                              (__tmp186201
                                               (let ((__tmp186203
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args181386_
                                                         _lambda-body181403_)))
                                                     (__tmp186202
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur181326_
                                                         _iv181372_
                                                         _vars181329_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186203
                                                  __tmp186202
                                                  _targets181380_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186204
                                           __tmp186201))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body181353181364_))
                                  (let ((_hd181357181409_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body181353181364_)))
                                        (_tl181358181411_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body181353181364_))))
                                    (let ((_depth181414_ _hd181357181409_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl181358181411_))
                                          (let ((_hd181359181416_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl181358181411_)))
                                                (_tl181360181418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl181358181411_))))
                                            (let ((_hd181421_
                                                   _hd181359181416_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl181360181418_))
                                                  (let ((_hd181361181423_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl181360181418_)))
                                                        (_tl181362181425_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl181360181418_))))
                                                    (let* ((_iv181428_
                                                            _hd181361181423_)
                                                           (_args181430_
                                                            _tl181362181425_))
                                                      (declare (not safe))
                                                      (_K181356181406_
                                                       _args181430_
                                                       _iv181428_
                                                       _hd181421_
                                                       _depth181414_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181355181368_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E181355181368_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E181355181368_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e181347_))
                                _body181344_
                                (let ()
                                  (declare (not safe))
                                  (_BUG181321_ _e181328_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e181330181337_))
                              (let ((_hd181334181435_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e181330181337_)))
                                    (_tl181335181437_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e181330181337_))))
                                (let* ((_tag181440_ _hd181334181435_)
                                       (_body181442_ _tl181335181437_))
                                  (declare (not safe))
                                  (_K181333181432_ _body181442_ _tag181440_)))
                              (let ()
                                (declare (not safe))
                                (_E181332181341_))))))))
                 (_parse181093_
                  (lambda (_e181134_)
                    (letrec ((_make-cons181136_
                              (lambda (_hd181311_ _tl181312_)
                                (let ((_g186214_ _hd181311_)
                                      (_g186216_ _tl181312_))
                                  (begin
                                    (let ((_g186215_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186214_)
                                                 (##vector-length _g186214_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186215_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186215_)))
                                    (let ((_g186217_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186216_)
                                                 (##vector-length _g186216_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186217_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186217_)))
                                    (let ((_hd-e181314_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186214_ 0)))
                                          (_hd-vars181315_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186214_ 1))))
                                      (let ((_tl-e181316_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186216_ 0)))
                                            (_tl-vars181317_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186216_ 1))))
                                        (values (let ((__tmp186218
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e181314_
                                                               _tl-e181316_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp186218))
                                                (append _hd-vars181315_
                                                        _tl-vars181317_))))))))
                             (_make-splice181137_
                              (lambda (_where181250_
                                       _depth181251_
                                       _hd181252_
                                       _tl181253_)
                                (let ((_g186219_ _hd181252_)
                                      (_g186221_ _tl181253_))
                                  (begin
                                    (let ((_g186220_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186219_)
                                                 (##vector-length _g186219_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186220_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186220_)))
                                    (let ((_g186222_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186221_)
                                                 (##vector-length _g186221_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186222_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186222_)))
                                    (let ((_hd-e181255_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186219_ 0)))
                                          (_hd-vars181256_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186219_ 1))))
                                      (let ((_tl-e181257_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186221_ 0)))
                                            (_tl-vars181258_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186221_ 1))))
                                        (let _lp181260_ ((_rest181262_
                                                          _hd-vars181256_)
                                                         (_targets181263_ '())
                                                         (_vars181264_
                                                          _tl-vars181258_))
                                          (let* ((_rest181265181275_
                                                  _rest181262_)
                                                 (_else181267181283_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets181263_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx181090_
                                                           _where181250_))
                                                        (values (let ((__tmp186223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp186224
                                      (let ((__tmp186225
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e181257_
                                                     _targets181263_))))
                                        (declare (not safe))
                                        (cons _hd-e181255_ __tmp186225))))
                                 (declare (not safe))
                                 (cons _depth181251_ __tmp186224))))
                          (declare (not safe))
                          (cons 'splice __tmp186223))
                        _vars181264_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K181269181292_
                                                  (lambda (_rest181286_
                                                           _hd-pat181287_
                                                           _hd-depth*181288_)
                                                    (let ((_hd-depth181290_
                                                           (fx- _hd-depth*181288_
                                                                _depth181251_)))
                                                      (if (fxpositive?
                                                           _hd-depth181290_)
                                                          (let ((__tmp186230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp186231
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat181287_))))
                           (declare (not safe))
                           (cons __tmp186231 _targets181263_)))
                        (__tmp186228
                         (let ((__tmp186229
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth181290_ _hd-pat181287_))))
                           (declare (not safe))
                           (cons __tmp186229 _vars181264_))))
                    (declare (not safe))
                    (_lp181260_ _rest181286_ __tmp186230 __tmp186228))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth181290_))
                      (let ((__tmp186226
                             (let ((__tmp186227
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat181287_))))
                               (declare (not safe))
                               (cons __tmp186227 _targets181263_))))
                        (declare (not safe))
                        (_lp181260_ _rest181286_ __tmp186226 _vars181264_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx181090_
                         _where181250_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest181265181275_))
                                                (let ((_hd181270181295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest181265181275_)))
                                                      (_tl181271181297_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest181265181275_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd181270181295_))
                                                      (let ((_hd181272181300_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd181270181295_)))
                    (_tl181273181302_
                     (let () (declare (not safe)) (##cdr _hd181270181295_))))
                (let* ((_hd-depth*181305_ _hd181272181300_)
                       (_hd-pat181307_ _tl181273181302_)
                       (_rest181309_ _tl181271181297_))
                  (declare (not safe))
                  (_K181269181292_
                   _rest181309_
                   _hd-pat181307_
                   _hd-depth*181305_)))
              (let () (declare (not safe)) (_else181267181283_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else181267181283_)))))))))))
                             (_recur181138_
                              (lambda (_e181143_ _is-e?181144_)
                                (if (_is-e?181144_ _e181143_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx181090_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e181143_))
                                        (let* ((_pat181146_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e181143_)))
                                               (_depth181148_
                                                (##structure-ref
                                                 _pat181146_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth181148_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat181146_))
                                                      (let ((__tmp186247
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth181148_ _pat181146_))))
                (declare (not safe))
                (cons __tmp186247 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat181146_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e181143_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e181143_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e181143_))
                                                (let* ((_e181150181157_
                                                        _e181143_)
                                                       (_E181152181161_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e181150181157_))))
                                                       (_E181151181240_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e181150181157_))
                      (let ((_e181153181165_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e181150181157_))))
                        (let ((_hd181154181168_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181153181165_)))
                              (_tl181155181170_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181153181165_))))
                          (let* ((_hd181173_ _hd181154181168_)
                                 (_rest181175_ _tl181155181170_))
                            (if '#t
                                (if (_is-e?181144_ _hd181173_)
                                    (let* ((_e181176181183_ _rest181175_)
                                           (_E181178181187_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx181090_
                                                 _e181143_))))
                                           (_E181177181201_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e181176181183_))
                                                  (let ((_e181179181191_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e181176181183_))))
                                                    (let ((_hd181180181194_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e181179181191_)))
                                                          (_tl181181181196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e181179181191_))))
                                                      (let ((_rest181199_
                                                             _hd181180181194_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl181181181196_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur181138_ _rest181199_ false))
                        (let () (declare (not safe)) (_E181178181187_)))
                    (let () (declare (not safe)) (_E181178181187_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181178181187_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E181177181201_)))
                                    (let _lp181205_ ((_rest181207_
                                                      _rest181175_)
                                                     (_depth181208_ '0))
                                      (let* ((_e181209181216_ _rest181207_)
                                             (_E181211181220_
                                              (lambda ()
                                                (if (fxpositive? _depth181208_)
                                                    (let ((__tmp186241
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181138_
                                                              _hd181173_
                                                              _is-e?181144_)))
                                                          (__tmp186240
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181138_
                                                              _rest181207_
                                                              _is-e?181144_))))
                                                      (declare (not safe))
                                                      (_make-splice181137_
                                                       _e181143_
                                                       _depth181208_
                                                       __tmp186241
                                                       __tmp186240))
                                                    (let ((__tmp186239
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181138_
                                                              _hd181173_
                                                              _is-e?181144_)))
                                                          (__tmp186238
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181138_
                                                              _rest181207_
                                                              _is-e?181144_))))
                                                      (declare (not safe))
                                                      (_make-cons181136_
                                                       __tmp186239
                                                       __tmp186238)))))
                                             (_E181210181236_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e181209181216_))
                                                    (let ((_e181212181224_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e181209181216_))))
                                                      (let ((_hd181213181227_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e181212181224_)))
                    (_tl181214181229_
                     (let () (declare (not safe)) (##cdr _e181212181224_))))
                (let* ((_rest-hd181232_ _hd181213181227_)
                       (_rest-tl181234_ _tl181214181229_))
                  (if '#t
                      (if (_is-e?181144_ _rest-hd181232_)
                          (let ((__tmp186246
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth181208_ '1))))
                            (declare (not safe))
                            (_lp181205_ _rest-tl181234_ __tmp186246))
                          (if (fxpositive? _depth181208_)
                              (let ((__tmp186245
                                     (let ()
                                       (declare (not safe))
                                       (_recur181138_
                                        _hd181173_
                                        _is-e?181144_)))
                                    (__tmp186244
                                     (let ()
                                       (declare (not safe))
                                       (_recur181138_
                                        _rest181207_
                                        _is-e?181144_))))
                                (declare (not safe))
                                (_make-splice181137_
                                 _e181143_
                                 _depth181208_
                                 __tmp186245
                                 __tmp186244))
                              (let ((__tmp186243
                                     (let ()
                                       (declare (not safe))
                                       (_recur181138_
                                        _hd181173_
                                        _is-e?181144_)))
                                    (__tmp186242
                                     (let ()
                                       (declare (not safe))
                                       (_recur181138_
                                        _rest181207_
                                        _is-e?181144_))))
                                (declare (not safe))
                                (_make-cons181136_ __tmp186243 __tmp186242))))
                      (let () (declare (not safe)) (_E181211181220_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E181211181220_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E181210181236_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E181152181161_))))))
                      (let () (declare (not safe)) (_E181152181161_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181151181240_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e181143_))
                                                    (let ((_g186235_
                                                           (let ((__tmp186237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e181143_)))))
                     (declare (not safe))
                     (_recur181138_ __tmp186237 _is-e?181144_))))
              (begin
                (let ((_g186236_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186235_)
                             (##vector-length _g186235_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186236_ 2)))
                      (error "Context expects 2 values" _g186236_)))
                (let ((_e181244_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186235_ 0)))
                      (_vars181245_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186235_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e181244_))
                          _vars181245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e181143_))
                                                        (let ((_g186232_
                                                               (let ((__tmp186234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e181143_)))))
                         (declare (not safe))
                         (_recur181138_ __tmp186234 _is-e?181144_))))
                  (begin
                    (let ((_g186233_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186232_)
                                 (##vector-length _g186232_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186233_ 2)))
                          (error "Context expects 2 values" _g186233_)))
                    (let ((_e181247_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186232_ 0)))
                          (_vars181248_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186232_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e181247_))
                              _vars181248_))))
                (values (let () (declare (not safe)) (cons 'datum _e181143_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186248_
                             (let ()
                               (declare (not safe))
                               (_recur181138_ _e181134_ gx#ellipsis?))))
                        (begin
                          (let ((_g186249_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186248_)
                                       (##vector-length _g186248_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186249_ 2)))
                                (error "Context expects 2 values" _g186249_)))
                          (let ((_tree181140_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186248_ 0)))
                                (_vars181141_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186248_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars181141_))
                                _tree181140_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx181090_
                                   _vars181141_))))))))))
          (let* ((_e181094181104_ _stx181090_)
                 (_E181096181108_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx181090_))))
                 (_E181095181130_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e181094181104_))
                        (let ((_e181097181112_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e181094181104_))))
                          (let ((_hd181098181115_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181097181112_)))
                                (_tl181099181117_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181097181112_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl181099181117_))
                                (let ((_e181100181120_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl181099181117_))))
                                  (let ((_hd181101181123_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e181100181120_)))
                                        (_tl181102181125_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e181100181120_))))
                                    (let ((_form181128_ _hd181101181123_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl181102181125_))
                                          (if '#t
                                              (let ((__tmp186251
                                                     (let ((__tmp186252
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse181093_
                                                               _form181128_))))
                                                       (declare (not safe))
                                                       (_generate181092_
                                                        __tmp186252)))
                                                    (__tmp186250
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx181090_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp186251
                                                 __tmp186250))
                                              (let ()
                                                (declare (not safe))
                                                (_E181096181108_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E181096181108_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E181096181108_)))))
                        (let () (declare (not safe)) (_E181096181108_))))))
            (let () (declare (not safe)) (_E181095181130_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx180354_
               _identifier=?180355_
               _unwrap-e180356_
               _wrap-e180357_)
        (letrec ((_generate-bindings180359_
                  (lambda (_target180954_
                           _ids180955_
                           _clauses180956_
                           _clause-ids180957_
                           _E180958_)
                    (letrec ((_generate1180960_
                              (lambda (_clause181057_
                                       _clause-id181058_
                                       _E181059_)
                                (let ((__tmp186257
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id181058_ '())))
                                      (__tmp186253
                                       (let ((__tmp186254
                                              (let ((__tmp186256
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180954_
                                                             '())))
                                                    (__tmp186255
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause180361_
                                                        _target180954_
                                                        _ids180955_
                                                        _clause181057_
                                                        _E181059_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp186256
                                                 __tmp186255))))
                                         (declare (not safe))
                                         (cons __tmp186254 '()))))
                                  (declare (not safe))
                                  (cons __tmp186257 __tmp186253)))))
                      (let _lp180962_ ((_rest180964_ _clauses180956_)
                                       (_rest-ids180965_ _clause-ids180957_)
                                       (_bindings180966_ '()))
                        (let* ((_rest180967180975_ _rest180964_)
                               (_else180969180983_
                                (lambda () _bindings180966_))
                               (_K180971181045_
                                (lambda (_rest180986_ _clause180987_)
                                  (let* ((_rest-ids180988180995_
                                          _rest-ids180965_)
                                         (_E180990180999_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids180988180995_)))
                                         (_K180991181033_
                                          (lambda (_rest-ids181002_
                                                   _clause-id181003_)
                                            (let* ((_rest-ids181004181012_
                                                    _rest-ids181002_)
                                                   (_else181006181020_
                                                    (lambda ()
                                                      (let ((__tmp186258
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1180960_
                        _clause180987_
                        _clause-id181003_
                        _E180958_))))
                (declare (not safe))
                (cons __tmp186258 _bindings180966_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K181008181025_
                                                    (lambda (_next-clause-id181023_)
                                                      (let ((__tmp186259
                                                             (let ((__tmp186260
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1180960_
                               _clause180987_
                               _clause-id181003_
                               _next-clause-id181023_))))
                       (declare (not safe))
                       (cons __tmp186260 _bindings180966_))))
                (declare (not safe))
                (_lp180962_ _rest180986_ _rest-ids181002_ __tmp186259)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids181004181012_))
                                                  (let* ((_hd181009181028_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids181004181012_)))
                                                         (_next-clause-id181031_
                                                          _hd181009181028_))
                                                    (declare (not safe))
                                                    (_K181008181025_
                                                     _next-clause-id181031_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else181006181020_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids180988180995_))
                                        (let ((_hd180992181036_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids180988180995_)))
                                              (_tl180993181038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids180988180995_))))
                                          (let* ((_clause-id181041_
                                                  _hd180992181036_)
                                                 (_rest-ids181043_
                                                  _tl180993181038_))
                                            (declare (not safe))
                                            (_K180991181033_
                                             _rest-ids181043_
                                             _clause-id181041_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180990180999_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest180967180975_))
                              (let ((_hd180972181048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest180967180975_)))
                                    (_tl180973181050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest180967180975_))))
                                (let* ((_clause181053_ _hd180972181048_)
                                       (_rest181055_ _tl180973181050_))
                                  (declare (not safe))
                                  (_K180971181045_
                                   _rest181055_
                                   _clause181053_)))
                              (let ()
                                (declare (not safe))
                                (_else180969180983_))))))))
                 (_generate-body180360_
                  (lambda (_bindings180914_ _body180915_)
                    (let _recur180917_ ((_rest180919_ _bindings180914_))
                      (let* ((_rest180920180928_ _rest180919_)
                             (_else180922180936_ (lambda () _body180915_))
                             (_K180924180942_
                              (lambda (_rest180939_ _hd180940_)
                                (let ((__tmp186262
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd180940_ '())))
                                      (__tmp186261
                                       (let ()
                                         (declare (not safe))
                                         (_recur180917_ _rest180939_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186262
                                   __tmp186261)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest180920180928_))
                            (let ((_hd180925180945_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest180920180928_)))
                                  (_tl180926180947_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest180920180928_))))
                              (let* ((_hd180950_ _hd180925180945_)
                                     (_rest180952_ _tl180926180947_))
                                (declare (not safe))
                                (_K180924180942_ _rest180952_ _hd180950_)))
                            (let ()
                              (declare (not safe))
                              (_else180922180936_)))))))
                 (_generate-clause180361_
                  (lambda (_target180777_ _ids180778_ _clause180779_ _E180780_)
                    (letrec ((_generate1180782_
                              (lambda (_hd180869_ _fender180870_ _body180871_)
                                (let ((_g186263_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause180363_
                                          _hd180869_
                                          _ids180778_))))
                                  (begin
                                    (let ((_g186264_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186263_)
                                                 (##vector-length _g186263_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186264_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186264_)))
                                    (let ((_e180873_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186263_ 0)))
                                          (_mvars180874_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186263_ 1))))
                                      (let* ((_pvars180876_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars180874_))))
                                             (_E180878_
                                              (let ((__tmp186265
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180777_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E180780_ __tmp186265)))
                                             (_K180911_
                                              (let ((__tmp186266
                                                     (let ((__tmp186268
                                                            (map (lambda (_mvar180880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar180881_)
                           (let* ((_mvar180882180889_ _mvar180880_)
                                  (_E180884180893_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar180882180889_)))
                                  (_K180885180899_
                                   (lambda (_depth180896_ _id180897_)
                                     (let ((__tmp186269
                                            (let ((__tmp186270
                                                   (let ((__tmp186272
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id180897_)))
                                                         (__tmp186271
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar180881_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp186272
                                                      __tmp186271
                                                      _depth180896_))))
                                              (declare (not safe))
                                              (cons __tmp186270 '()))))
                                       (declare (not safe))
                                       (cons _id180897_ __tmp186269)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar180882180889_))
                                 (let ((_hd180886180902_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar180882180889_)))
                                       (_tl180887180904_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar180882180889_))))
                                   (let* ((_id180907_ _hd180886180902_)
                                          (_depth180909_ _tl180887180904_))
                                     (declare (not safe))
                                     (_K180885180899_
                                      _depth180909_
                                      _id180907_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E180884180893_)))))
                         _mvars180874_
                         _pvars180876_))
                   (__tmp186267
                    (if (let () (declare (not safe)) (eq? _fender180870_ '#t))
                        _body180871_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender180870_
                           _body180871_
                           _E180878_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186268 __tmp186267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars180876_
                                                 __tmp186266))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match180362_
                                           _hd180869_
                                           _target180777_
                                           _e180873_
                                           _mvars180874_
                                           _K180911_
                                           _E180878_)))))))))
                      (let* ((_e180783180803_ _clause180779_)
                             (_E180792180807_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e180783180803_))))
                             (_E180785180841_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180783180803_))
                                    (let ((_e180793180811_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180783180803_))))
                                      (let ((_hd180794180814_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180793180811_)))
                                            (_tl180795180816_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180793180811_))))
                                        (let ((_hd180819_ _hd180794180814_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180795180816_))
                                              (let ((_e180796180821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180795180816_))))
                                                (let ((_hd180797180824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180796180821_)))
                                                      (_tl180798180826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180796180821_))))
                                                  (let ((_fender180829_
                                                         _hd180797180824_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl180798180826_))
                                                        (let ((_e180799180831_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl180798180826_))))
                  (let ((_hd180800180834_
                         (let () (declare (not safe)) (##car _e180799180831_)))
                        (_tl180801180836_
                         (let ()
                           (declare (not safe))
                           (##cdr _e180799180831_))))
                    (let ((_body180839_ _hd180800180834_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl180801180836_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1180782_
                                 _hd180819_
                                 _fender180829_
                                 _body180839_))
                              (let () (declare (not safe)) (_E180792180807_)))
                          (let () (declare (not safe)) (_E180792180807_))))))
                (let () (declare (not safe)) (_E180792180807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E180792180807_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180792180807_)))))
                             (_E180784180865_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180783180803_))
                                    (let ((_e180786180845_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180783180803_))))
                                      (let ((_hd180787180848_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180786180845_)))
                                            (_tl180788180850_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180786180845_))))
                                        (let ((_hd180853_ _hd180787180848_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180788180850_))
                                              (let ((_e180789180855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180788180850_))))
                                                (let ((_hd180790180858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180789180855_)))
                                                      (_tl180791180860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180789180855_))))
                                                  (let ((_body180863_
                                                         _hd180790180858_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl180791180860_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1180782_
                                                               _hd180853_
                                                               '#t
                                                               _body180863_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E180785180841_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E180785180841_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E180785180841_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180785180841_))))))
                        (let () (declare (not safe)) (_E180784180865_))))))
                 (_generate-match180362_
                  (lambda (_where180526_
                           _target180527_
                           _hd180528_
                           _mvars180529_
                           _K180530_
                           _E180531_)
                    (letrec ((_BUG180533_
                              (lambda (_q180775_)
                                (error '"BUG: syntax-case; generate"
                                       _stx180354_
                                       _hd180528_
                                       _q180775_)))
                             (_recur180534_
                              (lambda (_e180625_
                                       _vars180626_
                                       _target180627_
                                       _E180628_
                                       _k180629_)
                                (let* ((_e180630180637_ _e180625_)
                                       (_E180632180641_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e180630180637_)))
                                       (_K180633180763_
                                        (lambda (_body180644_ _tag180645_)
                                          (let ((_$e180647_ _tag180645_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e180647_))
                                                (_k180629_ _vars180626_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e180647_))
                                                    (let ((__tmp186379
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target180627_)))
                                                          (__tmp186375
                                                           (let ((__tmp186377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186378
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e180357_
                                    _body180644_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?180355_
                             __tmp186378
                             _target180627_)))
                         (__tmp186376 (_k180629_ _vars180626_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186377 __tmp186376 _E180628_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186379 __tmp186375 _E180628_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e180647_))
                                                        (_k180629_
                                                         (let ((__tmp186374
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body180644_ _target180627_))))
                   (declare (not safe))
                   (cons __tmp186374 _vars180626_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e180647_))
                    (let ((_$e180650_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd180651_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl180652_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186373
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target180627_)))
                            (__tmp186354
                             (let ((__tmp186368
                                    (let ((__tmp186369
                                           (let ((__tmp186372
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e180650_ '())))
                                                 (__tmp186370
                                                  (let ((__tmp186371
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e180356_
                                                            _target180627_))))
                                                    (declare (not safe))
                                                    (cons __tmp186371 '()))))
                                             (declare (not safe))
                                             (cons __tmp186372 __tmp186370))))
                                      (declare (not safe))
                                      (cons __tmp186369 '())))
                                   (__tmp186355
                                    (let ((__tmp186358
                                           (let ((__tmp186364
                                                  (let ((__tmp186367
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd180651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp186365
                 (let ((__tmp186366
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e180650_))))
                   (declare (not safe))
                   (cons __tmp186366 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186367
                                                          __tmp186365)))
                                                 (__tmp186359
                                                  (let ((__tmp186360
                                                         (let ((__tmp186363
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl180652_ '())))
                       (__tmp186361
                        (let ((__tmp186362
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e180650_))))
                          (declare (not safe))
                          (cons __tmp186362 '()))))
                   (declare (not safe))
                   (cons __tmp186363 __tmp186361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186360 '()))))
                                             (declare (not safe))
                                             (cons __tmp186364 __tmp186359)))
                                          (__tmp186356
                                           (let* ((_body180653180660_
                                                   _body180644_)
                                                  (_E180655180664_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body180653180660_)))
                                                  (_K180656180672_
                                                   (lambda (_tl180667_
                                                            _hd180668_)
                                                     (let ((__tmp186357
                                                            (lambda (_vars180670_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur180534_
                         _tl180667_
                         _vars180670_
                         _$tl180652_
                         _E180628_
                         _k180629_)))))
               (declare (not safe))
               (_recur180534_
                _hd180668_
                _vars180626_
                _$hd180651_
                _E180628_
                __tmp186357)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body180653180660_))
                                                 (let ((_hd180657180675_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body180653180660_)))
                                                       (_tl180658180677_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body180653180660_))))
                                                   (let* ((_hd180680_
                                                           _hd180657180675_)
                                                          (_tl180682_
                                                           _tl180658180677_))
                                                     (declare (not safe))
                                                     (_K180656180672_
                                                      _tl180682_
                                                      _hd180680_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E180655180664_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186358
                                       __tmp186356))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186368
                                __tmp186355))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp186373 __tmp186354 _E180628_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e180647_))
                        (let* ((_body180683180690_ _body180644_)
                               (_E180685180694_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body180683180690_)))
                               (_K180686180745_
                                (lambda (_tl180697_ _hd180698_)
                                  (let* ((_rlen180700_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen180535_ _tl180697_)))
                                         (_$target180702_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd180704_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl180706_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp180708_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e180710_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd180712_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl180714_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars180716_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars180536_ _hd180698_)))
                                         (_lvars180718_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180716_)))
                                         (_tlvars180720_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180716_)))
                                         (_linit180724_
                                          (map (lambda (_var180722_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars180718_)))
                                    (letrec ((_make-loop180727_
                                              (lambda (_vars180731_)
                                                (let ((__tmp186305
                                                       (let ((__tmp186306
                                                              (let ((__tmp186342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp180708_ '())))
                            (__tmp186307
                             (let ((__tmp186308
                                    (let ((__tmp186341
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd180704_ _lvars180718_)))
                                          (__tmp186309
                                           (let ((__tmp186340
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd180704_)))
                                                 (__tmp186318
                                                  (let ((__tmp186335
                                                         (let ((__tmp186336
                                                                (let ((__tmp186339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e180710_ '())))
                              (__tmp186337
                               (let ((__tmp186338
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e180356_
                                         _$hd180704_))))
                                 (declare (not safe))
                                 (cons __tmp186338 '()))))
                          (declare (not safe))
                          (cons __tmp186339 __tmp186337))))
                   (declare (not safe))
                   (cons __tmp186336 '())))
                (__tmp186319
                 (let ((__tmp186325
                        (let ((__tmp186331
                               (let ((__tmp186334
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd180712_ '())))
                                     (__tmp186332
                                      (let ((__tmp186333
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e180710_))))
                                        (declare (not safe))
                                        (cons __tmp186333 '()))))
                                 (declare (not safe))
                                 (cons __tmp186334 __tmp186332)))
                              (__tmp186326
                               (let ((__tmp186327
                                      (let ((__tmp186330
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl180714_ '())))
                                            (__tmp186328
                                             (let ((__tmp186329
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e180710_))))
                                               (declare (not safe))
                                               (cons __tmp186329 '()))))
                                        (declare (not safe))
                                        (cons __tmp186330 __tmp186328))))
                                 (declare (not safe))
                                 (cons __tmp186327 '()))))
                          (declare (not safe))
                          (cons __tmp186331 __tmp186326)))
                       (__tmp186320
                        (let ((__tmp186321
                               (lambda (_hdvars180733_)
                                 (let ((__tmp186322
                                        (let ((__tmp186323
                                               (map (lambda (_svar180735_
                                                             _lvar180736_)
                                                      (let ((__tmp186324
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar180735_ _hdvars180733_ _BUG180533_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp186324 _lvar180736_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars180716_
                                                    _lvars180718_)))
                                          (declare (not safe))
                                          (cons _$lp-tl180714_ __tmp186323))))
                                   (declare (not safe))
                                   (cons _$lp180708_ __tmp186322)))))
                          (declare (not safe))
                          (_recur180534_
                           _hd180698_
                           '()
                           _$lp-hd180712_
                           _E180628_
                           __tmp186321))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp186325 __tmp186320))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186335
                                                     __tmp186319)))
                                                 (__tmp186310
                                                  (let ((__tmp186314
                                                         (map (lambda (_lvar180738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar180739_)
                        (let ((__tmp186317
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar180739_ '())))
                              (__tmp186315
                               (let ((__tmp186316
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar180738_))))
                                 (declare (not safe))
                                 (cons __tmp186316 '()))))
                          (declare (not safe))
                          (cons __tmp186317 __tmp186315)))
                      _lvars180718_
                      _tlvars180720_))
                (__tmp186311
                 (_k180629_
                  (let ((__tmp186312
                         (lambda (_svar180741_ _tlvar180742_ _r180743_)
                           (let ((__tmp186313
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar180741_ _tlvar180742_))))
                             (declare (not safe))
                             (cons __tmp186313 _r180743_)))))
                    (declare (not safe))
                    (foldl2 __tmp186312
                            _vars180731_
                            _svars180716_
                            _tlvars180720_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186314
                                                     __tmp186311))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp186340
                                              __tmp186318
                                              __tmp186310))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp186341
                                       __tmp186309))))
                               (declare (not safe))
                               (cons __tmp186308 '()))))
                        (declare (not safe))
                        (cons __tmp186342 __tmp186307))))
                 (declare (not safe))
                 (cons __tmp186306 '())))
              (__tmp186303
               (let ((__tmp186304
                      (let ()
                        (declare (not safe))
                        (cons _$target180702_ _linit180724_))))
                 (declare (not safe))
                 (cons _$lp180708_ __tmp186304))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186305
                                                   __tmp186303)))))
                                      (let ((_body180729_
                                             (let ((__tmp186344
                                                    (let ((__tmp186345
                                                           (let ((__tmp186348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186349
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl180706_ '()))))
                            (declare (not safe))
                            (cons _$target180702_ __tmp186349)))
                         (__tmp186346
                          (let ((__tmp186347
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target180627_
                                    _rlen180700_))))
                            (declare (not safe))
                            (cons __tmp186347 '()))))
                     (declare (not safe))
                     (cons __tmp186348 __tmp186346))))
              (declare (not safe))
              (cons __tmp186345 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186343
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180534_
                                                       _tl180697_
                                                       _vars180626_
                                                       _$tl180706_
                                                       _E180628_
                                                       _make-loop180727_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186344
                                                __tmp186343))))
                                        (let ((__tmp186353
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target180627_)))
                                              (__tmp186350
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen180700_))
                                                   _body180729_
                                                   (let ((__tmp186351
                                                          (let ((__tmp186352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target180627_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186352 _rlen180700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186351
                                                      _body180729_
                                                      _E180628_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186353
                                           __tmp186350
                                           _E180628_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body180683180690_))
                              (let ((_hd180687180748_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body180683180690_)))
                                    (_tl180688180750_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body180683180690_))))
                                (let* ((_hd180753_ _hd180687180748_)
                                       (_tl180755_ _tl180688180750_))
                                  (declare (not safe))
                                  (_K180686180745_ _tl180755_ _hd180753_)))
                              (let () (declare (not safe)) (_E180685180694_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e180647_))
                            (let ((__tmp186302
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target180627_)))
                                  (__tmp186301 (_k180629_ _vars180626_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186302
                               __tmp186301
                               _E180628_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e180647_))
                                (let ((_$e180757_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186300
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target180627_)))
                                        (__tmp186292
                                         (let ((__tmp186294
                                                (let ((__tmp186295
                                                       (let ((__tmp186299
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e180757_ '())))
                     (__tmp186296
                      (let ((__tmp186297
                             (let ((__tmp186298
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e180356_
                                       _target180627_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp186298))))
                        (declare (not safe))
                        (cons __tmp186297 '()))))
                 (declare (not safe))
                 (cons __tmp186299 __tmp186296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp186295 '())))
                                               (__tmp186293
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur180534_
                                                   _body180644_
                                                   _vars180626_
                                                   _$e180757_
                                                   _E180628_
                                                   _k180629_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186294
                                            __tmp186293))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186300
                                     __tmp186292
                                     _E180628_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e180647_))
                                    (let ((_$e180759_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186291
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target180627_)))
                                            (__tmp186283
                                             (let ((__tmp186285
                                                    (let ((__tmp186286
                                                           (let ((__tmp186290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e180759_ '())))
                         (__tmp186287
                          (let ((__tmp186288
                                 (let ((__tmp186289
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e180356_
                                           _target180627_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp186289))))
                            (declare (not safe))
                            (cons __tmp186288 '()))))
                     (declare (not safe))
                     (cons __tmp186290 __tmp186287))))
              (declare (not safe))
              (cons __tmp186286 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186284
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180534_
                                                       _body180644_
                                                       _vars180626_
                                                       _$e180759_
                                                       _E180628_
                                                       _k180629_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186285
                                                __tmp186284))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186291
                                         __tmp186283
                                         _E180628_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e180647_))
                                        (let ((_$e180761_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186282
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target180627_)))
                                                (__tmp186273
                                                 (let ((__tmp186277
                                                        (let ((__tmp186278
                                                               (let ((__tmp186281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e180761_ '())))
                             (__tmp186279
                              (let ((__tmp186280
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target180627_))))
                                (declare (not safe))
                                (cons __tmp186280 '()))))
                         (declare (not safe))
                         (cons __tmp186281 __tmp186279))))
                  (declare (not safe))
                  (cons __tmp186278 '())))
               (__tmp186274
                (let ((__tmp186276
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e180761_ _body180644_)))
                      (__tmp186275 (_k180629_ _vars180626_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186276 __tmp186275 _E180628_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186277
                                                    __tmp186274))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186282
                                             __tmp186273
                                             _E180628_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG180533_ _e180625_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e180630180637_))
                                      (let ((_hd180634180766_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180630180637_)))
                                            (_tl180635180768_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180630180637_))))
                                        (let* ((_tag180771_ _hd180634180766_)
                                               (_body180773_ _tl180635180768_))
                                          (declare (not safe))
                                          (_K180633180763_
                                           _body180773_
                                           _tag180771_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180632180641_))))))
                             (_splice-rlen180535_
                              (lambda (_e180587_)
                                (let _lp180589_ ((_e180591_ _e180587_)
                                                 (_n180592_ '0))
                                  (let* ((_e180593180600_ _e180591_)
                                         (_E180595180604_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180593180600_)))
                                         (_K180596180613_
                                          (lambda (_body180607_ _tag180608_)
                                            (let ((_$e180610_ _tag180608_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e180610_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx180354_
                                                     _where180526_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e180610_))
                                                      (let ((__tmp186381
                                                             (cdr _body180607_))
                                                            (__tmp186380
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n180592_ '1))))
                (declare (not safe))
                (_lp180589_ __tmp186381 __tmp186380))
              _n180592_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180593180600_))
                                        (let ((_hd180597180616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180593180600_)))
                                              (_tl180598180618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180593180600_))))
                                          (let* ((_tag180621_ _hd180597180616_)
                                                 (_body180623_
                                                  _tl180598180618_))
                                            (declare (not safe))
                                            (_K180596180613_
                                             _body180623_
                                             _tag180621_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180595180604_)))))))
                             (_splice-vars180536_
                              (lambda (_e180543_)
                                (let _recur180545_ ((_e180547_ _e180543_)
                                                    (_vars180548_ '()))
                                  (let* ((_e180549180556_ _e180547_)
                                         (_E180551180560_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180549180556_)))
                                         (_K180552180575_
                                          (lambda (_body180563_ _tag180564_)
                                            (let ((_$e180566_ _tag180564_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e180566_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body180563_
                                                          _vars180548_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e180566_))
                  (let () (declare (not safe)) (eq? 'splice _$e180566_)))
              (let ((__tmp186384 (cdr _body180563_))
                    (__tmp186382
                     (let ((__tmp186383 (car _body180563_)))
                       (declare (not safe))
                       (_recur180545_ __tmp186383 _vars180548_))))
                (declare (not safe))
                (_recur180545_ __tmp186384 __tmp186382))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e180566_))
                      (let () (declare (not safe)) (eq? 'box _$e180566_)))
                  (let ()
                    (declare (not safe))
                    (_recur180545_ _body180563_ _vars180548_))
                  _vars180548_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180549180556_))
                                        (let ((_hd180553180578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180549180556_)))
                                              (_tl180554180580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180549180556_))))
                                          (let* ((_tag180583_ _hd180553180578_)
                                                 (_body180585_
                                                  _tl180554180580_))
                                            (declare (not safe))
                                            (_K180552180575_
                                             _body180585_
                                             _tag180583_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180551180560_)))))))
                             (_make-body180537_
                              (lambda (_vars180539_)
                                (let ((__tmp186385
                                       (map (lambda (_mvar180541_)
                                              (let ((__tmp186386
                                                     (car _mvar180541_)))
                                                (declare (not safe))
                                                (assgetq __tmp186386
                                                         _vars180539_
                                                         _BUG180533_)))
                                            _mvars180529_)))
                                  (declare (not safe))
                                  (cons _K180530_ __tmp186385)))))
                      (let ()
                        (declare (not safe))
                        (_recur180534_
                         _hd180528_
                         '()
                         _target180527_
                         _E180531_
                         _make-body180537_)))))
                 (_parse-clause180363_
                  (lambda (_hd180432_ _ids180433_)
                    (let _recur180435_ ((_e180437_ _hd180432_)
                                        (_vars180438_ '())
                                        (_depth180439_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e180437_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e180437_))
                              (values '(any) _vars180438_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e180437_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx180354_
                                     _hd180432_))
                                  (if (let ((__tmp186402
                                             (lambda (_id180441_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e180437_
                                                  _id180441_)))))
                                        (declare (not safe))
                                        (find __tmp186402 _ids180433_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e180437_))
                                              _vars180438_)
                                      (if (let ((__tmp186400
                                                 (lambda (_var180443_)
                                                   (let ((__tmp186401
                                                          (car _var180443_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e180437_
                                                      __tmp186401)))))
                                            (declare (not safe))
                                            (find __tmp186400 _vars180438_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx180354_
                                             _e180437_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e180437_))
                                                  (let ((__tmp186399
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e180437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth180439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186399
                                                          _vars180438_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e180437_))
                              (let* ((_e180444180451_ _e180437_)
                                     (_E180446180455_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e180444180451_))))
                                     (_E180445180516_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e180444180451_))
                                            (let ((_e180447180459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e180444180451_))))
                                              (let ((_hd180448180462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e180447180459_)))
                                                    (_tl180449180464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e180447180459_))))
                                                (let* ((_hd180467_
                                                        _hd180448180462_)
                                                       (_rest180469_
                                                        _tl180449180464_))
                                                  (if '#t
                                                      (let* ((_make-pair180484_
                                                              (lambda (_tag180471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd180472_
                               _tl180473_)
                        (let* ((_hd-depth180475_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag180471_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth180439_ '1))
                                    _depth180439_))
                               (_g186394_
                                (let ()
                                  (declare (not safe))
                                  (_recur180435_
                                   _hd180472_
                                   _vars180438_
                                   _hd-depth180475_))))
                          (begin
                            (let ((_g186395_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186394_)
                                         (##vector-length _g186394_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186395_ 2)))
                                  (error "Context expects 2 values"
                                         _g186395_)))
                            (let ((_hd180477_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186394_ 0)))
                                  (_vars180478_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186394_ 1))))
                              (let ((_g186396_
                                     (let ()
                                       (declare (not safe))
                                       (_recur180435_
                                        _tl180473_
                                        _vars180478_
                                        _depth180439_))))
                                (begin
                                  (let ((_g186397_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g186396_)
                                               (##vector-length _g186396_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g186397_ 2)))
                                        (error "Context expects 2 values"
                                               _g186397_)))
                                  (let ((_tl180480_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186396_ 0)))
                                        (_vars180481_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186396_ 1))))
                                    (let ()
                                      (values (let ((__tmp186398
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd180477_
                                                             _tl180480_))))
                                                (declare (not safe))
                                                (cons _tag180471_ __tmp186398))
                                              _vars180481_))))))))))
                     (_e180485180492_ _rest180469_)
                     (_E180487180496_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair180484_ 'cons _hd180467_ _rest180469_))))
                     (_E180486180512_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e180485180492_))
                            (let ((_e180488180500_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e180485180492_))))
                              (let ((_hd180489180503_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e180488180500_)))
                                    (_tl180490180505_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e180488180500_))))
                                (let* ((_rest-hd180508_ _hd180489180503_)
                                       (_rest-tl180510_ _tl180490180505_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd180508_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180484_
                                             'splice
                                             _hd180467_
                                             _rest-tl180510_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180484_
                                             'cons
                                             _hd180467_
                                             _rest180469_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180487180496_))))))
                            (let () (declare (not safe)) (_E180487180496_))))))
                (let () (declare (not safe)) (_E180486180512_)))
              (let () (declare (not safe)) (_E180446180455_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E180446180455_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180445180516_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e180437_))
                                  (values '(null) _vars180438_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e180437_))
                                      (let ((_g186391_
                                             (let ((__tmp186393
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e180437_)))))
                                               (declare (not safe))
                                               (_recur180435_
                                                __tmp186393
                                                _vars180438_
                                                _depth180439_))))
                                        (begin
                                          (let ((_g186392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186391_)
                                                       (##vector-length
                                                        _g186391_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186392_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186392_)))
                                          (let ((_e180520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g186391_ 0)))
                                                (_vars180521_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g186391_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e180520_))
                                                    _vars180521_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e180437_))
                                          (let ((_g186388_
                                                 (let ((__tmp186390
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e180437_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur180435_
                                                    __tmp186390
                                                    _vars180438_
                                                    _depth180439_))))
                                            (begin
                                              (let ((_g186389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186388_)
                                                           (##vector-length
                                                            _g186388_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186389_)))
                                              (let ((_e180523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186388_
                                                        0)))
                                                    (_vars180524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186388_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e180523_))
                                                        _vars180524_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e180437_))
                                              (values (let ((__tmp186387
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e180437_))))
                (declare (not safe))
                (cons 'datum __tmp186387))
              _vars180438_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx180354_
                                                 _e180437_))))))))))))
          (let* ((_e180364180377_ _stx180354_)
                 (_E180366180381_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e180364180377_))))
                 (_E180365180428_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e180364180377_))
                        (let ((_e180367180385_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e180364180377_))))
                          (let ((_hd180368180388_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e180367180385_)))
                                (_tl180369180390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e180367180385_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl180369180390_))
                                (let ((_e180370180393_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl180369180390_))))
                                  (let ((_hd180371180396_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e180370180393_)))
                                        (_tl180372180398_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e180370180393_))))
                                    (let ((_expr180401_ _hd180371180396_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl180372180398_))
                                          (let ((_e180373180403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl180372180398_))))
                                            (let ((_hd180374180406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e180373180403_)))
                                                  (_tl180375180408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e180373180403_))))
                                              (let* ((_ids180411_
                                                      _hd180374180406_)
                                                     (_clauses180413_
                                                      _tl180375180408_))
                                                (if '#t
                                                    (if (let ((__tmp186420
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids180411_))))
                  (declare (not safe))
                  (not __tmp186420))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx180354_
                   _ids180411_))
                (if (let ((__tmp186419
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses180413_))))
                      (declare (not safe))
                      (not __tmp186419))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx180354_))
                    (let* ((_ids180415_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids180411_)))
                           (_clauses180417_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses180413_)))
                           (_clause-ids180419_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses180417_)))
                           (_E180421_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target180423_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first180425_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses180417_))
                                _E180421_
                                (car _clause-ids180419_))))
                      (let ((__tmp186404
                             (let ((__tmp186405
                                    (let ((__tmp186407
                                           (let ((__tmp186412
                                                  (let ((__tmp186413
                                                         (let ((__tmp186418
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E180421_ '())))
                       (__tmp186414
                        (let ((__tmp186415
                               (let ((__tmp186417
                                      (let ()
                                        (declare (not safe))
                                        (cons _target180423_ '())))
                                     (__tmp186416
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target180423_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp186417
                                  __tmp186416))))
                          (declare (not safe))
                          (cons __tmp186415 '()))))
                   (declare (not safe))
                   (cons __tmp186418 __tmp186414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186413 '())))
                                                 (__tmp186408
                                                  (let ((__tmp186411
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings180359_
                                                            _target180423_
                                                            _ids180415_
                                                            _clauses180417_
                                                            _clause-ids180419_
                                                            _E180421_)))
                                                        (__tmp186409
                                                         (let ((__tmp186410
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr180401_ '()))))
                   (declare (not safe))
                   (cons _first180425_ __tmp186410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body180360_
                                                     __tmp186411
                                                     __tmp186409))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp186412
                                              __tmp186408)))
                                          (__tmp186406
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx180354_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp186407
                                       __tmp186406))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp186405)))
                            (__tmp186403
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx180354_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp186404 __tmp186403)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E180366180381_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E180366180381_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180366180381_)))))
                        (let () (declare (not safe)) (_E180366180381_))))))
            (let () (declare (not safe)) (_E180365180428_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx181064_)
        (let* ((_identifier=?181066_ 'free-identifier=?)
               (_unwrap-e181068_ 'syntax-e)
               (_wrap-e181070_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181064_
           _identifier=?181066_
           _unwrap-e181068_
           _wrap-e181070_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx181072_ _identifier=?181073_)
        (let* ((_unwrap-e181075_ 'syntax-e) (_wrap-e181077_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181072_
           _identifier=?181073_
           _unwrap-e181075_
           _wrap-e181077_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx181079_ _identifier=?181080_ _unwrap-e181081_)
        (let ((_wrap-e181083_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181079_
           _identifier=?181080_
           _unwrap-e181081_
           _wrap-e181083_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186422_
        (let ((_g186421_ (let () (declare (not safe)) (##length _g186422_))))
          (cond ((let () (declare (not safe)) (##fx= _g186421_ 1))
                 (apply (lambda (_stx181064_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx181064_)))
                        _g186422_))
                ((let () (declare (not safe)) (##fx= _g186421_ 2))
                 (apply (lambda (_stx181072_ _identifier=?181073_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx181072_
                             _identifier=?181073_)))
                        _g186422_))
                ((let () (declare (not safe)) (##fx= _g186421_ 3))
                 (apply (lambda (_stx181079_
                                 _identifier=?181080_
                                 _unwrap-e181081_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx181079_
                             _identifier=?181080_
                             _unwrap-e181081_)))
                        _g186422_))
                ((let () (declare (not safe)) (##fx= _g186421_ 4))
                 (apply (lambda (_stx181085_
                                 _identifier=?181086_
                                 _unwrap-e181087_
                                 _wrap-e181088_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx181085_
                             _identifier=?181086_
                             _unwrap-e181087_
                             _wrap-e181088_)))
                        _g186422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186422_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx180351_)
        (if (let () (declare (not safe)) (gx#identifier? _stx180351_))
            (let ((__tmp186423
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx180351_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186423 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd180309_ . _rest180310_)
        (let ((_len180312_ (length _hd180309_)))
          (let _lp180314_ ((_rest180316_ _rest180310_))
            (let* ((_rest180317180325_ _rest180316_)
                   (_else180319180333_ (lambda () '#!void))
                   (_K180321180339_
                    (lambda (_rest180336_ _hd180337_)
                      (if (fx= _len180312_ (length _hd180337_))
                          (let ()
                            (declare (not safe))
                            (_lp180314_ _rest180336_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd180337_))))))
              (if (let () (declare (not safe)) (##pair? _rest180317180325_))
                  (let ((_hd180322180342_
                         (let ()
                           (declare (not safe))
                           (##car _rest180317180325_)))
                        (_tl180323180344_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest180317180325_))))
                    (let* ((_hd180347_ _hd180322180342_)
                           (_rest180349_ _tl180323180344_))
                      (declare (not safe))
                      (_K180321180339_ _rest180349_ _hd180347_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx180267_ _n180268_)
        (let _lp180270_ ((_rest180272_ _stx180267_) (_r180273_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest180272_))
              (let* ((_g180274180281_
                      (let () (declare (not safe)) (gx#syntax-e _rest180272_)))
                     (_E180276180285_
                      (lambda ()
                        (error '"No clause matching" _g180274180281_)))
                     (_K180277180291_
                      (lambda (_rest180288_ _hd180289_)
                        (let ((__tmp186428
                               (let ()
                                 (declare (not safe))
                                 (cons _hd180289_ _r180273_))))
                          (declare (not safe))
                          (_lp180270_ _rest180288_ __tmp186428)))))
                (if (let () (declare (not safe)) (##pair? _g180274180281_))
                    (let ((_hd180278180294_
                           (let ()
                             (declare (not safe))
                             (##car _g180274180281_)))
                          (_tl180279180296_
                           (let ()
                             (declare (not safe))
                             (##cdr _g180274180281_))))
                      (let* ((_hd180299_ _hd180278180294_)
                             (_rest180301_ _tl180279180296_))
                        (declare (not safe))
                        (_K180277180291_ _rest180301_ _hd180299_)))
                    (let () (declare (not safe)) (_E180276180285_))))
              (let _lp180303_ ((_n180305_ _n180268_)
                               (_l180306_ _r180273_)
                               (_r180307_ _rest180272_))
                (if (let () (declare (not safe)) (null? _l180306_))
                    (values _l180306_ _r180307_)
                    (if (fxpositive? _n180305_)
                        (let ((__tmp186427
                               (let ()
                                 (declare (not safe))
                                 (fx- _n180305_ '1)))
                              (__tmp186426 (cdr _l180306_))
                              (__tmp186424
                               (let ((__tmp186425 (car _l180306_)))
                                 (declare (not safe))
                                 (cons __tmp186425 _r180307_))))
                          (declare (not safe))
                          (_lp180303_ __tmp186427 __tmp186426 __tmp186424))
                        (values (reverse _l180306_) _r180307_))))))))))
