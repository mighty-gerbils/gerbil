(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708370114)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96259 (list gx#expander::t))
            (__tmp96257
             (let ((__tmp96258
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96258 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96259
         '(id depth)
         __tmp96257
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96254_
        (apply make-instance gx#syntax-pattern::t _$args96254_)))
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
      (lambda (_self96251_ _stx96252_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96252_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx95733_)
        (letrec ((_generate95735_
                  (lambda (_e95962_)
                    (letrec ((_BUG95964_
                              (lambda (_q96126_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx95733_
                                         _e95962_
                                         _q96126_))))
                             (_local-pattern-e95965_
                              (lambda (_pat96124_)
                                (let ((__tmp96260
                                       (##structure-ref
                                        _pat96124_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96260))))
                             (_getvar95966_
                              (lambda (_q96121_ _vars96122_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96121_
                                   _vars96122_
                                   _BUG95964_))))
                             (_getarg95967_
                              (lambda (_arg96087_ _vars96088_)
                                (let* ((_arg9608996096_ _arg96087_)
                                       (_E9609196100_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9608996096_))))
                                       (_K9609296109_
                                        (lambda (_e96103_ _tag96104_)
                                          (let ((_$e96106_ _tag96104_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96106_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar95966_
                                                   _e96103_
                                                   _vars96088_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96106_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e95965_
                                                       _e96103_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG95964_
                                                       _arg96087_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9608996096_))
                                      (let ((_hd9609396112_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9608996096_)))
                                            (_tl9609496114_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9608996096_))))
                                        (let* ((_tag96117_ _hd9609396112_)
                                               (_e96119_ _tl9609496114_))
                                          (declare (not safe))
                                          (_K9609296109_ _e96119_ _tag96117_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9609196100_)))))))
                      (let _recur95969_ ((_e95971_ _e95962_) (_vars95972_ '()))
                        (let* ((_e9597395980_ _e95971_)
                               (_E9597595984_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9597395980_))))
                               (_K9597696075_
                                (lambda (_body95987_ _tag95988_)
                                  (let ((_$e95990_ _tag95988_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95990_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body95987_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e95990_))
                                            (let ((_id95993_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body95987_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id95993_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks95995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id95993_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks95995_))
                                                        (let ((__tmp96288
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body95987_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96288))
                (let ((__tmp96287
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body95987_)))
                      (__tmp96286
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body95987_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96287
                   __tmp96286
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id95993_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body95987_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG95964_
                                                         _e95971_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e95990_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e95965_
                                                   _body95987_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e95990_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar95966_
                                                       _body95987_
                                                       _vars95972_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e95990_))
                                                        (let ((__tmp96284
                                                               (let ((__tmp96285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body95987_)))
                         (declare (not safe))
                         (_recur95969_ __tmp96285 _vars95972_)))
                      (__tmp96282
                       (let ((__tmp96283 (cdr _body95987_)))
                         (declare (not safe))
                         (_recur95969_ __tmp96283 _vars95972_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96284 __tmp96282))
                (if (let () (declare (not safe)) (eq? 'vector _$e95990_))
                    (let ((__tmp96281
                           (let ()
                             (declare (not safe))
                             (_recur95969_ _body95987_ _vars95972_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96281))
                    (if (let () (declare (not safe)) (eq? 'box _$e95990_))
                        (let ((__tmp96280
                               (let ()
                                 (declare (not safe))
                                 (_recur95969_ _body95987_ _vars95972_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96280))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e95990_))
                            (let* ((_body9599696007_ _body95987_)
                                   (_E9599896011_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9599696007_))))
                                   (_K9599996049_
                                    (lambda (_args96014_
                                             _iv96015_
                                             _hd96016_
                                             _depth96017_)
                                      (let* ((_targets96023_
                                              (map (lambda (_g9601896020_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg95967_
                                                        _g9601896020_
                                                        _vars95972_)))
                                                   _args96014_))
                                             (_fold-in96025_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96014_)))
                                             (_fold-out96027_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96029_
                                              (let ((__tmp96261
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96027_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96261
                                                        _fold-in96025_)))
                                             (_lambda-body96046_
                                              (if (fx> _depth96017_ '1)
                                                  (let ((_r-args96037_
                                                         (map (lambda (_arg96031_)
                                                                (let ((__tmp96266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96031_)))
                          (declare (not safe))
                          (cons 'ref __tmp96266)))
                      _args96014_))
                (_r-vars96038_
                 (let ((__tmp96267
                        (lambda (_arg96033_ _var96034_ _r96035_)
                          (let ((__tmp96268
                                 (let ((__tmp96269 (cdr _arg96033_)))
                                   (declare (not safe))
                                   (cons __tmp96269 _var96034_))))
                            (declare (not safe))
                            (cons __tmp96268 _r96035_)))))
                   (declare (not safe))
                   (foldr2 __tmp96267
                           _vars95972_
                           _args96014_
                           _fold-in96025_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96270
                                                           (let ((__tmp96271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96275
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96017_ '1)))
                                (__tmp96272
                                 (let ((__tmp96273
                                        (let ((__tmp96274
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96027_))))
                                          (declare (not safe))
                                          (cons __tmp96274 _r-args96037_))))
                                   (declare (not safe))
                                   (cons _hd96016_ __tmp96273))))
                            (declare (not safe))
                            (cons __tmp96275 __tmp96272))))
                     (declare (not safe))
                     (cons 'splice __tmp96271))))
              (declare (not safe))
              (_recur95969_ __tmp96270 _r-vars96038_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96044_
                                                          (let ((__tmp96262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96040_ _var96041_ _r96042_)
                           (let ((__tmp96263
                                  (let ((__tmp96264 (cdr _arg96040_)))
                                    (declare (not safe))
                                    (cons __tmp96264 _var96041_))))
                             (declare (not safe))
                             (cons __tmp96263 _r96042_)))))
                    (declare (not safe))
                    (foldr2 __tmp96262
                            _vars95972_
                            _args96014_
                            _fold-in96025_)))
                 (__tmp96265
                  (let ()
                    (declare (not safe))
                    (_recur95969_ _hd96016_ _hd-vars96044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96265
                                                     _fold-out96027_)))))
                                        (let ((__tmp96279
                                               (if (fx> (length _targets96023_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96023_))
                                                   '#!void))
                                              (__tmp96276
                                               (let ((__tmp96278
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96029_
                                                         _lambda-body96046_)))
                                                     (__tmp96277
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur95969_
                                                         _iv96015_
                                                         _vars95972_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96278
                                                  __tmp96277
                                                  _targets96023_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96279
                                           __tmp96276))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9599696007_))
                                  (let ((_hd9600096052_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9599696007_)))
                                        (_tl9600196054_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9599696007_))))
                                    (let ((_depth96057_ _hd9600096052_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9600196054_))
                                          (let ((_hd9600296059_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9600196054_)))
                                                (_tl9600396061_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9600196054_))))
                                            (let ((_hd96064_ _hd9600296059_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9600396061_))
                                                  (let ((_hd9600496066_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9600396061_)))
                                                        (_tl9600596068_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9600396061_))))
                                                    (let* ((_iv96071_
                                                            _hd9600496066_)
                                                           (_args96073_
                                                            _tl9600596068_))
                                                      (declare (not safe))
                                                      (_K9599996049_
                                                       _args96073_
                                                       _iv96071_
                                                       _hd96064_
                                                       _depth96057_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9599896011_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9599896011_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9599896011_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e95990_))
                                _body95987_
                                (let ()
                                  (declare (not safe))
                                  (_BUG95964_ _e95971_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9597395980_))
                              (let ((_hd9597796078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9597395980_)))
                                    (_tl9597896080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9597395980_))))
                                (let* ((_tag96083_ _hd9597796078_)
                                       (_body96085_ _tl9597896080_))
                                  (declare (not safe))
                                  (_K9597696075_ _body96085_ _tag96083_)))
                              (let ()
                                (declare (not safe))
                                (_E9597595984_))))))))
                 (_parse95736_
                  (lambda (_e95777_)
                    (letrec ((_make-cons95779_
                              (lambda (_hd95954_ _tl95955_)
                                (let ((_g96289_ _hd95954_)
                                      (_g96291_ _tl95955_))
                                  (begin
                                    (let ((_g96290_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96289_)
                                                 (##vector-length _g96289_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96290_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96290_)))
                                    (let ((_g96292_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96291_)
                                                 (##vector-length _g96291_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96292_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96292_)))
                                    (let ((_hd-e95957_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96289_ 0)))
                                          (_hd-vars95958_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96289_ 1))))
                                      (let ((_tl-e95959_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96291_ 0)))
                                            (_tl-vars95960_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96291_ 1))))
                                        (values (let ((__tmp96293
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e95957_
                                                               _tl-e95959_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96293))
                                                (append _hd-vars95958_
                                                        _tl-vars95960_))))))))
                             (_make-splice95780_
                              (lambda (_where95893_
                                       _depth95894_
                                       _hd95895_
                                       _tl95896_)
                                (let ((_g96294_ _hd95895_)
                                      (_g96296_ _tl95896_))
                                  (begin
                                    (let ((_g96295_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96294_)
                                                 (##vector-length _g96294_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96295_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96295_)))
                                    (let ((_g96297_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96296_)
                                                 (##vector-length _g96296_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96297_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96297_)))
                                    (let ((_hd-e95898_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96294_ 0)))
                                          (_hd-vars95899_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96294_ 1))))
                                      (let ((_tl-e95900_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96296_ 0)))
                                            (_tl-vars95901_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96296_ 1))))
                                        (let _lp95903_ ((_rest95905_
                                                         _hd-vars95899_)
                                                        (_targets95906_ '())
                                                        (_vars95907_
                                                         _tl-vars95901_))
                                          (let* ((_rest9590895918_ _rest95905_)
                                                 (_else9591095926_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets95906_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx95733_
                                                           _where95893_))
                                                        (values (let ((__tmp96298
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96299
                                      (let ((__tmp96300
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e95900_
                                                     _targets95906_))))
                                        (declare (not safe))
                                        (cons _hd-e95898_ __tmp96300))))
                                 (declare (not safe))
                                 (cons _depth95894_ __tmp96299))))
                          (declare (not safe))
                          (cons 'splice __tmp96298))
                        _vars95907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9591295935_
                                                  (lambda (_rest95929_
                                                           _hd-pat95930_
                                                           _hd-depth*95931_)
                                                    (let ((_hd-depth95933_
                                                           (fx- _hd-depth*95931_
                                                                _depth95894_)))
                                                      (if (fxpositive?
                                                           _hd-depth95933_)
                                                          (let ((__tmp96305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96306
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat95930_))))
                           (declare (not safe))
                           (cons __tmp96306 _targets95906_)))
                        (__tmp96303
                         (let ((__tmp96304
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth95933_ _hd-pat95930_))))
                           (declare (not safe))
                           (cons __tmp96304 _vars95907_))))
                    (declare (not safe))
                    (_lp95903_ _rest95929_ __tmp96305 __tmp96303))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth95933_))
                      (let ((__tmp96301
                             (let ((__tmp96302
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat95930_))))
                               (declare (not safe))
                               (cons __tmp96302 _targets95906_))))
                        (declare (not safe))
                        (_lp95903_ _rest95929_ __tmp96301 _vars95907_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx95733_
                         _where95893_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9590895918_))
                                                (let ((_hd9591395938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9590895918_)))
                                                      (_tl9591495940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9590895918_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9591395938_))
                                                      (let ((_hd9591595943_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9591395938_)))
                    (_tl9591695945_
                     (let () (declare (not safe)) (##cdr _hd9591395938_))))
                (let* ((_hd-depth*95948_ _hd9591595943_)
                       (_hd-pat95950_ _tl9591695945_)
                       (_rest95952_ _tl9591495940_))
                  (declare (not safe))
                  (_K9591295935_ _rest95952_ _hd-pat95950_ _hd-depth*95948_)))
              (let () (declare (not safe)) (_else9591095926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9591095926_)))))))))))
                             (_recur95781_
                              (lambda (_e95786_ _is-e?95787_)
                                (if (_is-e?95787_ _e95786_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx95733_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e95786_))
                                        (let* ((_pat95789_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e95786_)))
                                               (_depth95791_
                                                (##structure-ref
                                                 _pat95789_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth95791_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat95789_))
                                                      (let ((__tmp96322
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth95791_ _pat95789_))))
                (declare (not safe))
                (cons __tmp96322 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat95789_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e95786_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e95786_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e95786_))
                                                (let* ((_e9579395800_ _e95786_)
                                                       (_E9579595804_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9579395800_))))
                                                       (_E9579495883_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9579395800_))
                      (let ((_e9579695808_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9579395800_))))
                        (let ((_hd9579795811_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9579695808_)))
                              (_tl9579895813_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9579695808_))))
                          (let* ((_hd95816_ _hd9579795811_)
                                 (_rest95818_ _tl9579895813_))
                            (if '#t
                                (if (_is-e?95787_ _hd95816_)
                                    (let* ((_e9581995826_ _rest95818_)
                                           (_E9582195830_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx95733_
                                                 _e95786_))))
                                           (_E9582095844_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9581995826_))
                                                  (let ((_e9582295834_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9581995826_))))
                                                    (let ((_hd9582395837_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9582295834_)))
                                                          (_tl9582495839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9582295834_))))
                                                      (let ((_rest95842_
                                                             _hd9582395837_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9582495839_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur95781_ _rest95842_ false))
                        (let () (declare (not safe)) (_E9582195830_)))
                    (let () (declare (not safe)) (_E9582195830_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9582195830_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9582095844_)))
                                    (let _lp95848_ ((_rest95850_ _rest95818_)
                                                    (_depth95851_ '0))
                                      (let* ((_e9585295859_ _rest95850_)
                                             (_E9585495863_
                                              (lambda ()
                                                (if (fxpositive? _depth95851_)
                                                    (let ((__tmp96316
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95781_
                                                              _hd95816_
                                                              _is-e?95787_)))
                                                          (__tmp96315
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95781_
                                                              _rest95850_
                                                              _is-e?95787_))))
                                                      (declare (not safe))
                                                      (_make-splice95780_
                                                       _e95786_
                                                       _depth95851_
                                                       __tmp96316
                                                       __tmp96315))
                                                    (let ((__tmp96314
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95781_
                                                              _hd95816_
                                                              _is-e?95787_)))
                                                          (__tmp96313
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95781_
                                                              _rest95850_
                                                              _is-e?95787_))))
                                                      (declare (not safe))
                                                      (_make-cons95779_
                                                       __tmp96314
                                                       __tmp96313)))))
                                             (_E9585395879_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9585295859_))
                                                    (let ((_e9585595867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9585295859_))))
                                                      (let ((_hd9585695870_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9585595867_)))
                    (_tl9585795872_
                     (let () (declare (not safe)) (##cdr _e9585595867_))))
                (let* ((_rest-hd95875_ _hd9585695870_)
                       (_rest-tl95877_ _tl9585795872_))
                  (if '#t
                      (if (_is-e?95787_ _rest-hd95875_)
                          (let ((__tmp96321
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth95851_ '1))))
                            (declare (not safe))
                            (_lp95848_ _rest-tl95877_ __tmp96321))
                          (if (fxpositive? _depth95851_)
                              (let ((__tmp96320
                                     (let ()
                                       (declare (not safe))
                                       (_recur95781_ _hd95816_ _is-e?95787_)))
                                    (__tmp96319
                                     (let ()
                                       (declare (not safe))
                                       (_recur95781_
                                        _rest95850_
                                        _is-e?95787_))))
                                (declare (not safe))
                                (_make-splice95780_
                                 _e95786_
                                 _depth95851_
                                 __tmp96320
                                 __tmp96319))
                              (let ((__tmp96318
                                     (let ()
                                       (declare (not safe))
                                       (_recur95781_ _hd95816_ _is-e?95787_)))
                                    (__tmp96317
                                     (let ()
                                       (declare (not safe))
                                       (_recur95781_
                                        _rest95850_
                                        _is-e?95787_))))
                                (declare (not safe))
                                (_make-cons95779_ __tmp96318 __tmp96317))))
                      (let () (declare (not safe)) (_E9585495863_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9585495863_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9585395879_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9579595804_))))))
                      (let () (declare (not safe)) (_E9579595804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9579495883_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e95786_))
                                                    (let ((_g96310_
                                                           (let ((__tmp96312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e95786_)))))
                     (declare (not safe))
                     (_recur95781_ __tmp96312 _is-e?95787_))))
              (begin
                (let ((_g96311_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96310_)
                             (##vector-length _g96310_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96311_ 2)))
                      (error "Context expects 2 values" _g96311_)))
                (let ((_e95887_
                       (let () (declare (not safe)) (##vector-ref _g96310_ 0)))
                      (_vars95888_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96310_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e95887_))
                          _vars95888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e95786_))
                                                        (let ((_g96307_
                                                               (let ((__tmp96309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e95786_)))))
                         (declare (not safe))
                         (_recur95781_ __tmp96309 _is-e?95787_))))
                  (begin
                    (let ((_g96308_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96307_)
                                 (##vector-length _g96307_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96308_ 2)))
                          (error "Context expects 2 values" _g96308_)))
                    (let ((_e95890_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96307_ 0)))
                          (_vars95891_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96307_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e95890_))
                              _vars95891_))))
                (values (let () (declare (not safe)) (cons 'datum _e95786_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96323_
                             (let ()
                               (declare (not safe))
                               (_recur95781_ _e95777_ gx#ellipsis?))))
                        (begin
                          (let ((_g96324_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96323_)
                                       (##vector-length _g96323_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96324_ 2)))
                                (error "Context expects 2 values" _g96324_)))
                          (let ((_tree95783_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96323_ 0)))
                                (_vars95784_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96323_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars95784_))
                                _tree95783_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx95733_
                                   _vars95784_))))))))))
          (let* ((_e9573795747_ _stx95733_)
                 (_E9573995751_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx95733_))))
                 (_E9573895773_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9573795747_))
                        (let ((_e9574095755_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9573795747_))))
                          (let ((_hd9574195758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9574095755_)))
                                (_tl9574295760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9574095755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9574295760_))
                                (let ((_e9574395763_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9574295760_))))
                                  (let ((_hd9574495766_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9574395763_)))
                                        (_tl9574595768_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9574395763_))))
                                    (let ((_form95771_ _hd9574495766_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9574595768_))
                                          (if '#t
                                              (let ((__tmp96326
                                                     (let ((__tmp96327
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse95736_
                                                               _form95771_))))
                                                       (declare (not safe))
                                                       (_generate95735_
                                                        __tmp96327)))
                                                    (__tmp96325
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx95733_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96326
                                                 __tmp96325))
                                              (let ()
                                                (declare (not safe))
                                                (_E9573995751_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9573995751_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9573995751_)))))
                        (let () (declare (not safe)) (_E9573995751_))))))
            (let () (declare (not safe)) (_E9573895773_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx94997_ _identifier=?94998_ _unwrap-e94999_ _wrap-e95000_)
        (letrec ((_generate-bindings95002_
                  (lambda (_target95597_
                           _ids95598_
                           _clauses95599_
                           _clause-ids95600_
                           _E95601_)
                    (letrec ((_generate195603_
                              (lambda (_clause95700_ _clause-id95701_ _E95702_)
                                (let ((__tmp96332
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id95701_ '())))
                                      (__tmp96328
                                       (let ((__tmp96329
                                              (let ((__tmp96331
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95597_
                                                             '())))
                                                    (__tmp96330
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95004_
                                                        _target95597_
                                                        _ids95598_
                                                        _clause95700_
                                                        _E95702_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96331
                                                 __tmp96330))))
                                         (declare (not safe))
                                         (cons __tmp96329 '()))))
                                  (declare (not safe))
                                  (cons __tmp96332 __tmp96328)))))
                      (let _lp95605_ ((_rest95607_ _clauses95599_)
                                      (_rest-ids95608_ _clause-ids95600_)
                                      (_bindings95609_ '()))
                        (let* ((_rest9561095618_ _rest95607_)
                               (_else9561295626_ (lambda () _bindings95609_))
                               (_K9561495688_
                                (lambda (_rest95629_ _clause95630_)
                                  (let* ((_rest-ids9563195638_ _rest-ids95608_)
                                         (_E9563395642_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9563195638_))))
                                         (_K9563495676_
                                          (lambda (_rest-ids95645_
                                                   _clause-id95646_)
                                            (let* ((_rest-ids9564795655_
                                                    _rest-ids95645_)
                                                   (_else9564995663_
                                                    (lambda ()
                                                      (let ((__tmp96333
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate195603_
                        _clause95630_
                        _clause-id95646_
                        _E95601_))))
                (declare (not safe))
                (cons __tmp96333 _bindings95609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9565195668_
                                                    (lambda (_next-clause-id95666_)
                                                      (let ((__tmp96334
                                                             (let ((__tmp96335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate195603_
                               _clause95630_
                               _clause-id95646_
                               _next-clause-id95666_))))
                       (declare (not safe))
                       (cons __tmp96335 _bindings95609_))))
                (declare (not safe))
                (_lp95605_ _rest95629_ _rest-ids95645_ __tmp96334)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9564795655_))
                                                  (let* ((_hd9565295671_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9564795655_)))
                                                         (_next-clause-id95674_
                                                          _hd9565295671_))
                                                    (declare (not safe))
                                                    (_K9565195668_
                                                     _next-clause-id95674_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9564995663_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9563195638_))
                                        (let ((_hd9563595679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9563195638_)))
                                              (_tl9563695681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9563195638_))))
                                          (let* ((_clause-id95684_
                                                  _hd9563595679_)
                                                 (_rest-ids95686_
                                                  _tl9563695681_))
                                            (declare (not safe))
                                            (_K9563495676_
                                             _rest-ids95686_
                                             _clause-id95684_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9563395642_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9561095618_))
                              (let ((_hd9561595691_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9561095618_)))
                                    (_tl9561695693_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9561095618_))))
                                (let* ((_clause95696_ _hd9561595691_)
                                       (_rest95698_ _tl9561695693_))
                                  (declare (not safe))
                                  (_K9561495688_ _rest95698_ _clause95696_)))
                              (let ()
                                (declare (not safe))
                                (_else9561295626_))))))))
                 (_generate-body95003_
                  (lambda (_bindings95557_ _body95558_)
                    (let _recur95560_ ((_rest95562_ _bindings95557_))
                      (let* ((_rest9556395571_ _rest95562_)
                             (_else9556595579_ (lambda () _body95558_))
                             (_K9556795585_
                              (lambda (_rest95582_ _hd95583_)
                                (let ((__tmp96337
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd95583_ '())))
                                      (__tmp96336
                                       (let ()
                                         (declare (not safe))
                                         (_recur95560_ _rest95582_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96337
                                   __tmp96336)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9556395571_))
                            (let ((_hd9556895588_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9556395571_)))
                                  (_tl9556995590_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9556395571_))))
                              (let* ((_hd95593_ _hd9556895588_)
                                     (_rest95595_ _tl9556995590_))
                                (declare (not safe))
                                (_K9556795585_ _rest95595_ _hd95593_)))
                            (let ()
                              (declare (not safe))
                              (_else9556595579_)))))))
                 (_generate-clause95004_
                  (lambda (_target95420_ _ids95421_ _clause95422_ _E95423_)
                    (letrec ((_generate195425_
                              (lambda (_hd95512_ _fender95513_ _body95514_)
                                (let ((_g96338_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95006_
                                          _hd95512_
                                          _ids95421_))))
                                  (begin
                                    (let ((_g96339_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96338_)
                                                 (##vector-length _g96338_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96339_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96339_)))
                                    (let ((_e95516_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96338_ 0)))
                                          (_mvars95517_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96338_ 1))))
                                      (let* ((_pvars95519_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars95517_))))
                                             (_E95521_
                                              (let ((__tmp96340
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95420_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E95423_ __tmp96340)))
                                             (_K95554_
                                              (let ((__tmp96341
                                                     (let ((__tmp96343
                                                            (map (lambda (_mvar95523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar95524_)
                           (let* ((_mvar9552595532_ _mvar95523_)
                                  (_E9552795536_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9552595532_))))
                                  (_K9552895542_
                                   (lambda (_depth95539_ _id95540_)
                                     (let ((__tmp96344
                                            (let ((__tmp96345
                                                   (let ((__tmp96347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id95540_)))
                                                         (__tmp96346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar95524_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96347
                                                      __tmp96346
                                                      _depth95539_))))
                                              (declare (not safe))
                                              (cons __tmp96345 '()))))
                                       (declare (not safe))
                                       (cons _id95540_ __tmp96344)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9552595532_))
                                 (let ((_hd9552995545_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9552595532_)))
                                       (_tl9553095547_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9552595532_))))
                                   (let* ((_id95550_ _hd9552995545_)
                                          (_depth95552_ _tl9553095547_))
                                     (declare (not safe))
                                     (_K9552895542_ _depth95552_ _id95550_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9552795536_)))))
                         _mvars95517_
                         _pvars95519_))
                   (__tmp96342
                    (if (let () (declare (not safe)) (eq? _fender95513_ '#t))
                        _body95514_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender95513_
                           _body95514_
                           _E95521_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96343 __tmp96342))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars95519_
                                                 __tmp96341))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95005_
                                           _hd95512_
                                           _target95420_
                                           _e95516_
                                           _mvars95517_
                                           _K95554_
                                           _E95521_)))))))))
                      (let* ((_e9542695446_ _clause95422_)
                             (_E9543595450_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9542695446_))))
                             (_E9542895484_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9542695446_))
                                    (let ((_e9543695454_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9542695446_))))
                                      (let ((_hd9543795457_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9543695454_)))
                                            (_tl9543895459_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9543695454_))))
                                        (let ((_hd95462_ _hd9543795457_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9543895459_))
                                              (let ((_e9543995464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9543895459_))))
                                                (let ((_hd9544095467_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9543995464_)))
                                                      (_tl9544195469_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9543995464_))))
                                                  (let ((_fender95472_
                                                         _hd9544095467_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9544195469_))
                                                        (let ((_e9544295474_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9544195469_))))
                  (let ((_hd9544395477_
                         (let () (declare (not safe)) (##car _e9544295474_)))
                        (_tl9544495479_
                         (let () (declare (not safe)) (##cdr _e9544295474_))))
                    (let ((_body95482_ _hd9544395477_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9544495479_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate195425_
                                 _hd95462_
                                 _fender95472_
                                 _body95482_))
                              (let () (declare (not safe)) (_E9543595450_)))
                          (let () (declare (not safe)) (_E9543595450_))))))
                (let () (declare (not safe)) (_E9543595450_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9543595450_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9543595450_)))))
                             (_E9542795508_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9542695446_))
                                    (let ((_e9542995488_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9542695446_))))
                                      (let ((_hd9543095491_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9542995488_)))
                                            (_tl9543195493_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9542995488_))))
                                        (let ((_hd95496_ _hd9543095491_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9543195493_))
                                              (let ((_e9543295498_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9543195493_))))
                                                (let ((_hd9543395501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9543295498_)))
                                                      (_tl9543495503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9543295498_))))
                                                  (let ((_body95506_
                                                         _hd9543395501_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9543495503_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate195425_
                                                               _hd95496_
                                                               '#t
                                                               _body95506_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9542895484_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9542895484_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9542895484_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9542895484_))))))
                        (let () (declare (not safe)) (_E9542795508_))))))
                 (_generate-match95005_
                  (lambda (_where95169_
                           _target95170_
                           _hd95171_
                           _mvars95172_
                           _K95173_
                           _E95174_)
                    (letrec ((_BUG95176_
                              (lambda (_q95418_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx94997_
                                         _hd95171_
                                         _q95418_))))
                             (_recur95177_
                              (lambda (_e95268_
                                       _vars95269_
                                       _target95270_
                                       _E95271_
                                       _k95272_)
                                (let* ((_e9527395280_ _e95268_)
                                       (_E9527595284_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9527395280_))))
                                       (_K9527695406_
                                        (lambda (_body95287_ _tag95288_)
                                          (let ((_$e95290_ _tag95288_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95290_))
                                                (_k95272_ _vars95269_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95290_))
                                                    (let ((__tmp96454
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95270_)))
                                                          (__tmp96450
                                                           (let ((__tmp96452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96453
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95000_ _body95287_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?94998_
                             __tmp96453
                             _target95270_)))
                         (__tmp96451 (_k95272_ _vars95269_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp96452 __tmp96451 _E95271_))))
              (declare (not safe))
              (gx#core-list 'if __tmp96454 __tmp96450 _E95271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95290_))
                                                        (_k95272_
                                                         (let ((__tmp96449
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95287_ _target95270_))))
                   (declare (not safe))
                   (cons __tmp96449 _vars95269_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95290_))
                    (let ((_$e95293_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95294_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95295_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp96448
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95270_)))
                            (__tmp96429
                             (let ((__tmp96443
                                    (let ((__tmp96444
                                           (let ((__tmp96447
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95293_ '())))
                                                 (__tmp96445
                                                  (let ((__tmp96446
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e94999_
                                                            _target95270_))))
                                                    (declare (not safe))
                                                    (cons __tmp96446 '()))))
                                             (declare (not safe))
                                             (cons __tmp96447 __tmp96445))))
                                      (declare (not safe))
                                      (cons __tmp96444 '())))
                                   (__tmp96430
                                    (let ((__tmp96433
                                           (let ((__tmp96439
                                                  (let ((__tmp96442
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp96440
                 (let ((__tmp96441
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95293_))))
                   (declare (not safe))
                   (cons __tmp96441 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96442
                                                          __tmp96440)))
                                                 (__tmp96434
                                                  (let ((__tmp96435
                                                         (let ((__tmp96438
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95295_ '())))
                       (__tmp96436
                        (let ((__tmp96437
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95293_))))
                          (declare (not safe))
                          (cons __tmp96437 '()))))
                   (declare (not safe))
                   (cons __tmp96438 __tmp96436))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96435 '()))))
                                             (declare (not safe))
                                             (cons __tmp96439 __tmp96434)))
                                          (__tmp96431
                                           (let* ((_body9529695303_
                                                   _body95287_)
                                                  (_E9529895307_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9529695303_))))
                                                  (_K9529995315_
                                                   (lambda (_tl95310_
                                                            _hd95311_)
                                                     (let ((__tmp96432
                                                            (lambda (_vars95313_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95177_
                         _tl95310_
                         _vars95313_
                         _$tl95295_
                         _E95271_
                         _k95272_)))))
               (declare (not safe))
               (_recur95177_
                _hd95311_
                _vars95269_
                _$hd95294_
                _E95271_
                __tmp96432)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9529695303_))
                                                 (let ((_hd9530095318_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9529695303_)))
                                                       (_tl9530195320_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9529695303_))))
                                                   (let* ((_hd95323_
                                                           _hd9530095318_)
                                                          (_tl95325_
                                                           _tl9530195320_))
                                                     (declare (not safe))
                                                     (_K9529995315_
                                                      _tl95325_
                                                      _hd95323_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9529895307_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp96433
                                       __tmp96431))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp96443
                                __tmp96430))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp96448 __tmp96429 _E95271_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95290_))
                        (let* ((_body9532695333_ _body95287_)
                               (_E9532895337_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9532695333_))))
                               (_K9532995388_
                                (lambda (_tl95340_ _hd95341_)
                                  (let* ((_rlen95343_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95178_ _tl95340_)))
                                         (_$target95345_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95347_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95349_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95351_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95353_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95355_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95357_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars95359_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95179_ _hd95341_)))
                                         (_lvars95361_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95359_)))
                                         (_tlvars95363_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95359_)))
                                         (_linit95367_
                                          (map (lambda (_var95365_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars95361_)))
                                    (letrec ((_make-loop95370_
                                              (lambda (_vars95374_)
                                                (let ((__tmp96380
                                                       (let ((__tmp96381
                                                              (let ((__tmp96417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95351_ '())))
                            (__tmp96382
                             (let ((__tmp96383
                                    (let ((__tmp96416
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95347_ _lvars95361_)))
                                          (__tmp96384
                                           (let ((__tmp96415
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95347_)))
                                                 (__tmp96393
                                                  (let ((__tmp96410
                                                         (let ((__tmp96411
                                                                (let ((__tmp96414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95353_ '())))
                              (__tmp96412
                               (let ((__tmp96413
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e94999_
                                         _$hd95347_))))
                                 (declare (not safe))
                                 (cons __tmp96413 '()))))
                          (declare (not safe))
                          (cons __tmp96414 __tmp96412))))
                   (declare (not safe))
                   (cons __tmp96411 '())))
                (__tmp96394
                 (let ((__tmp96400
                        (let ((__tmp96406
                               (let ((__tmp96409
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95355_ '())))
                                     (__tmp96407
                                      (let ((__tmp96408
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95353_))))
                                        (declare (not safe))
                                        (cons __tmp96408 '()))))
                                 (declare (not safe))
                                 (cons __tmp96409 __tmp96407)))
                              (__tmp96401
                               (let ((__tmp96402
                                      (let ((__tmp96405
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95357_ '())))
                                            (__tmp96403
                                             (let ((__tmp96404
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95353_))))
                                               (declare (not safe))
                                               (cons __tmp96404 '()))))
                                        (declare (not safe))
                                        (cons __tmp96405 __tmp96403))))
                                 (declare (not safe))
                                 (cons __tmp96402 '()))))
                          (declare (not safe))
                          (cons __tmp96406 __tmp96401)))
                       (__tmp96395
                        (let ((__tmp96396
                               (lambda (_hdvars95376_)
                                 (let ((__tmp96397
                                        (let ((__tmp96398
                                               (map (lambda (_svar95378_
                                                             _lvar95379_)
                                                      (let ((__tmp96399
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar95378_ _hdvars95376_ _BUG95176_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp96399 _lvar95379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars95359_
                                                    _lvars95361_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95357_ __tmp96398))))
                                   (declare (not safe))
                                   (cons _$lp95351_ __tmp96397)))))
                          (declare (not safe))
                          (_recur95177_
                           _hd95341_
                           '()
                           _$lp-hd95355_
                           _E95271_
                           __tmp96396))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp96400 __tmp96395))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96410
                                                     __tmp96394)))
                                                 (__tmp96385
                                                  (let ((__tmp96389
                                                         (map (lambda (_lvar95381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar95382_)
                        (let ((__tmp96392
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar95382_ '())))
                              (__tmp96390
                               (let ((__tmp96391
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar95381_))))
                                 (declare (not safe))
                                 (cons __tmp96391 '()))))
                          (declare (not safe))
                          (cons __tmp96392 __tmp96390)))
                      _lvars95361_
                      _tlvars95363_))
                (__tmp96386
                 (_k95272_
                  (let ((__tmp96387
                         (lambda (_svar95384_ _tlvar95385_ _r95386_)
                           (let ((__tmp96388
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar95384_ _tlvar95385_))))
                             (declare (not safe))
                             (cons __tmp96388 _r95386_)))))
                    (declare (not safe))
                    (foldl2 __tmp96387
                            _vars95374_
                            _svars95359_
                            _tlvars95363_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96389
                                                     __tmp96386))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp96415
                                              __tmp96393
                                              __tmp96385))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp96416
                                       __tmp96384))))
                               (declare (not safe))
                               (cons __tmp96383 '()))))
                        (declare (not safe))
                        (cons __tmp96417 __tmp96382))))
                 (declare (not safe))
                 (cons __tmp96381 '())))
              (__tmp96378
               (let ((__tmp96379
                      (let ()
                        (declare (not safe))
                        (cons _$target95345_ _linit95367_))))
                 (declare (not safe))
                 (cons _$lp95351_ __tmp96379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp96380
                                                   __tmp96378)))))
                                      (let ((_body95372_
                                             (let ((__tmp96419
                                                    (let ((__tmp96420
                                                           (let ((__tmp96423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96424
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95349_ '()))))
                            (declare (not safe))
                            (cons _$target95345_ __tmp96424)))
                         (__tmp96421
                          (let ((__tmp96422
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95270_
                                    _rlen95343_))))
                            (declare (not safe))
                            (cons __tmp96422 '()))))
                     (declare (not safe))
                     (cons __tmp96423 __tmp96421))))
              (declare (not safe))
              (cons __tmp96420 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96418
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95177_
                                                       _tl95340_
                                                       _vars95269_
                                                       _$tl95349_
                                                       _E95271_
                                                       _make-loop95370_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96419
                                                __tmp96418))))
                                        (let ((__tmp96428
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95270_)))
                                              (__tmp96425
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95343_))
                                                   _body95372_
                                                   (let ((__tmp96426
                                                          (let ((__tmp96427
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95270_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp96427 _rlen95343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp96426
                                                      _body95372_
                                                      _E95271_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp96428
                                           __tmp96425
                                           _E95271_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9532695333_))
                              (let ((_hd9533095391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9532695333_)))
                                    (_tl9533195393_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9532695333_))))
                                (let* ((_hd95396_ _hd9533095391_)
                                       (_tl95398_ _tl9533195393_))
                                  (declare (not safe))
                                  (_K9532995388_ _tl95398_ _hd95396_)))
                              (let () (declare (not safe)) (_E9532895337_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95290_))
                            (let ((__tmp96377
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95270_)))
                                  (__tmp96376 (_k95272_ _vars95269_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp96377
                               __tmp96376
                               _E95271_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95290_))
                                (let ((_$e95400_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp96375
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95270_)))
                                        (__tmp96367
                                         (let ((__tmp96369
                                                (let ((__tmp96370
                                                       (let ((__tmp96374
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e95400_ '())))
                     (__tmp96371
                      (let ((__tmp96372
                             (let ((__tmp96373
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e94999_
                                       _target95270_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp96373))))
                        (declare (not safe))
                        (cons __tmp96372 '()))))
                 (declare (not safe))
                 (cons __tmp96374 __tmp96371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96370 '())))
                                               (__tmp96368
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95177_
                                                   _body95287_
                                                   _vars95269_
                                                   _$e95400_
                                                   _E95271_
                                                   _k95272_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp96369
                                            __tmp96368))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp96375
                                     __tmp96367
                                     _E95271_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95290_))
                                    (let ((_$e95402_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp96366
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95270_)))
                                            (__tmp96358
                                             (let ((__tmp96360
                                                    (let ((__tmp96361
                                                           (let ((__tmp96365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e95402_ '())))
                         (__tmp96362
                          (let ((__tmp96363
                                 (let ((__tmp96364
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e94999_
                                           _target95270_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp96364))))
                            (declare (not safe))
                            (cons __tmp96363 '()))))
                     (declare (not safe))
                     (cons __tmp96365 __tmp96362))))
              (declare (not safe))
              (cons __tmp96361 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96359
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95177_
                                                       _body95287_
                                                       _vars95269_
                                                       _$e95402_
                                                       _E95271_
                                                       _k95272_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96360
                                                __tmp96359))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp96366
                                         __tmp96358
                                         _E95271_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95290_))
                                        (let ((_$e95404_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96357
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95270_)))
                                                (__tmp96348
                                                 (let ((__tmp96352
                                                        (let ((__tmp96353
                                                               (let ((__tmp96356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e95404_ '())))
                             (__tmp96354
                              (let ((__tmp96355
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95270_))))
                                (declare (not safe))
                                (cons __tmp96355 '()))))
                         (declare (not safe))
                         (cons __tmp96356 __tmp96354))))
                  (declare (not safe))
                  (cons __tmp96353 '())))
               (__tmp96349
                (let ((__tmp96351
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e95404_ _body95287_)))
                      (__tmp96350 (_k95272_ _vars95269_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96351 __tmp96350 _E95271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96352
                                                    __tmp96349))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96357
                                             __tmp96348
                                             _E95271_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95176_ _e95268_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9527395280_))
                                      (let ((_hd9527795409_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9527395280_)))
                                            (_tl9527895411_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9527395280_))))
                                        (let* ((_tag95414_ _hd9527795409_)
                                               (_body95416_ _tl9527895411_))
                                          (declare (not safe))
                                          (_K9527695406_
                                           _body95416_
                                           _tag95414_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9527595284_))))))
                             (_splice-rlen95178_
                              (lambda (_e95230_)
                                (let _lp95232_ ((_e95234_ _e95230_)
                                                (_n95235_ '0))
                                  (let* ((_e9523695243_ _e95234_)
                                         (_E9523895247_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9523695243_))))
                                         (_K9523995256_
                                          (lambda (_body95250_ _tag95251_)
                                            (let ((_$e95253_ _tag95251_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95253_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx94997_
                                                     _where95169_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95253_))
                                                      (let ((__tmp96456
                                                             (cdr _body95250_))
                                                            (__tmp96455
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95235_ '1))))
                (declare (not safe))
                (_lp95232_ __tmp96456 __tmp96455))
              _n95235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9523695243_))
                                        (let ((_hd9524095259_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9523695243_)))
                                              (_tl9524195261_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9523695243_))))
                                          (let* ((_tag95264_ _hd9524095259_)
                                                 (_body95266_ _tl9524195261_))
                                            (declare (not safe))
                                            (_K9523995256_
                                             _body95266_
                                             _tag95264_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9523895247_)))))))
                             (_splice-vars95179_
                              (lambda (_e95186_)
                                (let _recur95188_ ((_e95190_ _e95186_)
                                                   (_vars95191_ '()))
                                  (let* ((_e9519295199_ _e95190_)
                                         (_E9519495203_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9519295199_))))
                                         (_K9519595218_
                                          (lambda (_body95206_ _tag95207_)
                                            (let ((_$e95209_ _tag95207_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95209_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95206_
                                                          _vars95191_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95209_))
                  (let () (declare (not safe)) (eq? 'splice _$e95209_)))
              (let ((__tmp96459 (cdr _body95206_))
                    (__tmp96457
                     (let ((__tmp96458 (car _body95206_)))
                       (declare (not safe))
                       (_recur95188_ __tmp96458 _vars95191_))))
                (declare (not safe))
                (_recur95188_ __tmp96459 __tmp96457))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95209_))
                      (let () (declare (not safe)) (eq? 'box _$e95209_)))
                  (let ()
                    (declare (not safe))
                    (_recur95188_ _body95206_ _vars95191_))
                  _vars95191_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9519295199_))
                                        (let ((_hd9519695221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9519295199_)))
                                              (_tl9519795223_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9519295199_))))
                                          (let* ((_tag95226_ _hd9519695221_)
                                                 (_body95228_ _tl9519795223_))
                                            (declare (not safe))
                                            (_K9519595218_
                                             _body95228_
                                             _tag95226_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9519495203_)))))))
                             (_make-body95180_
                              (lambda (_vars95182_)
                                (let ((__tmp96460
                                       (map (lambda (_mvar95184_)
                                              (let ((__tmp96461
                                                     (car _mvar95184_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp96461
                                                 _vars95182_
                                                 _BUG95176_)))
                                            _mvars95172_)))
                                  (declare (not safe))
                                  (cons _K95173_ __tmp96460)))))
                      (let ()
                        (declare (not safe))
                        (_recur95177_
                         _hd95171_
                         '()
                         _target95170_
                         _E95174_
                         _make-body95180_)))))
                 (_parse-clause95006_
                  (lambda (_hd95075_ _ids95076_)
                    (let _recur95078_ ((_e95080_ _hd95075_)
                                       (_vars95081_ '())
                                       (_depth95082_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95080_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95080_))
                              (values '(any) _vars95081_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95080_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx94997_
                                     _hd95075_))
                                  (if (let ((__tmp96477
                                             (lambda (_id95084_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95080_
                                                  _id95084_)))))
                                        (declare (not safe))
                                        (find __tmp96477 _ids95076_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95080_))
                                              _vars95081_)
                                      (if (let ((__tmp96475
                                                 (lambda (_var95086_)
                                                   (let ((__tmp96476
                                                          (car _var95086_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95080_
                                                      __tmp96476)))))
                                            (declare (not safe))
                                            (find __tmp96475 _vars95081_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx94997_
                                             _e95080_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95080_))
                                                  (let ((__tmp96474
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96474
                                                          _vars95081_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95080_))
                              (let* ((_e9508795094_ _e95080_)
                                     (_E9508995098_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9508795094_))))
                                     (_E9508895159_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9508795094_))
                                            (let ((_e9509095102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9508795094_))))
                                              (let ((_hd9509195105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9509095102_)))
                                                    (_tl9509295107_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9509095102_))))
                                                (let* ((_hd95110_
                                                        _hd9509195105_)
                                                       (_rest95112_
                                                        _tl9509295107_))
                                                  (if '#t
                                                      (let* ((_make-pair95127_
                                                              (lambda (_tag95114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95115_
                               _tl95116_)
                        (let* ((_hd-depth95118_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95114_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95082_ '1))
                                    _depth95082_))
                               (_g96469_
                                (let ()
                                  (declare (not safe))
                                  (_recur95078_
                                   _hd95115_
                                   _vars95081_
                                   _hd-depth95118_))))
                          (begin
                            (let ((_g96470_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g96469_)
                                         (##vector-length _g96469_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g96470_ 2)))
                                  (error "Context expects 2 values" _g96470_)))
                            (let ((_hd95120_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96469_ 0)))
                                  (_vars95121_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96469_ 1))))
                              (let ((_g96471_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95078_
                                        _tl95116_
                                        _vars95121_
                                        _depth95082_))))
                                (begin
                                  (let ((_g96472_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g96471_)
                                               (##vector-length _g96471_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g96472_ 2)))
                                        (error "Context expects 2 values"
                                               _g96472_)))
                                  (let ((_tl95123_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96471_ 0)))
                                        (_vars95124_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96471_ 1))))
                                    (let ()
                                      (values (let ((__tmp96473
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95120_
                                                             _tl95123_))))
                                                (declare (not safe))
                                                (cons _tag95114_ __tmp96473))
                                              _vars95124_))))))))))
                     (_e9512895135_ _rest95112_)
                     (_E9513095139_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95127_ 'cons _hd95110_ _rest95112_))))
                     (_E9512995155_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9512895135_))
                            (let ((_e9513195143_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9512895135_))))
                              (let ((_hd9513295146_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9513195143_)))
                                    (_tl9513395148_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9513195143_))))
                                (let* ((_rest-hd95151_ _hd9513295146_)
                                       (_rest-tl95153_ _tl9513395148_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95151_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95127_
                                             'splice
                                             _hd95110_
                                             _rest-tl95153_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95127_
                                             'cons
                                             _hd95110_
                                             _rest95112_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9513095139_))))))
                            (let () (declare (not safe)) (_E9513095139_))))))
                (let () (declare (not safe)) (_E9512995155_)))
              (let () (declare (not safe)) (_E9508995098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9508995098_))))))
                                (let () (declare (not safe)) (_E9508895159_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95080_))
                                  (values '(null) _vars95081_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95080_))
                                      (let ((_g96466_
                                             (let ((__tmp96468
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95080_)))))
                                               (declare (not safe))
                                               (_recur95078_
                                                __tmp96468
                                                _vars95081_
                                                _depth95082_))))
                                        (begin
                                          (let ((_g96467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96466_)
                                                       (##vector-length
                                                        _g96466_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96467_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96467_)))
                                          (let ((_e95163_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96466_ 0)))
                                                (_vars95164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96466_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95163_))
                                                    _vars95164_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95080_))
                                          (let ((_g96463_
                                                 (let ((__tmp96465
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95080_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95078_
                                                    __tmp96465
                                                    _vars95081_
                                                    _depth95082_))))
                                            (begin
                                              (let ((_g96464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g96463_)
                                                           (##vector-length
                                                            _g96463_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g96464_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g96464_)))
                                              (let ((_e95166_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96463_
                                                        0)))
                                                    (_vars95167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96463_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95166_))
                                                        _vars95167_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95080_))
                                              (values (let ((__tmp96462
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95080_))))
                (declare (not safe))
                (cons 'datum __tmp96462))
              _vars95081_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx94997_
                                                 _e95080_))))))))))))
          (let* ((_e9500795020_ _stx94997_)
                 (_E9500995024_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9500795020_))))
                 (_E9500895071_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9500795020_))
                        (let ((_e9501095028_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9500795020_))))
                          (let ((_hd9501195031_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9501095028_)))
                                (_tl9501295033_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9501095028_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9501295033_))
                                (let ((_e9501395036_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9501295033_))))
                                  (let ((_hd9501495039_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9501395036_)))
                                        (_tl9501595041_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9501395036_))))
                                    (let ((_expr95044_ _hd9501495039_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9501595041_))
                                          (let ((_e9501695046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9501595041_))))
                                            (let ((_hd9501795049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9501695046_)))
                                                  (_tl9501895051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9501695046_))))
                                              (let* ((_ids95054_
                                                      _hd9501795049_)
                                                     (_clauses95056_
                                                      _tl9501895051_))
                                                (if '#t
                                                    (if (let ((__tmp96495
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95054_))))
                  (declare (not safe))
                  (not __tmp96495))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx94997_
                   _ids95054_))
                (if (let ((__tmp96494
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95056_))))
                      (declare (not safe))
                      (not __tmp96494))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx94997_))
                    (let* ((_ids95058_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95054_)))
                           (_clauses95060_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95056_)))
                           (_clause-ids95062_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95060_)))
                           (_E95064_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95066_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95068_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95060_))
                                _E95064_
                                (car _clause-ids95062_))))
                      (let ((__tmp96479
                             (let ((__tmp96480
                                    (let ((__tmp96482
                                           (let ((__tmp96487
                                                  (let ((__tmp96488
                                                         (let ((__tmp96493
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95064_ '())))
                       (__tmp96489
                        (let ((__tmp96490
                               (let ((__tmp96492
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95066_ '())))
                                     (__tmp96491
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95066_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp96492
                                  __tmp96491))))
                          (declare (not safe))
                          (cons __tmp96490 '()))))
                   (declare (not safe))
                   (cons __tmp96493 __tmp96489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96488 '())))
                                                 (__tmp96483
                                                  (let ((__tmp96486
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95002_
                                                            _target95066_
                                                            _ids95058_
                                                            _clauses95060_
                                                            _clause-ids95062_
                                                            _E95064_)))
                                                        (__tmp96484
                                                         (let ((__tmp96485
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95044_ '()))))
                   (declare (not safe))
                   (cons _first95068_ __tmp96485))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95003_
                                                     __tmp96486
                                                     __tmp96484))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp96487
                                              __tmp96483)))
                                          (__tmp96481
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx94997_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp96482
                                       __tmp96481))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp96480)))
                            (__tmp96478
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx94997_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp96479 __tmp96478)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9500995024_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9500995024_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9500995024_)))))
                        (let () (declare (not safe)) (_E9500995024_))))))
            (let () (declare (not safe)) (_E9500895071_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx95707_)
        (let* ((_identifier=?95709_ 'free-identifier=?)
               (_unwrap-e95711_ 'syntax-e)
               (_wrap-e95713_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95707_
           _identifier=?95709_
           _unwrap-e95711_
           _wrap-e95713_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx95715_ _identifier=?95716_)
        (let* ((_unwrap-e95718_ 'syntax-e) (_wrap-e95720_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95715_
           _identifier=?95716_
           _unwrap-e95718_
           _wrap-e95720_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx95722_ _identifier=?95723_ _unwrap-e95724_)
        (let ((_wrap-e95726_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95722_
           _identifier=?95723_
           _unwrap-e95724_
           _wrap-e95726_))))
    (define gx#macro-expand-syntax-case
      (lambda _g96497_
        (let ((_g96496_ (let () (declare (not safe)) (##length _g96497_))))
          (cond ((let () (declare (not safe)) (##fx= _g96496_ 1))
                 (apply (lambda (_stx95707_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx95707_)))
                        _g96497_))
                ((let () (declare (not safe)) (##fx= _g96496_ 2))
                 (apply (lambda (_stx95715_ _identifier=?95716_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx95715_
                             _identifier=?95716_)))
                        _g96497_))
                ((let () (declare (not safe)) (##fx= _g96496_ 3))
                 (apply (lambda (_stx95722_
                                 _identifier=?95723_
                                 _unwrap-e95724_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx95722_
                             _identifier=?95723_
                             _unwrap-e95724_)))
                        _g96497_))
                ((let () (declare (not safe)) (##fx= _g96496_ 4))
                 (apply (lambda (_stx95728_
                                 _identifier=?95729_
                                 _unwrap-e95730_
                                 _wrap-e95731_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx95728_
                             _identifier=?95729_
                             _unwrap-e95730_
                             _wrap-e95731_)))
                        _g96497_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g96497_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx94994_)
        (if (let () (declare (not safe)) (gx#identifier? _stx94994_))
            (let ((__tmp96498
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx94994_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp96498 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd94952_ . _rest94953_)
        (let ((_len94955_ (length _hd94952_)))
          (let _lp94957_ ((_rest94959_ _rest94953_))
            (let* ((_rest9496094968_ _rest94959_)
                   (_else9496294976_ (lambda () '#!void))
                   (_K9496494982_
                    (lambda (_rest94979_ _hd94980_)
                      (if (fx= _len94955_ (length _hd94980_))
                          (let () (declare (not safe)) (_lp94957_ _rest94979_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd94980_))))))
              (if (let () (declare (not safe)) (##pair? _rest9496094968_))
                  (let ((_hd9496594985_
                         (let ()
                           (declare (not safe))
                           (##car _rest9496094968_)))
                        (_tl9496694987_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9496094968_))))
                    (let* ((_hd94990_ _hd9496594985_)
                           (_rest94992_ _tl9496694987_))
                      (declare (not safe))
                      (_K9496494982_ _rest94992_ _hd94990_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx94910_ _n94911_)
        (let _lp94913_ ((_rest94915_ _stx94910_) (_r94916_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest94915_))
              (let* ((_g9491794924_
                      (let () (declare (not safe)) (gx#syntax-e _rest94915_)))
                     (_E9491994928_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9491794924_))))
                     (_K9492094934_
                      (lambda (_rest94931_ _hd94932_)
                        (let ((__tmp96503
                               (let ()
                                 (declare (not safe))
                                 (cons _hd94932_ _r94916_))))
                          (declare (not safe))
                          (_lp94913_ _rest94931_ __tmp96503)))))
                (if (let () (declare (not safe)) (##pair? _g9491794924_))
                    (let ((_hd9492194937_
                           (let () (declare (not safe)) (##car _g9491794924_)))
                          (_tl9492294939_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9491794924_))))
                      (let* ((_hd94942_ _hd9492194937_)
                             (_rest94944_ _tl9492294939_))
                        (declare (not safe))
                        (_K9492094934_ _rest94944_ _hd94942_)))
                    (let () (declare (not safe)) (_E9491994928_))))
              (let _lp94946_ ((_n94948_ _n94911_)
                              (_l94949_ _r94916_)
                              (_r94950_ _rest94915_))
                (if (let () (declare (not safe)) (null? _l94949_))
                    (values _l94949_ _r94950_)
                    (if (fxpositive? _n94948_)
                        (let ((__tmp96502
                               (let () (declare (not safe)) (fx- _n94948_ '1)))
                              (__tmp96501 (cdr _l94949_))
                              (__tmp96499
                               (let ((__tmp96500 (car _l94949_)))
                                 (declare (not safe))
                                 (cons __tmp96500 _r94950_))))
                          (declare (not safe))
                          (_lp94946_ __tmp96502 __tmp96501 __tmp96499))
                        (values (reverse _l94949_) _r94950_))))))))))
