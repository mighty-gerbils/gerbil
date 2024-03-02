(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709375798)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp97326 (list gx#expander::t))
            (__tmp97324
             (let ((__tmp97325
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97325 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp97326
         '(id depth)
         __tmp97324
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args97321_
        (apply make-instance gx#syntax-pattern::t _$args97321_)))
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
      (lambda (_self97318_ _stx97319_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx97319_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96800_)
        (letrec ((_generate96802_
                  (lambda (_e97029_)
                    (letrec ((_BUG97031_
                              (lambda (_q97193_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96800_
                                         _e97029_
                                         _q97193_))))
                             (_local-pattern-e97032_
                              (lambda (_pat97191_)
                                (let ((__tmp97327
                                       (##structure-ref
                                        _pat97191_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp97327))))
                             (_getvar97033_
                              (lambda (_q97188_ _vars97189_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q97188_
                                   _vars97189_
                                   _BUG97031_))))
                             (_getarg97034_
                              (lambda (_arg97154_ _vars97155_)
                                (let* ((_arg9715697163_ _arg97154_)
                                       (_E9715897167_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9715697163_))))
                                       (_K9715997176_
                                        (lambda (_e97170_ _tag97171_)
                                          (let ((_$e97173_ _tag97171_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e97173_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97033_
                                                   _e97170_
                                                   _vars97155_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e97173_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97032_
                                                       _e97170_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97031_
                                                       _arg97154_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9715697163_))
                                      (let ((_hd9716097179_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9715697163_)))
                                            (_tl9716197181_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9715697163_))))
                                        (let* ((_tag97184_ _hd9716097179_)
                                               (_e97186_ _tl9716197181_))
                                          (declare (not safe))
                                          (_K9715997176_ _e97186_ _tag97184_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9715897167_)))))))
                      (let _recur97036_ ((_e97038_ _e97029_) (_vars97039_ '()))
                        (let* ((_e9704097047_ _e97038_)
                               (_E9704297051_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9704097047_))))
                               (_K9704397142_
                                (lambda (_body97054_ _tag97055_)
                                  (let ((_$e97057_ _tag97055_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97057_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97054_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e97057_))
                                            (let ((_id97060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97054_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id97060_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks97062_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id97060_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks97062_))
                                                        (let ((__tmp97355
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97054_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp97355))
                (let ((__tmp97354
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97054_)))
                      (__tmp97353
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97054_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp97354
                   __tmp97353
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id97060_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97054_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97031_
                                                         _e97038_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e97057_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97032_
                                                   _body97054_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e97057_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97033_
                                                       _body97054_
                                                       _vars97039_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e97057_))
                                                        (let ((__tmp97351
                                                               (let ((__tmp97352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97054_)))
                         (declare (not safe))
                         (_recur97036_ __tmp97352 _vars97039_)))
                      (__tmp97349
                       (let ((__tmp97350 (cdr _body97054_)))
                         (declare (not safe))
                         (_recur97036_ __tmp97350 _vars97039_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp97351 __tmp97349))
                (if (let () (declare (not safe)) (eq? 'vector _$e97057_))
                    (let ((__tmp97348
                           (let ()
                             (declare (not safe))
                             (_recur97036_ _body97054_ _vars97039_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp97348))
                    (if (let () (declare (not safe)) (eq? 'box _$e97057_))
                        (let ((__tmp97347
                               (let ()
                                 (declare (not safe))
                                 (_recur97036_ _body97054_ _vars97039_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp97347))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e97057_))
                            (let* ((_body9706397074_ _body97054_)
                                   (_E9706597078_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9706397074_))))
                                   (_K9706697116_
                                    (lambda (_args97081_
                                             _iv97082_
                                             _hd97083_
                                             _depth97084_)
                                      (let* ((_targets97090_
                                              (map (lambda (_g9708597087_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97034_
                                                        _g9708597087_
                                                        _vars97039_)))
                                                   _args97081_))
                                             (_fold-in97092_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args97081_)))
                                             (_fold-out97094_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args97096_
                                              (let ((__tmp97328
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out97094_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp97328
                                                        _fold-in97092_)))
                                             (_lambda-body97113_
                                              (if (fx> _depth97084_ '1)
                                                  (let ((_r-args97104_
                                                         (map (lambda (_arg97098_)
                                                                (let ((__tmp97333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg97098_)))
                          (declare (not safe))
                          (cons 'ref __tmp97333)))
                      _args97081_))
                (_r-vars97105_
                 (let ((__tmp97334
                        (lambda (_arg97100_ _var97101_ _r97102_)
                          (let ((__tmp97335
                                 (let ((__tmp97336 (cdr _arg97100_)))
                                   (declare (not safe))
                                   (cons __tmp97336 _var97101_))))
                            (declare (not safe))
                            (cons __tmp97335 _r97102_)))))
                   (declare (not safe))
                   (foldr2 __tmp97334
                           _vars97039_
                           _args97081_
                           _fold-in97092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp97337
                                                           (let ((__tmp97338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97342
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth97084_ '1)))
                                (__tmp97339
                                 (let ((__tmp97340
                                        (let ((__tmp97341
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out97094_))))
                                          (declare (not safe))
                                          (cons __tmp97341 _r-args97104_))))
                                   (declare (not safe))
                                   (cons _hd97083_ __tmp97340))))
                            (declare (not safe))
                            (cons __tmp97342 __tmp97339))))
                     (declare (not safe))
                     (cons 'splice __tmp97338))))
              (declare (not safe))
              (_recur97036_ __tmp97337 _r-vars97105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars97111_
                                                          (let ((__tmp97329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg97107_ _var97108_ _r97109_)
                           (let ((__tmp97330
                                  (let ((__tmp97331 (cdr _arg97107_)))
                                    (declare (not safe))
                                    (cons __tmp97331 _var97108_))))
                             (declare (not safe))
                             (cons __tmp97330 _r97109_)))))
                    (declare (not safe))
                    (foldr2 __tmp97329
                            _vars97039_
                            _args97081_
                            _fold-in97092_)))
                 (__tmp97332
                  (let ()
                    (declare (not safe))
                    (_recur97036_ _hd97083_ _hd-vars97111_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp97332
                                                     _fold-out97094_)))))
                                        (let ((__tmp97346
                                               (if (fx> (length _targets97090_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets97090_))
                                                   '#!void))
                                              (__tmp97343
                                               (let ((__tmp97345
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args97096_
                                                         _lambda-body97113_)))
                                                     (__tmp97344
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97036_
                                                         _iv97082_
                                                         _vars97039_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp97345
                                                  __tmp97344
                                                  _targets97090_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp97346
                                           __tmp97343))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9706397074_))
                                  (let ((_hd9706797119_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9706397074_)))
                                        (_tl9706897121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9706397074_))))
                                    (let ((_depth97124_ _hd9706797119_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9706897121_))
                                          (let ((_hd9706997126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9706897121_)))
                                                (_tl9707097128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9706897121_))))
                                            (let ((_hd97131_ _hd9706997126_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9707097128_))
                                                  (let ((_hd9707197133_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9707097128_)))
                                                        (_tl9707297135_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9707097128_))))
                                                    (let* ((_iv97138_
                                                            _hd9707197133_)
                                                           (_args97140_
                                                            _tl9707297135_))
                                                      (declare (not safe))
                                                      (_K9706697116_
                                                       _args97140_
                                                       _iv97138_
                                                       _hd97131_
                                                       _depth97124_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9706597078_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9706597078_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9706597078_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e97057_))
                                _body97054_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97031_ _e97038_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9704097047_))
                              (let ((_hd9704497145_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9704097047_)))
                                    (_tl9704597147_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9704097047_))))
                                (let* ((_tag97150_ _hd9704497145_)
                                       (_body97152_ _tl9704597147_))
                                  (declare (not safe))
                                  (_K9704397142_ _body97152_ _tag97150_)))
                              (let ()
                                (declare (not safe))
                                (_E9704297051_))))))))
                 (_parse96803_
                  (lambda (_e96844_)
                    (letrec ((_make-cons96846_
                              (lambda (_hd97021_ _tl97022_)
                                (let ((_g97356_ _hd97021_)
                                      (_g97358_ _tl97022_))
                                  (begin
                                    (let ((_g97357_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97356_)
                                                 (##vector-length _g97356_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97357_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97357_)))
                                    (let ((_g97359_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97358_)
                                                 (##vector-length _g97358_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97359_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97359_)))
                                    (let ((_hd-e97024_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97356_ 0)))
                                          (_hd-vars97025_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97356_ 1))))
                                      (let ((_tl-e97026_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97358_ 0)))
                                            (_tl-vars97027_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97358_ 1))))
                                        (values (let ((__tmp97360
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97024_
                                                               _tl-e97026_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp97360))
                                                (append _hd-vars97025_
                                                        _tl-vars97027_))))))))
                             (_make-splice96847_
                              (lambda (_where96960_
                                       _depth96961_
                                       _hd96962_
                                       _tl96963_)
                                (let ((_g97361_ _hd96962_)
                                      (_g97363_ _tl96963_))
                                  (begin
                                    (let ((_g97362_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97361_)
                                                 (##vector-length _g97361_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97362_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97362_)))
                                    (let ((_g97364_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97363_)
                                                 (##vector-length _g97363_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97364_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97364_)))
                                    (let ((_hd-e96965_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97361_ 0)))
                                          (_hd-vars96966_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97361_ 1))))
                                      (let ((_tl-e96967_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97363_ 0)))
                                            (_tl-vars96968_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97363_ 1))))
                                        (let _lp96970_ ((_rest96972_
                                                         _hd-vars96966_)
                                                        (_targets96973_ '())
                                                        (_vars96974_
                                                         _tl-vars96968_))
                                          (let* ((_rest9697596985_ _rest96972_)
                                                 (_else9697796993_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96973_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96800_
                                                           _where96960_))
                                                        (values (let ((__tmp97365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp97366
                                      (let ((__tmp97367
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96967_
                                                     _targets96973_))))
                                        (declare (not safe))
                                        (cons _hd-e96965_ __tmp97367))))
                                 (declare (not safe))
                                 (cons _depth96961_ __tmp97366))))
                          (declare (not safe))
                          (cons 'splice __tmp97365))
                        _vars96974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9697997002_
                                                  (lambda (_rest96996_
                                                           _hd-pat96997_
                                                           _hd-depth*96998_)
                                                    (let ((_hd-depth97000_
                                                           (fx- _hd-depth*96998_
                                                                _depth96961_)))
                                                      (if (fxpositive?
                                                           _hd-depth97000_)
                                                          (let ((__tmp97372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97373
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat96997_))))
                           (declare (not safe))
                           (cons __tmp97373 _targets96973_)))
                        (__tmp97370
                         (let ((__tmp97371
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97000_ _hd-pat96997_))))
                           (declare (not safe))
                           (cons __tmp97371 _vars96974_))))
                    (declare (not safe))
                    (_lp96970_ _rest96996_ __tmp97372 __tmp97370))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97000_))
                      (let ((__tmp97368
                             (let ((__tmp97369
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat96997_))))
                               (declare (not safe))
                               (cons __tmp97369 _targets96973_))))
                        (declare (not safe))
                        (_lp96970_ _rest96996_ __tmp97368 _vars96974_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96800_
                         _where96960_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9697596985_))
                                                (let ((_hd9698097005_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9697596985_)))
                                                      (_tl9698197007_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9697596985_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9698097005_))
                                                      (let ((_hd9698297010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9698097005_)))
                    (_tl9698397012_
                     (let () (declare (not safe)) (##cdr _hd9698097005_))))
                (let* ((_hd-depth*97015_ _hd9698297010_)
                       (_hd-pat97017_ _tl9698397012_)
                       (_rest97019_ _tl9698197007_))
                  (declare (not safe))
                  (_K9697997002_ _rest97019_ _hd-pat97017_ _hd-depth*97015_)))
              (let () (declare (not safe)) (_else9697796993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9697796993_)))))))))))
                             (_recur96848_
                              (lambda (_e96853_ _is-e?96854_)
                                (if (_is-e?96854_ _e96853_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96800_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96853_))
                                        (let* ((_pat96856_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96853_)))
                                               (_depth96858_
                                                (##structure-ref
                                                 _pat96856_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96858_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96856_))
                                                      (let ((__tmp97389
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96858_ _pat96856_))))
                (declare (not safe))
                (cons __tmp97389 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96856_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96853_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96853_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96853_))
                                                (let* ((_e9686096867_ _e96853_)
                                                       (_E9686296871_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9686096867_))))
                                                       (_E9686196950_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9686096867_))
                      (let ((_e9686396875_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9686096867_))))
                        (let ((_hd9686496878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9686396875_)))
                              (_tl9686596880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9686396875_))))
                          (let* ((_hd96883_ _hd9686496878_)
                                 (_rest96885_ _tl9686596880_))
                            (if '#t
                                (if (_is-e?96854_ _hd96883_)
                                    (let* ((_e9688696893_ _rest96885_)
                                           (_E9688896897_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96800_
                                                 _e96853_))))
                                           (_E9688796911_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9688696893_))
                                                  (let ((_e9688996901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9688696893_))))
                                                    (let ((_hd9689096904_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9688996901_)))
                                                          (_tl9689196906_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9688996901_))))
                                                      (let ((_rest96909_
                                                             _hd9689096904_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9689196906_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96848_ _rest96909_ false))
                        (let () (declare (not safe)) (_E9688896897_)))
                    (let () (declare (not safe)) (_E9688896897_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9688896897_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9688796911_)))
                                    (let _lp96915_ ((_rest96917_ _rest96885_)
                                                    (_depth96918_ '0))
                                      (let* ((_e9691996926_ _rest96917_)
                                             (_E9692196930_
                                              (lambda ()
                                                (if (fxpositive? _depth96918_)
                                                    (let ((__tmp97383
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96848_
                                                              _hd96883_
                                                              _is-e?96854_)))
                                                          (__tmp97382
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96848_
                                                              _rest96917_
                                                              _is-e?96854_))))
                                                      (declare (not safe))
                                                      (_make-splice96847_
                                                       _e96853_
                                                       _depth96918_
                                                       __tmp97383
                                                       __tmp97382))
                                                    (let ((__tmp97381
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96848_
                                                              _hd96883_
                                                              _is-e?96854_)))
                                                          (__tmp97380
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96848_
                                                              _rest96917_
                                                              _is-e?96854_))))
                                                      (declare (not safe))
                                                      (_make-cons96846_
                                                       __tmp97381
                                                       __tmp97380)))))
                                             (_E9692096946_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9691996926_))
                                                    (let ((_e9692296934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9691996926_))))
                                                      (let ((_hd9692396937_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9692296934_)))
                    (_tl9692496939_
                     (let () (declare (not safe)) (##cdr _e9692296934_))))
                (let* ((_rest-hd96942_ _hd9692396937_)
                       (_rest-tl96944_ _tl9692496939_))
                  (if '#t
                      (if (_is-e?96854_ _rest-hd96942_)
                          (let ((__tmp97388
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96918_ '1))))
                            (declare (not safe))
                            (_lp96915_ _rest-tl96944_ __tmp97388))
                          (if (fxpositive? _depth96918_)
                              (let ((__tmp97387
                                     (let ()
                                       (declare (not safe))
                                       (_recur96848_ _hd96883_ _is-e?96854_)))
                                    (__tmp97386
                                     (let ()
                                       (declare (not safe))
                                       (_recur96848_
                                        _rest96917_
                                        _is-e?96854_))))
                                (declare (not safe))
                                (_make-splice96847_
                                 _e96853_
                                 _depth96918_
                                 __tmp97387
                                 __tmp97386))
                              (let ((__tmp97385
                                     (let ()
                                       (declare (not safe))
                                       (_recur96848_ _hd96883_ _is-e?96854_)))
                                    (__tmp97384
                                     (let ()
                                       (declare (not safe))
                                       (_recur96848_
                                        _rest96917_
                                        _is-e?96854_))))
                                (declare (not safe))
                                (_make-cons96846_ __tmp97385 __tmp97384))))
                      (let () (declare (not safe)) (_E9692196930_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9692196930_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9692096946_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9686296871_))))))
                      (let () (declare (not safe)) (_E9686296871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9686196950_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96853_))
                                                    (let ((_g97377_
                                                           (let ((__tmp97379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96853_)))))
                     (declare (not safe))
                     (_recur96848_ __tmp97379 _is-e?96854_))))
              (begin
                (let ((_g97378_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97377_)
                             (##vector-length _g97377_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97378_ 2)))
                      (error "Context expects 2 values" _g97378_)))
                (let ((_e96954_
                       (let () (declare (not safe)) (##vector-ref _g97377_ 0)))
                      (_vars96955_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97377_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96954_))
                          _vars96955_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96853_))
                                                        (let ((_g97374_
                                                               (let ((__tmp97376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96853_)))))
                         (declare (not safe))
                         (_recur96848_ __tmp97376 _is-e?96854_))))
                  (begin
                    (let ((_g97375_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97374_)
                                 (##vector-length _g97374_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97375_ 2)))
                          (error "Context expects 2 values" _g97375_)))
                    (let ((_e96957_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97374_ 0)))
                          (_vars96958_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97374_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96957_))
                              _vars96958_))))
                (values (let () (declare (not safe)) (cons 'datum _e96853_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g97390_
                             (let ()
                               (declare (not safe))
                               (_recur96848_ _e96844_ gx#ellipsis?))))
                        (begin
                          (let ((_g97391_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97390_)
                                       (##vector-length _g97390_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97391_ 2)))
                                (error "Context expects 2 values" _g97391_)))
                          (let ((_tree96850_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97390_ 0)))
                                (_vars96851_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97390_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96851_))
                                _tree96850_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96800_
                                   _vars96851_))))))))))
          (let* ((_e9680496814_ _stx96800_)
                 (_E9680696818_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96800_))))
                 (_E9680596840_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9680496814_))
                        (let ((_e9680796822_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9680496814_))))
                          (let ((_hd9680896825_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9680796822_)))
                                (_tl9680996827_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9680796822_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9680996827_))
                                (let ((_e9681096830_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9680996827_))))
                                  (let ((_hd9681196833_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9681096830_)))
                                        (_tl9681296835_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9681096830_))))
                                    (let ((_form96838_ _hd9681196833_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9681296835_))
                                          (if '#t
                                              (let ((__tmp97393
                                                     (let ((__tmp97394
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96803_
                                                               _form96838_))))
                                                       (declare (not safe))
                                                       (_generate96802_
                                                        __tmp97394)))
                                                    (__tmp97392
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96800_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp97393
                                                 __tmp97392))
                                              (let ()
                                                (declare (not safe))
                                                (_E9680696818_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9680696818_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9680696818_)))))
                        (let () (declare (not safe)) (_E9680696818_))))))
            (let () (declare (not safe)) (_E9680596840_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx96064_ _identifier=?96065_ _unwrap-e96066_ _wrap-e96067_)
        (letrec ((_generate-bindings96069_
                  (lambda (_target96664_
                           _ids96665_
                           _clauses96666_
                           _clause-ids96667_
                           _E96668_)
                    (letrec ((_generate196670_
                              (lambda (_clause96767_ _clause-id96768_ _E96769_)
                                (let ((__tmp97399
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96768_ '())))
                                      (__tmp97395
                                       (let ((__tmp97396
                                              (let ((__tmp97398
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96664_
                                                             '())))
                                                    (__tmp97397
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause96071_
                                                        _target96664_
                                                        _ids96665_
                                                        _clause96767_
                                                        _E96769_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp97398
                                                 __tmp97397))))
                                         (declare (not safe))
                                         (cons __tmp97396 '()))))
                                  (declare (not safe))
                                  (cons __tmp97399 __tmp97395)))))
                      (let _lp96672_ ((_rest96674_ _clauses96666_)
                                      (_rest-ids96675_ _clause-ids96667_)
                                      (_bindings96676_ '()))
                        (let* ((_rest9667796685_ _rest96674_)
                               (_else9667996693_ (lambda () _bindings96676_))
                               (_K9668196755_
                                (lambda (_rest96696_ _clause96697_)
                                  (let* ((_rest-ids9669896705_ _rest-ids96675_)
                                         (_E9670096709_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9669896705_))))
                                         (_K9670196743_
                                          (lambda (_rest-ids96712_
                                                   _clause-id96713_)
                                            (let* ((_rest-ids9671496722_
                                                    _rest-ids96712_)
                                                   (_else9671696730_
                                                    (lambda ()
                                                      (let ((__tmp97400
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196670_
                        _clause96697_
                        _clause-id96713_
                        _E96668_))))
                (declare (not safe))
                (cons __tmp97400 _bindings96676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9671896735_
                                                    (lambda (_next-clause-id96733_)
                                                      (let ((__tmp97401
                                                             (let ((__tmp97402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196670_
                               _clause96697_
                               _clause-id96713_
                               _next-clause-id96733_))))
                       (declare (not safe))
                       (cons __tmp97402 _bindings96676_))))
                (declare (not safe))
                (_lp96672_ _rest96696_ _rest-ids96712_ __tmp97401)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9671496722_))
                                                  (let* ((_hd9671996738_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9671496722_)))
                                                         (_next-clause-id96741_
                                                          _hd9671996738_))
                                                    (declare (not safe))
                                                    (_K9671896735_
                                                     _next-clause-id96741_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9671696730_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9669896705_))
                                        (let ((_hd9670296746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9669896705_)))
                                              (_tl9670396748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9669896705_))))
                                          (let* ((_clause-id96751_
                                                  _hd9670296746_)
                                                 (_rest-ids96753_
                                                  _tl9670396748_))
                                            (declare (not safe))
                                            (_K9670196743_
                                             _rest-ids96753_
                                             _clause-id96751_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9670096709_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9667796685_))
                              (let ((_hd9668296758_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9667796685_)))
                                    (_tl9668396760_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9667796685_))))
                                (let* ((_clause96763_ _hd9668296758_)
                                       (_rest96765_ _tl9668396760_))
                                  (declare (not safe))
                                  (_K9668196755_ _rest96765_ _clause96763_)))
                              (let ()
                                (declare (not safe))
                                (_else9667996693_))))))))
                 (_generate-body96070_
                  (lambda (_bindings96624_ _body96625_)
                    (let _recur96627_ ((_rest96629_ _bindings96624_))
                      (let* ((_rest9663096638_ _rest96629_)
                             (_else9663296646_ (lambda () _body96625_))
                             (_K9663496652_
                              (lambda (_rest96649_ _hd96650_)
                                (let ((__tmp97404
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96650_ '())))
                                      (__tmp97403
                                       (let ()
                                         (declare (not safe))
                                         (_recur96627_ _rest96649_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp97404
                                   __tmp97403)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9663096638_))
                            (let ((_hd9663596655_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9663096638_)))
                                  (_tl9663696657_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9663096638_))))
                              (let* ((_hd96660_ _hd9663596655_)
                                     (_rest96662_ _tl9663696657_))
                                (declare (not safe))
                                (_K9663496652_ _rest96662_ _hd96660_)))
                            (let ()
                              (declare (not safe))
                              (_else9663296646_)))))))
                 (_generate-clause96071_
                  (lambda (_target96487_ _ids96488_ _clause96489_ _E96490_)
                    (letrec ((_generate196492_
                              (lambda (_hd96579_ _fender96580_ _body96581_)
                                (let ((_g97405_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause96073_
                                          _hd96579_
                                          _ids96488_))))
                                  (begin
                                    (let ((_g97406_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97405_)
                                                 (##vector-length _g97405_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97406_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97406_)))
                                    (let ((_e96583_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97405_ 0)))
                                          (_mvars96584_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97405_ 1))))
                                      (let* ((_pvars96586_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96584_))))
                                             (_E96588_
                                              (let ((__tmp97407
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96487_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96490_ __tmp97407)))
                                             (_K96621_
                                              (let ((__tmp97408
                                                     (let ((__tmp97410
                                                            (map (lambda (_mvar96590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96591_)
                           (let* ((_mvar9659296599_ _mvar96590_)
                                  (_E9659496603_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9659296599_))))
                                  (_K9659596609_
                                   (lambda (_depth96606_ _id96607_)
                                     (let ((__tmp97411
                                            (let ((__tmp97412
                                                   (let ((__tmp97414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96607_)))
                                                         (__tmp97413
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96591_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97414
                                                      __tmp97413
                                                      _depth96606_))))
                                              (declare (not safe))
                                              (cons __tmp97412 '()))))
                                       (declare (not safe))
                                       (cons _id96607_ __tmp97411)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9659296599_))
                                 (let ((_hd9659696612_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9659296599_)))
                                       (_tl9659796614_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9659296599_))))
                                   (let* ((_id96617_ _hd9659696612_)
                                          (_depth96619_ _tl9659796614_))
                                     (declare (not safe))
                                     (_K9659596609_ _depth96619_ _id96617_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9659496603_)))))
                         _mvars96584_
                         _pvars96586_))
                   (__tmp97409
                    (if (let () (declare (not safe)) (eq? _fender96580_ '#t))
                        _body96581_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96580_
                           _body96581_
                           _E96588_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp97410 __tmp97409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96586_
                                                 __tmp97408))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match96072_
                                           _hd96579_
                                           _target96487_
                                           _e96583_
                                           _mvars96584_
                                           _K96621_
                                           _E96588_)))))))))
                      (let* ((_e9649396513_ _clause96489_)
                             (_E9650296517_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9649396513_))))
                             (_E9649596551_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9649396513_))
                                    (let ((_e9650396521_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9649396513_))))
                                      (let ((_hd9650496524_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9650396521_)))
                                            (_tl9650596526_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9650396521_))))
                                        (let ((_hd96529_ _hd9650496524_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9650596526_))
                                              (let ((_e9650696531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9650596526_))))
                                                (let ((_hd9650796534_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9650696531_)))
                                                      (_tl9650896536_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9650696531_))))
                                                  (let ((_fender96539_
                                                         _hd9650796534_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9650896536_))
                                                        (let ((_e9650996541_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9650896536_))))
                  (let ((_hd9651096544_
                         (let () (declare (not safe)) (##car _e9650996541_)))
                        (_tl9651196546_
                         (let () (declare (not safe)) (##cdr _e9650996541_))))
                    (let ((_body96549_ _hd9651096544_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9651196546_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196492_
                                 _hd96529_
                                 _fender96539_
                                 _body96549_))
                              (let () (declare (not safe)) (_E9650296517_)))
                          (let () (declare (not safe)) (_E9650296517_))))))
                (let () (declare (not safe)) (_E9650296517_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9650296517_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9650296517_)))))
                             (_E9649496575_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9649396513_))
                                    (let ((_e9649696555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9649396513_))))
                                      (let ((_hd9649796558_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9649696555_)))
                                            (_tl9649896560_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9649696555_))))
                                        (let ((_hd96563_ _hd9649796558_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9649896560_))
                                              (let ((_e9649996565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9649896560_))))
                                                (let ((_hd9650096568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9649996565_)))
                                                      (_tl9650196570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9649996565_))))
                                                  (let ((_body96573_
                                                         _hd9650096568_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9650196570_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196492_
                                                               _hd96563_
                                                               '#t
                                                               _body96573_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9649596551_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9649596551_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9649596551_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9649596551_))))))
                        (let () (declare (not safe)) (_E9649496575_))))))
                 (_generate-match96072_
                  (lambda (_where96236_
                           _target96237_
                           _hd96238_
                           _mvars96239_
                           _K96240_
                           _E96241_)
                    (letrec ((_BUG96243_
                              (lambda (_q96485_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx96064_
                                         _hd96238_
                                         _q96485_))))
                             (_recur96244_
                              (lambda (_e96335_
                                       _vars96336_
                                       _target96337_
                                       _E96338_
                                       _k96339_)
                                (let* ((_e9634096347_ _e96335_)
                                       (_E9634296351_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9634096347_))))
                                       (_K9634396473_
                                        (lambda (_body96354_ _tag96355_)
                                          (let ((_$e96357_ _tag96355_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e96357_))
                                                (_k96339_ _vars96336_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e96357_))
                                                    (let ((__tmp97521
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target96337_)))
                                                          (__tmp97517
                                                           (let ((__tmp97519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97520
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e96067_ _body96354_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?96065_
                             __tmp97520
                             _target96337_)))
                         (__tmp97518 (_k96339_ _vars96336_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97519 __tmp97518 _E96338_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97521 __tmp97517 _E96338_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e96357_))
                                                        (_k96339_
                                                         (let ((__tmp97516
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body96354_ _target96337_))))
                   (declare (not safe))
                   (cons __tmp97516 _vars96336_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e96357_))
                    (let ((_$e96360_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd96361_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl96362_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97515
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target96337_)))
                            (__tmp97496
                             (let ((__tmp97510
                                    (let ((__tmp97511
                                           (let ((__tmp97514
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e96360_ '())))
                                                 (__tmp97512
                                                  (let ((__tmp97513
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e96066_
                                                            _target96337_))))
                                                    (declare (not safe))
                                                    (cons __tmp97513 '()))))
                                             (declare (not safe))
                                             (cons __tmp97514 __tmp97512))))
                                      (declare (not safe))
                                      (cons __tmp97511 '())))
                                   (__tmp97497
                                    (let ((__tmp97500
                                           (let ((__tmp97506
                                                  (let ((__tmp97509
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd96361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97507
                 (let ((__tmp97508
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e96360_))))
                   (declare (not safe))
                   (cons __tmp97508 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97509
                                                          __tmp97507)))
                                                 (__tmp97501
                                                  (let ((__tmp97502
                                                         (let ((__tmp97505
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl96362_ '())))
                       (__tmp97503
                        (let ((__tmp97504
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e96360_))))
                          (declare (not safe))
                          (cons __tmp97504 '()))))
                   (declare (not safe))
                   (cons __tmp97505 __tmp97503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97502 '()))))
                                             (declare (not safe))
                                             (cons __tmp97506 __tmp97501)))
                                          (__tmp97498
                                           (let* ((_body9636396370_
                                                   _body96354_)
                                                  (_E9636596374_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9636396370_))))
                                                  (_K9636696382_
                                                   (lambda (_tl96377_
                                                            _hd96378_)
                                                     (let ((__tmp97499
                                                            (lambda (_vars96380_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur96244_
                         _tl96377_
                         _vars96380_
                         _$tl96362_
                         _E96338_
                         _k96339_)))))
               (declare (not safe))
               (_recur96244_
                _hd96378_
                _vars96336_
                _$hd96361_
                _E96338_
                __tmp97499)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9636396370_))
                                                 (let ((_hd9636796385_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9636396370_)))
                                                       (_tl9636896387_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9636396370_))))
                                                   (let* ((_hd96390_
                                                           _hd9636796385_)
                                                          (_tl96392_
                                                           _tl9636896387_))
                                                     (declare (not safe))
                                                     (_K9636696382_
                                                      _tl96392_
                                                      _hd96390_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9636596374_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97500
                                       __tmp97498))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97510
                                __tmp97497))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97515 __tmp97496 _E96338_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e96357_))
                        (let* ((_body9639396400_ _body96354_)
                               (_E9639596404_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9639396400_))))
                               (_K9639696455_
                                (lambda (_tl96407_ _hd96408_)
                                  (let* ((_rlen96410_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen96245_ _tl96407_)))
                                         (_$target96412_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96414_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96416_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96418_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96420_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96422_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96424_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96426_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars96246_ _hd96408_)))
                                         (_lvars96428_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96426_)))
                                         (_tlvars96430_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96426_)))
                                         (_linit96434_
                                          (map (lambda (_var96432_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96428_)))
                                    (letrec ((_make-loop96437_
                                              (lambda (_vars96441_)
                                                (let ((__tmp97447
                                                       (let ((__tmp97448
                                                              (let ((__tmp97484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96418_ '())))
                            (__tmp97449
                             (let ((__tmp97450
                                    (let ((__tmp97483
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96414_ _lvars96428_)))
                                          (__tmp97451
                                           (let ((__tmp97482
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96414_)))
                                                 (__tmp97460
                                                  (let ((__tmp97477
                                                         (let ((__tmp97478
                                                                (let ((__tmp97481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96420_ '())))
                              (__tmp97479
                               (let ((__tmp97480
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e96066_
                                         _$hd96414_))))
                                 (declare (not safe))
                                 (cons __tmp97480 '()))))
                          (declare (not safe))
                          (cons __tmp97481 __tmp97479))))
                   (declare (not safe))
                   (cons __tmp97478 '())))
                (__tmp97461
                 (let ((__tmp97467
                        (let ((__tmp97473
                               (let ((__tmp97476
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96422_ '())))
                                     (__tmp97474
                                      (let ((__tmp97475
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96420_))))
                                        (declare (not safe))
                                        (cons __tmp97475 '()))))
                                 (declare (not safe))
                                 (cons __tmp97476 __tmp97474)))
                              (__tmp97468
                               (let ((__tmp97469
                                      (let ((__tmp97472
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96424_ '())))
                                            (__tmp97470
                                             (let ((__tmp97471
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96420_))))
                                               (declare (not safe))
                                               (cons __tmp97471 '()))))
                                        (declare (not safe))
                                        (cons __tmp97472 __tmp97470))))
                                 (declare (not safe))
                                 (cons __tmp97469 '()))))
                          (declare (not safe))
                          (cons __tmp97473 __tmp97468)))
                       (__tmp97462
                        (let ((__tmp97463
                               (lambda (_hdvars96443_)
                                 (let ((__tmp97464
                                        (let ((__tmp97465
                                               (map (lambda (_svar96445_
                                                             _lvar96446_)
                                                      (let ((__tmp97466
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96445_ _hdvars96443_ _BUG96243_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97466 _lvar96446_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96426_
                                                    _lvars96428_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96424_ __tmp97465))))
                                   (declare (not safe))
                                   (cons _$lp96418_ __tmp97464)))))
                          (declare (not safe))
                          (_recur96244_
                           _hd96408_
                           '()
                           _$lp-hd96422_
                           _E96338_
                           __tmp97463))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97467 __tmp97462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97477
                                                     __tmp97461)))
                                                 (__tmp97452
                                                  (let ((__tmp97456
                                                         (map (lambda (_lvar96448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96449_)
                        (let ((__tmp97459
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96449_ '())))
                              (__tmp97457
                               (let ((__tmp97458
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96448_))))
                                 (declare (not safe))
                                 (cons __tmp97458 '()))))
                          (declare (not safe))
                          (cons __tmp97459 __tmp97457)))
                      _lvars96428_
                      _tlvars96430_))
                (__tmp97453
                 (_k96339_
                  (let ((__tmp97454
                         (lambda (_svar96451_ _tlvar96452_ _r96453_)
                           (let ((__tmp97455
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96451_ _tlvar96452_))))
                             (declare (not safe))
                             (cons __tmp97455 _r96453_)))))
                    (declare (not safe))
                    (foldl2 __tmp97454
                            _vars96441_
                            _svars96426_
                            _tlvars96430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97456
                                                     __tmp97453))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97482
                                              __tmp97460
                                              __tmp97452))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97483
                                       __tmp97451))))
                               (declare (not safe))
                               (cons __tmp97450 '()))))
                        (declare (not safe))
                        (cons __tmp97484 __tmp97449))))
                 (declare (not safe))
                 (cons __tmp97448 '())))
              (__tmp97445
               (let ((__tmp97446
                      (let ()
                        (declare (not safe))
                        (cons _$target96412_ _linit96434_))))
                 (declare (not safe))
                 (cons _$lp96418_ __tmp97446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97447
                                                   __tmp97445)))))
                                      (let ((_body96439_
                                             (let ((__tmp97486
                                                    (let ((__tmp97487
                                                           (let ((__tmp97490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97491
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96416_ '()))))
                            (declare (not safe))
                            (cons _$target96412_ __tmp97491)))
                         (__tmp97488
                          (let ((__tmp97489
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target96337_
                                    _rlen96410_))))
                            (declare (not safe))
                            (cons __tmp97489 '()))))
                     (declare (not safe))
                     (cons __tmp97490 __tmp97488))))
              (declare (not safe))
              (cons __tmp97487 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97485
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96244_
                                                       _tl96407_
                                                       _vars96336_
                                                       _$tl96416_
                                                       _E96338_
                                                       _make-loop96437_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97486
                                                __tmp97485))))
                                        (let ((__tmp97495
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target96337_)))
                                              (__tmp97492
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen96410_))
                                                   _body96439_
                                                   (let ((__tmp97493
                                                          (let ((__tmp97494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target96337_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97494 _rlen96410_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97493
                                                      _body96439_
                                                      _E96338_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97495
                                           __tmp97492
                                           _E96338_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9639396400_))
                              (let ((_hd9639796458_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9639396400_)))
                                    (_tl9639896460_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9639396400_))))
                                (let* ((_hd96463_ _hd9639796458_)
                                       (_tl96465_ _tl9639896460_))
                                  (declare (not safe))
                                  (_K9639696455_ _tl96465_ _hd96463_)))
                              (let () (declare (not safe)) (_E9639596404_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e96357_))
                            (let ((__tmp97444
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target96337_)))
                                  (__tmp97443 (_k96339_ _vars96336_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97444
                               __tmp97443
                               _E96338_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e96357_))
                                (let ((_$e96467_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97442
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target96337_)))
                                        (__tmp97434
                                         (let ((__tmp97436
                                                (let ((__tmp97437
                                                       (let ((__tmp97441
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96467_ '())))
                     (__tmp97438
                      (let ((__tmp97439
                             (let ((__tmp97440
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e96066_
                                       _target96337_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97440))))
                        (declare (not safe))
                        (cons __tmp97439 '()))))
                 (declare (not safe))
                 (cons __tmp97441 __tmp97438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97437 '())))
                                               (__tmp97435
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur96244_
                                                   _body96354_
                                                   _vars96336_
                                                   _$e96467_
                                                   _E96338_
                                                   _k96339_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97436
                                            __tmp97435))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97442
                                     __tmp97434
                                     _E96338_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e96357_))
                                    (let ((_$e96469_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97433
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target96337_)))
                                            (__tmp97425
                                             (let ((__tmp97427
                                                    (let ((__tmp97428
                                                           (let ((__tmp97432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96469_ '())))
                         (__tmp97429
                          (let ((__tmp97430
                                 (let ((__tmp97431
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e96066_
                                           _target96337_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97431))))
                            (declare (not safe))
                            (cons __tmp97430 '()))))
                     (declare (not safe))
                     (cons __tmp97432 __tmp97429))))
              (declare (not safe))
              (cons __tmp97428 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97426
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96244_
                                                       _body96354_
                                                       _vars96336_
                                                       _$e96469_
                                                       _E96338_
                                                       _k96339_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97427
                                                __tmp97426))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97433
                                         __tmp97425
                                         _E96338_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96357_))
                                        (let ((_$e96471_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97424
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target96337_)))
                                                (__tmp97415
                                                 (let ((__tmp97419
                                                        (let ((__tmp97420
                                                               (let ((__tmp97423
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96471_ '())))
                             (__tmp97421
                              (let ((__tmp97422
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target96337_))))
                                (declare (not safe))
                                (cons __tmp97422 '()))))
                         (declare (not safe))
                         (cons __tmp97423 __tmp97421))))
                  (declare (not safe))
                  (cons __tmp97420 '())))
               (__tmp97416
                (let ((__tmp97418
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96471_ _body96354_)))
                      (__tmp97417 (_k96339_ _vars96336_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97418 __tmp97417 _E96338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97419
                                                    __tmp97416))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97424
                                             __tmp97415
                                             _E96338_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG96243_ _e96335_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9634096347_))
                                      (let ((_hd9634496476_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9634096347_)))
                                            (_tl9634596478_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9634096347_))))
                                        (let* ((_tag96481_ _hd9634496476_)
                                               (_body96483_ _tl9634596478_))
                                          (declare (not safe))
                                          (_K9634396473_
                                           _body96483_
                                           _tag96481_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9634296351_))))))
                             (_splice-rlen96245_
                              (lambda (_e96297_)
                                (let _lp96299_ ((_e96301_ _e96297_)
                                                (_n96302_ '0))
                                  (let* ((_e9630396310_ _e96301_)
                                         (_E9630596314_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9630396310_))))
                                         (_K9630696323_
                                          (lambda (_body96317_ _tag96318_)
                                            (let ((_$e96320_ _tag96318_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e96320_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx96064_
                                                     _where96236_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e96320_))
                                                      (let ((__tmp97523
                                                             (cdr _body96317_))
                                                            (__tmp97522
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n96302_ '1))))
                (declare (not safe))
                (_lp96299_ __tmp97523 __tmp97522))
              _n96302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9630396310_))
                                        (let ((_hd9630796326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9630396310_)))
                                              (_tl9630896328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9630396310_))))
                                          (let* ((_tag96331_ _hd9630796326_)
                                                 (_body96333_ _tl9630896328_))
                                            (declare (not safe))
                                            (_K9630696323_
                                             _body96333_
                                             _tag96331_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9630596314_)))))))
                             (_splice-vars96246_
                              (lambda (_e96253_)
                                (let _recur96255_ ((_e96257_ _e96253_)
                                                   (_vars96258_ '()))
                                  (let* ((_e9625996266_ _e96257_)
                                         (_E9626196270_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9625996266_))))
                                         (_K9626296285_
                                          (lambda (_body96273_ _tag96274_)
                                            (let ((_$e96276_ _tag96274_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e96276_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body96273_
                                                          _vars96258_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e96276_))
                  (let () (declare (not safe)) (eq? 'splice _$e96276_)))
              (let ((__tmp97526 (cdr _body96273_))
                    (__tmp97524
                     (let ((__tmp97525 (car _body96273_)))
                       (declare (not safe))
                       (_recur96255_ __tmp97525 _vars96258_))))
                (declare (not safe))
                (_recur96255_ __tmp97526 __tmp97524))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e96276_))
                      (let () (declare (not safe)) (eq? 'box _$e96276_)))
                  (let ()
                    (declare (not safe))
                    (_recur96255_ _body96273_ _vars96258_))
                  _vars96258_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9625996266_))
                                        (let ((_hd9626396288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9625996266_)))
                                              (_tl9626496290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9625996266_))))
                                          (let* ((_tag96293_ _hd9626396288_)
                                                 (_body96295_ _tl9626496290_))
                                            (declare (not safe))
                                            (_K9626296285_
                                             _body96295_
                                             _tag96293_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9626196270_)))))))
                             (_make-body96247_
                              (lambda (_vars96249_)
                                (let ((__tmp97527
                                       (map (lambda (_mvar96251_)
                                              (let ((__tmp97528
                                                     (car _mvar96251_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97528
                                                 _vars96249_
                                                 _BUG96243_)))
                                            _mvars96239_)))
                                  (declare (not safe))
                                  (cons _K96240_ __tmp97527)))))
                      (let ()
                        (declare (not safe))
                        (_recur96244_
                         _hd96238_
                         '()
                         _target96237_
                         _E96241_
                         _make-body96247_)))))
                 (_parse-clause96073_
                  (lambda (_hd96142_ _ids96143_)
                    (let _recur96145_ ((_e96147_ _hd96142_)
                                       (_vars96148_ '())
                                       (_depth96149_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e96147_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e96147_))
                              (values '(any) _vars96148_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e96147_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx96064_
                                     _hd96142_))
                                  (if (let ((__tmp97544
                                             (lambda (_id96151_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e96147_
                                                  _id96151_)))))
                                        (declare (not safe))
                                        (find __tmp97544 _ids96143_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e96147_))
                                              _vars96148_)
                                      (if (let ((__tmp97542
                                                 (lambda (_var96153_)
                                                   (let ((__tmp97543
                                                          (car _var96153_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e96147_
                                                      __tmp97543)))))
                                            (declare (not safe))
                                            (find __tmp97542 _vars96148_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx96064_
                                             _e96147_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e96147_))
                                                  (let ((__tmp97541
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e96147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth96149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97541
                                                          _vars96148_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e96147_))
                              (let* ((_e9615496161_ _e96147_)
                                     (_E9615696165_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9615496161_))))
                                     (_E9615596226_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9615496161_))
                                            (let ((_e9615796169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9615496161_))))
                                              (let ((_hd9615896172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9615796169_)))
                                                    (_tl9615996174_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9615796169_))))
                                                (let* ((_hd96177_
                                                        _hd9615896172_)
                                                       (_rest96179_
                                                        _tl9615996174_))
                                                  (if '#t
                                                      (let* ((_make-pair96194_
                                                              (lambda (_tag96181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd96182_
                               _tl96183_)
                        (let* ((_hd-depth96185_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag96181_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth96149_ '1))
                                    _depth96149_))
                               (_g97536_
                                (let ()
                                  (declare (not safe))
                                  (_recur96145_
                                   _hd96182_
                                   _vars96148_
                                   _hd-depth96185_))))
                          (begin
                            (let ((_g97537_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97536_)
                                         (##vector-length _g97536_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97537_ 2)))
                                  (error "Context expects 2 values" _g97537_)))
                            (let ((_hd96187_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97536_ 0)))
                                  (_vars96188_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97536_ 1))))
                              (let ((_g97538_
                                     (let ()
                                       (declare (not safe))
                                       (_recur96145_
                                        _tl96183_
                                        _vars96188_
                                        _depth96149_))))
                                (begin
                                  (let ((_g97539_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97538_)
                                               (##vector-length _g97538_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97539_ 2)))
                                        (error "Context expects 2 values"
                                               _g97539_)))
                                  (let ((_tl96190_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97538_ 0)))
                                        (_vars96191_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97538_ 1))))
                                    (let ()
                                      (values (let ((__tmp97540
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd96187_
                                                             _tl96190_))))
                                                (declare (not safe))
                                                (cons _tag96181_ __tmp97540))
                                              _vars96191_))))))))))
                     (_e9619596202_ _rest96179_)
                     (_E9619796206_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair96194_ 'cons _hd96177_ _rest96179_))))
                     (_E9619696222_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9619596202_))
                            (let ((_e9619896210_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9619596202_))))
                              (let ((_hd9619996213_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9619896210_)))
                                    (_tl9620096215_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9619896210_))))
                                (let* ((_rest-hd96218_ _hd9619996213_)
                                       (_rest-tl96220_ _tl9620096215_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd96218_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96194_
                                             'splice
                                             _hd96177_
                                             _rest-tl96220_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96194_
                                             'cons
                                             _hd96177_
                                             _rest96179_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9619796206_))))))
                            (let () (declare (not safe)) (_E9619796206_))))))
                (let () (declare (not safe)) (_E9619696222_)))
              (let () (declare (not safe)) (_E9615696165_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9615696165_))))))
                                (let () (declare (not safe)) (_E9615596226_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e96147_))
                                  (values '(null) _vars96148_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e96147_))
                                      (let ((_g97533_
                                             (let ((__tmp97535
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e96147_)))))
                                               (declare (not safe))
                                               (_recur96145_
                                                __tmp97535
                                                _vars96148_
                                                _depth96149_))))
                                        (begin
                                          (let ((_g97534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97533_)
                                                       (##vector-length
                                                        _g97533_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97534_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97534_)))
                                          (let ((_e96230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97533_ 0)))
                                                (_vars96231_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97533_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e96230_))
                                                    _vars96231_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e96147_))
                                          (let ((_g97530_
                                                 (let ((__tmp97532
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e96147_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur96145_
                                                    __tmp97532
                                                    _vars96148_
                                                    _depth96149_))))
                                            (begin
                                              (let ((_g97531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97530_)
                                                           (##vector-length
                                                            _g97530_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97531_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97531_)))
                                              (let ((_e96233_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97530_
                                                        0)))
                                                    (_vars96234_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97530_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e96233_))
                                                        _vars96234_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e96147_))
                                              (values (let ((__tmp97529
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e96147_))))
                (declare (not safe))
                (cons 'datum __tmp97529))
              _vars96148_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx96064_
                                                 _e96147_))))))))))))
          (let* ((_e9607496087_ _stx96064_)
                 (_E9607696091_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9607496087_))))
                 (_E9607596138_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9607496087_))
                        (let ((_e9607796095_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9607496087_))))
                          (let ((_hd9607896098_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9607796095_)))
                                (_tl9607996100_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9607796095_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9607996100_))
                                (let ((_e9608096103_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9607996100_))))
                                  (let ((_hd9608196106_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9608096103_)))
                                        (_tl9608296108_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9608096103_))))
                                    (let ((_expr96111_ _hd9608196106_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9608296108_))
                                          (let ((_e9608396113_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9608296108_))))
                                            (let ((_hd9608496116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9608396113_)))
                                                  (_tl9608596118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9608396113_))))
                                              (let* ((_ids96121_
                                                      _hd9608496116_)
                                                     (_clauses96123_
                                                      _tl9608596118_))
                                                (if '#t
                                                    (if (let ((__tmp97562
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids96121_))))
                  (declare (not safe))
                  (not __tmp97562))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx96064_
                   _ids96121_))
                (if (let ((__tmp97561
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses96123_))))
                      (declare (not safe))
                      (not __tmp97561))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx96064_))
                    (let* ((_ids96125_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids96121_)))
                           (_clauses96127_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses96123_)))
                           (_clause-ids96129_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses96127_)))
                           (_E96131_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target96133_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first96135_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses96127_))
                                _E96131_
                                (car _clause-ids96129_))))
                      (let ((__tmp97546
                             (let ((__tmp97547
                                    (let ((__tmp97549
                                           (let ((__tmp97554
                                                  (let ((__tmp97555
                                                         (let ((__tmp97560
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E96131_ '())))
                       (__tmp97556
                        (let ((__tmp97557
                               (let ((__tmp97559
                                      (let ()
                                        (declare (not safe))
                                        (cons _target96133_ '())))
                                     (__tmp97558
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target96133_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97559
                                  __tmp97558))))
                          (declare (not safe))
                          (cons __tmp97557 '()))))
                   (declare (not safe))
                   (cons __tmp97560 __tmp97556))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97555 '())))
                                                 (__tmp97550
                                                  (let ((__tmp97553
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings96069_
                                                            _target96133_
                                                            _ids96125_
                                                            _clauses96127_
                                                            _clause-ids96129_
                                                            _E96131_)))
                                                        (__tmp97551
                                                         (let ((__tmp97552
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr96111_ '()))))
                   (declare (not safe))
                   (cons _first96135_ __tmp97552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body96070_
                                                     __tmp97553
                                                     __tmp97551))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97554
                                              __tmp97550)))
                                          (__tmp97548
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx96064_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97549
                                       __tmp97548))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97547)))
                            (__tmp97545
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx96064_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97546 __tmp97545)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9607696091_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9607696091_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9607696091_)))))
                        (let () (declare (not safe)) (_E9607696091_))))))
            (let () (declare (not safe)) (_E9607596138_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96774_)
        (let* ((_identifier=?96776_ 'free-identifier=?)
               (_unwrap-e96778_ 'syntax-e)
               (_wrap-e96780_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96774_
           _identifier=?96776_
           _unwrap-e96778_
           _wrap-e96780_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96782_ _identifier=?96783_)
        (let* ((_unwrap-e96785_ 'syntax-e) (_wrap-e96787_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96782_
           _identifier=?96783_
           _unwrap-e96785_
           _wrap-e96787_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96789_ _identifier=?96790_ _unwrap-e96791_)
        (let ((_wrap-e96793_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96789_
           _identifier=?96790_
           _unwrap-e96791_
           _wrap-e96793_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97564_
        (let ((_g97563_ (let () (declare (not safe)) (##length _g97564_))))
          (cond ((let () (declare (not safe)) (##fx= _g97563_ 1))
                 (apply (lambda (_stx96774_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96774_)))
                        _g97564_))
                ((let () (declare (not safe)) (##fx= _g97563_ 2))
                 (apply (lambda (_stx96782_ _identifier=?96783_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96782_
                             _identifier=?96783_)))
                        _g97564_))
                ((let () (declare (not safe)) (##fx= _g97563_ 3))
                 (apply (lambda (_stx96789_
                                 _identifier=?96790_
                                 _unwrap-e96791_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96789_
                             _identifier=?96790_
                             _unwrap-e96791_)))
                        _g97564_))
                ((let () (declare (not safe)) (##fx= _g97563_ 4))
                 (apply (lambda (_stx96795_
                                 _identifier=?96796_
                                 _unwrap-e96797_
                                 _wrap-e96798_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96795_
                             _identifier=?96796_
                             _unwrap-e96797_
                             _wrap-e96798_)))
                        _g97564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97564_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx96061_)
        (if (let () (declare (not safe)) (gx#identifier? _stx96061_))
            (let ((__tmp97565
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx96061_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97565 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96019_ . _rest96020_)
        (let ((_len96022_ (length _hd96019_)))
          (let _lp96024_ ((_rest96026_ _rest96020_))
            (let* ((_rest9602796035_ _rest96026_)
                   (_else9602996043_ (lambda () '#!void))
                   (_K9603196049_
                    (lambda (_rest96046_ _hd96047_)
                      (if (fx= _len96022_ (length _hd96047_))
                          (let () (declare (not safe)) (_lp96024_ _rest96046_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96047_))))))
              (if (let () (declare (not safe)) (##pair? _rest9602796035_))
                  (let ((_hd9603296052_
                         (let ()
                           (declare (not safe))
                           (##car _rest9602796035_)))
                        (_tl9603396054_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9602796035_))))
                    (let* ((_hd96057_ _hd9603296052_)
                           (_rest96059_ _tl9603396054_))
                      (declare (not safe))
                      (_K9603196049_ _rest96059_ _hd96057_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95977_ _n95978_)
        (let _lp95980_ ((_rest95982_ _stx95977_) (_r95983_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95982_))
              (let* ((_g9598495991_
                      (let () (declare (not safe)) (gx#syntax-e _rest95982_)))
                     (_E9598695995_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9598495991_))))
                     (_K9598796001_
                      (lambda (_rest95998_ _hd95999_)
                        (let ((__tmp97570
                               (let ()
                                 (declare (not safe))
                                 (cons _hd95999_ _r95983_))))
                          (declare (not safe))
                          (_lp95980_ _rest95998_ __tmp97570)))))
                (if (let () (declare (not safe)) (##pair? _g9598495991_))
                    (let ((_hd9598896004_
                           (let () (declare (not safe)) (##car _g9598495991_)))
                          (_tl9598996006_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9598495991_))))
                      (let* ((_hd96009_ _hd9598896004_)
                             (_rest96011_ _tl9598996006_))
                        (declare (not safe))
                        (_K9598796001_ _rest96011_ _hd96009_)))
                    (let () (declare (not safe)) (_E9598695995_))))
              (let _lp96013_ ((_n96015_ _n95978_)
                              (_l96016_ _r95983_)
                              (_r96017_ _rest95982_))
                (if (let () (declare (not safe)) (null? _l96016_))
                    (values _l96016_ _r96017_)
                    (if (fxpositive? _n96015_)
                        (let ((__tmp97569
                               (let () (declare (not safe)) (fx- _n96015_ '1)))
                              (__tmp97568 (cdr _l96016_))
                              (__tmp97566
                               (let ((__tmp97567 (car _l96016_)))
                                 (declare (not safe))
                                 (cons __tmp97567 _r96017_))))
                          (declare (not safe))
                          (_lp96013_ __tmp97569 __tmp97568 __tmp97566))
                        (values (reverse _l96016_) _r96017_))))))))))
