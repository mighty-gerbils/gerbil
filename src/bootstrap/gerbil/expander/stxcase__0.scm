(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707846531)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186183 (list gx#expander::t))
            (__tmp186181
             (let ((__tmp186182
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp186182 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186183
         '(id depth)
         __tmp186181
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args181610_
        (apply make-instance gx#syntax-pattern::t _$args181610_)))
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
      (lambda (_self181607_ _stx181608_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx181608_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx181089_)
        (letrec ((_generate181091_
                  (lambda (_e181318_)
                    (letrec ((_BUG181320_
                              (lambda (_q181482_)
                                (error '"BUG: syntax; generate"
                                       _stx181089_
                                       _e181318_
                                       _q181482_)))
                             (_local-pattern-e181321_
                              (lambda (_pat181480_)
                                (let ((__tmp186184
                                       (##structure-ref
                                        _pat181480_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186184))))
                             (_getvar181322_
                              (lambda (_q181477_ _vars181478_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q181477_
                                           _vars181478_
                                           _BUG181320_))))
                             (_getarg181323_
                              (lambda (_arg181443_ _vars181444_)
                                (let* ((_arg181445181452_ _arg181443_)
                                       (_E181447181456_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg181445181452_)))
                                       (_K181448181465_
                                        (lambda (_e181459_ _tag181460_)
                                          (let ((_$e181462_ _tag181460_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e181462_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar181322_
                                                   _e181459_
                                                   _vars181444_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e181462_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e181321_
                                                       _e181459_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG181320_
                                                       _arg181443_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg181445181452_))
                                      (let ((_hd181449181468_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg181445181452_)))
                                            (_tl181450181470_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg181445181452_))))
                                        (let* ((_tag181473_ _hd181449181468_)
                                               (_e181475_ _tl181450181470_))
                                          (declare (not safe))
                                          (_K181448181465_
                                           _e181475_
                                           _tag181473_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E181447181456_)))))))
                      (let _recur181325_ ((_e181327_ _e181318_)
                                          (_vars181328_ '()))
                        (let* ((_e181329181336_ _e181327_)
                               (_E181331181340_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e181329181336_)))
                               (_K181332181431_
                                (lambda (_body181343_ _tag181344_)
                                  (let ((_$e181346_ _tag181344_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e181346_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body181343_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e181346_))
                                            (let ((_id181349_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body181343_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id181349_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks181351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id181349_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks181351_))
                                                        (let ((__tmp186212
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body181343_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186212))
                (let ((__tmp186211
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body181343_)))
                      (__tmp186210
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body181343_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186211
                   __tmp186210
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id181349_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body181343_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG181320_
                                                         _e181327_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e181346_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e181321_
                                                   _body181343_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e181346_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar181322_
                                                       _body181343_
                                                       _vars181328_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e181346_))
                                                        (let ((__tmp186208
                                                               (let ((__tmp186209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body181343_)))
                         (declare (not safe))
                         (_recur181325_ __tmp186209 _vars181328_)))
                      (__tmp186206
                       (let ((__tmp186207 (cdr _body181343_)))
                         (declare (not safe))
                         (_recur181325_ __tmp186207 _vars181328_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp186208 __tmp186206))
                (if (let () (declare (not safe)) (eq? 'vector _$e181346_))
                    (let ((__tmp186205
                           (let ()
                             (declare (not safe))
                             (_recur181325_ _body181343_ _vars181328_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186205))
                    (if (let () (declare (not safe)) (eq? 'box _$e181346_))
                        (let ((__tmp186204
                               (let ()
                                 (declare (not safe))
                                 (_recur181325_ _body181343_ _vars181328_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186204))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e181346_))
                            (let* ((_body181352181363_ _body181343_)
                                   (_E181354181367_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body181352181363_)))
                                   (_K181355181405_
                                    (lambda (_args181370_
                                             _iv181371_
                                             _hd181372_
                                             _depth181373_)
                                      (let* ((_targets181379_
                                              (map (lambda (_g181374181376_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg181323_
                                                        _g181374181376_
                                                        _vars181328_)))
                                                   _args181370_))
                                             (_fold-in181381_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args181370_)))
                                             (_fold-out181383_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args181385_
                                              (let ((__tmp186185
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out181383_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp186185
                                                        _fold-in181381_)))
                                             (_lambda-body181402_
                                              (if (fx> _depth181373_ '1)
                                                  (let ((_r-args181393_
                                                         (map (lambda (_arg181387_)
                                                                (let ((__tmp186190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg181387_)))
                          (declare (not safe))
                          (cons 'ref __tmp186190)))
                      _args181370_))
                (_r-vars181394_
                 (let ((__tmp186191
                        (lambda (_arg181389_ _var181390_ _r181391_)
                          (let ((__tmp186192
                                 (let ((__tmp186193 (cdr _arg181389_)))
                                   (declare (not safe))
                                   (cons __tmp186193 _var181390_))))
                            (declare (not safe))
                            (cons __tmp186192 _r181391_)))))
                   (declare (not safe))
                   (foldr2 __tmp186191
                           _vars181328_
                           _args181370_
                           _fold-in181381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186194
                                                           (let ((__tmp186195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186199
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth181373_ '1)))
                                (__tmp186196
                                 (let ((__tmp186197
                                        (let ((__tmp186198
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out181383_))))
                                          (declare (not safe))
                                          (cons __tmp186198 _r-args181393_))))
                                   (declare (not safe))
                                   (cons _hd181372_ __tmp186197))))
                            (declare (not safe))
                            (cons __tmp186199 __tmp186196))))
                     (declare (not safe))
                     (cons 'splice __tmp186195))))
              (declare (not safe))
              (_recur181325_ __tmp186194 _r-vars181394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars181400_
                                                          (let ((__tmp186186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg181396_ _var181397_ _r181398_)
                           (let ((__tmp186187
                                  (let ((__tmp186188 (cdr _arg181396_)))
                                    (declare (not safe))
                                    (cons __tmp186188 _var181397_))))
                             (declare (not safe))
                             (cons __tmp186187 _r181398_)))))
                    (declare (not safe))
                    (foldr2 __tmp186186
                            _vars181328_
                            _args181370_
                            _fold-in181381_)))
                 (__tmp186189
                  (let ()
                    (declare (not safe))
                    (_recur181325_ _hd181372_ _hd-vars181400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186189
                                                     _fold-out181383_)))))
                                        (let ((__tmp186203
                                               (if (fx> (length _targets181379_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets181379_))
                                                   '#!void))
                                              (__tmp186200
                                               (let ((__tmp186202
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args181385_
                                                         _lambda-body181402_)))
                                                     (__tmp186201
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur181325_
                                                         _iv181371_
                                                         _vars181328_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186202
                                                  __tmp186201
                                                  _targets181379_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186203
                                           __tmp186200))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body181352181363_))
                                  (let ((_hd181356181408_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body181352181363_)))
                                        (_tl181357181410_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body181352181363_))))
                                    (let ((_depth181413_ _hd181356181408_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl181357181410_))
                                          (let ((_hd181358181415_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl181357181410_)))
                                                (_tl181359181417_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl181357181410_))))
                                            (let ((_hd181420_
                                                   _hd181358181415_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl181359181417_))
                                                  (let ((_hd181360181422_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl181359181417_)))
                                                        (_tl181361181424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl181359181417_))))
                                                    (let* ((_iv181427_
                                                            _hd181360181422_)
                                                           (_args181429_
                                                            _tl181361181424_))
                                                      (declare (not safe))
                                                      (_K181355181405_
                                                       _args181429_
                                                       _iv181427_
                                                       _hd181420_
                                                       _depth181413_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181354181367_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E181354181367_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E181354181367_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e181346_))
                                _body181343_
                                (let ()
                                  (declare (not safe))
                                  (_BUG181320_ _e181327_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e181329181336_))
                              (let ((_hd181333181434_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e181329181336_)))
                                    (_tl181334181436_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e181329181336_))))
                                (let* ((_tag181439_ _hd181333181434_)
                                       (_body181441_ _tl181334181436_))
                                  (declare (not safe))
                                  (_K181332181431_ _body181441_ _tag181439_)))
                              (let ()
                                (declare (not safe))
                                (_E181331181340_))))))))
                 (_parse181092_
                  (lambda (_e181133_)
                    (letrec ((_make-cons181135_
                              (lambda (_hd181310_ _tl181311_)
                                (let ((_g186213_ _hd181310_)
                                      (_g186215_ _tl181311_))
                                  (begin
                                    (let ((_g186214_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186213_)
                                                 (##vector-length _g186213_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186214_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186214_)))
                                    (let ((_g186216_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186215_)
                                                 (##vector-length _g186215_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186216_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186216_)))
                                    (let ((_hd-e181313_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186213_ 0)))
                                          (_hd-vars181314_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186213_ 1))))
                                      (let ((_tl-e181315_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186215_ 0)))
                                            (_tl-vars181316_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186215_ 1))))
                                        (values (let ((__tmp186217
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e181313_
                                                               _tl-e181315_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp186217))
                                                (append _hd-vars181314_
                                                        _tl-vars181316_))))))))
                             (_make-splice181136_
                              (lambda (_where181249_
                                       _depth181250_
                                       _hd181251_
                                       _tl181252_)
                                (let ((_g186218_ _hd181251_)
                                      (_g186220_ _tl181252_))
                                  (begin
                                    (let ((_g186219_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186218_)
                                                 (##vector-length _g186218_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186219_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186219_)))
                                    (let ((_g186221_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186220_)
                                                 (##vector-length _g186220_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186221_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186221_)))
                                    (let ((_hd-e181254_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186218_ 0)))
                                          (_hd-vars181255_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186218_ 1))))
                                      (let ((_tl-e181256_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186220_ 0)))
                                            (_tl-vars181257_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186220_ 1))))
                                        (let _lp181259_ ((_rest181261_
                                                          _hd-vars181255_)
                                                         (_targets181262_ '())
                                                         (_vars181263_
                                                          _tl-vars181257_))
                                          (let* ((_rest181264181274_
                                                  _rest181261_)
                                                 (_else181266181282_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets181262_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx181089_
                                                           _where181249_))
                                                        (values (let ((__tmp186222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp186223
                                      (let ((__tmp186224
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e181256_
                                                     _targets181262_))))
                                        (declare (not safe))
                                        (cons _hd-e181254_ __tmp186224))))
                                 (declare (not safe))
                                 (cons _depth181250_ __tmp186223))))
                          (declare (not safe))
                          (cons 'splice __tmp186222))
                        _vars181263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K181268181291_
                                                  (lambda (_rest181285_
                                                           _hd-pat181286_
                                                           _hd-depth*181287_)
                                                    (let ((_hd-depth181289_
                                                           (fx- _hd-depth*181287_
                                                                _depth181250_)))
                                                      (if (fxpositive?
                                                           _hd-depth181289_)
                                                          (let ((__tmp186229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp186230
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat181286_))))
                           (declare (not safe))
                           (cons __tmp186230 _targets181262_)))
                        (__tmp186227
                         (let ((__tmp186228
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth181289_ _hd-pat181286_))))
                           (declare (not safe))
                           (cons __tmp186228 _vars181263_))))
                    (declare (not safe))
                    (_lp181259_ _rest181285_ __tmp186229 __tmp186227))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth181289_))
                      (let ((__tmp186225
                             (let ((__tmp186226
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat181286_))))
                               (declare (not safe))
                               (cons __tmp186226 _targets181262_))))
                        (declare (not safe))
                        (_lp181259_ _rest181285_ __tmp186225 _vars181263_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx181089_
                         _where181249_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest181264181274_))
                                                (let ((_hd181269181294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest181264181274_)))
                                                      (_tl181270181296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest181264181274_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd181269181294_))
                                                      (let ((_hd181271181299_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd181269181294_)))
                    (_tl181272181301_
                     (let () (declare (not safe)) (##cdr _hd181269181294_))))
                (let* ((_hd-depth*181304_ _hd181271181299_)
                       (_hd-pat181306_ _tl181272181301_)
                       (_rest181308_ _tl181270181296_))
                  (declare (not safe))
                  (_K181268181291_
                   _rest181308_
                   _hd-pat181306_
                   _hd-depth*181304_)))
              (let () (declare (not safe)) (_else181266181282_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else181266181282_)))))))))))
                             (_recur181137_
                              (lambda (_e181142_ _is-e?181143_)
                                (if (_is-e?181143_ _e181142_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx181089_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e181142_))
                                        (let* ((_pat181145_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e181142_)))
                                               (_depth181147_
                                                (##structure-ref
                                                 _pat181145_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth181147_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat181145_))
                                                      (let ((__tmp186246
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth181147_ _pat181145_))))
                (declare (not safe))
                (cons __tmp186246 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat181145_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e181142_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e181142_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e181142_))
                                                (let* ((_e181149181156_
                                                        _e181142_)
                                                       (_E181151181160_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e181149181156_))))
                                                       (_E181150181239_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e181149181156_))
                      (let ((_e181152181164_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e181149181156_))))
                        (let ((_hd181153181167_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181152181164_)))
                              (_tl181154181169_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181152181164_))))
                          (let* ((_hd181172_ _hd181153181167_)
                                 (_rest181174_ _tl181154181169_))
                            (if '#t
                                (if (_is-e?181143_ _hd181172_)
                                    (let* ((_e181175181182_ _rest181174_)
                                           (_E181177181186_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx181089_
                                                 _e181142_))))
                                           (_E181176181200_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e181175181182_))
                                                  (let ((_e181178181190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e181175181182_))))
                                                    (let ((_hd181179181193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e181178181190_)))
                                                          (_tl181180181195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e181178181190_))))
                                                      (let ((_rest181198_
                                                             _hd181179181193_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl181180181195_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur181137_ _rest181198_ false))
                        (let () (declare (not safe)) (_E181177181186_)))
                    (let () (declare (not safe)) (_E181177181186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181177181186_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E181176181200_)))
                                    (let _lp181204_ ((_rest181206_
                                                      _rest181174_)
                                                     (_depth181207_ '0))
                                      (let* ((_e181208181215_ _rest181206_)
                                             (_E181210181219_
                                              (lambda ()
                                                (if (fxpositive? _depth181207_)
                                                    (let ((__tmp186240
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181137_
                                                              _hd181172_
                                                              _is-e?181143_)))
                                                          (__tmp186239
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181137_
                                                              _rest181206_
                                                              _is-e?181143_))))
                                                      (declare (not safe))
                                                      (_make-splice181136_
                                                       _e181142_
                                                       _depth181207_
                                                       __tmp186240
                                                       __tmp186239))
                                                    (let ((__tmp186238
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181137_
                                                              _hd181172_
                                                              _is-e?181143_)))
                                                          (__tmp186237
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181137_
                                                              _rest181206_
                                                              _is-e?181143_))))
                                                      (declare (not safe))
                                                      (_make-cons181135_
                                                       __tmp186238
                                                       __tmp186237)))))
                                             (_E181209181235_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e181208181215_))
                                                    (let ((_e181211181223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e181208181215_))))
                                                      (let ((_hd181212181226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e181211181223_)))
                    (_tl181213181228_
                     (let () (declare (not safe)) (##cdr _e181211181223_))))
                (let* ((_rest-hd181231_ _hd181212181226_)
                       (_rest-tl181233_ _tl181213181228_))
                  (if '#t
                      (if (_is-e?181143_ _rest-hd181231_)
                          (let ((__tmp186245
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth181207_ '1))))
                            (declare (not safe))
                            (_lp181204_ _rest-tl181233_ __tmp186245))
                          (if (fxpositive? _depth181207_)
                              (let ((__tmp186244
                                     (let ()
                                       (declare (not safe))
                                       (_recur181137_
                                        _hd181172_
                                        _is-e?181143_)))
                                    (__tmp186243
                                     (let ()
                                       (declare (not safe))
                                       (_recur181137_
                                        _rest181206_
                                        _is-e?181143_))))
                                (declare (not safe))
                                (_make-splice181136_
                                 _e181142_
                                 _depth181207_
                                 __tmp186244
                                 __tmp186243))
                              (let ((__tmp186242
                                     (let ()
                                       (declare (not safe))
                                       (_recur181137_
                                        _hd181172_
                                        _is-e?181143_)))
                                    (__tmp186241
                                     (let ()
                                       (declare (not safe))
                                       (_recur181137_
                                        _rest181206_
                                        _is-e?181143_))))
                                (declare (not safe))
                                (_make-cons181135_ __tmp186242 __tmp186241))))
                      (let () (declare (not safe)) (_E181210181219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E181210181219_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E181209181235_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E181151181160_))))))
                      (let () (declare (not safe)) (_E181151181160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181150181239_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e181142_))
                                                    (let ((_g186234_
                                                           (let ((__tmp186236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e181142_)))))
                     (declare (not safe))
                     (_recur181137_ __tmp186236 _is-e?181143_))))
              (begin
                (let ((_g186235_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186234_)
                             (##vector-length _g186234_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186235_ 2)))
                      (error "Context expects 2 values" _g186235_)))
                (let ((_e181243_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186234_ 0)))
                      (_vars181244_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186234_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e181243_))
                          _vars181244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e181142_))
                                                        (let ((_g186231_
                                                               (let ((__tmp186233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e181142_)))))
                         (declare (not safe))
                         (_recur181137_ __tmp186233 _is-e?181143_))))
                  (begin
                    (let ((_g186232_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186231_)
                                 (##vector-length _g186231_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186232_ 2)))
                          (error "Context expects 2 values" _g186232_)))
                    (let ((_e181246_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186231_ 0)))
                          (_vars181247_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186231_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e181246_))
                              _vars181247_))))
                (values (let () (declare (not safe)) (cons 'datum _e181142_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186247_
                             (let ()
                               (declare (not safe))
                               (_recur181137_ _e181133_ gx#ellipsis?))))
                        (begin
                          (let ((_g186248_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186247_)
                                       (##vector-length _g186247_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186248_ 2)))
                                (error "Context expects 2 values" _g186248_)))
                          (let ((_tree181139_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186247_ 0)))
                                (_vars181140_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186247_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars181140_))
                                _tree181139_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx181089_
                                   _vars181140_))))))))))
          (let* ((_e181093181103_ _stx181089_)
                 (_E181095181107_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx181089_))))
                 (_E181094181129_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e181093181103_))
                        (let ((_e181096181111_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e181093181103_))))
                          (let ((_hd181097181114_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181096181111_)))
                                (_tl181098181116_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181096181111_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl181098181116_))
                                (let ((_e181099181119_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl181098181116_))))
                                  (let ((_hd181100181122_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e181099181119_)))
                                        (_tl181101181124_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e181099181119_))))
                                    (let ((_form181127_ _hd181100181122_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl181101181124_))
                                          (if '#t
                                              (let ((__tmp186250
                                                     (let ((__tmp186251
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse181092_
                                                               _form181127_))))
                                                       (declare (not safe))
                                                       (_generate181091_
                                                        __tmp186251)))
                                                    (__tmp186249
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx181089_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp186250
                                                 __tmp186249))
                                              (let ()
                                                (declare (not safe))
                                                (_E181095181107_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E181095181107_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E181095181107_)))))
                        (let () (declare (not safe)) (_E181095181107_))))))
            (let () (declare (not safe)) (_E181094181129_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx180353_
               _identifier=?180354_
               _unwrap-e180355_
               _wrap-e180356_)
        (letrec ((_generate-bindings180358_
                  (lambda (_target180953_
                           _ids180954_
                           _clauses180955_
                           _clause-ids180956_
                           _E180957_)
                    (letrec ((_generate1180959_
                              (lambda (_clause181056_
                                       _clause-id181057_
                                       _E181058_)
                                (let ((__tmp186256
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id181057_ '())))
                                      (__tmp186252
                                       (let ((__tmp186253
                                              (let ((__tmp186255
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180953_
                                                             '())))
                                                    (__tmp186254
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause180360_
                                                        _target180953_
                                                        _ids180954_
                                                        _clause181056_
                                                        _E181058_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp186255
                                                 __tmp186254))))
                                         (declare (not safe))
                                         (cons __tmp186253 '()))))
                                  (declare (not safe))
                                  (cons __tmp186256 __tmp186252)))))
                      (let _lp180961_ ((_rest180963_ _clauses180955_)
                                       (_rest-ids180964_ _clause-ids180956_)
                                       (_bindings180965_ '()))
                        (let* ((_rest180966180974_ _rest180963_)
                               (_else180968180982_
                                (lambda () _bindings180965_))
                               (_K180970181044_
                                (lambda (_rest180985_ _clause180986_)
                                  (let* ((_rest-ids180987180994_
                                          _rest-ids180964_)
                                         (_E180989180998_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids180987180994_)))
                                         (_K180990181032_
                                          (lambda (_rest-ids181001_
                                                   _clause-id181002_)
                                            (let* ((_rest-ids181003181011_
                                                    _rest-ids181001_)
                                                   (_else181005181019_
                                                    (lambda ()
                                                      (let ((__tmp186257
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1180959_
                        _clause180986_
                        _clause-id181002_
                        _E180957_))))
                (declare (not safe))
                (cons __tmp186257 _bindings180965_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K181007181024_
                                                    (lambda (_next-clause-id181022_)
                                                      (let ((__tmp186258
                                                             (let ((__tmp186259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1180959_
                               _clause180986_
                               _clause-id181002_
                               _next-clause-id181022_))))
                       (declare (not safe))
                       (cons __tmp186259 _bindings180965_))))
                (declare (not safe))
                (_lp180961_ _rest180985_ _rest-ids181001_ __tmp186258)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids181003181011_))
                                                  (let* ((_hd181008181027_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids181003181011_)))
                                                         (_next-clause-id181030_
                                                          _hd181008181027_))
                                                    (declare (not safe))
                                                    (_K181007181024_
                                                     _next-clause-id181030_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else181005181019_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids180987180994_))
                                        (let ((_hd180991181035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids180987180994_)))
                                              (_tl180992181037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids180987180994_))))
                                          (let* ((_clause-id181040_
                                                  _hd180991181035_)
                                                 (_rest-ids181042_
                                                  _tl180992181037_))
                                            (declare (not safe))
                                            (_K180990181032_
                                             _rest-ids181042_
                                             _clause-id181040_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180989180998_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest180966180974_))
                              (let ((_hd180971181047_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest180966180974_)))
                                    (_tl180972181049_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest180966180974_))))
                                (let* ((_clause181052_ _hd180971181047_)
                                       (_rest181054_ _tl180972181049_))
                                  (declare (not safe))
                                  (_K180970181044_
                                   _rest181054_
                                   _clause181052_)))
                              (let ()
                                (declare (not safe))
                                (_else180968180982_))))))))
                 (_generate-body180359_
                  (lambda (_bindings180913_ _body180914_)
                    (let _recur180916_ ((_rest180918_ _bindings180913_))
                      (let* ((_rest180919180927_ _rest180918_)
                             (_else180921180935_ (lambda () _body180914_))
                             (_K180923180941_
                              (lambda (_rest180938_ _hd180939_)
                                (let ((__tmp186261
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd180939_ '())))
                                      (__tmp186260
                                       (let ()
                                         (declare (not safe))
                                         (_recur180916_ _rest180938_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186261
                                   __tmp186260)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest180919180927_))
                            (let ((_hd180924180944_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest180919180927_)))
                                  (_tl180925180946_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest180919180927_))))
                              (let* ((_hd180949_ _hd180924180944_)
                                     (_rest180951_ _tl180925180946_))
                                (declare (not safe))
                                (_K180923180941_ _rest180951_ _hd180949_)))
                            (let ()
                              (declare (not safe))
                              (_else180921180935_)))))))
                 (_generate-clause180360_
                  (lambda (_target180776_ _ids180777_ _clause180778_ _E180779_)
                    (letrec ((_generate1180781_
                              (lambda (_hd180868_ _fender180869_ _body180870_)
                                (let ((_g186262_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause180362_
                                          _hd180868_
                                          _ids180777_))))
                                  (begin
                                    (let ((_g186263_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186262_)
                                                 (##vector-length _g186262_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186263_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186263_)))
                                    (let ((_e180872_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186262_ 0)))
                                          (_mvars180873_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186262_ 1))))
                                      (let* ((_pvars180875_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars180873_))))
                                             (_E180877_
                                              (let ((__tmp186264
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180776_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E180779_ __tmp186264)))
                                             (_K180910_
                                              (let ((__tmp186265
                                                     (let ((__tmp186267
                                                            (map (lambda (_mvar180879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar180880_)
                           (let* ((_mvar180881180888_ _mvar180879_)
                                  (_E180883180892_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar180881180888_)))
                                  (_K180884180898_
                                   (lambda (_depth180895_ _id180896_)
                                     (let ((__tmp186268
                                            (let ((__tmp186269
                                                   (let ((__tmp186271
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id180896_)))
                                                         (__tmp186270
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar180880_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp186271
                                                      __tmp186270
                                                      _depth180895_))))
                                              (declare (not safe))
                                              (cons __tmp186269 '()))))
                                       (declare (not safe))
                                       (cons _id180896_ __tmp186268)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar180881180888_))
                                 (let ((_hd180885180901_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar180881180888_)))
                                       (_tl180886180903_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar180881180888_))))
                                   (let* ((_id180906_ _hd180885180901_)
                                          (_depth180908_ _tl180886180903_))
                                     (declare (not safe))
                                     (_K180884180898_
                                      _depth180908_
                                      _id180906_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E180883180892_)))))
                         _mvars180873_
                         _pvars180875_))
                   (__tmp186266
                    (if (let () (declare (not safe)) (eq? _fender180869_ '#t))
                        _body180870_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender180869_
                           _body180870_
                           _E180877_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186267 __tmp186266))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars180875_
                                                 __tmp186265))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match180361_
                                           _hd180868_
                                           _target180776_
                                           _e180872_
                                           _mvars180873_
                                           _K180910_
                                           _E180877_)))))))))
                      (let* ((_e180782180802_ _clause180778_)
                             (_E180791180806_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e180782180802_))))
                             (_E180784180840_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180782180802_))
                                    (let ((_e180792180810_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180782180802_))))
                                      (let ((_hd180793180813_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180792180810_)))
                                            (_tl180794180815_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180792180810_))))
                                        (let ((_hd180818_ _hd180793180813_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180794180815_))
                                              (let ((_e180795180820_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180794180815_))))
                                                (let ((_hd180796180823_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180795180820_)))
                                                      (_tl180797180825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180795180820_))))
                                                  (let ((_fender180828_
                                                         _hd180796180823_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl180797180825_))
                                                        (let ((_e180798180830_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl180797180825_))))
                  (let ((_hd180799180833_
                         (let () (declare (not safe)) (##car _e180798180830_)))
                        (_tl180800180835_
                         (let ()
                           (declare (not safe))
                           (##cdr _e180798180830_))))
                    (let ((_body180838_ _hd180799180833_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl180800180835_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1180781_
                                 _hd180818_
                                 _fender180828_
                                 _body180838_))
                              (let () (declare (not safe)) (_E180791180806_)))
                          (let () (declare (not safe)) (_E180791180806_))))))
                (let () (declare (not safe)) (_E180791180806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E180791180806_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180791180806_)))))
                             (_E180783180864_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180782180802_))
                                    (let ((_e180785180844_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180782180802_))))
                                      (let ((_hd180786180847_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180785180844_)))
                                            (_tl180787180849_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180785180844_))))
                                        (let ((_hd180852_ _hd180786180847_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180787180849_))
                                              (let ((_e180788180854_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180787180849_))))
                                                (let ((_hd180789180857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180788180854_)))
                                                      (_tl180790180859_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180788180854_))))
                                                  (let ((_body180862_
                                                         _hd180789180857_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl180790180859_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1180781_
                                                               _hd180852_
                                                               '#t
                                                               _body180862_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E180784180840_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E180784180840_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E180784180840_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180784180840_))))))
                        (let () (declare (not safe)) (_E180783180864_))))))
                 (_generate-match180361_
                  (lambda (_where180525_
                           _target180526_
                           _hd180527_
                           _mvars180528_
                           _K180529_
                           _E180530_)
                    (letrec ((_BUG180532_
                              (lambda (_q180774_)
                                (error '"BUG: syntax-case; generate"
                                       _stx180353_
                                       _hd180527_
                                       _q180774_)))
                             (_recur180533_
                              (lambda (_e180624_
                                       _vars180625_
                                       _target180626_
                                       _E180627_
                                       _k180628_)
                                (let* ((_e180629180636_ _e180624_)
                                       (_E180631180640_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e180629180636_)))
                                       (_K180632180762_
                                        (lambda (_body180643_ _tag180644_)
                                          (let ((_$e180646_ _tag180644_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e180646_))
                                                (_k180628_ _vars180625_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e180646_))
                                                    (let ((__tmp186378
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target180626_)))
                                                          (__tmp186374
                                                           (let ((__tmp186376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186377
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e180356_
                                    _body180643_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?180354_
                             __tmp186377
                             _target180626_)))
                         (__tmp186375 (_k180628_ _vars180625_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186376 __tmp186375 _E180627_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186378 __tmp186374 _E180627_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e180646_))
                                                        (_k180628_
                                                         (let ((__tmp186373
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body180643_ _target180626_))))
                   (declare (not safe))
                   (cons __tmp186373 _vars180625_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e180646_))
                    (let ((_$e180649_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd180650_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl180651_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186372
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target180626_)))
                            (__tmp186353
                             (let ((__tmp186367
                                    (let ((__tmp186368
                                           (let ((__tmp186371
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e180649_ '())))
                                                 (__tmp186369
                                                  (let ((__tmp186370
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e180355_
                                                            _target180626_))))
                                                    (declare (not safe))
                                                    (cons __tmp186370 '()))))
                                             (declare (not safe))
                                             (cons __tmp186371 __tmp186369))))
                                      (declare (not safe))
                                      (cons __tmp186368 '())))
                                   (__tmp186354
                                    (let ((__tmp186357
                                           (let ((__tmp186363
                                                  (let ((__tmp186366
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd180650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp186364
                 (let ((__tmp186365
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e180649_))))
                   (declare (not safe))
                   (cons __tmp186365 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186366
                                                          __tmp186364)))
                                                 (__tmp186358
                                                  (let ((__tmp186359
                                                         (let ((__tmp186362
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl180651_ '())))
                       (__tmp186360
                        (let ((__tmp186361
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e180649_))))
                          (declare (not safe))
                          (cons __tmp186361 '()))))
                   (declare (not safe))
                   (cons __tmp186362 __tmp186360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186359 '()))))
                                             (declare (not safe))
                                             (cons __tmp186363 __tmp186358)))
                                          (__tmp186355
                                           (let* ((_body180652180659_
                                                   _body180643_)
                                                  (_E180654180663_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body180652180659_)))
                                                  (_K180655180671_
                                                   (lambda (_tl180666_
                                                            _hd180667_)
                                                     (let ((__tmp186356
                                                            (lambda (_vars180669_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur180533_
                         _tl180666_
                         _vars180669_
                         _$tl180651_
                         _E180627_
                         _k180628_)))))
               (declare (not safe))
               (_recur180533_
                _hd180667_
                _vars180625_
                _$hd180650_
                _E180627_
                __tmp186356)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body180652180659_))
                                                 (let ((_hd180656180674_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body180652180659_)))
                                                       (_tl180657180676_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body180652180659_))))
                                                   (let* ((_hd180679_
                                                           _hd180656180674_)
                                                          (_tl180681_
                                                           _tl180657180676_))
                                                     (declare (not safe))
                                                     (_K180655180671_
                                                      _tl180681_
                                                      _hd180679_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E180654180663_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186357
                                       __tmp186355))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186367
                                __tmp186354))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp186372 __tmp186353 _E180627_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e180646_))
                        (let* ((_body180682180689_ _body180643_)
                               (_E180684180693_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body180682180689_)))
                               (_K180685180744_
                                (lambda (_tl180696_ _hd180697_)
                                  (let* ((_rlen180699_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen180534_ _tl180696_)))
                                         (_$target180701_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd180703_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl180705_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp180707_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e180709_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd180711_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl180713_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars180715_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars180535_ _hd180697_)))
                                         (_lvars180717_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180715_)))
                                         (_tlvars180719_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180715_)))
                                         (_linit180723_
                                          (map (lambda (_var180721_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars180717_)))
                                    (letrec ((_make-loop180726_
                                              (lambda (_vars180730_)
                                                (let ((__tmp186304
                                                       (let ((__tmp186305
                                                              (let ((__tmp186341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp180707_ '())))
                            (__tmp186306
                             (let ((__tmp186307
                                    (let ((__tmp186340
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd180703_ _lvars180717_)))
                                          (__tmp186308
                                           (let ((__tmp186339
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd180703_)))
                                                 (__tmp186317
                                                  (let ((__tmp186334
                                                         (let ((__tmp186335
                                                                (let ((__tmp186338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e180709_ '())))
                              (__tmp186336
                               (let ((__tmp186337
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e180355_
                                         _$hd180703_))))
                                 (declare (not safe))
                                 (cons __tmp186337 '()))))
                          (declare (not safe))
                          (cons __tmp186338 __tmp186336))))
                   (declare (not safe))
                   (cons __tmp186335 '())))
                (__tmp186318
                 (let ((__tmp186324
                        (let ((__tmp186330
                               (let ((__tmp186333
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd180711_ '())))
                                     (__tmp186331
                                      (let ((__tmp186332
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e180709_))))
                                        (declare (not safe))
                                        (cons __tmp186332 '()))))
                                 (declare (not safe))
                                 (cons __tmp186333 __tmp186331)))
                              (__tmp186325
                               (let ((__tmp186326
                                      (let ((__tmp186329
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl180713_ '())))
                                            (__tmp186327
                                             (let ((__tmp186328
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e180709_))))
                                               (declare (not safe))
                                               (cons __tmp186328 '()))))
                                        (declare (not safe))
                                        (cons __tmp186329 __tmp186327))))
                                 (declare (not safe))
                                 (cons __tmp186326 '()))))
                          (declare (not safe))
                          (cons __tmp186330 __tmp186325)))
                       (__tmp186319
                        (let ((__tmp186320
                               (lambda (_hdvars180732_)
                                 (let ((__tmp186321
                                        (let ((__tmp186322
                                               (map (lambda (_svar180734_
                                                             _lvar180735_)
                                                      (let ((__tmp186323
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar180734_ _hdvars180732_ _BUG180532_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp186323 _lvar180735_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars180715_
                                                    _lvars180717_)))
                                          (declare (not safe))
                                          (cons _$lp-tl180713_ __tmp186322))))
                                   (declare (not safe))
                                   (cons _$lp180707_ __tmp186321)))))
                          (declare (not safe))
                          (_recur180533_
                           _hd180697_
                           '()
                           _$lp-hd180711_
                           _E180627_
                           __tmp186320))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp186324 __tmp186319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186334
                                                     __tmp186318)))
                                                 (__tmp186309
                                                  (let ((__tmp186313
                                                         (map (lambda (_lvar180737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar180738_)
                        (let ((__tmp186316
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar180738_ '())))
                              (__tmp186314
                               (let ((__tmp186315
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar180737_))))
                                 (declare (not safe))
                                 (cons __tmp186315 '()))))
                          (declare (not safe))
                          (cons __tmp186316 __tmp186314)))
                      _lvars180717_
                      _tlvars180719_))
                (__tmp186310
                 (_k180628_
                  (let ((__tmp186311
                         (lambda (_svar180740_ _tlvar180741_ _r180742_)
                           (let ((__tmp186312
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar180740_ _tlvar180741_))))
                             (declare (not safe))
                             (cons __tmp186312 _r180742_)))))
                    (declare (not safe))
                    (foldl2 __tmp186311
                            _vars180730_
                            _svars180715_
                            _tlvars180719_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186313
                                                     __tmp186310))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp186339
                                              __tmp186317
                                              __tmp186309))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp186340
                                       __tmp186308))))
                               (declare (not safe))
                               (cons __tmp186307 '()))))
                        (declare (not safe))
                        (cons __tmp186341 __tmp186306))))
                 (declare (not safe))
                 (cons __tmp186305 '())))
              (__tmp186302
               (let ((__tmp186303
                      (let ()
                        (declare (not safe))
                        (cons _$target180701_ _linit180723_))))
                 (declare (not safe))
                 (cons _$lp180707_ __tmp186303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186304
                                                   __tmp186302)))))
                                      (let ((_body180728_
                                             (let ((__tmp186343
                                                    (let ((__tmp186344
                                                           (let ((__tmp186347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186348
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl180705_ '()))))
                            (declare (not safe))
                            (cons _$target180701_ __tmp186348)))
                         (__tmp186345
                          (let ((__tmp186346
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target180626_
                                    _rlen180699_))))
                            (declare (not safe))
                            (cons __tmp186346 '()))))
                     (declare (not safe))
                     (cons __tmp186347 __tmp186345))))
              (declare (not safe))
              (cons __tmp186344 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186342
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180533_
                                                       _tl180696_
                                                       _vars180625_
                                                       _$tl180705_
                                                       _E180627_
                                                       _make-loop180726_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186343
                                                __tmp186342))))
                                        (let ((__tmp186352
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target180626_)))
                                              (__tmp186349
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen180699_))
                                                   _body180728_
                                                   (let ((__tmp186350
                                                          (let ((__tmp186351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target180626_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186351 _rlen180699_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186350
                                                      _body180728_
                                                      _E180627_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186352
                                           __tmp186349
                                           _E180627_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body180682180689_))
                              (let ((_hd180686180747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body180682180689_)))
                                    (_tl180687180749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body180682180689_))))
                                (let* ((_hd180752_ _hd180686180747_)
                                       (_tl180754_ _tl180687180749_))
                                  (declare (not safe))
                                  (_K180685180744_ _tl180754_ _hd180752_)))
                              (let () (declare (not safe)) (_E180684180693_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e180646_))
                            (let ((__tmp186301
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target180626_)))
                                  (__tmp186300 (_k180628_ _vars180625_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186301
                               __tmp186300
                               _E180627_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e180646_))
                                (let ((_$e180756_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186299
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target180626_)))
                                        (__tmp186291
                                         (let ((__tmp186293
                                                (let ((__tmp186294
                                                       (let ((__tmp186298
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e180756_ '())))
                     (__tmp186295
                      (let ((__tmp186296
                             (let ((__tmp186297
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e180355_
                                       _target180626_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp186297))))
                        (declare (not safe))
                        (cons __tmp186296 '()))))
                 (declare (not safe))
                 (cons __tmp186298 __tmp186295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp186294 '())))
                                               (__tmp186292
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur180533_
                                                   _body180643_
                                                   _vars180625_
                                                   _$e180756_
                                                   _E180627_
                                                   _k180628_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186293
                                            __tmp186292))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186299
                                     __tmp186291
                                     _E180627_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e180646_))
                                    (let ((_$e180758_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186290
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target180626_)))
                                            (__tmp186282
                                             (let ((__tmp186284
                                                    (let ((__tmp186285
                                                           (let ((__tmp186289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e180758_ '())))
                         (__tmp186286
                          (let ((__tmp186287
                                 (let ((__tmp186288
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e180355_
                                           _target180626_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp186288))))
                            (declare (not safe))
                            (cons __tmp186287 '()))))
                     (declare (not safe))
                     (cons __tmp186289 __tmp186286))))
              (declare (not safe))
              (cons __tmp186285 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186283
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180533_
                                                       _body180643_
                                                       _vars180625_
                                                       _$e180758_
                                                       _E180627_
                                                       _k180628_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186284
                                                __tmp186283))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186290
                                         __tmp186282
                                         _E180627_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e180646_))
                                        (let ((_$e180760_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186281
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target180626_)))
                                                (__tmp186272
                                                 (let ((__tmp186276
                                                        (let ((__tmp186277
                                                               (let ((__tmp186280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e180760_ '())))
                             (__tmp186278
                              (let ((__tmp186279
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target180626_))))
                                (declare (not safe))
                                (cons __tmp186279 '()))))
                         (declare (not safe))
                         (cons __tmp186280 __tmp186278))))
                  (declare (not safe))
                  (cons __tmp186277 '())))
               (__tmp186273
                (let ((__tmp186275
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e180760_ _body180643_)))
                      (__tmp186274 (_k180628_ _vars180625_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186275 __tmp186274 _E180627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186276
                                                    __tmp186273))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186281
                                             __tmp186272
                                             _E180627_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG180532_ _e180624_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e180629180636_))
                                      (let ((_hd180633180765_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180629180636_)))
                                            (_tl180634180767_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180629180636_))))
                                        (let* ((_tag180770_ _hd180633180765_)
                                               (_body180772_ _tl180634180767_))
                                          (declare (not safe))
                                          (_K180632180762_
                                           _body180772_
                                           _tag180770_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180631180640_))))))
                             (_splice-rlen180534_
                              (lambda (_e180586_)
                                (let _lp180588_ ((_e180590_ _e180586_)
                                                 (_n180591_ '0))
                                  (let* ((_e180592180599_ _e180590_)
                                         (_E180594180603_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180592180599_)))
                                         (_K180595180612_
                                          (lambda (_body180606_ _tag180607_)
                                            (let ((_$e180609_ _tag180607_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e180609_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx180353_
                                                     _where180525_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e180609_))
                                                      (let ((__tmp186380
                                                             (cdr _body180606_))
                                                            (__tmp186379
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n180591_ '1))))
                (declare (not safe))
                (_lp180588_ __tmp186380 __tmp186379))
              _n180591_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180592180599_))
                                        (let ((_hd180596180615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180592180599_)))
                                              (_tl180597180617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180592180599_))))
                                          (let* ((_tag180620_ _hd180596180615_)
                                                 (_body180622_
                                                  _tl180597180617_))
                                            (declare (not safe))
                                            (_K180595180612_
                                             _body180622_
                                             _tag180620_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180594180603_)))))))
                             (_splice-vars180535_
                              (lambda (_e180542_)
                                (let _recur180544_ ((_e180546_ _e180542_)
                                                    (_vars180547_ '()))
                                  (let* ((_e180548180555_ _e180546_)
                                         (_E180550180559_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180548180555_)))
                                         (_K180551180574_
                                          (lambda (_body180562_ _tag180563_)
                                            (let ((_$e180565_ _tag180563_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e180565_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body180562_
                                                          _vars180547_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e180565_))
                  (let () (declare (not safe)) (eq? 'splice _$e180565_)))
              (let ((__tmp186383 (cdr _body180562_))
                    (__tmp186381
                     (let ((__tmp186382 (car _body180562_)))
                       (declare (not safe))
                       (_recur180544_ __tmp186382 _vars180547_))))
                (declare (not safe))
                (_recur180544_ __tmp186383 __tmp186381))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e180565_))
                      (let () (declare (not safe)) (eq? 'box _$e180565_)))
                  (let ()
                    (declare (not safe))
                    (_recur180544_ _body180562_ _vars180547_))
                  _vars180547_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180548180555_))
                                        (let ((_hd180552180577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180548180555_)))
                                              (_tl180553180579_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180548180555_))))
                                          (let* ((_tag180582_ _hd180552180577_)
                                                 (_body180584_
                                                  _tl180553180579_))
                                            (declare (not safe))
                                            (_K180551180574_
                                             _body180584_
                                             _tag180582_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180550180559_)))))))
                             (_make-body180536_
                              (lambda (_vars180538_)
                                (let ((__tmp186384
                                       (map (lambda (_mvar180540_)
                                              (let ((__tmp186385
                                                     (car _mvar180540_)))
                                                (declare (not safe))
                                                (assgetq __tmp186385
                                                         _vars180538_
                                                         _BUG180532_)))
                                            _mvars180528_)))
                                  (declare (not safe))
                                  (cons _K180529_ __tmp186384)))))
                      (let ()
                        (declare (not safe))
                        (_recur180533_
                         _hd180527_
                         '()
                         _target180526_
                         _E180530_
                         _make-body180536_)))))
                 (_parse-clause180362_
                  (lambda (_hd180431_ _ids180432_)
                    (let _recur180434_ ((_e180436_ _hd180431_)
                                        (_vars180437_ '())
                                        (_depth180438_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e180436_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e180436_))
                              (values '(any) _vars180437_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e180436_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx180353_
                                     _hd180431_))
                                  (if (let ((__tmp186401
                                             (lambda (_id180440_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e180436_
                                                  _id180440_)))))
                                        (declare (not safe))
                                        (find __tmp186401 _ids180432_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e180436_))
                                              _vars180437_)
                                      (if (let ((__tmp186399
                                                 (lambda (_var180442_)
                                                   (let ((__tmp186400
                                                          (car _var180442_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e180436_
                                                      __tmp186400)))))
                                            (declare (not safe))
                                            (find __tmp186399 _vars180437_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx180353_
                                             _e180436_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e180436_))
                                                  (let ((__tmp186398
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e180436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth180438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186398
                                                          _vars180437_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e180436_))
                              (let* ((_e180443180450_ _e180436_)
                                     (_E180445180454_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e180443180450_))))
                                     (_E180444180515_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e180443180450_))
                                            (let ((_e180446180458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e180443180450_))))
                                              (let ((_hd180447180461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e180446180458_)))
                                                    (_tl180448180463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e180446180458_))))
                                                (let* ((_hd180466_
                                                        _hd180447180461_)
                                                       (_rest180468_
                                                        _tl180448180463_))
                                                  (if '#t
                                                      (let* ((_make-pair180483_
                                                              (lambda (_tag180470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd180471_
                               _tl180472_)
                        (let* ((_hd-depth180474_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag180470_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth180438_ '1))
                                    _depth180438_))
                               (_g186393_
                                (let ()
                                  (declare (not safe))
                                  (_recur180434_
                                   _hd180471_
                                   _vars180437_
                                   _hd-depth180474_))))
                          (begin
                            (let ((_g186394_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186393_)
                                         (##vector-length _g186393_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186394_ 2)))
                                  (error "Context expects 2 values"
                                         _g186394_)))
                            (let ((_hd180476_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186393_ 0)))
                                  (_vars180477_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186393_ 1))))
                              (let ((_g186395_
                                     (let ()
                                       (declare (not safe))
                                       (_recur180434_
                                        _tl180472_
                                        _vars180477_
                                        _depth180438_))))
                                (begin
                                  (let ((_g186396_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g186395_)
                                               (##vector-length _g186395_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g186396_ 2)))
                                        (error "Context expects 2 values"
                                               _g186396_)))
                                  (let ((_tl180479_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186395_ 0)))
                                        (_vars180480_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186395_ 1))))
                                    (let ()
                                      (values (let ((__tmp186397
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd180476_
                                                             _tl180479_))))
                                                (declare (not safe))
                                                (cons _tag180470_ __tmp186397))
                                              _vars180480_))))))))))
                     (_e180484180491_ _rest180468_)
                     (_E180486180495_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair180483_ 'cons _hd180466_ _rest180468_))))
                     (_E180485180511_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e180484180491_))
                            (let ((_e180487180499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e180484180491_))))
                              (let ((_hd180488180502_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e180487180499_)))
                                    (_tl180489180504_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e180487180499_))))
                                (let* ((_rest-hd180507_ _hd180488180502_)
                                       (_rest-tl180509_ _tl180489180504_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd180507_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180483_
                                             'splice
                                             _hd180466_
                                             _rest-tl180509_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180483_
                                             'cons
                                             _hd180466_
                                             _rest180468_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180486180495_))))))
                            (let () (declare (not safe)) (_E180486180495_))))))
                (let () (declare (not safe)) (_E180485180511_)))
              (let () (declare (not safe)) (_E180445180454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E180445180454_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180444180515_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e180436_))
                                  (values '(null) _vars180437_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e180436_))
                                      (let ((_g186390_
                                             (let ((__tmp186392
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e180436_)))))
                                               (declare (not safe))
                                               (_recur180434_
                                                __tmp186392
                                                _vars180437_
                                                _depth180438_))))
                                        (begin
                                          (let ((_g186391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186390_)
                                                       (##vector-length
                                                        _g186390_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186391_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186391_)))
                                          (let ((_e180519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g186390_ 0)))
                                                (_vars180520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g186390_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e180519_))
                                                    _vars180520_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e180436_))
                                          (let ((_g186387_
                                                 (let ((__tmp186389
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e180436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur180434_
                                                    __tmp186389
                                                    _vars180437_
                                                    _depth180438_))))
                                            (begin
                                              (let ((_g186388_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186387_)
                                                           (##vector-length
                                                            _g186387_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186388_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186388_)))
                                              (let ((_e180522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186387_
                                                        0)))
                                                    (_vars180523_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186387_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e180522_))
                                                        _vars180523_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e180436_))
                                              (values (let ((__tmp186386
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e180436_))))
                (declare (not safe))
                (cons 'datum __tmp186386))
              _vars180437_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx180353_
                                                 _e180436_))))))))))))
          (let* ((_e180363180376_ _stx180353_)
                 (_E180365180380_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e180363180376_))))
                 (_E180364180427_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e180363180376_))
                        (let ((_e180366180384_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e180363180376_))))
                          (let ((_hd180367180387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e180366180384_)))
                                (_tl180368180389_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e180366180384_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl180368180389_))
                                (let ((_e180369180392_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl180368180389_))))
                                  (let ((_hd180370180395_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e180369180392_)))
                                        (_tl180371180397_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e180369180392_))))
                                    (let ((_expr180400_ _hd180370180395_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl180371180397_))
                                          (let ((_e180372180402_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl180371180397_))))
                                            (let ((_hd180373180405_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e180372180402_)))
                                                  (_tl180374180407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e180372180402_))))
                                              (let* ((_ids180410_
                                                      _hd180373180405_)
                                                     (_clauses180412_
                                                      _tl180374180407_))
                                                (if '#t
                                                    (if (let ((__tmp186419
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids180410_))))
                  (declare (not safe))
                  (not __tmp186419))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx180353_
                   _ids180410_))
                (if (let ((__tmp186418
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses180412_))))
                      (declare (not safe))
                      (not __tmp186418))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx180353_))
                    (let* ((_ids180414_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids180410_)))
                           (_clauses180416_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses180412_)))
                           (_clause-ids180418_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses180416_)))
                           (_E180420_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target180422_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first180424_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses180416_))
                                _E180420_
                                (car _clause-ids180418_))))
                      (let ((__tmp186403
                             (let ((__tmp186404
                                    (let ((__tmp186406
                                           (let ((__tmp186411
                                                  (let ((__tmp186412
                                                         (let ((__tmp186417
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E180420_ '())))
                       (__tmp186413
                        (let ((__tmp186414
                               (let ((__tmp186416
                                      (let ()
                                        (declare (not safe))
                                        (cons _target180422_ '())))
                                     (__tmp186415
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target180422_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp186416
                                  __tmp186415))))
                          (declare (not safe))
                          (cons __tmp186414 '()))))
                   (declare (not safe))
                   (cons __tmp186417 __tmp186413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186412 '())))
                                                 (__tmp186407
                                                  (let ((__tmp186410
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings180358_
                                                            _target180422_
                                                            _ids180414_
                                                            _clauses180416_
                                                            _clause-ids180418_
                                                            _E180420_)))
                                                        (__tmp186408
                                                         (let ((__tmp186409
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr180400_ '()))))
                   (declare (not safe))
                   (cons _first180424_ __tmp186409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body180359_
                                                     __tmp186410
                                                     __tmp186408))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp186411
                                              __tmp186407)))
                                          (__tmp186405
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx180353_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp186406
                                       __tmp186405))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp186404)))
                            (__tmp186402
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx180353_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp186403 __tmp186402)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E180365180380_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E180365180380_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180365180380_)))))
                        (let () (declare (not safe)) (_E180365180380_))))))
            (let () (declare (not safe)) (_E180364180427_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx181063_)
        (let* ((_identifier=?181065_ 'free-identifier=?)
               (_unwrap-e181067_ 'syntax-e)
               (_wrap-e181069_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181063_
           _identifier=?181065_
           _unwrap-e181067_
           _wrap-e181069_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx181071_ _identifier=?181072_)
        (let* ((_unwrap-e181074_ 'syntax-e) (_wrap-e181076_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181071_
           _identifier=?181072_
           _unwrap-e181074_
           _wrap-e181076_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx181078_ _identifier=?181079_ _unwrap-e181080_)
        (let ((_wrap-e181082_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181078_
           _identifier=?181079_
           _unwrap-e181080_
           _wrap-e181082_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186421_
        (let ((_g186420_ (let () (declare (not safe)) (##length _g186421_))))
          (cond ((let () (declare (not safe)) (##fx= _g186420_ 1))
                 (apply (lambda (_stx181063_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx181063_)))
                        _g186421_))
                ((let () (declare (not safe)) (##fx= _g186420_ 2))
                 (apply (lambda (_stx181071_ _identifier=?181072_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx181071_
                             _identifier=?181072_)))
                        _g186421_))
                ((let () (declare (not safe)) (##fx= _g186420_ 3))
                 (apply (lambda (_stx181078_
                                 _identifier=?181079_
                                 _unwrap-e181080_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx181078_
                             _identifier=?181079_
                             _unwrap-e181080_)))
                        _g186421_))
                ((let () (declare (not safe)) (##fx= _g186420_ 4))
                 (apply (lambda (_stx181084_
                                 _identifier=?181085_
                                 _unwrap-e181086_
                                 _wrap-e181087_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx181084_
                             _identifier=?181085_
                             _unwrap-e181086_
                             _wrap-e181087_)))
                        _g186421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186421_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx180350_)
        (if (let () (declare (not safe)) (gx#identifier? _stx180350_))
            (let ((__tmp186422
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx180350_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186422 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd180308_ . _rest180309_)
        (let ((_len180311_ (length _hd180308_)))
          (let _lp180313_ ((_rest180315_ _rest180309_))
            (let* ((_rest180316180324_ _rest180315_)
                   (_else180318180332_ (lambda () '#!void))
                   (_K180320180338_
                    (lambda (_rest180335_ _hd180336_)
                      (if (fx= _len180311_ (length _hd180336_))
                          (let ()
                            (declare (not safe))
                            (_lp180313_ _rest180335_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd180336_))))))
              (if (let () (declare (not safe)) (##pair? _rest180316180324_))
                  (let ((_hd180321180341_
                         (let ()
                           (declare (not safe))
                           (##car _rest180316180324_)))
                        (_tl180322180343_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest180316180324_))))
                    (let* ((_hd180346_ _hd180321180341_)
                           (_rest180348_ _tl180322180343_))
                      (declare (not safe))
                      (_K180320180338_ _rest180348_ _hd180346_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx180266_ _n180267_)
        (let _lp180269_ ((_rest180271_ _stx180266_) (_r180272_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest180271_))
              (let* ((_g180273180280_
                      (let () (declare (not safe)) (gx#syntax-e _rest180271_)))
                     (_E180275180284_
                      (lambda ()
                        (error '"No clause matching" _g180273180280_)))
                     (_K180276180290_
                      (lambda (_rest180287_ _hd180288_)
                        (let ((__tmp186427
                               (let ()
                                 (declare (not safe))
                                 (cons _hd180288_ _r180272_))))
                          (declare (not safe))
                          (_lp180269_ _rest180287_ __tmp186427)))))
                (if (let () (declare (not safe)) (##pair? _g180273180280_))
                    (let ((_hd180277180293_
                           (let ()
                             (declare (not safe))
                             (##car _g180273180280_)))
                          (_tl180278180295_
                           (let ()
                             (declare (not safe))
                             (##cdr _g180273180280_))))
                      (let* ((_hd180298_ _hd180277180293_)
                             (_rest180300_ _tl180278180295_))
                        (declare (not safe))
                        (_K180276180290_ _rest180300_ _hd180298_)))
                    (let () (declare (not safe)) (_E180275180284_))))
              (let _lp180302_ ((_n180304_ _n180267_)
                               (_l180305_ _r180272_)
                               (_r180306_ _rest180271_))
                (if (let () (declare (not safe)) (null? _l180305_))
                    (values _l180305_ _r180306_)
                    (if (fxpositive? _n180304_)
                        (let ((__tmp186426
                               (let ()
                                 (declare (not safe))
                                 (fx- _n180304_ '1)))
                              (__tmp186425 (cdr _l180305_))
                              (__tmp186423
                               (let ((__tmp186424 (car _l180305_)))
                                 (declare (not safe))
                                 (cons __tmp186424 _r180306_))))
                          (declare (not safe))
                          (_lp180302_ __tmp186426 __tmp186425 __tmp186423))
                        (values (reverse _l180305_) _r180306_))))))))))
