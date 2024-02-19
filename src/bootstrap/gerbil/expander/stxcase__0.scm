(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708352924)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp96260 (list gx#expander::t))
            (__tmp96258
             (let ((__tmp96259
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp96259 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp96260
         '(id depth)
         __tmp96258
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args96255_
        (apply make-instance gx#syntax-pattern::t _$args96255_)))
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
      (lambda (_self96252_ _stx96253_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx96253_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx95734_)
        (letrec ((_generate95736_
                  (lambda (_e95963_)
                    (letrec ((_BUG95965_
                              (lambda (_q96127_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx95734_
                                         _e95963_
                                         _q96127_))))
                             (_local-pattern-e95966_
                              (lambda (_pat96125_)
                                (let ((__tmp96261
                                       (##structure-ref
                                        _pat96125_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp96261))))
                             (_getvar95967_
                              (lambda (_q96122_ _vars96123_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q96122_
                                   _vars96123_
                                   _BUG95965_))))
                             (_getarg95968_
                              (lambda (_arg96088_ _vars96089_)
                                (let* ((_arg9609096097_ _arg96088_)
                                       (_E9609296101_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9609096097_))))
                                       (_K9609396110_
                                        (lambda (_e96104_ _tag96105_)
                                          (let ((_$e96107_ _tag96105_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e96107_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar95967_
                                                   _e96104_
                                                   _vars96089_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e96107_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e95966_
                                                       _e96104_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG95965_
                                                       _arg96088_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9609096097_))
                                      (let ((_hd9609496113_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9609096097_)))
                                            (_tl9609596115_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9609096097_))))
                                        (let* ((_tag96118_ _hd9609496113_)
                                               (_e96120_ _tl9609596115_))
                                          (declare (not safe))
                                          (_K9609396110_ _e96120_ _tag96118_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9609296101_)))))))
                      (let _recur95970_ ((_e95972_ _e95963_) (_vars95973_ '()))
                        (let* ((_e9597495981_ _e95972_)
                               (_E9597695985_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9597495981_))))
                               (_K9597796076_
                                (lambda (_body95988_ _tag95989_)
                                  (let ((_$e95991_ _tag95989_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95991_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body95988_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e95991_))
                                            (let ((_id95994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body95988_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id95994_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks95996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id95994_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks95996_))
                                                        (let ((__tmp96289
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body95988_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp96289))
                (let ((__tmp96288
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body95988_)))
                      (__tmp96287
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body95988_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp96288
                   __tmp96287
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id95994_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body95988_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG95965_
                                                         _e95972_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e95991_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e95966_
                                                   _body95988_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e95991_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar95967_
                                                       _body95988_
                                                       _vars95973_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e95991_))
                                                        (let ((__tmp96285
                                                               (let ((__tmp96286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body95988_)))
                         (declare (not safe))
                         (_recur95970_ __tmp96286 _vars95973_)))
                      (__tmp96283
                       (let ((__tmp96284 (cdr _body95988_)))
                         (declare (not safe))
                         (_recur95970_ __tmp96284 _vars95973_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp96285 __tmp96283))
                (if (let () (declare (not safe)) (eq? 'vector _$e95991_))
                    (let ((__tmp96282
                           (let ()
                             (declare (not safe))
                             (_recur95970_ _body95988_ _vars95973_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp96282))
                    (if (let () (declare (not safe)) (eq? 'box _$e95991_))
                        (let ((__tmp96281
                               (let ()
                                 (declare (not safe))
                                 (_recur95970_ _body95988_ _vars95973_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp96281))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e95991_))
                            (let* ((_body9599796008_ _body95988_)
                                   (_E9599996012_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9599796008_))))
                                   (_K9600096050_
                                    (lambda (_args96015_
                                             _iv96016_
                                             _hd96017_
                                             _depth96018_)
                                      (let* ((_targets96024_
                                              (map (lambda (_g9601996021_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg95968_
                                                        _g9601996021_
                                                        _vars95973_)))
                                                   _args96015_))
                                             (_fold-in96026_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args96015_)))
                                             (_fold-out96028_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args96030_
                                              (let ((__tmp96262
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out96028_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp96262
                                                        _fold-in96026_)))
                                             (_lambda-body96047_
                                              (if (fx> _depth96018_ '1)
                                                  (let ((_r-args96038_
                                                         (map (lambda (_arg96032_)
                                                                (let ((__tmp96267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg96032_)))
                          (declare (not safe))
                          (cons 'ref __tmp96267)))
                      _args96015_))
                (_r-vars96039_
                 (let ((__tmp96268
                        (lambda (_arg96034_ _var96035_ _r96036_)
                          (let ((__tmp96269
                                 (let ((__tmp96270 (cdr _arg96034_)))
                                   (declare (not safe))
                                   (cons __tmp96270 _var96035_))))
                            (declare (not safe))
                            (cons __tmp96269 _r96036_)))))
                   (declare (not safe))
                   (foldr2 __tmp96268
                           _vars95973_
                           _args96015_
                           _fold-in96026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp96271
                                                           (let ((__tmp96272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96276
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth96018_ '1)))
                                (__tmp96273
                                 (let ((__tmp96274
                                        (let ((__tmp96275
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out96028_))))
                                          (declare (not safe))
                                          (cons __tmp96275 _r-args96038_))))
                                   (declare (not safe))
                                   (cons _hd96017_ __tmp96274))))
                            (declare (not safe))
                            (cons __tmp96276 __tmp96273))))
                     (declare (not safe))
                     (cons 'splice __tmp96272))))
              (declare (not safe))
              (_recur95970_ __tmp96271 _r-vars96039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars96045_
                                                          (let ((__tmp96263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg96041_ _var96042_ _r96043_)
                           (let ((__tmp96264
                                  (let ((__tmp96265 (cdr _arg96041_)))
                                    (declare (not safe))
                                    (cons __tmp96265 _var96042_))))
                             (declare (not safe))
                             (cons __tmp96264 _r96043_)))))
                    (declare (not safe))
                    (foldr2 __tmp96263
                            _vars95973_
                            _args96015_
                            _fold-in96026_)))
                 (__tmp96266
                  (let ()
                    (declare (not safe))
                    (_recur95970_ _hd96017_ _hd-vars96045_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp96266
                                                     _fold-out96028_)))))
                                        (let ((__tmp96280
                                               (if (fx> (length _targets96024_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets96024_))
                                                   '#!void))
                                              (__tmp96277
                                               (let ((__tmp96279
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args96030_
                                                         _lambda-body96047_)))
                                                     (__tmp96278
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur95970_
                                                         _iv96016_
                                                         _vars95973_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp96279
                                                  __tmp96278
                                                  _targets96024_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp96280
                                           __tmp96277))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9599796008_))
                                  (let ((_hd9600196053_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9599796008_)))
                                        (_tl9600296055_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9599796008_))))
                                    (let ((_depth96058_ _hd9600196053_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9600296055_))
                                          (let ((_hd9600396060_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9600296055_)))
                                                (_tl9600496062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9600296055_))))
                                            (let ((_hd96065_ _hd9600396060_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9600496062_))
                                                  (let ((_hd9600596067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9600496062_)))
                                                        (_tl9600696069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9600496062_))))
                                                    (let* ((_iv96072_
                                                            _hd9600596067_)
                                                           (_args96074_
                                                            _tl9600696069_))
                                                      (declare (not safe))
                                                      (_K9600096050_
                                                       _args96074_
                                                       _iv96072_
                                                       _hd96065_
                                                       _depth96058_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9599996012_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9599996012_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9599996012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e95991_))
                                _body95988_
                                (let ()
                                  (declare (not safe))
                                  (_BUG95965_ _e95972_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9597495981_))
                              (let ((_hd9597896079_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9597495981_)))
                                    (_tl9597996081_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9597495981_))))
                                (let* ((_tag96084_ _hd9597896079_)
                                       (_body96086_ _tl9597996081_))
                                  (declare (not safe))
                                  (_K9597796076_ _body96086_ _tag96084_)))
                              (let ()
                                (declare (not safe))
                                (_E9597695985_))))))))
                 (_parse95737_
                  (lambda (_e95778_)
                    (letrec ((_make-cons95780_
                              (lambda (_hd95955_ _tl95956_)
                                (let ((_g96290_ _hd95955_)
                                      (_g96292_ _tl95956_))
                                  (begin
                                    (let ((_g96291_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96290_)
                                                 (##vector-length _g96290_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96291_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96291_)))
                                    (let ((_g96293_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96292_)
                                                 (##vector-length _g96292_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96293_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96293_)))
                                    (let ((_hd-e95958_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96290_ 0)))
                                          (_hd-vars95959_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96290_ 1))))
                                      (let ((_tl-e95960_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96292_ 0)))
                                            (_tl-vars95961_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96292_ 1))))
                                        (values (let ((__tmp96294
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e95958_
                                                               _tl-e95960_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp96294))
                                                (append _hd-vars95959_
                                                        _tl-vars95961_))))))))
                             (_make-splice95781_
                              (lambda (_where95894_
                                       _depth95895_
                                       _hd95896_
                                       _tl95897_)
                                (let ((_g96295_ _hd95896_)
                                      (_g96297_ _tl95897_))
                                  (begin
                                    (let ((_g96296_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96295_)
                                                 (##vector-length _g96295_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96296_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96296_)))
                                    (let ((_g96298_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96297_)
                                                 (##vector-length _g96297_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96298_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96298_)))
                                    (let ((_hd-e95899_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96295_ 0)))
                                          (_hd-vars95900_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96295_ 1))))
                                      (let ((_tl-e95901_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96297_ 0)))
                                            (_tl-vars95902_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g96297_ 1))))
                                        (let _lp95904_ ((_rest95906_
                                                         _hd-vars95900_)
                                                        (_targets95907_ '())
                                                        (_vars95908_
                                                         _tl-vars95902_))
                                          (let* ((_rest9590995919_ _rest95906_)
                                                 (_else9591195927_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets95907_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx95734_
                                                           _where95894_))
                                                        (values (let ((__tmp96299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp96300
                                      (let ((__tmp96301
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e95901_
                                                     _targets95907_))))
                                        (declare (not safe))
                                        (cons _hd-e95899_ __tmp96301))))
                                 (declare (not safe))
                                 (cons _depth95895_ __tmp96300))))
                          (declare (not safe))
                          (cons 'splice __tmp96299))
                        _vars95908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9591395936_
                                                  (lambda (_rest95930_
                                                           _hd-pat95931_
                                                           _hd-depth*95932_)
                                                    (let ((_hd-depth95934_
                                                           (fx- _hd-depth*95932_
                                                                _depth95895_)))
                                                      (if (fxpositive?
                                                           _hd-depth95934_)
                                                          (let ((__tmp96306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp96307
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat95931_))))
                           (declare (not safe))
                           (cons __tmp96307 _targets95907_)))
                        (__tmp96304
                         (let ((__tmp96305
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth95934_ _hd-pat95931_))))
                           (declare (not safe))
                           (cons __tmp96305 _vars95908_))))
                    (declare (not safe))
                    (_lp95904_ _rest95930_ __tmp96306 __tmp96304))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth95934_))
                      (let ((__tmp96302
                             (let ((__tmp96303
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat95931_))))
                               (declare (not safe))
                               (cons __tmp96303 _targets95907_))))
                        (declare (not safe))
                        (_lp95904_ _rest95930_ __tmp96302 _vars95908_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx95734_
                         _where95894_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9590995919_))
                                                (let ((_hd9591495939_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9590995919_)))
                                                      (_tl9591595941_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9590995919_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9591495939_))
                                                      (let ((_hd9591695944_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9591495939_)))
                    (_tl9591795946_
                     (let () (declare (not safe)) (##cdr _hd9591495939_))))
                (let* ((_hd-depth*95949_ _hd9591695944_)
                       (_hd-pat95951_ _tl9591795946_)
                       (_rest95953_ _tl9591595941_))
                  (declare (not safe))
                  (_K9591395936_ _rest95953_ _hd-pat95951_ _hd-depth*95949_)))
              (let () (declare (not safe)) (_else9591195927_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9591195927_)))))))))))
                             (_recur95782_
                              (lambda (_e95787_ _is-e?95788_)
                                (if (_is-e?95788_ _e95787_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx95734_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e95787_))
                                        (let* ((_pat95790_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e95787_)))
                                               (_depth95792_
                                                (##structure-ref
                                                 _pat95790_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth95792_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat95790_))
                                                      (let ((__tmp96323
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth95792_ _pat95790_))))
                (declare (not safe))
                (cons __tmp96323 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat95790_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e95787_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e95787_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e95787_))
                                                (let* ((_e9579495801_ _e95787_)
                                                       (_E9579695805_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9579495801_))))
                                                       (_E9579595884_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9579495801_))
                      (let ((_e9579795809_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9579495801_))))
                        (let ((_hd9579895812_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9579795809_)))
                              (_tl9579995814_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9579795809_))))
                          (let* ((_hd95817_ _hd9579895812_)
                                 (_rest95819_ _tl9579995814_))
                            (if '#t
                                (if (_is-e?95788_ _hd95817_)
                                    (let* ((_e9582095827_ _rest95819_)
                                           (_E9582295831_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx95734_
                                                 _e95787_))))
                                           (_E9582195845_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9582095827_))
                                                  (let ((_e9582395835_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9582095827_))))
                                                    (let ((_hd9582495838_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9582395835_)))
                                                          (_tl9582595840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9582395835_))))
                                                      (let ((_rest95843_
                                                             _hd9582495838_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9582595840_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur95782_ _rest95843_ false))
                        (let () (declare (not safe)) (_E9582295831_)))
                    (let () (declare (not safe)) (_E9582295831_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9582295831_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9582195845_)))
                                    (let _lp95849_ ((_rest95851_ _rest95819_)
                                                    (_depth95852_ '0))
                                      (let* ((_e9585395860_ _rest95851_)
                                             (_E9585595864_
                                              (lambda ()
                                                (if (fxpositive? _depth95852_)
                                                    (let ((__tmp96317
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95782_
                                                              _hd95817_
                                                              _is-e?95788_)))
                                                          (__tmp96316
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95782_
                                                              _rest95851_
                                                              _is-e?95788_))))
                                                      (declare (not safe))
                                                      (_make-splice95781_
                                                       _e95787_
                                                       _depth95852_
                                                       __tmp96317
                                                       __tmp96316))
                                                    (let ((__tmp96315
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95782_
                                                              _hd95817_
                                                              _is-e?95788_)))
                                                          (__tmp96314
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur95782_
                                                              _rest95851_
                                                              _is-e?95788_))))
                                                      (declare (not safe))
                                                      (_make-cons95780_
                                                       __tmp96315
                                                       __tmp96314)))))
                                             (_E9585495880_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9585395860_))
                                                    (let ((_e9585695868_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9585395860_))))
                                                      (let ((_hd9585795871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9585695868_)))
                    (_tl9585895873_
                     (let () (declare (not safe)) (##cdr _e9585695868_))))
                (let* ((_rest-hd95876_ _hd9585795871_)
                       (_rest-tl95878_ _tl9585895873_))
                  (if '#t
                      (if (_is-e?95788_ _rest-hd95876_)
                          (let ((__tmp96322
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth95852_ '1))))
                            (declare (not safe))
                            (_lp95849_ _rest-tl95878_ __tmp96322))
                          (if (fxpositive? _depth95852_)
                              (let ((__tmp96321
                                     (let ()
                                       (declare (not safe))
                                       (_recur95782_ _hd95817_ _is-e?95788_)))
                                    (__tmp96320
                                     (let ()
                                       (declare (not safe))
                                       (_recur95782_
                                        _rest95851_
                                        _is-e?95788_))))
                                (declare (not safe))
                                (_make-splice95781_
                                 _e95787_
                                 _depth95852_
                                 __tmp96321
                                 __tmp96320))
                              (let ((__tmp96319
                                     (let ()
                                       (declare (not safe))
                                       (_recur95782_ _hd95817_ _is-e?95788_)))
                                    (__tmp96318
                                     (let ()
                                       (declare (not safe))
                                       (_recur95782_
                                        _rest95851_
                                        _is-e?95788_))))
                                (declare (not safe))
                                (_make-cons95780_ __tmp96319 __tmp96318))))
                      (let () (declare (not safe)) (_E9585595864_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9585595864_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9585495880_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9579695805_))))))
                      (let () (declare (not safe)) (_E9579695805_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9579595884_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e95787_))
                                                    (let ((_g96311_
                                                           (let ((__tmp96313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e95787_)))))
                     (declare (not safe))
                     (_recur95782_ __tmp96313 _is-e?95788_))))
              (begin
                (let ((_g96312_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g96311_)
                             (##vector-length _g96311_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g96312_ 2)))
                      (error "Context expects 2 values" _g96312_)))
                (let ((_e95888_
                       (let () (declare (not safe)) (##vector-ref _g96311_ 0)))
                      (_vars95889_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g96311_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e95888_))
                          _vars95889_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e95787_))
                                                        (let ((_g96308_
                                                               (let ((__tmp96310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e95787_)))))
                         (declare (not safe))
                         (_recur95782_ __tmp96310 _is-e?95788_))))
                  (begin
                    (let ((_g96309_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g96308_)
                                 (##vector-length _g96308_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g96309_ 2)))
                          (error "Context expects 2 values" _g96309_)))
                    (let ((_e95891_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96308_ 0)))
                          (_vars95892_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g96308_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e95891_))
                              _vars95892_))))
                (values (let () (declare (not safe)) (cons 'datum _e95787_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g96324_
                             (let ()
                               (declare (not safe))
                               (_recur95782_ _e95778_ gx#ellipsis?))))
                        (begin
                          (let ((_g96325_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g96324_)
                                       (##vector-length _g96324_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g96325_ 2)))
                                (error "Context expects 2 values" _g96325_)))
                          (let ((_tree95784_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96324_ 0)))
                                (_vars95785_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g96324_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars95785_))
                                _tree95784_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx95734_
                                   _vars95785_))))))))))
          (let* ((_e9573895748_ _stx95734_)
                 (_E9574095752_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx95734_))))
                 (_E9573995774_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9573895748_))
                        (let ((_e9574195756_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9573895748_))))
                          (let ((_hd9574295759_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9574195756_)))
                                (_tl9574395761_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9574195756_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9574395761_))
                                (let ((_e9574495764_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9574395761_))))
                                  (let ((_hd9574595767_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9574495764_)))
                                        (_tl9574695769_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9574495764_))))
                                    (let ((_form95772_ _hd9574595767_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9574695769_))
                                          (if '#t
                                              (let ((__tmp96327
                                                     (let ((__tmp96328
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse95737_
                                                               _form95772_))))
                                                       (declare (not safe))
                                                       (_generate95736_
                                                        __tmp96328)))
                                                    (__tmp96326
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx95734_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp96327
                                                 __tmp96326))
                                              (let ()
                                                (declare (not safe))
                                                (_E9574095752_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9574095752_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9574095752_)))))
                        (let () (declare (not safe)) (_E9574095752_))))))
            (let () (declare (not safe)) (_E9573995774_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx94998_ _identifier=?94999_ _unwrap-e95000_ _wrap-e95001_)
        (letrec ((_generate-bindings95003_
                  (lambda (_target95598_
                           _ids95599_
                           _clauses95600_
                           _clause-ids95601_
                           _E95602_)
                    (letrec ((_generate195604_
                              (lambda (_clause95701_ _clause-id95702_ _E95703_)
                                (let ((__tmp96333
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id95702_ '())))
                                      (__tmp96329
                                       (let ((__tmp96330
                                              (let ((__tmp96332
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95598_
                                                             '())))
                                                    (__tmp96331
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause95005_
                                                        _target95598_
                                                        _ids95599_
                                                        _clause95701_
                                                        _E95703_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp96332
                                                 __tmp96331))))
                                         (declare (not safe))
                                         (cons __tmp96330 '()))))
                                  (declare (not safe))
                                  (cons __tmp96333 __tmp96329)))))
                      (let _lp95606_ ((_rest95608_ _clauses95600_)
                                      (_rest-ids95609_ _clause-ids95601_)
                                      (_bindings95610_ '()))
                        (let* ((_rest9561195619_ _rest95608_)
                               (_else9561395627_ (lambda () _bindings95610_))
                               (_K9561595689_
                                (lambda (_rest95630_ _clause95631_)
                                  (let* ((_rest-ids9563295639_ _rest-ids95609_)
                                         (_E9563495643_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9563295639_))))
                                         (_K9563595677_
                                          (lambda (_rest-ids95646_
                                                   _clause-id95647_)
                                            (let* ((_rest-ids9564895656_
                                                    _rest-ids95646_)
                                                   (_else9565095664_
                                                    (lambda ()
                                                      (let ((__tmp96334
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate195604_
                        _clause95631_
                        _clause-id95647_
                        _E95602_))))
                (declare (not safe))
                (cons __tmp96334 _bindings95610_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9565295669_
                                                    (lambda (_next-clause-id95667_)
                                                      (let ((__tmp96335
                                                             (let ((__tmp96336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate195604_
                               _clause95631_
                               _clause-id95647_
                               _next-clause-id95667_))))
                       (declare (not safe))
                       (cons __tmp96336 _bindings95610_))))
                (declare (not safe))
                (_lp95606_ _rest95630_ _rest-ids95646_ __tmp96335)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9564895656_))
                                                  (let* ((_hd9565395672_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9564895656_)))
                                                         (_next-clause-id95675_
                                                          _hd9565395672_))
                                                    (declare (not safe))
                                                    (_K9565295669_
                                                     _next-clause-id95675_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9565095664_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9563295639_))
                                        (let ((_hd9563695680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9563295639_)))
                                              (_tl9563795682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9563295639_))))
                                          (let* ((_clause-id95685_
                                                  _hd9563695680_)
                                                 (_rest-ids95687_
                                                  _tl9563795682_))
                                            (declare (not safe))
                                            (_K9563595677_
                                             _rest-ids95687_
                                             _clause-id95685_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9563495643_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9561195619_))
                              (let ((_hd9561695692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9561195619_)))
                                    (_tl9561795694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9561195619_))))
                                (let* ((_clause95697_ _hd9561695692_)
                                       (_rest95699_ _tl9561795694_))
                                  (declare (not safe))
                                  (_K9561595689_ _rest95699_ _clause95697_)))
                              (let ()
                                (declare (not safe))
                                (_else9561395627_))))))))
                 (_generate-body95004_
                  (lambda (_bindings95558_ _body95559_)
                    (let _recur95561_ ((_rest95563_ _bindings95558_))
                      (let* ((_rest9556495572_ _rest95563_)
                             (_else9556695580_ (lambda () _body95559_))
                             (_K9556895586_
                              (lambda (_rest95583_ _hd95584_)
                                (let ((__tmp96338
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd95584_ '())))
                                      (__tmp96337
                                       (let ()
                                         (declare (not safe))
                                         (_recur95561_ _rest95583_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp96338
                                   __tmp96337)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9556495572_))
                            (let ((_hd9556995589_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9556495572_)))
                                  (_tl9557095591_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9556495572_))))
                              (let* ((_hd95594_ _hd9556995589_)
                                     (_rest95596_ _tl9557095591_))
                                (declare (not safe))
                                (_K9556895586_ _rest95596_ _hd95594_)))
                            (let ()
                              (declare (not safe))
                              (_else9556695580_)))))))
                 (_generate-clause95005_
                  (lambda (_target95421_ _ids95422_ _clause95423_ _E95424_)
                    (letrec ((_generate195426_
                              (lambda (_hd95513_ _fender95514_ _body95515_)
                                (let ((_g96339_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause95007_
                                          _hd95513_
                                          _ids95422_))))
                                  (begin
                                    (let ((_g96340_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g96339_)
                                                 (##vector-length _g96339_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g96340_ 2)))
                                          (error "Context expects 2 values"
                                                 _g96340_)))
                                    (let ((_e95517_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96339_ 0)))
                                          (_mvars95518_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g96339_ 1))))
                                      (let* ((_pvars95520_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars95518_))))
                                             (_E95522_
                                              (let ((__tmp96341
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target95421_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E95424_ __tmp96341)))
                                             (_K95555_
                                              (let ((__tmp96342
                                                     (let ((__tmp96344
                                                            (map (lambda (_mvar95524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar95525_)
                           (let* ((_mvar9552695533_ _mvar95524_)
                                  (_E9552895537_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9552695533_))))
                                  (_K9552995543_
                                   (lambda (_depth95540_ _id95541_)
                                     (let ((__tmp96345
                                            (let ((__tmp96346
                                                   (let ((__tmp96348
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id95541_)))
                                                         (__tmp96347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar95525_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp96348
                                                      __tmp96347
                                                      _depth95540_))))
                                              (declare (not safe))
                                              (cons __tmp96346 '()))))
                                       (declare (not safe))
                                       (cons _id95541_ __tmp96345)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9552695533_))
                                 (let ((_hd9553095546_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9552695533_)))
                                       (_tl9553195548_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9552695533_))))
                                   (let* ((_id95551_ _hd9553095546_)
                                          (_depth95553_ _tl9553195548_))
                                     (declare (not safe))
                                     (_K9552995543_ _depth95553_ _id95551_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9552895537_)))))
                         _mvars95518_
                         _pvars95520_))
                   (__tmp96343
                    (if (let () (declare (not safe)) (eq? _fender95514_ '#t))
                        _body95515_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender95514_
                           _body95515_
                           _E95522_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp96344 __tmp96343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars95520_
                                                 __tmp96342))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match95006_
                                           _hd95513_
                                           _target95421_
                                           _e95517_
                                           _mvars95518_
                                           _K95555_
                                           _E95522_)))))))))
                      (let* ((_e9542795447_ _clause95423_)
                             (_E9543695451_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9542795447_))))
                             (_E9542995485_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9542795447_))
                                    (let ((_e9543795455_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9542795447_))))
                                      (let ((_hd9543895458_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9543795455_)))
                                            (_tl9543995460_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9543795455_))))
                                        (let ((_hd95463_ _hd9543895458_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9543995460_))
                                              (let ((_e9544095465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9543995460_))))
                                                (let ((_hd9544195468_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9544095465_)))
                                                      (_tl9544295470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9544095465_))))
                                                  (let ((_fender95473_
                                                         _hd9544195468_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9544295470_))
                                                        (let ((_e9544395475_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9544295470_))))
                  (let ((_hd9544495478_
                         (let () (declare (not safe)) (##car _e9544395475_)))
                        (_tl9544595480_
                         (let () (declare (not safe)) (##cdr _e9544395475_))))
                    (let ((_body95483_ _hd9544495478_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9544595480_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate195426_
                                 _hd95463_
                                 _fender95473_
                                 _body95483_))
                              (let () (declare (not safe)) (_E9543695451_)))
                          (let () (declare (not safe)) (_E9543695451_))))))
                (let () (declare (not safe)) (_E9543695451_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9543695451_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9543695451_)))))
                             (_E9542895509_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9542795447_))
                                    (let ((_e9543095489_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9542795447_))))
                                      (let ((_hd9543195492_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9543095489_)))
                                            (_tl9543295494_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9543095489_))))
                                        (let ((_hd95497_ _hd9543195492_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9543295494_))
                                              (let ((_e9543395499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9543295494_))))
                                                (let ((_hd9543495502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9543395499_)))
                                                      (_tl9543595504_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9543395499_))))
                                                  (let ((_body95507_
                                                         _hd9543495502_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9543595504_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate195426_
                                                               _hd95497_
                                                               '#t
                                                               _body95507_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9542995485_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9542995485_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9542995485_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9542995485_))))))
                        (let () (declare (not safe)) (_E9542895509_))))))
                 (_generate-match95006_
                  (lambda (_where95170_
                           _target95171_
                           _hd95172_
                           _mvars95173_
                           _K95174_
                           _E95175_)
                    (letrec ((_BUG95177_
                              (lambda (_q95419_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx94998_
                                         _hd95172_
                                         _q95419_))))
                             (_recur95178_
                              (lambda (_e95269_
                                       _vars95270_
                                       _target95271_
                                       _E95272_
                                       _k95273_)
                                (let* ((_e9527495281_ _e95269_)
                                       (_E9527695285_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9527495281_))))
                                       (_K9527795407_
                                        (lambda (_body95288_ _tag95289_)
                                          (let ((_$e95291_ _tag95289_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e95291_))
                                                (_k95273_ _vars95270_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e95291_))
                                                    (let ((__tmp96455
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target95271_)))
                                                          (__tmp96451
                                                           (let ((__tmp96453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96454
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e95001_ _body95288_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?94999_
                             __tmp96454
                             _target95271_)))
                         (__tmp96452 (_k95273_ _vars95270_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp96453 __tmp96452 _E95272_))))
              (declare (not safe))
              (gx#core-list 'if __tmp96455 __tmp96451 _E95272_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e95291_))
                                                        (_k95273_
                                                         (let ((__tmp96450
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body95288_ _target95271_))))
                   (declare (not safe))
                   (cons __tmp96450 _vars95270_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e95291_))
                    (let ((_$e95294_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd95295_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl95296_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp96449
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target95271_)))
                            (__tmp96430
                             (let ((__tmp96444
                                    (let ((__tmp96445
                                           (let ((__tmp96448
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e95294_ '())))
                                                 (__tmp96446
                                                  (let ((__tmp96447
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e95000_
                                                            _target95271_))))
                                                    (declare (not safe))
                                                    (cons __tmp96447 '()))))
                                             (declare (not safe))
                                             (cons __tmp96448 __tmp96446))))
                                      (declare (not safe))
                                      (cons __tmp96445 '())))
                                   (__tmp96431
                                    (let ((__tmp96434
                                           (let ((__tmp96440
                                                  (let ((__tmp96443
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd95295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp96441
                 (let ((__tmp96442
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e95294_))))
                   (declare (not safe))
                   (cons __tmp96442 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96443
                                                          __tmp96441)))
                                                 (__tmp96435
                                                  (let ((__tmp96436
                                                         (let ((__tmp96439
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl95296_ '())))
                       (__tmp96437
                        (let ((__tmp96438
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e95294_))))
                          (declare (not safe))
                          (cons __tmp96438 '()))))
                   (declare (not safe))
                   (cons __tmp96439 __tmp96437))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96436 '()))))
                                             (declare (not safe))
                                             (cons __tmp96440 __tmp96435)))
                                          (__tmp96432
                                           (let* ((_body9529795304_
                                                   _body95288_)
                                                  (_E9529995308_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9529795304_))))
                                                  (_K9530095316_
                                                   (lambda (_tl95311_
                                                            _hd95312_)
                                                     (let ((__tmp96433
                                                            (lambda (_vars95314_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur95178_
                         _tl95311_
                         _vars95314_
                         _$tl95296_
                         _E95272_
                         _k95273_)))))
               (declare (not safe))
               (_recur95178_
                _hd95312_
                _vars95270_
                _$hd95295_
                _E95272_
                __tmp96433)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9529795304_))
                                                 (let ((_hd9530195319_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9529795304_)))
                                                       (_tl9530295321_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9529795304_))))
                                                   (let* ((_hd95324_
                                                           _hd9530195319_)
                                                          (_tl95326_
                                                           _tl9530295321_))
                                                     (declare (not safe))
                                                     (_K9530095316_
                                                      _tl95326_
                                                      _hd95324_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9529995308_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp96434
                                       __tmp96432))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp96444
                                __tmp96431))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp96449 __tmp96430 _E95272_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e95291_))
                        (let* ((_body9532795334_ _body95288_)
                               (_E9532995338_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9532795334_))))
                               (_K9533095389_
                                (lambda (_tl95341_ _hd95342_)
                                  (let* ((_rlen95344_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen95179_ _tl95341_)))
                                         (_$target95346_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd95348_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl95350_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp95352_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e95354_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd95356_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl95358_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars95360_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars95180_ _hd95342_)))
                                         (_lvars95362_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95360_)))
                                         (_tlvars95364_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars95360_)))
                                         (_linit95368_
                                          (map (lambda (_var95366_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars95362_)))
                                    (letrec ((_make-loop95371_
                                              (lambda (_vars95375_)
                                                (let ((__tmp96381
                                                       (let ((__tmp96382
                                                              (let ((__tmp96418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp95352_ '())))
                            (__tmp96383
                             (let ((__tmp96384
                                    (let ((__tmp96417
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd95348_ _lvars95362_)))
                                          (__tmp96385
                                           (let ((__tmp96416
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd95348_)))
                                                 (__tmp96394
                                                  (let ((__tmp96411
                                                         (let ((__tmp96412
                                                                (let ((__tmp96415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e95354_ '())))
                              (__tmp96413
                               (let ((__tmp96414
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e95000_
                                         _$hd95348_))))
                                 (declare (not safe))
                                 (cons __tmp96414 '()))))
                          (declare (not safe))
                          (cons __tmp96415 __tmp96413))))
                   (declare (not safe))
                   (cons __tmp96412 '())))
                (__tmp96395
                 (let ((__tmp96401
                        (let ((__tmp96407
                               (let ((__tmp96410
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd95356_ '())))
                                     (__tmp96408
                                      (let ((__tmp96409
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e95354_))))
                                        (declare (not safe))
                                        (cons __tmp96409 '()))))
                                 (declare (not safe))
                                 (cons __tmp96410 __tmp96408)))
                              (__tmp96402
                               (let ((__tmp96403
                                      (let ((__tmp96406
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl95358_ '())))
                                            (__tmp96404
                                             (let ((__tmp96405
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e95354_))))
                                               (declare (not safe))
                                               (cons __tmp96405 '()))))
                                        (declare (not safe))
                                        (cons __tmp96406 __tmp96404))))
                                 (declare (not safe))
                                 (cons __tmp96403 '()))))
                          (declare (not safe))
                          (cons __tmp96407 __tmp96402)))
                       (__tmp96396
                        (let ((__tmp96397
                               (lambda (_hdvars95377_)
                                 (let ((__tmp96398
                                        (let ((__tmp96399
                                               (map (lambda (_svar95379_
                                                             _lvar95380_)
                                                      (let ((__tmp96400
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar95379_ _hdvars95377_ _BUG95177_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp96400 _lvar95380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars95360_
                                                    _lvars95362_)))
                                          (declare (not safe))
                                          (cons _$lp-tl95358_ __tmp96399))))
                                   (declare (not safe))
                                   (cons _$lp95352_ __tmp96398)))))
                          (declare (not safe))
                          (_recur95178_
                           _hd95342_
                           '()
                           _$lp-hd95356_
                           _E95272_
                           __tmp96397))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp96401 __tmp96396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96411
                                                     __tmp96395)))
                                                 (__tmp96386
                                                  (let ((__tmp96390
                                                         (map (lambda (_lvar95382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar95383_)
                        (let ((__tmp96393
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar95383_ '())))
                              (__tmp96391
                               (let ((__tmp96392
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar95382_))))
                                 (declare (not safe))
                                 (cons __tmp96392 '()))))
                          (declare (not safe))
                          (cons __tmp96393 __tmp96391)))
                      _lvars95362_
                      _tlvars95364_))
                (__tmp96387
                 (_k95273_
                  (let ((__tmp96388
                         (lambda (_svar95385_ _tlvar95386_ _r95387_)
                           (let ((__tmp96389
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar95385_ _tlvar95386_))))
                             (declare (not safe))
                             (cons __tmp96389 _r95387_)))))
                    (declare (not safe))
                    (foldl2 __tmp96388
                            _vars95375_
                            _svars95360_
                            _tlvars95364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp96390
                                                     __tmp96387))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp96416
                                              __tmp96394
                                              __tmp96386))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp96417
                                       __tmp96385))))
                               (declare (not safe))
                               (cons __tmp96384 '()))))
                        (declare (not safe))
                        (cons __tmp96418 __tmp96383))))
                 (declare (not safe))
                 (cons __tmp96382 '())))
              (__tmp96379
               (let ((__tmp96380
                      (let ()
                        (declare (not safe))
                        (cons _$target95346_ _linit95368_))))
                 (declare (not safe))
                 (cons _$lp95352_ __tmp96380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp96381
                                                   __tmp96379)))))
                                      (let ((_body95373_
                                             (let ((__tmp96420
                                                    (let ((__tmp96421
                                                           (let ((__tmp96424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp96425
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl95350_ '()))))
                            (declare (not safe))
                            (cons _$target95346_ __tmp96425)))
                         (__tmp96422
                          (let ((__tmp96423
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target95271_
                                    _rlen95344_))))
                            (declare (not safe))
                            (cons __tmp96423 '()))))
                     (declare (not safe))
                     (cons __tmp96424 __tmp96422))))
              (declare (not safe))
              (cons __tmp96421 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96419
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95178_
                                                       _tl95341_
                                                       _vars95270_
                                                       _$tl95350_
                                                       _E95272_
                                                       _make-loop95371_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96420
                                                __tmp96419))))
                                        (let ((__tmp96429
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target95271_)))
                                              (__tmp96426
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen95344_))
                                                   _body95373_
                                                   (let ((__tmp96427
                                                          (let ((__tmp96428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target95271_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp96428 _rlen95344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp96427
                                                      _body95373_
                                                      _E95272_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp96429
                                           __tmp96426
                                           _E95272_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9532795334_))
                              (let ((_hd9533195392_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9532795334_)))
                                    (_tl9533295394_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9532795334_))))
                                (let* ((_hd95397_ _hd9533195392_)
                                       (_tl95399_ _tl9533295394_))
                                  (declare (not safe))
                                  (_K9533095389_ _tl95399_ _hd95397_)))
                              (let () (declare (not safe)) (_E9532995338_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e95291_))
                            (let ((__tmp96378
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target95271_)))
                                  (__tmp96377 (_k95273_ _vars95270_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp96378
                               __tmp96377
                               _E95272_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e95291_))
                                (let ((_$e95401_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp96376
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target95271_)))
                                        (__tmp96368
                                         (let ((__tmp96370
                                                (let ((__tmp96371
                                                       (let ((__tmp96375
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e95401_ '())))
                     (__tmp96372
                      (let ((__tmp96373
                             (let ((__tmp96374
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e95000_
                                       _target95271_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp96374))))
                        (declare (not safe))
                        (cons __tmp96373 '()))))
                 (declare (not safe))
                 (cons __tmp96375 __tmp96372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp96371 '())))
                                               (__tmp96369
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur95178_
                                                   _body95288_
                                                   _vars95270_
                                                   _$e95401_
                                                   _E95272_
                                                   _k95273_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp96370
                                            __tmp96369))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp96376
                                     __tmp96368
                                     _E95272_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e95291_))
                                    (let ((_$e95403_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp96367
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target95271_)))
                                            (__tmp96359
                                             (let ((__tmp96361
                                                    (let ((__tmp96362
                                                           (let ((__tmp96366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e95403_ '())))
                         (__tmp96363
                          (let ((__tmp96364
                                 (let ((__tmp96365
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e95000_
                                           _target95271_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp96365))))
                            (declare (not safe))
                            (cons __tmp96364 '()))))
                     (declare (not safe))
                     (cons __tmp96366 __tmp96363))))
              (declare (not safe))
              (cons __tmp96362 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp96360
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur95178_
                                                       _body95288_
                                                       _vars95270_
                                                       _$e95403_
                                                       _E95272_
                                                       _k95273_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp96361
                                                __tmp96360))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp96367
                                         __tmp96359
                                         _E95272_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e95291_))
                                        (let ((_$e95405_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp96358
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target95271_)))
                                                (__tmp96349
                                                 (let ((__tmp96353
                                                        (let ((__tmp96354
                                                               (let ((__tmp96357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e95405_ '())))
                             (__tmp96355
                              (let ((__tmp96356
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target95271_))))
                                (declare (not safe))
                                (cons __tmp96356 '()))))
                         (declare (not safe))
                         (cons __tmp96357 __tmp96355))))
                  (declare (not safe))
                  (cons __tmp96354 '())))
               (__tmp96350
                (let ((__tmp96352
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e95405_ _body95288_)))
                      (__tmp96351 (_k95273_ _vars95270_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp96352 __tmp96351 _E95272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp96353
                                                    __tmp96350))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp96358
                                             __tmp96349
                                             _E95272_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG95177_ _e95269_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9527495281_))
                                      (let ((_hd9527895410_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9527495281_)))
                                            (_tl9527995412_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9527495281_))))
                                        (let* ((_tag95415_ _hd9527895410_)
                                               (_body95417_ _tl9527995412_))
                                          (declare (not safe))
                                          (_K9527795407_
                                           _body95417_
                                           _tag95415_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9527695285_))))))
                             (_splice-rlen95179_
                              (lambda (_e95231_)
                                (let _lp95233_ ((_e95235_ _e95231_)
                                                (_n95236_ '0))
                                  (let* ((_e9523795244_ _e95235_)
                                         (_E9523995248_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9523795244_))))
                                         (_K9524095257_
                                          (lambda (_body95251_ _tag95252_)
                                            (let ((_$e95254_ _tag95252_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e95254_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx94998_
                                                     _where95170_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e95254_))
                                                      (let ((__tmp96457
                                                             (cdr _body95251_))
                                                            (__tmp96456
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n95236_ '1))))
                (declare (not safe))
                (_lp95233_ __tmp96457 __tmp96456))
              _n95236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9523795244_))
                                        (let ((_hd9524195260_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9523795244_)))
                                              (_tl9524295262_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9523795244_))))
                                          (let* ((_tag95265_ _hd9524195260_)
                                                 (_body95267_ _tl9524295262_))
                                            (declare (not safe))
                                            (_K9524095257_
                                             _body95267_
                                             _tag95265_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9523995248_)))))))
                             (_splice-vars95180_
                              (lambda (_e95187_)
                                (let _recur95189_ ((_e95191_ _e95187_)
                                                   (_vars95192_ '()))
                                  (let* ((_e9519395200_ _e95191_)
                                         (_E9519595204_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9519395200_))))
                                         (_K9519695219_
                                          (lambda (_body95207_ _tag95208_)
                                            (let ((_$e95210_ _tag95208_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e95210_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body95207_
                                                          _vars95192_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e95210_))
                  (let () (declare (not safe)) (eq? 'splice _$e95210_)))
              (let ((__tmp96460 (cdr _body95207_))
                    (__tmp96458
                     (let ((__tmp96459 (car _body95207_)))
                       (declare (not safe))
                       (_recur95189_ __tmp96459 _vars95192_))))
                (declare (not safe))
                (_recur95189_ __tmp96460 __tmp96458))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e95210_))
                      (let () (declare (not safe)) (eq? 'box _$e95210_)))
                  (let ()
                    (declare (not safe))
                    (_recur95189_ _body95207_ _vars95192_))
                  _vars95192_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9519395200_))
                                        (let ((_hd9519795222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9519395200_)))
                                              (_tl9519895224_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9519395200_))))
                                          (let* ((_tag95227_ _hd9519795222_)
                                                 (_body95229_ _tl9519895224_))
                                            (declare (not safe))
                                            (_K9519695219_
                                             _body95229_
                                             _tag95227_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9519595204_)))))))
                             (_make-body95181_
                              (lambda (_vars95183_)
                                (let ((__tmp96461
                                       (map (lambda (_mvar95185_)
                                              (let ((__tmp96462
                                                     (car _mvar95185_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp96462
                                                 _vars95183_
                                                 _BUG95177_)))
                                            _mvars95173_)))
                                  (declare (not safe))
                                  (cons _K95174_ __tmp96461)))))
                      (let ()
                        (declare (not safe))
                        (_recur95178_
                         _hd95172_
                         '()
                         _target95171_
                         _E95175_
                         _make-body95181_)))))
                 (_parse-clause95007_
                  (lambda (_hd95076_ _ids95077_)
                    (let _recur95079_ ((_e95081_ _hd95076_)
                                       (_vars95082_ '())
                                       (_depth95083_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e95081_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e95081_))
                              (values '(any) _vars95082_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e95081_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx94998_
                                     _hd95076_))
                                  (if (let ((__tmp96478
                                             (lambda (_id95085_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e95081_
                                                  _id95085_)))))
                                        (declare (not safe))
                                        (find __tmp96478 _ids95077_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e95081_))
                                              _vars95082_)
                                      (if (let ((__tmp96476
                                                 (lambda (_var95087_)
                                                   (let ((__tmp96477
                                                          (car _var95087_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e95081_
                                                      __tmp96477)))))
                                            (declare (not safe))
                                            (find __tmp96476 _vars95082_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx94998_
                                             _e95081_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e95081_))
                                                  (let ((__tmp96475
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e95081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth95083_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96475
                                                          _vars95082_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e95081_))
                              (let* ((_e9508895095_ _e95081_)
                                     (_E9509095099_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9508895095_))))
                                     (_E9508995160_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9508895095_))
                                            (let ((_e9509195103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9508895095_))))
                                              (let ((_hd9509295106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9509195103_)))
                                                    (_tl9509395108_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9509195103_))))
                                                (let* ((_hd95111_
                                                        _hd9509295106_)
                                                       (_rest95113_
                                                        _tl9509395108_))
                                                  (if '#t
                                                      (let* ((_make-pair95128_
                                                              (lambda (_tag95115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd95116_
                               _tl95117_)
                        (let* ((_hd-depth95119_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag95115_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth95083_ '1))
                                    _depth95083_))
                               (_g96470_
                                (let ()
                                  (declare (not safe))
                                  (_recur95079_
                                   _hd95116_
                                   _vars95082_
                                   _hd-depth95119_))))
                          (begin
                            (let ((_g96471_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g96470_)
                                         (##vector-length _g96470_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g96471_ 2)))
                                  (error "Context expects 2 values" _g96471_)))
                            (let ((_hd95121_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96470_ 0)))
                                  (_vars95122_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g96470_ 1))))
                              (let ((_g96472_
                                     (let ()
                                       (declare (not safe))
                                       (_recur95079_
                                        _tl95117_
                                        _vars95122_
                                        _depth95083_))))
                                (begin
                                  (let ((_g96473_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g96472_)
                                               (##vector-length _g96472_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g96473_ 2)))
                                        (error "Context expects 2 values"
                                               _g96473_)))
                                  (let ((_tl95124_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96472_ 0)))
                                        (_vars95125_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g96472_ 1))))
                                    (let ()
                                      (values (let ((__tmp96474
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd95121_
                                                             _tl95124_))))
                                                (declare (not safe))
                                                (cons _tag95115_ __tmp96474))
                                              _vars95125_))))))))))
                     (_e9512995136_ _rest95113_)
                     (_E9513195140_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair95128_ 'cons _hd95111_ _rest95113_))))
                     (_E9513095156_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9512995136_))
                            (let ((_e9513295144_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9512995136_))))
                              (let ((_hd9513395147_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9513295144_)))
                                    (_tl9513495149_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9513295144_))))
                                (let* ((_rest-hd95152_ _hd9513395147_)
                                       (_rest-tl95154_ _tl9513495149_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd95152_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95128_
                                             'splice
                                             _hd95111_
                                             _rest-tl95154_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair95128_
                                             'cons
                                             _hd95111_
                                             _rest95113_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9513195140_))))))
                            (let () (declare (not safe)) (_E9513195140_))))))
                (let () (declare (not safe)) (_E9513095156_)))
              (let () (declare (not safe)) (_E9509095099_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9509095099_))))))
                                (let () (declare (not safe)) (_E9508995160_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e95081_))
                                  (values '(null) _vars95082_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e95081_))
                                      (let ((_g96467_
                                             (let ((__tmp96469
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e95081_)))))
                                               (declare (not safe))
                                               (_recur95079_
                                                __tmp96469
                                                _vars95082_
                                                _depth95083_))))
                                        (begin
                                          (let ((_g96468_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g96467_)
                                                       (##vector-length
                                                        _g96467_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g96468_ 2)))
                                                (error "Context expects 2 values"
                                                       _g96468_)))
                                          (let ((_e95164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96467_ 0)))
                                                (_vars95165_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g96467_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e95164_))
                                                    _vars95165_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e95081_))
                                          (let ((_g96464_
                                                 (let ((__tmp96466
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e95081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur95079_
                                                    __tmp96466
                                                    _vars95082_
                                                    _depth95083_))))
                                            (begin
                                              (let ((_g96465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g96464_)
                                                           (##vector-length
                                                            _g96464_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g96465_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g96465_)))
                                              (let ((_e95167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96464_
                                                        0)))
                                                    (_vars95168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g96464_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e95167_))
                                                        _vars95168_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e95081_))
                                              (values (let ((__tmp96463
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e95081_))))
                (declare (not safe))
                (cons 'datum __tmp96463))
              _vars95082_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx94998_
                                                 _e95081_))))))))))))
          (let* ((_e9500895021_ _stx94998_)
                 (_E9501095025_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9500895021_))))
                 (_E9500995072_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9500895021_))
                        (let ((_e9501195029_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9500895021_))))
                          (let ((_hd9501295032_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9501195029_)))
                                (_tl9501395034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9501195029_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9501395034_))
                                (let ((_e9501495037_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9501395034_))))
                                  (let ((_hd9501595040_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9501495037_)))
                                        (_tl9501695042_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9501495037_))))
                                    (let ((_expr95045_ _hd9501595040_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9501695042_))
                                          (let ((_e9501795047_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9501695042_))))
                                            (let ((_hd9501895050_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9501795047_)))
                                                  (_tl9501995052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9501795047_))))
                                              (let* ((_ids95055_
                                                      _hd9501895050_)
                                                     (_clauses95057_
                                                      _tl9501995052_))
                                                (if '#t
                                                    (if (let ((__tmp96496
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids95055_))))
                  (declare (not safe))
                  (not __tmp96496))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx94998_
                   _ids95055_))
                (if (let ((__tmp96495
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses95057_))))
                      (declare (not safe))
                      (not __tmp96495))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx94998_))
                    (let* ((_ids95059_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids95055_)))
                           (_clauses95061_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses95057_)))
                           (_clause-ids95063_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses95061_)))
                           (_E95065_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target95067_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first95069_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses95061_))
                                _E95065_
                                (car _clause-ids95063_))))
                      (let ((__tmp96480
                             (let ((__tmp96481
                                    (let ((__tmp96483
                                           (let ((__tmp96488
                                                  (let ((__tmp96489
                                                         (let ((__tmp96494
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E95065_ '())))
                       (__tmp96490
                        (let ((__tmp96491
                               (let ((__tmp96493
                                      (let ()
                                        (declare (not safe))
                                        (cons _target95067_ '())))
                                     (__tmp96492
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target95067_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp96493
                                  __tmp96492))))
                          (declare (not safe))
                          (cons __tmp96491 '()))))
                   (declare (not safe))
                   (cons __tmp96494 __tmp96490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp96489 '())))
                                                 (__tmp96484
                                                  (let ((__tmp96487
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings95003_
                                                            _target95067_
                                                            _ids95059_
                                                            _clauses95061_
                                                            _clause-ids95063_
                                                            _E95065_)))
                                                        (__tmp96485
                                                         (let ((__tmp96486
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr95045_ '()))))
                   (declare (not safe))
                   (cons _first95069_ __tmp96486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body95004_
                                                     __tmp96487
                                                     __tmp96485))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp96488
                                              __tmp96484)))
                                          (__tmp96482
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx94998_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp96483
                                       __tmp96482))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp96481)))
                            (__tmp96479
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx94998_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp96480 __tmp96479)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9501095025_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9501095025_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9501095025_)))))
                        (let () (declare (not safe)) (_E9501095025_))))))
            (let () (declare (not safe)) (_E9500995072_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx95708_)
        (let* ((_identifier=?95710_ 'free-identifier=?)
               (_unwrap-e95712_ 'syntax-e)
               (_wrap-e95714_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95708_
           _identifier=?95710_
           _unwrap-e95712_
           _wrap-e95714_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx95716_ _identifier=?95717_)
        (let* ((_unwrap-e95719_ 'syntax-e) (_wrap-e95721_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95716_
           _identifier=?95717_
           _unwrap-e95719_
           _wrap-e95721_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx95723_ _identifier=?95724_ _unwrap-e95725_)
        (let ((_wrap-e95727_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx95723_
           _identifier=?95724_
           _unwrap-e95725_
           _wrap-e95727_))))
    (define gx#macro-expand-syntax-case
      (lambda _g96498_
        (let ((_g96497_ (let () (declare (not safe)) (##length _g96498_))))
          (cond ((let () (declare (not safe)) (##fx= _g96497_ 1))
                 (apply (lambda (_stx95708_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx95708_)))
                        _g96498_))
                ((let () (declare (not safe)) (##fx= _g96497_ 2))
                 (apply (lambda (_stx95716_ _identifier=?95717_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx95716_
                             _identifier=?95717_)))
                        _g96498_))
                ((let () (declare (not safe)) (##fx= _g96497_ 3))
                 (apply (lambda (_stx95723_
                                 _identifier=?95724_
                                 _unwrap-e95725_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx95723_
                             _identifier=?95724_
                             _unwrap-e95725_)))
                        _g96498_))
                ((let () (declare (not safe)) (##fx= _g96497_ 4))
                 (apply (lambda (_stx95729_
                                 _identifier=?95730_
                                 _unwrap-e95731_
                                 _wrap-e95732_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx95729_
                             _identifier=?95730_
                             _unwrap-e95731_
                             _wrap-e95732_)))
                        _g96498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g96498_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx94995_)
        (if (let () (declare (not safe)) (gx#identifier? _stx94995_))
            (let ((__tmp96499
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx94995_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp96499 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd94953_ . _rest94954_)
        (let ((_len94956_ (length _hd94953_)))
          (let _lp94958_ ((_rest94960_ _rest94954_))
            (let* ((_rest9496194969_ _rest94960_)
                   (_else9496394977_ (lambda () '#!void))
                   (_K9496594983_
                    (lambda (_rest94980_ _hd94981_)
                      (if (fx= _len94956_ (length _hd94981_))
                          (let () (declare (not safe)) (_lp94958_ _rest94980_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd94981_))))))
              (if (let () (declare (not safe)) (##pair? _rest9496194969_))
                  (let ((_hd9496694986_
                         (let ()
                           (declare (not safe))
                           (##car _rest9496194969_)))
                        (_tl9496794988_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9496194969_))))
                    (let* ((_hd94991_ _hd9496694986_)
                           (_rest94993_ _tl9496794988_))
                      (declare (not safe))
                      (_K9496594983_ _rest94993_ _hd94991_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx94911_ _n94912_)
        (let _lp94914_ ((_rest94916_ _stx94911_) (_r94917_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest94916_))
              (let* ((_g9491894925_
                      (let () (declare (not safe)) (gx#syntax-e _rest94916_)))
                     (_E9492094929_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9491894925_))))
                     (_K9492194935_
                      (lambda (_rest94932_ _hd94933_)
                        (let ((__tmp96504
                               (let ()
                                 (declare (not safe))
                                 (cons _hd94933_ _r94917_))))
                          (declare (not safe))
                          (_lp94914_ _rest94932_ __tmp96504)))))
                (if (let () (declare (not safe)) (##pair? _g9491894925_))
                    (let ((_hd9492294938_
                           (let () (declare (not safe)) (##car _g9491894925_)))
                          (_tl9492394940_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9491894925_))))
                      (let* ((_hd94943_ _hd9492294938_)
                             (_rest94945_ _tl9492394940_))
                        (declare (not safe))
                        (_K9492194935_ _rest94945_ _hd94943_)))
                    (let () (declare (not safe)) (_E9492094929_))))
              (let _lp94947_ ((_n94949_ _n94912_)
                              (_l94950_ _r94917_)
                              (_r94951_ _rest94916_))
                (if (let () (declare (not safe)) (null? _l94950_))
                    (values _l94950_ _r94951_)
                    (if (fxpositive? _n94949_)
                        (let ((__tmp96503
                               (let () (declare (not safe)) (fx- _n94949_ '1)))
                              (__tmp96502 (cdr _l94950_))
                              (__tmp96500
                               (let ((__tmp96501 (car _l94950_)))
                                 (declare (not safe))
                                 (cons __tmp96501 _r94951_))))
                          (declare (not safe))
                          (_lp94947_ __tmp96503 __tmp96502 __tmp96500))
                        (values (reverse _l94950_) _r94951_))))))))))
