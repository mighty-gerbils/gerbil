(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709127356)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp97329 (list gx#expander::t))
            (__tmp97327
             (let ((__tmp97328
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97328 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp97329
         '(id depth)
         __tmp97327
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args97324_
        (apply make-instance gx#syntax-pattern::t _$args97324_)))
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
      (lambda (_self97321_ _stx97322_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx97322_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96803_)
        (letrec ((_generate96805_
                  (lambda (_e97032_)
                    (letrec ((_BUG97034_
                              (lambda (_q97196_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96803_
                                         _e97032_
                                         _q97196_))))
                             (_local-pattern-e97035_
                              (lambda (_pat97194_)
                                (let ((__tmp97330
                                       (##structure-ref
                                        _pat97194_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp97330))))
                             (_getvar97036_
                              (lambda (_q97191_ _vars97192_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q97191_
                                   _vars97192_
                                   _BUG97034_))))
                             (_getarg97037_
                              (lambda (_arg97157_ _vars97158_)
                                (let* ((_arg9715997166_ _arg97157_)
                                       (_E9716197170_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9715997166_))))
                                       (_K9716297179_
                                        (lambda (_e97173_ _tag97174_)
                                          (let ((_$e97176_ _tag97174_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e97176_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97036_
                                                   _e97173_
                                                   _vars97158_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e97176_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97035_
                                                       _e97173_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97034_
                                                       _arg97157_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9715997166_))
                                      (let ((_hd9716397182_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9715997166_)))
                                            (_tl9716497184_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9715997166_))))
                                        (let* ((_tag97187_ _hd9716397182_)
                                               (_e97189_ _tl9716497184_))
                                          (declare (not safe))
                                          (_K9716297179_ _e97189_ _tag97187_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9716197170_)))))))
                      (let _recur97039_ ((_e97041_ _e97032_) (_vars97042_ '()))
                        (let* ((_e9704397050_ _e97041_)
                               (_E9704597054_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9704397050_))))
                               (_K9704697145_
                                (lambda (_body97057_ _tag97058_)
                                  (let ((_$e97060_ _tag97058_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97060_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97057_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e97060_))
                                            (let ((_id97063_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97057_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id97063_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks97065_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id97063_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks97065_))
                                                        (let ((__tmp97358
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97057_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp97358))
                (let ((__tmp97357
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97057_)))
                      (__tmp97356
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97057_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp97357
                   __tmp97356
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id97063_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97057_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97034_
                                                         _e97041_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e97060_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97035_
                                                   _body97057_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e97060_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97036_
                                                       _body97057_
                                                       _vars97042_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e97060_))
                                                        (let ((__tmp97354
                                                               (let ((__tmp97355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97057_)))
                         (declare (not safe))
                         (_recur97039_ __tmp97355 _vars97042_)))
                      (__tmp97352
                       (let ((__tmp97353 (cdr _body97057_)))
                         (declare (not safe))
                         (_recur97039_ __tmp97353 _vars97042_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp97354 __tmp97352))
                (if (let () (declare (not safe)) (eq? 'vector _$e97060_))
                    (let ((__tmp97351
                           (let ()
                             (declare (not safe))
                             (_recur97039_ _body97057_ _vars97042_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp97351))
                    (if (let () (declare (not safe)) (eq? 'box _$e97060_))
                        (let ((__tmp97350
                               (let ()
                                 (declare (not safe))
                                 (_recur97039_ _body97057_ _vars97042_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp97350))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e97060_))
                            (let* ((_body9706697077_ _body97057_)
                                   (_E9706897081_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9706697077_))))
                                   (_K9706997119_
                                    (lambda (_args97084_
                                             _iv97085_
                                             _hd97086_
                                             _depth97087_)
                                      (let* ((_targets97093_
                                              (map (lambda (_g9708897090_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97037_
                                                        _g9708897090_
                                                        _vars97042_)))
                                                   _args97084_))
                                             (_fold-in97095_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args97084_)))
                                             (_fold-out97097_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args97099_
                                              (let ((__tmp97331
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out97097_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp97331
                                                        _fold-in97095_)))
                                             (_lambda-body97116_
                                              (if (fx> _depth97087_ '1)
                                                  (let ((_r-args97107_
                                                         (map (lambda (_arg97101_)
                                                                (let ((__tmp97336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg97101_)))
                          (declare (not safe))
                          (cons 'ref __tmp97336)))
                      _args97084_))
                (_r-vars97108_
                 (let ((__tmp97337
                        (lambda (_arg97103_ _var97104_ _r97105_)
                          (let ((__tmp97338
                                 (let ((__tmp97339 (cdr _arg97103_)))
                                   (declare (not safe))
                                   (cons __tmp97339 _var97104_))))
                            (declare (not safe))
                            (cons __tmp97338 _r97105_)))))
                   (declare (not safe))
                   (foldr2 __tmp97337
                           _vars97042_
                           _args97084_
                           _fold-in97095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp97340
                                                           (let ((__tmp97341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97345
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth97087_ '1)))
                                (__tmp97342
                                 (let ((__tmp97343
                                        (let ((__tmp97344
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out97097_))))
                                          (declare (not safe))
                                          (cons __tmp97344 _r-args97107_))))
                                   (declare (not safe))
                                   (cons _hd97086_ __tmp97343))))
                            (declare (not safe))
                            (cons __tmp97345 __tmp97342))))
                     (declare (not safe))
                     (cons 'splice __tmp97341))))
              (declare (not safe))
              (_recur97039_ __tmp97340 _r-vars97108_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars97114_
                                                          (let ((__tmp97332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg97110_ _var97111_ _r97112_)
                           (let ((__tmp97333
                                  (let ((__tmp97334 (cdr _arg97110_)))
                                    (declare (not safe))
                                    (cons __tmp97334 _var97111_))))
                             (declare (not safe))
                             (cons __tmp97333 _r97112_)))))
                    (declare (not safe))
                    (foldr2 __tmp97332
                            _vars97042_
                            _args97084_
                            _fold-in97095_)))
                 (__tmp97335
                  (let ()
                    (declare (not safe))
                    (_recur97039_ _hd97086_ _hd-vars97114_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp97335
                                                     _fold-out97097_)))))
                                        (let ((__tmp97349
                                               (if (fx> (length _targets97093_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets97093_))
                                                   '#!void))
                                              (__tmp97346
                                               (let ((__tmp97348
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args97099_
                                                         _lambda-body97116_)))
                                                     (__tmp97347
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97039_
                                                         _iv97085_
                                                         _vars97042_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp97348
                                                  __tmp97347
                                                  _targets97093_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp97349
                                           __tmp97346))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9706697077_))
                                  (let ((_hd9707097122_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9706697077_)))
                                        (_tl9707197124_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9706697077_))))
                                    (let ((_depth97127_ _hd9707097122_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9707197124_))
                                          (let ((_hd9707297129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9707197124_)))
                                                (_tl9707397131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9707197124_))))
                                            (let ((_hd97134_ _hd9707297129_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9707397131_))
                                                  (let ((_hd9707497136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9707397131_)))
                                                        (_tl9707597138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9707397131_))))
                                                    (let* ((_iv97141_
                                                            _hd9707497136_)
                                                           (_args97143_
                                                            _tl9707597138_))
                                                      (declare (not safe))
                                                      (_K9706997119_
                                                       _args97143_
                                                       _iv97141_
                                                       _hd97134_
                                                       _depth97127_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9706897081_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9706897081_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9706897081_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e97060_))
                                _body97057_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97034_ _e97041_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9704397050_))
                              (let ((_hd9704797148_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9704397050_)))
                                    (_tl9704897150_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9704397050_))))
                                (let* ((_tag97153_ _hd9704797148_)
                                       (_body97155_ _tl9704897150_))
                                  (declare (not safe))
                                  (_K9704697145_ _body97155_ _tag97153_)))
                              (let ()
                                (declare (not safe))
                                (_E9704597054_))))))))
                 (_parse96806_
                  (lambda (_e96847_)
                    (letrec ((_make-cons96849_
                              (lambda (_hd97024_ _tl97025_)
                                (let ((_g97359_ _hd97024_)
                                      (_g97361_ _tl97025_))
                                  (begin
                                    (let ((_g97360_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97359_)
                                                 (##vector-length _g97359_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97360_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97360_)))
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
                                    (let ((_hd-e97027_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97359_ 0)))
                                          (_hd-vars97028_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97359_ 1))))
                                      (let ((_tl-e97029_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97361_ 0)))
                                            (_tl-vars97030_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97361_ 1))))
                                        (values (let ((__tmp97363
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97027_
                                                               _tl-e97029_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp97363))
                                                (append _hd-vars97028_
                                                        _tl-vars97030_))))))))
                             (_make-splice96850_
                              (lambda (_where96963_
                                       _depth96964_
                                       _hd96965_
                                       _tl96966_)
                                (let ((_g97364_ _hd96965_)
                                      (_g97366_ _tl96966_))
                                  (begin
                                    (let ((_g97365_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97364_)
                                                 (##vector-length _g97364_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97365_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97365_)))
                                    (let ((_g97367_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97366_)
                                                 (##vector-length _g97366_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97367_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97367_)))
                                    (let ((_hd-e96968_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97364_ 0)))
                                          (_hd-vars96969_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97364_ 1))))
                                      (let ((_tl-e96970_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97366_ 0)))
                                            (_tl-vars96971_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97366_ 1))))
                                        (let _lp96973_ ((_rest96975_
                                                         _hd-vars96969_)
                                                        (_targets96976_ '())
                                                        (_vars96977_
                                                         _tl-vars96971_))
                                          (let* ((_rest9697896988_ _rest96975_)
                                                 (_else9698096996_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96976_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96803_
                                                           _where96963_))
                                                        (values (let ((__tmp97368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp97369
                                      (let ((__tmp97370
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96970_
                                                     _targets96976_))))
                                        (declare (not safe))
                                        (cons _hd-e96968_ __tmp97370))))
                                 (declare (not safe))
                                 (cons _depth96964_ __tmp97369))))
                          (declare (not safe))
                          (cons 'splice __tmp97368))
                        _vars96977_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9698297005_
                                                  (lambda (_rest96999_
                                                           _hd-pat97000_
                                                           _hd-depth*97001_)
                                                    (let ((_hd-depth97003_
                                                           (fx- _hd-depth*97001_
                                                                _depth96964_)))
                                                      (if (fxpositive?
                                                           _hd-depth97003_)
                                                          (let ((__tmp97375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97376
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat97000_))))
                           (declare (not safe))
                           (cons __tmp97376 _targets96976_)))
                        (__tmp97373
                         (let ((__tmp97374
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97003_ _hd-pat97000_))))
                           (declare (not safe))
                           (cons __tmp97374 _vars96977_))))
                    (declare (not safe))
                    (_lp96973_ _rest96999_ __tmp97375 __tmp97373))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97003_))
                      (let ((__tmp97371
                             (let ((__tmp97372
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat97000_))))
                               (declare (not safe))
                               (cons __tmp97372 _targets96976_))))
                        (declare (not safe))
                        (_lp96973_ _rest96999_ __tmp97371 _vars96977_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96803_
                         _where96963_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9697896988_))
                                                (let ((_hd9698397008_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9697896988_)))
                                                      (_tl9698497010_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9697896988_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9698397008_))
                                                      (let ((_hd9698597013_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9698397008_)))
                    (_tl9698697015_
                     (let () (declare (not safe)) (##cdr _hd9698397008_))))
                (let* ((_hd-depth*97018_ _hd9698597013_)
                       (_hd-pat97020_ _tl9698697015_)
                       (_rest97022_ _tl9698497010_))
                  (declare (not safe))
                  (_K9698297005_ _rest97022_ _hd-pat97020_ _hd-depth*97018_)))
              (let () (declare (not safe)) (_else9698096996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9698096996_)))))))))))
                             (_recur96851_
                              (lambda (_e96856_ _is-e?96857_)
                                (if (_is-e?96857_ _e96856_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96803_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96856_))
                                        (let* ((_pat96859_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96856_)))
                                               (_depth96861_
                                                (##structure-ref
                                                 _pat96859_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96861_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96859_))
                                                      (let ((__tmp97392
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96861_ _pat96859_))))
                (declare (not safe))
                (cons __tmp97392 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96859_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96856_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96856_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96856_))
                                                (let* ((_e9686396870_ _e96856_)
                                                       (_E9686596874_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9686396870_))))
                                                       (_E9686496953_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9686396870_))
                      (let ((_e9686696878_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9686396870_))))
                        (let ((_hd9686796881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9686696878_)))
                              (_tl9686896883_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9686696878_))))
                          (let* ((_hd96886_ _hd9686796881_)
                                 (_rest96888_ _tl9686896883_))
                            (if '#t
                                (if (_is-e?96857_ _hd96886_)
                                    (let* ((_e9688996896_ _rest96888_)
                                           (_E9689196900_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96803_
                                                 _e96856_))))
                                           (_E9689096914_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9688996896_))
                                                  (let ((_e9689296904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9688996896_))))
                                                    (let ((_hd9689396907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9689296904_)))
                                                          (_tl9689496909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9689296904_))))
                                                      (let ((_rest96912_
                                                             _hd9689396907_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9689496909_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96851_ _rest96912_ false))
                        (let () (declare (not safe)) (_E9689196900_)))
                    (let () (declare (not safe)) (_E9689196900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9689196900_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9689096914_)))
                                    (let _lp96918_ ((_rest96920_ _rest96888_)
                                                    (_depth96921_ '0))
                                      (let* ((_e9692296929_ _rest96920_)
                                             (_E9692496933_
                                              (lambda ()
                                                (if (fxpositive? _depth96921_)
                                                    (let ((__tmp97386
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96851_
                                                              _hd96886_
                                                              _is-e?96857_)))
                                                          (__tmp97385
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96851_
                                                              _rest96920_
                                                              _is-e?96857_))))
                                                      (declare (not safe))
                                                      (_make-splice96850_
                                                       _e96856_
                                                       _depth96921_
                                                       __tmp97386
                                                       __tmp97385))
                                                    (let ((__tmp97384
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96851_
                                                              _hd96886_
                                                              _is-e?96857_)))
                                                          (__tmp97383
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96851_
                                                              _rest96920_
                                                              _is-e?96857_))))
                                                      (declare (not safe))
                                                      (_make-cons96849_
                                                       __tmp97384
                                                       __tmp97383)))))
                                             (_E9692396949_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9692296929_))
                                                    (let ((_e9692596937_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9692296929_))))
                                                      (let ((_hd9692696940_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9692596937_)))
                    (_tl9692796942_
                     (let () (declare (not safe)) (##cdr _e9692596937_))))
                (let* ((_rest-hd96945_ _hd9692696940_)
                       (_rest-tl96947_ _tl9692796942_))
                  (if '#t
                      (if (_is-e?96857_ _rest-hd96945_)
                          (let ((__tmp97391
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96921_ '1))))
                            (declare (not safe))
                            (_lp96918_ _rest-tl96947_ __tmp97391))
                          (if (fxpositive? _depth96921_)
                              (let ((__tmp97390
                                     (let ()
                                       (declare (not safe))
                                       (_recur96851_ _hd96886_ _is-e?96857_)))
                                    (__tmp97389
                                     (let ()
                                       (declare (not safe))
                                       (_recur96851_
                                        _rest96920_
                                        _is-e?96857_))))
                                (declare (not safe))
                                (_make-splice96850_
                                 _e96856_
                                 _depth96921_
                                 __tmp97390
                                 __tmp97389))
                              (let ((__tmp97388
                                     (let ()
                                       (declare (not safe))
                                       (_recur96851_ _hd96886_ _is-e?96857_)))
                                    (__tmp97387
                                     (let ()
                                       (declare (not safe))
                                       (_recur96851_
                                        _rest96920_
                                        _is-e?96857_))))
                                (declare (not safe))
                                (_make-cons96849_ __tmp97388 __tmp97387))))
                      (let () (declare (not safe)) (_E9692496933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9692496933_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9692396949_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9686596874_))))))
                      (let () (declare (not safe)) (_E9686596874_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9686496953_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96856_))
                                                    (let ((_g97380_
                                                           (let ((__tmp97382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96856_)))))
                     (declare (not safe))
                     (_recur96851_ __tmp97382 _is-e?96857_))))
              (begin
                (let ((_g97381_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97380_)
                             (##vector-length _g97380_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97381_ 2)))
                      (error "Context expects 2 values" _g97381_)))
                (let ((_e96957_
                       (let () (declare (not safe)) (##vector-ref _g97380_ 0)))
                      (_vars96958_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97380_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96957_))
                          _vars96958_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96856_))
                                                        (let ((_g97377_
                                                               (let ((__tmp97379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96856_)))))
                         (declare (not safe))
                         (_recur96851_ __tmp97379 _is-e?96857_))))
                  (begin
                    (let ((_g97378_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97377_)
                                 (##vector-length _g97377_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97378_ 2)))
                          (error "Context expects 2 values" _g97378_)))
                    (let ((_e96960_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97377_ 0)))
                          (_vars96961_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97377_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96960_))
                              _vars96961_))))
                (values (let () (declare (not safe)) (cons 'datum _e96856_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g97393_
                             (let ()
                               (declare (not safe))
                               (_recur96851_ _e96847_ gx#ellipsis?))))
                        (begin
                          (let ((_g97394_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97393_)
                                       (##vector-length _g97393_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97394_ 2)))
                                (error "Context expects 2 values" _g97394_)))
                          (let ((_tree96853_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97393_ 0)))
                                (_vars96854_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97393_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96854_))
                                _tree96853_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96803_
                                   _vars96854_))))))))))
          (let* ((_e9680796817_ _stx96803_)
                 (_E9680996821_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96803_))))
                 (_E9680896843_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9680796817_))
                        (let ((_e9681096825_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9680796817_))))
                          (let ((_hd9681196828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9681096825_)))
                                (_tl9681296830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9681096825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9681296830_))
                                (let ((_e9681396833_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9681296830_))))
                                  (let ((_hd9681496836_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9681396833_)))
                                        (_tl9681596838_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9681396833_))))
                                    (let ((_form96841_ _hd9681496836_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9681596838_))
                                          (if '#t
                                              (let ((__tmp97396
                                                     (let ((__tmp97397
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96806_
                                                               _form96841_))))
                                                       (declare (not safe))
                                                       (_generate96805_
                                                        __tmp97397)))
                                                    (__tmp97395
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96803_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp97396
                                                 __tmp97395))
                                              (let ()
                                                (declare (not safe))
                                                (_E9680996821_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9680996821_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9680996821_)))))
                        (let () (declare (not safe)) (_E9680996821_))))))
            (let () (declare (not safe)) (_E9680896843_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx96067_ _identifier=?96068_ _unwrap-e96069_ _wrap-e96070_)
        (letrec ((_generate-bindings96072_
                  (lambda (_target96667_
                           _ids96668_
                           _clauses96669_
                           _clause-ids96670_
                           _E96671_)
                    (letrec ((_generate196673_
                              (lambda (_clause96770_ _clause-id96771_ _E96772_)
                                (let ((__tmp97402
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96771_ '())))
                                      (__tmp97398
                                       (let ((__tmp97399
                                              (let ((__tmp97401
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96667_
                                                             '())))
                                                    (__tmp97400
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause96074_
                                                        _target96667_
                                                        _ids96668_
                                                        _clause96770_
                                                        _E96772_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp97401
                                                 __tmp97400))))
                                         (declare (not safe))
                                         (cons __tmp97399 '()))))
                                  (declare (not safe))
                                  (cons __tmp97402 __tmp97398)))))
                      (let _lp96675_ ((_rest96677_ _clauses96669_)
                                      (_rest-ids96678_ _clause-ids96670_)
                                      (_bindings96679_ '()))
                        (let* ((_rest9668096688_ _rest96677_)
                               (_else9668296696_ (lambda () _bindings96679_))
                               (_K9668496758_
                                (lambda (_rest96699_ _clause96700_)
                                  (let* ((_rest-ids9670196708_ _rest-ids96678_)
                                         (_E9670396712_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9670196708_))))
                                         (_K9670496746_
                                          (lambda (_rest-ids96715_
                                                   _clause-id96716_)
                                            (let* ((_rest-ids9671796725_
                                                    _rest-ids96715_)
                                                   (_else9671996733_
                                                    (lambda ()
                                                      (let ((__tmp97403
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196673_
                        _clause96700_
                        _clause-id96716_
                        _E96671_))))
                (declare (not safe))
                (cons __tmp97403 _bindings96679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9672196738_
                                                    (lambda (_next-clause-id96736_)
                                                      (let ((__tmp97404
                                                             (let ((__tmp97405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196673_
                               _clause96700_
                               _clause-id96716_
                               _next-clause-id96736_))))
                       (declare (not safe))
                       (cons __tmp97405 _bindings96679_))))
                (declare (not safe))
                (_lp96675_ _rest96699_ _rest-ids96715_ __tmp97404)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9671796725_))
                                                  (let* ((_hd9672296741_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9671796725_)))
                                                         (_next-clause-id96744_
                                                          _hd9672296741_))
                                                    (declare (not safe))
                                                    (_K9672196738_
                                                     _next-clause-id96744_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9671996733_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9670196708_))
                                        (let ((_hd9670596749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9670196708_)))
                                              (_tl9670696751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9670196708_))))
                                          (let* ((_clause-id96754_
                                                  _hd9670596749_)
                                                 (_rest-ids96756_
                                                  _tl9670696751_))
                                            (declare (not safe))
                                            (_K9670496746_
                                             _rest-ids96756_
                                             _clause-id96754_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9670396712_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9668096688_))
                              (let ((_hd9668596761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9668096688_)))
                                    (_tl9668696763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9668096688_))))
                                (let* ((_clause96766_ _hd9668596761_)
                                       (_rest96768_ _tl9668696763_))
                                  (declare (not safe))
                                  (_K9668496758_ _rest96768_ _clause96766_)))
                              (let ()
                                (declare (not safe))
                                (_else9668296696_))))))))
                 (_generate-body96073_
                  (lambda (_bindings96627_ _body96628_)
                    (let _recur96630_ ((_rest96632_ _bindings96627_))
                      (let* ((_rest9663396641_ _rest96632_)
                             (_else9663596649_ (lambda () _body96628_))
                             (_K9663796655_
                              (lambda (_rest96652_ _hd96653_)
                                (let ((__tmp97407
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96653_ '())))
                                      (__tmp97406
                                       (let ()
                                         (declare (not safe))
                                         (_recur96630_ _rest96652_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp97407
                                   __tmp97406)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9663396641_))
                            (let ((_hd9663896658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9663396641_)))
                                  (_tl9663996660_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9663396641_))))
                              (let* ((_hd96663_ _hd9663896658_)
                                     (_rest96665_ _tl9663996660_))
                                (declare (not safe))
                                (_K9663796655_ _rest96665_ _hd96663_)))
                            (let ()
                              (declare (not safe))
                              (_else9663596649_)))))))
                 (_generate-clause96074_
                  (lambda (_target96490_ _ids96491_ _clause96492_ _E96493_)
                    (letrec ((_generate196495_
                              (lambda (_hd96582_ _fender96583_ _body96584_)
                                (let ((_g97408_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause96076_
                                          _hd96582_
                                          _ids96491_))))
                                  (begin
                                    (let ((_g97409_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97408_)
                                                 (##vector-length _g97408_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97409_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97409_)))
                                    (let ((_e96586_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97408_ 0)))
                                          (_mvars96587_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97408_ 1))))
                                      (let* ((_pvars96589_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96587_))))
                                             (_E96591_
                                              (let ((__tmp97410
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96490_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96493_ __tmp97410)))
                                             (_K96624_
                                              (let ((__tmp97411
                                                     (let ((__tmp97413
                                                            (map (lambda (_mvar96593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96594_)
                           (let* ((_mvar9659596602_ _mvar96593_)
                                  (_E9659796606_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9659596602_))))
                                  (_K9659896612_
                                   (lambda (_depth96609_ _id96610_)
                                     (let ((__tmp97414
                                            (let ((__tmp97415
                                                   (let ((__tmp97417
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96610_)))
                                                         (__tmp97416
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96594_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97417
                                                      __tmp97416
                                                      _depth96609_))))
                                              (declare (not safe))
                                              (cons __tmp97415 '()))))
                                       (declare (not safe))
                                       (cons _id96610_ __tmp97414)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9659596602_))
                                 (let ((_hd9659996615_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9659596602_)))
                                       (_tl9660096617_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9659596602_))))
                                   (let* ((_id96620_ _hd9659996615_)
                                          (_depth96622_ _tl9660096617_))
                                     (declare (not safe))
                                     (_K9659896612_ _depth96622_ _id96620_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9659796606_)))))
                         _mvars96587_
                         _pvars96589_))
                   (__tmp97412
                    (if (let () (declare (not safe)) (eq? _fender96583_ '#t))
                        _body96584_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96583_
                           _body96584_
                           _E96591_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp97413 __tmp97412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96589_
                                                 __tmp97411))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match96075_
                                           _hd96582_
                                           _target96490_
                                           _e96586_
                                           _mvars96587_
                                           _K96624_
                                           _E96591_)))))))))
                      (let* ((_e9649696516_ _clause96492_)
                             (_E9650596520_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9649696516_))))
                             (_E9649896554_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9649696516_))
                                    (let ((_e9650696524_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9649696516_))))
                                      (let ((_hd9650796527_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9650696524_)))
                                            (_tl9650896529_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9650696524_))))
                                        (let ((_hd96532_ _hd9650796527_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9650896529_))
                                              (let ((_e9650996534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9650896529_))))
                                                (let ((_hd9651096537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9650996534_)))
                                                      (_tl9651196539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9650996534_))))
                                                  (let ((_fender96542_
                                                         _hd9651096537_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9651196539_))
                                                        (let ((_e9651296544_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9651196539_))))
                  (let ((_hd9651396547_
                         (let () (declare (not safe)) (##car _e9651296544_)))
                        (_tl9651496549_
                         (let () (declare (not safe)) (##cdr _e9651296544_))))
                    (let ((_body96552_ _hd9651396547_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9651496549_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196495_
                                 _hd96532_
                                 _fender96542_
                                 _body96552_))
                              (let () (declare (not safe)) (_E9650596520_)))
                          (let () (declare (not safe)) (_E9650596520_))))))
                (let () (declare (not safe)) (_E9650596520_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9650596520_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9650596520_)))))
                             (_E9649796578_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9649696516_))
                                    (let ((_e9649996558_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9649696516_))))
                                      (let ((_hd9650096561_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9649996558_)))
                                            (_tl9650196563_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9649996558_))))
                                        (let ((_hd96566_ _hd9650096561_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9650196563_))
                                              (let ((_e9650296568_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9650196563_))))
                                                (let ((_hd9650396571_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9650296568_)))
                                                      (_tl9650496573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9650296568_))))
                                                  (let ((_body96576_
                                                         _hd9650396571_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9650496573_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196495_
                                                               _hd96566_
                                                               '#t
                                                               _body96576_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9649896554_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9649896554_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9649896554_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9649896554_))))))
                        (let () (declare (not safe)) (_E9649796578_))))))
                 (_generate-match96075_
                  (lambda (_where96239_
                           _target96240_
                           _hd96241_
                           _mvars96242_
                           _K96243_
                           _E96244_)
                    (letrec ((_BUG96246_
                              (lambda (_q96488_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx96067_
                                         _hd96241_
                                         _q96488_))))
                             (_recur96247_
                              (lambda (_e96338_
                                       _vars96339_
                                       _target96340_
                                       _E96341_
                                       _k96342_)
                                (let* ((_e9634396350_ _e96338_)
                                       (_E9634596354_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9634396350_))))
                                       (_K9634696476_
                                        (lambda (_body96357_ _tag96358_)
                                          (let ((_$e96360_ _tag96358_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e96360_))
                                                (_k96342_ _vars96339_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e96360_))
                                                    (let ((__tmp97524
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target96340_)))
                                                          (__tmp97520
                                                           (let ((__tmp97522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97523
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e96070_ _body96357_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?96068_
                             __tmp97523
                             _target96340_)))
                         (__tmp97521 (_k96342_ _vars96339_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97522 __tmp97521 _E96341_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97524 __tmp97520 _E96341_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e96360_))
                                                        (_k96342_
                                                         (let ((__tmp97519
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body96357_ _target96340_))))
                   (declare (not safe))
                   (cons __tmp97519 _vars96339_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e96360_))
                    (let ((_$e96363_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd96364_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl96365_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97518
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target96340_)))
                            (__tmp97499
                             (let ((__tmp97513
                                    (let ((__tmp97514
                                           (let ((__tmp97517
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e96363_ '())))
                                                 (__tmp97515
                                                  (let ((__tmp97516
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e96069_
                                                            _target96340_))))
                                                    (declare (not safe))
                                                    (cons __tmp97516 '()))))
                                             (declare (not safe))
                                             (cons __tmp97517 __tmp97515))))
                                      (declare (not safe))
                                      (cons __tmp97514 '())))
                                   (__tmp97500
                                    (let ((__tmp97503
                                           (let ((__tmp97509
                                                  (let ((__tmp97512
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd96364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97510
                 (let ((__tmp97511
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e96363_))))
                   (declare (not safe))
                   (cons __tmp97511 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97512
                                                          __tmp97510)))
                                                 (__tmp97504
                                                  (let ((__tmp97505
                                                         (let ((__tmp97508
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl96365_ '())))
                       (__tmp97506
                        (let ((__tmp97507
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e96363_))))
                          (declare (not safe))
                          (cons __tmp97507 '()))))
                   (declare (not safe))
                   (cons __tmp97508 __tmp97506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97505 '()))))
                                             (declare (not safe))
                                             (cons __tmp97509 __tmp97504)))
                                          (__tmp97501
                                           (let* ((_body9636696373_
                                                   _body96357_)
                                                  (_E9636896377_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9636696373_))))
                                                  (_K9636996385_
                                                   (lambda (_tl96380_
                                                            _hd96381_)
                                                     (let ((__tmp97502
                                                            (lambda (_vars96383_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur96247_
                         _tl96380_
                         _vars96383_
                         _$tl96365_
                         _E96341_
                         _k96342_)))))
               (declare (not safe))
               (_recur96247_
                _hd96381_
                _vars96339_
                _$hd96364_
                _E96341_
                __tmp97502)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9636696373_))
                                                 (let ((_hd9637096388_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9636696373_)))
                                                       (_tl9637196390_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9636696373_))))
                                                   (let* ((_hd96393_
                                                           _hd9637096388_)
                                                          (_tl96395_
                                                           _tl9637196390_))
                                                     (declare (not safe))
                                                     (_K9636996385_
                                                      _tl96395_
                                                      _hd96393_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9636896377_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97503
                                       __tmp97501))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97513
                                __tmp97500))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97518 __tmp97499 _E96341_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e96360_))
                        (let* ((_body9639696403_ _body96357_)
                               (_E9639896407_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9639696403_))))
                               (_K9639996458_
                                (lambda (_tl96410_ _hd96411_)
                                  (let* ((_rlen96413_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen96248_ _tl96410_)))
                                         (_$target96415_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96417_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96419_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96421_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96423_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96425_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96427_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96429_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars96249_ _hd96411_)))
                                         (_lvars96431_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96429_)))
                                         (_tlvars96433_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96429_)))
                                         (_linit96437_
                                          (map (lambda (_var96435_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96431_)))
                                    (letrec ((_make-loop96440_
                                              (lambda (_vars96444_)
                                                (let ((__tmp97450
                                                       (let ((__tmp97451
                                                              (let ((__tmp97487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96421_ '())))
                            (__tmp97452
                             (let ((__tmp97453
                                    (let ((__tmp97486
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96417_ _lvars96431_)))
                                          (__tmp97454
                                           (let ((__tmp97485
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96417_)))
                                                 (__tmp97463
                                                  (let ((__tmp97480
                                                         (let ((__tmp97481
                                                                (let ((__tmp97484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96423_ '())))
                              (__tmp97482
                               (let ((__tmp97483
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e96069_
                                         _$hd96417_))))
                                 (declare (not safe))
                                 (cons __tmp97483 '()))))
                          (declare (not safe))
                          (cons __tmp97484 __tmp97482))))
                   (declare (not safe))
                   (cons __tmp97481 '())))
                (__tmp97464
                 (let ((__tmp97470
                        (let ((__tmp97476
                               (let ((__tmp97479
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96425_ '())))
                                     (__tmp97477
                                      (let ((__tmp97478
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96423_))))
                                        (declare (not safe))
                                        (cons __tmp97478 '()))))
                                 (declare (not safe))
                                 (cons __tmp97479 __tmp97477)))
                              (__tmp97471
                               (let ((__tmp97472
                                      (let ((__tmp97475
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96427_ '())))
                                            (__tmp97473
                                             (let ((__tmp97474
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96423_))))
                                               (declare (not safe))
                                               (cons __tmp97474 '()))))
                                        (declare (not safe))
                                        (cons __tmp97475 __tmp97473))))
                                 (declare (not safe))
                                 (cons __tmp97472 '()))))
                          (declare (not safe))
                          (cons __tmp97476 __tmp97471)))
                       (__tmp97465
                        (let ((__tmp97466
                               (lambda (_hdvars96446_)
                                 (let ((__tmp97467
                                        (let ((__tmp97468
                                               (map (lambda (_svar96448_
                                                             _lvar96449_)
                                                      (let ((__tmp97469
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96448_ _hdvars96446_ _BUG96246_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97469 _lvar96449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96429_
                                                    _lvars96431_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96427_ __tmp97468))))
                                   (declare (not safe))
                                   (cons _$lp96421_ __tmp97467)))))
                          (declare (not safe))
                          (_recur96247_
                           _hd96411_
                           '()
                           _$lp-hd96425_
                           _E96341_
                           __tmp97466))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97470 __tmp97465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97480
                                                     __tmp97464)))
                                                 (__tmp97455
                                                  (let ((__tmp97459
                                                         (map (lambda (_lvar96451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96452_)
                        (let ((__tmp97462
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96452_ '())))
                              (__tmp97460
                               (let ((__tmp97461
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96451_))))
                                 (declare (not safe))
                                 (cons __tmp97461 '()))))
                          (declare (not safe))
                          (cons __tmp97462 __tmp97460)))
                      _lvars96431_
                      _tlvars96433_))
                (__tmp97456
                 (_k96342_
                  (let ((__tmp97457
                         (lambda (_svar96454_ _tlvar96455_ _r96456_)
                           (let ((__tmp97458
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96454_ _tlvar96455_))))
                             (declare (not safe))
                             (cons __tmp97458 _r96456_)))))
                    (declare (not safe))
                    (foldl2 __tmp97457
                            _vars96444_
                            _svars96429_
                            _tlvars96433_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97459
                                                     __tmp97456))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97485
                                              __tmp97463
                                              __tmp97455))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97486
                                       __tmp97454))))
                               (declare (not safe))
                               (cons __tmp97453 '()))))
                        (declare (not safe))
                        (cons __tmp97487 __tmp97452))))
                 (declare (not safe))
                 (cons __tmp97451 '())))
              (__tmp97448
               (let ((__tmp97449
                      (let ()
                        (declare (not safe))
                        (cons _$target96415_ _linit96437_))))
                 (declare (not safe))
                 (cons _$lp96421_ __tmp97449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97450
                                                   __tmp97448)))))
                                      (let ((_body96442_
                                             (let ((__tmp97489
                                                    (let ((__tmp97490
                                                           (let ((__tmp97493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97494
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96419_ '()))))
                            (declare (not safe))
                            (cons _$target96415_ __tmp97494)))
                         (__tmp97491
                          (let ((__tmp97492
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target96340_
                                    _rlen96413_))))
                            (declare (not safe))
                            (cons __tmp97492 '()))))
                     (declare (not safe))
                     (cons __tmp97493 __tmp97491))))
              (declare (not safe))
              (cons __tmp97490 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97488
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96247_
                                                       _tl96410_
                                                       _vars96339_
                                                       _$tl96419_
                                                       _E96341_
                                                       _make-loop96440_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97489
                                                __tmp97488))))
                                        (let ((__tmp97498
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target96340_)))
                                              (__tmp97495
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen96413_))
                                                   _body96442_
                                                   (let ((__tmp97496
                                                          (let ((__tmp97497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target96340_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97497 _rlen96413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97496
                                                      _body96442_
                                                      _E96341_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97498
                                           __tmp97495
                                           _E96341_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9639696403_))
                              (let ((_hd9640096461_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9639696403_)))
                                    (_tl9640196463_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9639696403_))))
                                (let* ((_hd96466_ _hd9640096461_)
                                       (_tl96468_ _tl9640196463_))
                                  (declare (not safe))
                                  (_K9639996458_ _tl96468_ _hd96466_)))
                              (let () (declare (not safe)) (_E9639896407_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e96360_))
                            (let ((__tmp97447
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target96340_)))
                                  (__tmp97446 (_k96342_ _vars96339_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97447
                               __tmp97446
                               _E96341_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e96360_))
                                (let ((_$e96470_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97445
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target96340_)))
                                        (__tmp97437
                                         (let ((__tmp97439
                                                (let ((__tmp97440
                                                       (let ((__tmp97444
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96470_ '())))
                     (__tmp97441
                      (let ((__tmp97442
                             (let ((__tmp97443
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e96069_
                                       _target96340_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97443))))
                        (declare (not safe))
                        (cons __tmp97442 '()))))
                 (declare (not safe))
                 (cons __tmp97444 __tmp97441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97440 '())))
                                               (__tmp97438
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur96247_
                                                   _body96357_
                                                   _vars96339_
                                                   _$e96470_
                                                   _E96341_
                                                   _k96342_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97439
                                            __tmp97438))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97445
                                     __tmp97437
                                     _E96341_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e96360_))
                                    (let ((_$e96472_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97436
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target96340_)))
                                            (__tmp97428
                                             (let ((__tmp97430
                                                    (let ((__tmp97431
                                                           (let ((__tmp97435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96472_ '())))
                         (__tmp97432
                          (let ((__tmp97433
                                 (let ((__tmp97434
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e96069_
                                           _target96340_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97434))))
                            (declare (not safe))
                            (cons __tmp97433 '()))))
                     (declare (not safe))
                     (cons __tmp97435 __tmp97432))))
              (declare (not safe))
              (cons __tmp97431 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97429
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96247_
                                                       _body96357_
                                                       _vars96339_
                                                       _$e96472_
                                                       _E96341_
                                                       _k96342_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97430
                                                __tmp97429))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97436
                                         __tmp97428
                                         _E96341_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96360_))
                                        (let ((_$e96474_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97427
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target96340_)))
                                                (__tmp97418
                                                 (let ((__tmp97422
                                                        (let ((__tmp97423
                                                               (let ((__tmp97426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96474_ '())))
                             (__tmp97424
                              (let ((__tmp97425
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target96340_))))
                                (declare (not safe))
                                (cons __tmp97425 '()))))
                         (declare (not safe))
                         (cons __tmp97426 __tmp97424))))
                  (declare (not safe))
                  (cons __tmp97423 '())))
               (__tmp97419
                (let ((__tmp97421
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96474_ _body96357_)))
                      (__tmp97420 (_k96342_ _vars96339_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97421 __tmp97420 _E96341_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97422
                                                    __tmp97419))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97427
                                             __tmp97418
                                             _E96341_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG96246_ _e96338_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9634396350_))
                                      (let ((_hd9634796479_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9634396350_)))
                                            (_tl9634896481_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9634396350_))))
                                        (let* ((_tag96484_ _hd9634796479_)
                                               (_body96486_ _tl9634896481_))
                                          (declare (not safe))
                                          (_K9634696476_
                                           _body96486_
                                           _tag96484_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9634596354_))))))
                             (_splice-rlen96248_
                              (lambda (_e96300_)
                                (let _lp96302_ ((_e96304_ _e96300_)
                                                (_n96305_ '0))
                                  (let* ((_e9630696313_ _e96304_)
                                         (_E9630896317_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9630696313_))))
                                         (_K9630996326_
                                          (lambda (_body96320_ _tag96321_)
                                            (let ((_$e96323_ _tag96321_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e96323_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx96067_
                                                     _where96239_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e96323_))
                                                      (let ((__tmp97526
                                                             (cdr _body96320_))
                                                            (__tmp97525
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n96305_ '1))))
                (declare (not safe))
                (_lp96302_ __tmp97526 __tmp97525))
              _n96305_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9630696313_))
                                        (let ((_hd9631096329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9630696313_)))
                                              (_tl9631196331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9630696313_))))
                                          (let* ((_tag96334_ _hd9631096329_)
                                                 (_body96336_ _tl9631196331_))
                                            (declare (not safe))
                                            (_K9630996326_
                                             _body96336_
                                             _tag96334_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9630896317_)))))))
                             (_splice-vars96249_
                              (lambda (_e96256_)
                                (let _recur96258_ ((_e96260_ _e96256_)
                                                   (_vars96261_ '()))
                                  (let* ((_e9626296269_ _e96260_)
                                         (_E9626496273_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9626296269_))))
                                         (_K9626596288_
                                          (lambda (_body96276_ _tag96277_)
                                            (let ((_$e96279_ _tag96277_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e96279_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body96276_
                                                          _vars96261_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e96279_))
                  (let () (declare (not safe)) (eq? 'splice _$e96279_)))
              (let ((__tmp97529 (cdr _body96276_))
                    (__tmp97527
                     (let ((__tmp97528 (car _body96276_)))
                       (declare (not safe))
                       (_recur96258_ __tmp97528 _vars96261_))))
                (declare (not safe))
                (_recur96258_ __tmp97529 __tmp97527))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e96279_))
                      (let () (declare (not safe)) (eq? 'box _$e96279_)))
                  (let ()
                    (declare (not safe))
                    (_recur96258_ _body96276_ _vars96261_))
                  _vars96261_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9626296269_))
                                        (let ((_hd9626696291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9626296269_)))
                                              (_tl9626796293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9626296269_))))
                                          (let* ((_tag96296_ _hd9626696291_)
                                                 (_body96298_ _tl9626796293_))
                                            (declare (not safe))
                                            (_K9626596288_
                                             _body96298_
                                             _tag96296_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9626496273_)))))))
                             (_make-body96250_
                              (lambda (_vars96252_)
                                (let ((__tmp97530
                                       (map (lambda (_mvar96254_)
                                              (let ((__tmp97531
                                                     (car _mvar96254_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97531
                                                 _vars96252_
                                                 _BUG96246_)))
                                            _mvars96242_)))
                                  (declare (not safe))
                                  (cons _K96243_ __tmp97530)))))
                      (let ()
                        (declare (not safe))
                        (_recur96247_
                         _hd96241_
                         '()
                         _target96240_
                         _E96244_
                         _make-body96250_)))))
                 (_parse-clause96076_
                  (lambda (_hd96145_ _ids96146_)
                    (let _recur96148_ ((_e96150_ _hd96145_)
                                       (_vars96151_ '())
                                       (_depth96152_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e96150_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e96150_))
                              (values '(any) _vars96151_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e96150_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx96067_
                                     _hd96145_))
                                  (if (let ((__tmp97547
                                             (lambda (_id96154_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e96150_
                                                  _id96154_)))))
                                        (declare (not safe))
                                        (find __tmp97547 _ids96146_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e96150_))
                                              _vars96151_)
                                      (if (let ((__tmp97545
                                                 (lambda (_var96156_)
                                                   (let ((__tmp97546
                                                          (car _var96156_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e96150_
                                                      __tmp97546)))))
                                            (declare (not safe))
                                            (find __tmp97545 _vars96151_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx96067_
                                             _e96150_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e96150_))
                                                  (let ((__tmp97544
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e96150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth96152_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97544
                                                          _vars96151_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e96150_))
                              (let* ((_e9615796164_ _e96150_)
                                     (_E9615996168_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9615796164_))))
                                     (_E9615896229_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9615796164_))
                                            (let ((_e9616096172_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9615796164_))))
                                              (let ((_hd9616196175_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9616096172_)))
                                                    (_tl9616296177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9616096172_))))
                                                (let* ((_hd96180_
                                                        _hd9616196175_)
                                                       (_rest96182_
                                                        _tl9616296177_))
                                                  (if '#t
                                                      (let* ((_make-pair96197_
                                                              (lambda (_tag96184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd96185_
                               _tl96186_)
                        (let* ((_hd-depth96188_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag96184_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth96152_ '1))
                                    _depth96152_))
                               (_g97539_
                                (let ()
                                  (declare (not safe))
                                  (_recur96148_
                                   _hd96185_
                                   _vars96151_
                                   _hd-depth96188_))))
                          (begin
                            (let ((_g97540_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97539_)
                                         (##vector-length _g97539_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97540_ 2)))
                                  (error "Context expects 2 values" _g97540_)))
                            (let ((_hd96190_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97539_ 0)))
                                  (_vars96191_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97539_ 1))))
                              (let ((_g97541_
                                     (let ()
                                       (declare (not safe))
                                       (_recur96148_
                                        _tl96186_
                                        _vars96191_
                                        _depth96152_))))
                                (begin
                                  (let ((_g97542_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97541_)
                                               (##vector-length _g97541_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97542_ 2)))
                                        (error "Context expects 2 values"
                                               _g97542_)))
                                  (let ((_tl96193_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97541_ 0)))
                                        (_vars96194_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97541_ 1))))
                                    (let ()
                                      (values (let ((__tmp97543
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd96190_
                                                             _tl96193_))))
                                                (declare (not safe))
                                                (cons _tag96184_ __tmp97543))
                                              _vars96194_))))))))))
                     (_e9619896205_ _rest96182_)
                     (_E9620096209_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair96197_ 'cons _hd96180_ _rest96182_))))
                     (_E9619996225_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9619896205_))
                            (let ((_e9620196213_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9619896205_))))
                              (let ((_hd9620296216_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9620196213_)))
                                    (_tl9620396218_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9620196213_))))
                                (let* ((_rest-hd96221_ _hd9620296216_)
                                       (_rest-tl96223_ _tl9620396218_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd96221_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96197_
                                             'splice
                                             _hd96180_
                                             _rest-tl96223_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96197_
                                             'cons
                                             _hd96180_
                                             _rest96182_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9620096209_))))))
                            (let () (declare (not safe)) (_E9620096209_))))))
                (let () (declare (not safe)) (_E9619996225_)))
              (let () (declare (not safe)) (_E9615996168_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9615996168_))))))
                                (let () (declare (not safe)) (_E9615896229_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e96150_))
                                  (values '(null) _vars96151_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e96150_))
                                      (let ((_g97536_
                                             (let ((__tmp97538
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e96150_)))))
                                               (declare (not safe))
                                               (_recur96148_
                                                __tmp97538
                                                _vars96151_
                                                _depth96152_))))
                                        (begin
                                          (let ((_g97537_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97536_)
                                                       (##vector-length
                                                        _g97536_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97537_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97537_)))
                                          (let ((_e96233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97536_ 0)))
                                                (_vars96234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97536_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e96233_))
                                                    _vars96234_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e96150_))
                                          (let ((_g97533_
                                                 (let ((__tmp97535
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e96150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur96148_
                                                    __tmp97535
                                                    _vars96151_
                                                    _depth96152_))))
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
                                              (let ((_e96236_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97533_
                                                        0)))
                                                    (_vars96237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97533_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e96236_))
                                                        _vars96237_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e96150_))
                                              (values (let ((__tmp97532
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e96150_))))
                (declare (not safe))
                (cons 'datum __tmp97532))
              _vars96151_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx96067_
                                                 _e96150_))))))))))))
          (let* ((_e9607796090_ _stx96067_)
                 (_E9607996094_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9607796090_))))
                 (_E9607896141_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9607796090_))
                        (let ((_e9608096098_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9607796090_))))
                          (let ((_hd9608196101_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9608096098_)))
                                (_tl9608296103_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9608096098_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9608296103_))
                                (let ((_e9608396106_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9608296103_))))
                                  (let ((_hd9608496109_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9608396106_)))
                                        (_tl9608596111_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9608396106_))))
                                    (let ((_expr96114_ _hd9608496109_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9608596111_))
                                          (let ((_e9608696116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9608596111_))))
                                            (let ((_hd9608796119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9608696116_)))
                                                  (_tl9608896121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9608696116_))))
                                              (let* ((_ids96124_
                                                      _hd9608796119_)
                                                     (_clauses96126_
                                                      _tl9608896121_))
                                                (if '#t
                                                    (if (let ((__tmp97565
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids96124_))))
                  (declare (not safe))
                  (not __tmp97565))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx96067_
                   _ids96124_))
                (if (let ((__tmp97564
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses96126_))))
                      (declare (not safe))
                      (not __tmp97564))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx96067_))
                    (let* ((_ids96128_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids96124_)))
                           (_clauses96130_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses96126_)))
                           (_clause-ids96132_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses96130_)))
                           (_E96134_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target96136_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first96138_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses96130_))
                                _E96134_
                                (car _clause-ids96132_))))
                      (let ((__tmp97549
                             (let ((__tmp97550
                                    (let ((__tmp97552
                                           (let ((__tmp97557
                                                  (let ((__tmp97558
                                                         (let ((__tmp97563
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E96134_ '())))
                       (__tmp97559
                        (let ((__tmp97560
                               (let ((__tmp97562
                                      (let ()
                                        (declare (not safe))
                                        (cons _target96136_ '())))
                                     (__tmp97561
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target96136_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97562
                                  __tmp97561))))
                          (declare (not safe))
                          (cons __tmp97560 '()))))
                   (declare (not safe))
                   (cons __tmp97563 __tmp97559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97558 '())))
                                                 (__tmp97553
                                                  (let ((__tmp97556
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings96072_
                                                            _target96136_
                                                            _ids96128_
                                                            _clauses96130_
                                                            _clause-ids96132_
                                                            _E96134_)))
                                                        (__tmp97554
                                                         (let ((__tmp97555
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr96114_ '()))))
                   (declare (not safe))
                   (cons _first96138_ __tmp97555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body96073_
                                                     __tmp97556
                                                     __tmp97554))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97557
                                              __tmp97553)))
                                          (__tmp97551
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx96067_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97552
                                       __tmp97551))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97550)))
                            (__tmp97548
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx96067_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97549 __tmp97548)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9607996094_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9607996094_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9607996094_)))))
                        (let () (declare (not safe)) (_E9607996094_))))))
            (let () (declare (not safe)) (_E9607896141_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96777_)
        (let* ((_identifier=?96779_ 'free-identifier=?)
               (_unwrap-e96781_ 'syntax-e)
               (_wrap-e96783_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96777_
           _identifier=?96779_
           _unwrap-e96781_
           _wrap-e96783_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96785_ _identifier=?96786_)
        (let* ((_unwrap-e96788_ 'syntax-e) (_wrap-e96790_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96785_
           _identifier=?96786_
           _unwrap-e96788_
           _wrap-e96790_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96792_ _identifier=?96793_ _unwrap-e96794_)
        (let ((_wrap-e96796_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96792_
           _identifier=?96793_
           _unwrap-e96794_
           _wrap-e96796_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97567_
        (let ((_g97566_ (let () (declare (not safe)) (##length _g97567_))))
          (cond ((let () (declare (not safe)) (##fx= _g97566_ 1))
                 (apply (lambda (_stx96777_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96777_)))
                        _g97567_))
                ((let () (declare (not safe)) (##fx= _g97566_ 2))
                 (apply (lambda (_stx96785_ _identifier=?96786_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96785_
                             _identifier=?96786_)))
                        _g97567_))
                ((let () (declare (not safe)) (##fx= _g97566_ 3))
                 (apply (lambda (_stx96792_
                                 _identifier=?96793_
                                 _unwrap-e96794_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96792_
                             _identifier=?96793_
                             _unwrap-e96794_)))
                        _g97567_))
                ((let () (declare (not safe)) (##fx= _g97566_ 4))
                 (apply (lambda (_stx96798_
                                 _identifier=?96799_
                                 _unwrap-e96800_
                                 _wrap-e96801_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96798_
                             _identifier=?96799_
                             _unwrap-e96800_
                             _wrap-e96801_)))
                        _g97567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97567_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx96064_)
        (if (let () (declare (not safe)) (gx#identifier? _stx96064_))
            (let ((__tmp97568
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx96064_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97568 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96022_ . _rest96023_)
        (let ((_len96025_ (length _hd96022_)))
          (let _lp96027_ ((_rest96029_ _rest96023_))
            (let* ((_rest9603096038_ _rest96029_)
                   (_else9603296046_ (lambda () '#!void))
                   (_K9603496052_
                    (lambda (_rest96049_ _hd96050_)
                      (if (fx= _len96025_ (length _hd96050_))
                          (let () (declare (not safe)) (_lp96027_ _rest96049_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96050_))))))
              (if (let () (declare (not safe)) (##pair? _rest9603096038_))
                  (let ((_hd9603596055_
                         (let ()
                           (declare (not safe))
                           (##car _rest9603096038_)))
                        (_tl9603696057_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9603096038_))))
                    (let* ((_hd96060_ _hd9603596055_)
                           (_rest96062_ _tl9603696057_))
                      (declare (not safe))
                      (_K9603496052_ _rest96062_ _hd96060_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95980_ _n95981_)
        (let _lp95983_ ((_rest95985_ _stx95980_) (_r95986_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95985_))
              (let* ((_g9598795994_
                      (let () (declare (not safe)) (gx#syntax-e _rest95985_)))
                     (_E9598995998_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9598795994_))))
                     (_K9599096004_
                      (lambda (_rest96001_ _hd96002_)
                        (let ((__tmp97573
                               (let ()
                                 (declare (not safe))
                                 (cons _hd96002_ _r95986_))))
                          (declare (not safe))
                          (_lp95983_ _rest96001_ __tmp97573)))))
                (if (let () (declare (not safe)) (##pair? _g9598795994_))
                    (let ((_hd9599196007_
                           (let () (declare (not safe)) (##car _g9598795994_)))
                          (_tl9599296009_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9598795994_))))
                      (let* ((_hd96012_ _hd9599196007_)
                             (_rest96014_ _tl9599296009_))
                        (declare (not safe))
                        (_K9599096004_ _rest96014_ _hd96012_)))
                    (let () (declare (not safe)) (_E9598995998_))))
              (let _lp96016_ ((_n96018_ _n95981_)
                              (_l96019_ _r95986_)
                              (_r96020_ _rest95985_))
                (if (let () (declare (not safe)) (null? _l96019_))
                    (values _l96019_ _r96020_)
                    (if (fxpositive? _n96018_)
                        (let ((__tmp97572
                               (let () (declare (not safe)) (fx- _n96018_ '1)))
                              (__tmp97571 (cdr _l96019_))
                              (__tmp97569
                               (let ((__tmp97570 (car _l96019_)))
                                 (declare (not safe))
                                 (cons __tmp97570 _r96020_))))
                          (declare (not safe))
                          (_lp96016_ __tmp97572 __tmp97571 __tmp97569))
                        (values (reverse _l96019_) _r96020_))))))))))
