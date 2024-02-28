(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709159707)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp97331 (list gx#expander::t))
            (__tmp97329
             (let ((__tmp97330
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97330 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp97331
         '(id depth)
         __tmp97329
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args97326_
        (apply make-instance gx#syntax-pattern::t _$args97326_)))
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
      (lambda (_self97323_ _stx97324_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx97324_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96805_)
        (letrec ((_generate96807_
                  (lambda (_e97034_)
                    (letrec ((_BUG97036_
                              (lambda (_q97198_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96805_
                                         _e97034_
                                         _q97198_))))
                             (_local-pattern-e97037_
                              (lambda (_pat97196_)
                                (let ((__tmp97332
                                       (##structure-ref
                                        _pat97196_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp97332))))
                             (_getvar97038_
                              (lambda (_q97193_ _vars97194_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q97193_
                                   _vars97194_
                                   _BUG97036_))))
                             (_getarg97039_
                              (lambda (_arg97159_ _vars97160_)
                                (let* ((_arg9716197168_ _arg97159_)
                                       (_E9716397172_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9716197168_))))
                                       (_K9716497181_
                                        (lambda (_e97175_ _tag97176_)
                                          (let ((_$e97178_ _tag97176_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e97178_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97038_
                                                   _e97175_
                                                   _vars97160_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e97178_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97037_
                                                       _e97175_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97036_
                                                       _arg97159_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9716197168_))
                                      (let ((_hd9716597184_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9716197168_)))
                                            (_tl9716697186_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9716197168_))))
                                        (let* ((_tag97189_ _hd9716597184_)
                                               (_e97191_ _tl9716697186_))
                                          (declare (not safe))
                                          (_K9716497181_ _e97191_ _tag97189_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9716397172_)))))))
                      (let _recur97041_ ((_e97043_ _e97034_) (_vars97044_ '()))
                        (let* ((_e9704597052_ _e97043_)
                               (_E9704797056_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9704597052_))))
                               (_K9704897147_
                                (lambda (_body97059_ _tag97060_)
                                  (let ((_$e97062_ _tag97060_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97062_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97059_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e97062_))
                                            (let ((_id97065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97059_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id97065_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks97067_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id97065_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks97067_))
                                                        (let ((__tmp97360
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97059_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp97360))
                (let ((__tmp97359
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97059_)))
                      (__tmp97358
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97059_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp97359
                   __tmp97358
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id97065_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97059_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97036_
                                                         _e97043_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e97062_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97037_
                                                   _body97059_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e97062_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97038_
                                                       _body97059_
                                                       _vars97044_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e97062_))
                                                        (let ((__tmp97356
                                                               (let ((__tmp97357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97059_)))
                         (declare (not safe))
                         (_recur97041_ __tmp97357 _vars97044_)))
                      (__tmp97354
                       (let ((__tmp97355 (cdr _body97059_)))
                         (declare (not safe))
                         (_recur97041_ __tmp97355 _vars97044_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp97356 __tmp97354))
                (if (let () (declare (not safe)) (eq? 'vector _$e97062_))
                    (let ((__tmp97353
                           (let ()
                             (declare (not safe))
                             (_recur97041_ _body97059_ _vars97044_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp97353))
                    (if (let () (declare (not safe)) (eq? 'box _$e97062_))
                        (let ((__tmp97352
                               (let ()
                                 (declare (not safe))
                                 (_recur97041_ _body97059_ _vars97044_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp97352))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e97062_))
                            (let* ((_body9706897079_ _body97059_)
                                   (_E9707097083_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9706897079_))))
                                   (_K9707197121_
                                    (lambda (_args97086_
                                             _iv97087_
                                             _hd97088_
                                             _depth97089_)
                                      (let* ((_targets97095_
                                              (map (lambda (_g9709097092_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97039_
                                                        _g9709097092_
                                                        _vars97044_)))
                                                   _args97086_))
                                             (_fold-in97097_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args97086_)))
                                             (_fold-out97099_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args97101_
                                              (let ((__tmp97333
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out97099_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp97333
                                                        _fold-in97097_)))
                                             (_lambda-body97118_
                                              (if (fx> _depth97089_ '1)
                                                  (let ((_r-args97109_
                                                         (map (lambda (_arg97103_)
                                                                (let ((__tmp97338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg97103_)))
                          (declare (not safe))
                          (cons 'ref __tmp97338)))
                      _args97086_))
                (_r-vars97110_
                 (let ((__tmp97339
                        (lambda (_arg97105_ _var97106_ _r97107_)
                          (let ((__tmp97340
                                 (let ((__tmp97341 (cdr _arg97105_)))
                                   (declare (not safe))
                                   (cons __tmp97341 _var97106_))))
                            (declare (not safe))
                            (cons __tmp97340 _r97107_)))))
                   (declare (not safe))
                   (foldr2 __tmp97339
                           _vars97044_
                           _args97086_
                           _fold-in97097_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp97342
                                                           (let ((__tmp97343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97347
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth97089_ '1)))
                                (__tmp97344
                                 (let ((__tmp97345
                                        (let ((__tmp97346
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out97099_))))
                                          (declare (not safe))
                                          (cons __tmp97346 _r-args97109_))))
                                   (declare (not safe))
                                   (cons _hd97088_ __tmp97345))))
                            (declare (not safe))
                            (cons __tmp97347 __tmp97344))))
                     (declare (not safe))
                     (cons 'splice __tmp97343))))
              (declare (not safe))
              (_recur97041_ __tmp97342 _r-vars97110_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars97116_
                                                          (let ((__tmp97334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg97112_ _var97113_ _r97114_)
                           (let ((__tmp97335
                                  (let ((__tmp97336 (cdr _arg97112_)))
                                    (declare (not safe))
                                    (cons __tmp97336 _var97113_))))
                             (declare (not safe))
                             (cons __tmp97335 _r97114_)))))
                    (declare (not safe))
                    (foldr2 __tmp97334
                            _vars97044_
                            _args97086_
                            _fold-in97097_)))
                 (__tmp97337
                  (let ()
                    (declare (not safe))
                    (_recur97041_ _hd97088_ _hd-vars97116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp97337
                                                     _fold-out97099_)))))
                                        (let ((__tmp97351
                                               (if (fx> (length _targets97095_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets97095_))
                                                   '#!void))
                                              (__tmp97348
                                               (let ((__tmp97350
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args97101_
                                                         _lambda-body97118_)))
                                                     (__tmp97349
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97041_
                                                         _iv97087_
                                                         _vars97044_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp97350
                                                  __tmp97349
                                                  _targets97095_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp97351
                                           __tmp97348))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9706897079_))
                                  (let ((_hd9707297124_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9706897079_)))
                                        (_tl9707397126_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9706897079_))))
                                    (let ((_depth97129_ _hd9707297124_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9707397126_))
                                          (let ((_hd9707497131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9707397126_)))
                                                (_tl9707597133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9707397126_))))
                                            (let ((_hd97136_ _hd9707497131_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9707597133_))
                                                  (let ((_hd9707697138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9707597133_)))
                                                        (_tl9707797140_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9707597133_))))
                                                    (let* ((_iv97143_
                                                            _hd9707697138_)
                                                           (_args97145_
                                                            _tl9707797140_))
                                                      (declare (not safe))
                                                      (_K9707197121_
                                                       _args97145_
                                                       _iv97143_
                                                       _hd97136_
                                                       _depth97129_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9707097083_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9707097083_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9707097083_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e97062_))
                                _body97059_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97036_ _e97043_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9704597052_))
                              (let ((_hd9704997150_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9704597052_)))
                                    (_tl9705097152_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9704597052_))))
                                (let* ((_tag97155_ _hd9704997150_)
                                       (_body97157_ _tl9705097152_))
                                  (declare (not safe))
                                  (_K9704897147_ _body97157_ _tag97155_)))
                              (let ()
                                (declare (not safe))
                                (_E9704797056_))))))))
                 (_parse96808_
                  (lambda (_e96849_)
                    (letrec ((_make-cons96851_
                              (lambda (_hd97026_ _tl97027_)
                                (let ((_g97361_ _hd97026_)
                                      (_g97363_ _tl97027_))
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
                                    (let ((_hd-e97029_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97361_ 0)))
                                          (_hd-vars97030_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97361_ 1))))
                                      (let ((_tl-e97031_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97363_ 0)))
                                            (_tl-vars97032_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97363_ 1))))
                                        (values (let ((__tmp97365
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97029_
                                                               _tl-e97031_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp97365))
                                                (append _hd-vars97030_
                                                        _tl-vars97032_))))))))
                             (_make-splice96852_
                              (lambda (_where96965_
                                       _depth96966_
                                       _hd96967_
                                       _tl96968_)
                                (let ((_g97366_ _hd96967_)
                                      (_g97368_ _tl96968_))
                                  (begin
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
                                    (let ((_g97369_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97368_)
                                                 (##vector-length _g97368_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97369_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97369_)))
                                    (let ((_hd-e96970_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97366_ 0)))
                                          (_hd-vars96971_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97366_ 1))))
                                      (let ((_tl-e96972_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97368_ 0)))
                                            (_tl-vars96973_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97368_ 1))))
                                        (let _lp96975_ ((_rest96977_
                                                         _hd-vars96971_)
                                                        (_targets96978_ '())
                                                        (_vars96979_
                                                         _tl-vars96973_))
                                          (let* ((_rest9698096990_ _rest96977_)
                                                 (_else9698296998_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96978_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96805_
                                                           _where96965_))
                                                        (values (let ((__tmp97370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp97371
                                      (let ((__tmp97372
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96972_
                                                     _targets96978_))))
                                        (declare (not safe))
                                        (cons _hd-e96970_ __tmp97372))))
                                 (declare (not safe))
                                 (cons _depth96966_ __tmp97371))))
                          (declare (not safe))
                          (cons 'splice __tmp97370))
                        _vars96979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9698497007_
                                                  (lambda (_rest97001_
                                                           _hd-pat97002_
                                                           _hd-depth*97003_)
                                                    (let ((_hd-depth97005_
                                                           (fx- _hd-depth*97003_
                                                                _depth96966_)))
                                                      (if (fxpositive?
                                                           _hd-depth97005_)
                                                          (let ((__tmp97377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97378
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat97002_))))
                           (declare (not safe))
                           (cons __tmp97378 _targets96978_)))
                        (__tmp97375
                         (let ((__tmp97376
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97005_ _hd-pat97002_))))
                           (declare (not safe))
                           (cons __tmp97376 _vars96979_))))
                    (declare (not safe))
                    (_lp96975_ _rest97001_ __tmp97377 __tmp97375))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97005_))
                      (let ((__tmp97373
                             (let ((__tmp97374
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat97002_))))
                               (declare (not safe))
                               (cons __tmp97374 _targets96978_))))
                        (declare (not safe))
                        (_lp96975_ _rest97001_ __tmp97373 _vars96979_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96805_
                         _where96965_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9698096990_))
                                                (let ((_hd9698597010_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9698096990_)))
                                                      (_tl9698697012_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9698096990_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9698597010_))
                                                      (let ((_hd9698797015_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9698597010_)))
                    (_tl9698897017_
                     (let () (declare (not safe)) (##cdr _hd9698597010_))))
                (let* ((_hd-depth*97020_ _hd9698797015_)
                       (_hd-pat97022_ _tl9698897017_)
                       (_rest97024_ _tl9698697012_))
                  (declare (not safe))
                  (_K9698497007_ _rest97024_ _hd-pat97022_ _hd-depth*97020_)))
              (let () (declare (not safe)) (_else9698296998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9698296998_)))))))))))
                             (_recur96853_
                              (lambda (_e96858_ _is-e?96859_)
                                (if (_is-e?96859_ _e96858_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96805_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96858_))
                                        (let* ((_pat96861_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96858_)))
                                               (_depth96863_
                                                (##structure-ref
                                                 _pat96861_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96863_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96861_))
                                                      (let ((__tmp97394
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96863_ _pat96861_))))
                (declare (not safe))
                (cons __tmp97394 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96861_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96858_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96858_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96858_))
                                                (let* ((_e9686596872_ _e96858_)
                                                       (_E9686796876_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9686596872_))))
                                                       (_E9686696955_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9686596872_))
                      (let ((_e9686896880_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9686596872_))))
                        (let ((_hd9686996883_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9686896880_)))
                              (_tl9687096885_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9686896880_))))
                          (let* ((_hd96888_ _hd9686996883_)
                                 (_rest96890_ _tl9687096885_))
                            (if '#t
                                (if (_is-e?96859_ _hd96888_)
                                    (let* ((_e9689196898_ _rest96890_)
                                           (_E9689396902_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96805_
                                                 _e96858_))))
                                           (_E9689296916_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9689196898_))
                                                  (let ((_e9689496906_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9689196898_))))
                                                    (let ((_hd9689596909_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9689496906_)))
                                                          (_tl9689696911_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9689496906_))))
                                                      (let ((_rest96914_
                                                             _hd9689596909_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9689696911_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96853_ _rest96914_ false))
                        (let () (declare (not safe)) (_E9689396902_)))
                    (let () (declare (not safe)) (_E9689396902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9689396902_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9689296916_)))
                                    (let _lp96920_ ((_rest96922_ _rest96890_)
                                                    (_depth96923_ '0))
                                      (let* ((_e9692496931_ _rest96922_)
                                             (_E9692696935_
                                              (lambda ()
                                                (if (fxpositive? _depth96923_)
                                                    (let ((__tmp97388
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96853_
                                                              _hd96888_
                                                              _is-e?96859_)))
                                                          (__tmp97387
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96853_
                                                              _rest96922_
                                                              _is-e?96859_))))
                                                      (declare (not safe))
                                                      (_make-splice96852_
                                                       _e96858_
                                                       _depth96923_
                                                       __tmp97388
                                                       __tmp97387))
                                                    (let ((__tmp97386
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96853_
                                                              _hd96888_
                                                              _is-e?96859_)))
                                                          (__tmp97385
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96853_
                                                              _rest96922_
                                                              _is-e?96859_))))
                                                      (declare (not safe))
                                                      (_make-cons96851_
                                                       __tmp97386
                                                       __tmp97385)))))
                                             (_E9692596951_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9692496931_))
                                                    (let ((_e9692796939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9692496931_))))
                                                      (let ((_hd9692896942_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9692796939_)))
                    (_tl9692996944_
                     (let () (declare (not safe)) (##cdr _e9692796939_))))
                (let* ((_rest-hd96947_ _hd9692896942_)
                       (_rest-tl96949_ _tl9692996944_))
                  (if '#t
                      (if (_is-e?96859_ _rest-hd96947_)
                          (let ((__tmp97393
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96923_ '1))))
                            (declare (not safe))
                            (_lp96920_ _rest-tl96949_ __tmp97393))
                          (if (fxpositive? _depth96923_)
                              (let ((__tmp97392
                                     (let ()
                                       (declare (not safe))
                                       (_recur96853_ _hd96888_ _is-e?96859_)))
                                    (__tmp97391
                                     (let ()
                                       (declare (not safe))
                                       (_recur96853_
                                        _rest96922_
                                        _is-e?96859_))))
                                (declare (not safe))
                                (_make-splice96852_
                                 _e96858_
                                 _depth96923_
                                 __tmp97392
                                 __tmp97391))
                              (let ((__tmp97390
                                     (let ()
                                       (declare (not safe))
                                       (_recur96853_ _hd96888_ _is-e?96859_)))
                                    (__tmp97389
                                     (let ()
                                       (declare (not safe))
                                       (_recur96853_
                                        _rest96922_
                                        _is-e?96859_))))
                                (declare (not safe))
                                (_make-cons96851_ __tmp97390 __tmp97389))))
                      (let () (declare (not safe)) (_E9692696935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9692696935_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9692596951_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9686796876_))))))
                      (let () (declare (not safe)) (_E9686796876_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9686696955_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96858_))
                                                    (let ((_g97382_
                                                           (let ((__tmp97384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96858_)))))
                     (declare (not safe))
                     (_recur96853_ __tmp97384 _is-e?96859_))))
              (begin
                (let ((_g97383_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97382_)
                             (##vector-length _g97382_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97383_ 2)))
                      (error "Context expects 2 values" _g97383_)))
                (let ((_e96959_
                       (let () (declare (not safe)) (##vector-ref _g97382_ 0)))
                      (_vars96960_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97382_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96959_))
                          _vars96960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96858_))
                                                        (let ((_g97379_
                                                               (let ((__tmp97381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96858_)))))
                         (declare (not safe))
                         (_recur96853_ __tmp97381 _is-e?96859_))))
                  (begin
                    (let ((_g97380_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97379_)
                                 (##vector-length _g97379_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97380_ 2)))
                          (error "Context expects 2 values" _g97380_)))
                    (let ((_e96962_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97379_ 0)))
                          (_vars96963_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97379_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96962_))
                              _vars96963_))))
                (values (let () (declare (not safe)) (cons 'datum _e96858_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g97395_
                             (let ()
                               (declare (not safe))
                               (_recur96853_ _e96849_ gx#ellipsis?))))
                        (begin
                          (let ((_g97396_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97395_)
                                       (##vector-length _g97395_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97396_ 2)))
                                (error "Context expects 2 values" _g97396_)))
                          (let ((_tree96855_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97395_ 0)))
                                (_vars96856_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97395_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96856_))
                                _tree96855_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96805_
                                   _vars96856_))))))))))
          (let* ((_e9680996819_ _stx96805_)
                 (_E9681196823_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96805_))))
                 (_E9681096845_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9680996819_))
                        (let ((_e9681296827_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9680996819_))))
                          (let ((_hd9681396830_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9681296827_)))
                                (_tl9681496832_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9681296827_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9681496832_))
                                (let ((_e9681596835_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9681496832_))))
                                  (let ((_hd9681696838_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9681596835_)))
                                        (_tl9681796840_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9681596835_))))
                                    (let ((_form96843_ _hd9681696838_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9681796840_))
                                          (if '#t
                                              (let ((__tmp97398
                                                     (let ((__tmp97399
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96808_
                                                               _form96843_))))
                                                       (declare (not safe))
                                                       (_generate96807_
                                                        __tmp97399)))
                                                    (__tmp97397
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96805_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp97398
                                                 __tmp97397))
                                              (let ()
                                                (declare (not safe))
                                                (_E9681196823_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9681196823_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9681196823_)))))
                        (let () (declare (not safe)) (_E9681196823_))))))
            (let () (declare (not safe)) (_E9681096845_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx96069_ _identifier=?96070_ _unwrap-e96071_ _wrap-e96072_)
        (letrec ((_generate-bindings96074_
                  (lambda (_target96669_
                           _ids96670_
                           _clauses96671_
                           _clause-ids96672_
                           _E96673_)
                    (letrec ((_generate196675_
                              (lambda (_clause96772_ _clause-id96773_ _E96774_)
                                (let ((__tmp97404
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96773_ '())))
                                      (__tmp97400
                                       (let ((__tmp97401
                                              (let ((__tmp97403
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96669_
                                                             '())))
                                                    (__tmp97402
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause96076_
                                                        _target96669_
                                                        _ids96670_
                                                        _clause96772_
                                                        _E96774_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp97403
                                                 __tmp97402))))
                                         (declare (not safe))
                                         (cons __tmp97401 '()))))
                                  (declare (not safe))
                                  (cons __tmp97404 __tmp97400)))))
                      (let _lp96677_ ((_rest96679_ _clauses96671_)
                                      (_rest-ids96680_ _clause-ids96672_)
                                      (_bindings96681_ '()))
                        (let* ((_rest9668296690_ _rest96679_)
                               (_else9668496698_ (lambda () _bindings96681_))
                               (_K9668696760_
                                (lambda (_rest96701_ _clause96702_)
                                  (let* ((_rest-ids9670396710_ _rest-ids96680_)
                                         (_E9670596714_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9670396710_))))
                                         (_K9670696748_
                                          (lambda (_rest-ids96717_
                                                   _clause-id96718_)
                                            (let* ((_rest-ids9671996727_
                                                    _rest-ids96717_)
                                                   (_else9672196735_
                                                    (lambda ()
                                                      (let ((__tmp97405
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196675_
                        _clause96702_
                        _clause-id96718_
                        _E96673_))))
                (declare (not safe))
                (cons __tmp97405 _bindings96681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9672396740_
                                                    (lambda (_next-clause-id96738_)
                                                      (let ((__tmp97406
                                                             (let ((__tmp97407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196675_
                               _clause96702_
                               _clause-id96718_
                               _next-clause-id96738_))))
                       (declare (not safe))
                       (cons __tmp97407 _bindings96681_))))
                (declare (not safe))
                (_lp96677_ _rest96701_ _rest-ids96717_ __tmp97406)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9671996727_))
                                                  (let* ((_hd9672496743_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9671996727_)))
                                                         (_next-clause-id96746_
                                                          _hd9672496743_))
                                                    (declare (not safe))
                                                    (_K9672396740_
                                                     _next-clause-id96746_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9672196735_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9670396710_))
                                        (let ((_hd9670796751_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9670396710_)))
                                              (_tl9670896753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9670396710_))))
                                          (let* ((_clause-id96756_
                                                  _hd9670796751_)
                                                 (_rest-ids96758_
                                                  _tl9670896753_))
                                            (declare (not safe))
                                            (_K9670696748_
                                             _rest-ids96758_
                                             _clause-id96756_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9670596714_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9668296690_))
                              (let ((_hd9668796763_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9668296690_)))
                                    (_tl9668896765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9668296690_))))
                                (let* ((_clause96768_ _hd9668796763_)
                                       (_rest96770_ _tl9668896765_))
                                  (declare (not safe))
                                  (_K9668696760_ _rest96770_ _clause96768_)))
                              (let ()
                                (declare (not safe))
                                (_else9668496698_))))))))
                 (_generate-body96075_
                  (lambda (_bindings96629_ _body96630_)
                    (let _recur96632_ ((_rest96634_ _bindings96629_))
                      (let* ((_rest9663596643_ _rest96634_)
                             (_else9663796651_ (lambda () _body96630_))
                             (_K9663996657_
                              (lambda (_rest96654_ _hd96655_)
                                (let ((__tmp97409
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96655_ '())))
                                      (__tmp97408
                                       (let ()
                                         (declare (not safe))
                                         (_recur96632_ _rest96654_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp97409
                                   __tmp97408)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9663596643_))
                            (let ((_hd9664096660_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9663596643_)))
                                  (_tl9664196662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9663596643_))))
                              (let* ((_hd96665_ _hd9664096660_)
                                     (_rest96667_ _tl9664196662_))
                                (declare (not safe))
                                (_K9663996657_ _rest96667_ _hd96665_)))
                            (let ()
                              (declare (not safe))
                              (_else9663796651_)))))))
                 (_generate-clause96076_
                  (lambda (_target96492_ _ids96493_ _clause96494_ _E96495_)
                    (letrec ((_generate196497_
                              (lambda (_hd96584_ _fender96585_ _body96586_)
                                (let ((_g97410_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause96078_
                                          _hd96584_
                                          _ids96493_))))
                                  (begin
                                    (let ((_g97411_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97410_)
                                                 (##vector-length _g97410_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97411_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97411_)))
                                    (let ((_e96588_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97410_ 0)))
                                          (_mvars96589_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97410_ 1))))
                                      (let* ((_pvars96591_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96589_))))
                                             (_E96593_
                                              (let ((__tmp97412
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96492_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96495_ __tmp97412)))
                                             (_K96626_
                                              (let ((__tmp97413
                                                     (let ((__tmp97415
                                                            (map (lambda (_mvar96595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96596_)
                           (let* ((_mvar9659796604_ _mvar96595_)
                                  (_E9659996608_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9659796604_))))
                                  (_K9660096614_
                                   (lambda (_depth96611_ _id96612_)
                                     (let ((__tmp97416
                                            (let ((__tmp97417
                                                   (let ((__tmp97419
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96612_)))
                                                         (__tmp97418
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96596_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97419
                                                      __tmp97418
                                                      _depth96611_))))
                                              (declare (not safe))
                                              (cons __tmp97417 '()))))
                                       (declare (not safe))
                                       (cons _id96612_ __tmp97416)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9659796604_))
                                 (let ((_hd9660196617_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9659796604_)))
                                       (_tl9660296619_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9659796604_))))
                                   (let* ((_id96622_ _hd9660196617_)
                                          (_depth96624_ _tl9660296619_))
                                     (declare (not safe))
                                     (_K9660096614_ _depth96624_ _id96622_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9659996608_)))))
                         _mvars96589_
                         _pvars96591_))
                   (__tmp97414
                    (if (let () (declare (not safe)) (eq? _fender96585_ '#t))
                        _body96586_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96585_
                           _body96586_
                           _E96593_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp97415 __tmp97414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96591_
                                                 __tmp97413))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match96077_
                                           _hd96584_
                                           _target96492_
                                           _e96588_
                                           _mvars96589_
                                           _K96626_
                                           _E96593_)))))))))
                      (let* ((_e9649896518_ _clause96494_)
                             (_E9650796522_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9649896518_))))
                             (_E9650096556_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9649896518_))
                                    (let ((_e9650896526_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9649896518_))))
                                      (let ((_hd9650996529_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9650896526_)))
                                            (_tl9651096531_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9650896526_))))
                                        (let ((_hd96534_ _hd9650996529_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9651096531_))
                                              (let ((_e9651196536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9651096531_))))
                                                (let ((_hd9651296539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9651196536_)))
                                                      (_tl9651396541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9651196536_))))
                                                  (let ((_fender96544_
                                                         _hd9651296539_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9651396541_))
                                                        (let ((_e9651496546_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9651396541_))))
                  (let ((_hd9651596549_
                         (let () (declare (not safe)) (##car _e9651496546_)))
                        (_tl9651696551_
                         (let () (declare (not safe)) (##cdr _e9651496546_))))
                    (let ((_body96554_ _hd9651596549_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9651696551_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196497_
                                 _hd96534_
                                 _fender96544_
                                 _body96554_))
                              (let () (declare (not safe)) (_E9650796522_)))
                          (let () (declare (not safe)) (_E9650796522_))))))
                (let () (declare (not safe)) (_E9650796522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9650796522_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9650796522_)))))
                             (_E9649996580_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9649896518_))
                                    (let ((_e9650196560_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9649896518_))))
                                      (let ((_hd9650296563_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9650196560_)))
                                            (_tl9650396565_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9650196560_))))
                                        (let ((_hd96568_ _hd9650296563_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9650396565_))
                                              (let ((_e9650496570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9650396565_))))
                                                (let ((_hd9650596573_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9650496570_)))
                                                      (_tl9650696575_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9650496570_))))
                                                  (let ((_body96578_
                                                         _hd9650596573_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9650696575_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196497_
                                                               _hd96568_
                                                               '#t
                                                               _body96578_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9650096556_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9650096556_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9650096556_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9650096556_))))))
                        (let () (declare (not safe)) (_E9649996580_))))))
                 (_generate-match96077_
                  (lambda (_where96241_
                           _target96242_
                           _hd96243_
                           _mvars96244_
                           _K96245_
                           _E96246_)
                    (letrec ((_BUG96248_
                              (lambda (_q96490_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx96069_
                                         _hd96243_
                                         _q96490_))))
                             (_recur96249_
                              (lambda (_e96340_
                                       _vars96341_
                                       _target96342_
                                       _E96343_
                                       _k96344_)
                                (let* ((_e9634596352_ _e96340_)
                                       (_E9634796356_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9634596352_))))
                                       (_K9634896478_
                                        (lambda (_body96359_ _tag96360_)
                                          (let ((_$e96362_ _tag96360_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e96362_))
                                                (_k96344_ _vars96341_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e96362_))
                                                    (let ((__tmp97526
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target96342_)))
                                                          (__tmp97522
                                                           (let ((__tmp97524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97525
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e96072_ _body96359_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?96070_
                             __tmp97525
                             _target96342_)))
                         (__tmp97523 (_k96344_ _vars96341_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97524 __tmp97523 _E96343_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97526 __tmp97522 _E96343_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e96362_))
                                                        (_k96344_
                                                         (let ((__tmp97521
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body96359_ _target96342_))))
                   (declare (not safe))
                   (cons __tmp97521 _vars96341_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e96362_))
                    (let ((_$e96365_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd96366_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl96367_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97520
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target96342_)))
                            (__tmp97501
                             (let ((__tmp97515
                                    (let ((__tmp97516
                                           (let ((__tmp97519
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e96365_ '())))
                                                 (__tmp97517
                                                  (let ((__tmp97518
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e96071_
                                                            _target96342_))))
                                                    (declare (not safe))
                                                    (cons __tmp97518 '()))))
                                             (declare (not safe))
                                             (cons __tmp97519 __tmp97517))))
                                      (declare (not safe))
                                      (cons __tmp97516 '())))
                                   (__tmp97502
                                    (let ((__tmp97505
                                           (let ((__tmp97511
                                                  (let ((__tmp97514
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd96366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97512
                 (let ((__tmp97513
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e96365_))))
                   (declare (not safe))
                   (cons __tmp97513 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97514
                                                          __tmp97512)))
                                                 (__tmp97506
                                                  (let ((__tmp97507
                                                         (let ((__tmp97510
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl96367_ '())))
                       (__tmp97508
                        (let ((__tmp97509
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e96365_))))
                          (declare (not safe))
                          (cons __tmp97509 '()))))
                   (declare (not safe))
                   (cons __tmp97510 __tmp97508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97507 '()))))
                                             (declare (not safe))
                                             (cons __tmp97511 __tmp97506)))
                                          (__tmp97503
                                           (let* ((_body9636896375_
                                                   _body96359_)
                                                  (_E9637096379_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9636896375_))))
                                                  (_K9637196387_
                                                   (lambda (_tl96382_
                                                            _hd96383_)
                                                     (let ((__tmp97504
                                                            (lambda (_vars96385_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur96249_
                         _tl96382_
                         _vars96385_
                         _$tl96367_
                         _E96343_
                         _k96344_)))))
               (declare (not safe))
               (_recur96249_
                _hd96383_
                _vars96341_
                _$hd96366_
                _E96343_
                __tmp97504)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9636896375_))
                                                 (let ((_hd9637296390_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9636896375_)))
                                                       (_tl9637396392_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9636896375_))))
                                                   (let* ((_hd96395_
                                                           _hd9637296390_)
                                                          (_tl96397_
                                                           _tl9637396392_))
                                                     (declare (not safe))
                                                     (_K9637196387_
                                                      _tl96397_
                                                      _hd96395_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9637096379_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97505
                                       __tmp97503))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97515
                                __tmp97502))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97520 __tmp97501 _E96343_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e96362_))
                        (let* ((_body9639896405_ _body96359_)
                               (_E9640096409_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9639896405_))))
                               (_K9640196460_
                                (lambda (_tl96412_ _hd96413_)
                                  (let* ((_rlen96415_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen96250_ _tl96412_)))
                                         (_$target96417_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96419_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96421_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96423_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96425_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96427_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96429_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96431_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars96251_ _hd96413_)))
                                         (_lvars96433_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96431_)))
                                         (_tlvars96435_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96431_)))
                                         (_linit96439_
                                          (map (lambda (_var96437_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96433_)))
                                    (letrec ((_make-loop96442_
                                              (lambda (_vars96446_)
                                                (let ((__tmp97452
                                                       (let ((__tmp97453
                                                              (let ((__tmp97489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96423_ '())))
                            (__tmp97454
                             (let ((__tmp97455
                                    (let ((__tmp97488
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96419_ _lvars96433_)))
                                          (__tmp97456
                                           (let ((__tmp97487
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96419_)))
                                                 (__tmp97465
                                                  (let ((__tmp97482
                                                         (let ((__tmp97483
                                                                (let ((__tmp97486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96425_ '())))
                              (__tmp97484
                               (let ((__tmp97485
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e96071_
                                         _$hd96419_))))
                                 (declare (not safe))
                                 (cons __tmp97485 '()))))
                          (declare (not safe))
                          (cons __tmp97486 __tmp97484))))
                   (declare (not safe))
                   (cons __tmp97483 '())))
                (__tmp97466
                 (let ((__tmp97472
                        (let ((__tmp97478
                               (let ((__tmp97481
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96427_ '())))
                                     (__tmp97479
                                      (let ((__tmp97480
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96425_))))
                                        (declare (not safe))
                                        (cons __tmp97480 '()))))
                                 (declare (not safe))
                                 (cons __tmp97481 __tmp97479)))
                              (__tmp97473
                               (let ((__tmp97474
                                      (let ((__tmp97477
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96429_ '())))
                                            (__tmp97475
                                             (let ((__tmp97476
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96425_))))
                                               (declare (not safe))
                                               (cons __tmp97476 '()))))
                                        (declare (not safe))
                                        (cons __tmp97477 __tmp97475))))
                                 (declare (not safe))
                                 (cons __tmp97474 '()))))
                          (declare (not safe))
                          (cons __tmp97478 __tmp97473)))
                       (__tmp97467
                        (let ((__tmp97468
                               (lambda (_hdvars96448_)
                                 (let ((__tmp97469
                                        (let ((__tmp97470
                                               (map (lambda (_svar96450_
                                                             _lvar96451_)
                                                      (let ((__tmp97471
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96450_ _hdvars96448_ _BUG96248_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97471 _lvar96451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96431_
                                                    _lvars96433_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96429_ __tmp97470))))
                                   (declare (not safe))
                                   (cons _$lp96423_ __tmp97469)))))
                          (declare (not safe))
                          (_recur96249_
                           _hd96413_
                           '()
                           _$lp-hd96427_
                           _E96343_
                           __tmp97468))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97472 __tmp97467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97482
                                                     __tmp97466)))
                                                 (__tmp97457
                                                  (let ((__tmp97461
                                                         (map (lambda (_lvar96453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96454_)
                        (let ((__tmp97464
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96454_ '())))
                              (__tmp97462
                               (let ((__tmp97463
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96453_))))
                                 (declare (not safe))
                                 (cons __tmp97463 '()))))
                          (declare (not safe))
                          (cons __tmp97464 __tmp97462)))
                      _lvars96433_
                      _tlvars96435_))
                (__tmp97458
                 (_k96344_
                  (let ((__tmp97459
                         (lambda (_svar96456_ _tlvar96457_ _r96458_)
                           (let ((__tmp97460
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96456_ _tlvar96457_))))
                             (declare (not safe))
                             (cons __tmp97460 _r96458_)))))
                    (declare (not safe))
                    (foldl2 __tmp97459
                            _vars96446_
                            _svars96431_
                            _tlvars96435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97461
                                                     __tmp97458))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97487
                                              __tmp97465
                                              __tmp97457))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97488
                                       __tmp97456))))
                               (declare (not safe))
                               (cons __tmp97455 '()))))
                        (declare (not safe))
                        (cons __tmp97489 __tmp97454))))
                 (declare (not safe))
                 (cons __tmp97453 '())))
              (__tmp97450
               (let ((__tmp97451
                      (let ()
                        (declare (not safe))
                        (cons _$target96417_ _linit96439_))))
                 (declare (not safe))
                 (cons _$lp96423_ __tmp97451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97452
                                                   __tmp97450)))))
                                      (let ((_body96444_
                                             (let ((__tmp97491
                                                    (let ((__tmp97492
                                                           (let ((__tmp97495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97496
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96421_ '()))))
                            (declare (not safe))
                            (cons _$target96417_ __tmp97496)))
                         (__tmp97493
                          (let ((__tmp97494
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target96342_
                                    _rlen96415_))))
                            (declare (not safe))
                            (cons __tmp97494 '()))))
                     (declare (not safe))
                     (cons __tmp97495 __tmp97493))))
              (declare (not safe))
              (cons __tmp97492 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97490
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96249_
                                                       _tl96412_
                                                       _vars96341_
                                                       _$tl96421_
                                                       _E96343_
                                                       _make-loop96442_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97491
                                                __tmp97490))))
                                        (let ((__tmp97500
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target96342_)))
                                              (__tmp97497
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen96415_))
                                                   _body96444_
                                                   (let ((__tmp97498
                                                          (let ((__tmp97499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target96342_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97499 _rlen96415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97498
                                                      _body96444_
                                                      _E96343_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97500
                                           __tmp97497
                                           _E96343_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9639896405_))
                              (let ((_hd9640296463_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9639896405_)))
                                    (_tl9640396465_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9639896405_))))
                                (let* ((_hd96468_ _hd9640296463_)
                                       (_tl96470_ _tl9640396465_))
                                  (declare (not safe))
                                  (_K9640196460_ _tl96470_ _hd96468_)))
                              (let () (declare (not safe)) (_E9640096409_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e96362_))
                            (let ((__tmp97449
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target96342_)))
                                  (__tmp97448 (_k96344_ _vars96341_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97449
                               __tmp97448
                               _E96343_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e96362_))
                                (let ((_$e96472_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97447
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target96342_)))
                                        (__tmp97439
                                         (let ((__tmp97441
                                                (let ((__tmp97442
                                                       (let ((__tmp97446
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96472_ '())))
                     (__tmp97443
                      (let ((__tmp97444
                             (let ((__tmp97445
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e96071_
                                       _target96342_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97445))))
                        (declare (not safe))
                        (cons __tmp97444 '()))))
                 (declare (not safe))
                 (cons __tmp97446 __tmp97443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97442 '())))
                                               (__tmp97440
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur96249_
                                                   _body96359_
                                                   _vars96341_
                                                   _$e96472_
                                                   _E96343_
                                                   _k96344_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97441
                                            __tmp97440))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97447
                                     __tmp97439
                                     _E96343_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e96362_))
                                    (let ((_$e96474_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97438
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target96342_)))
                                            (__tmp97430
                                             (let ((__tmp97432
                                                    (let ((__tmp97433
                                                           (let ((__tmp97437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96474_ '())))
                         (__tmp97434
                          (let ((__tmp97435
                                 (let ((__tmp97436
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e96071_
                                           _target96342_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97436))))
                            (declare (not safe))
                            (cons __tmp97435 '()))))
                     (declare (not safe))
                     (cons __tmp97437 __tmp97434))))
              (declare (not safe))
              (cons __tmp97433 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97431
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96249_
                                                       _body96359_
                                                       _vars96341_
                                                       _$e96474_
                                                       _E96343_
                                                       _k96344_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97432
                                                __tmp97431))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97438
                                         __tmp97430
                                         _E96343_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96362_))
                                        (let ((_$e96476_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97429
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target96342_)))
                                                (__tmp97420
                                                 (let ((__tmp97424
                                                        (let ((__tmp97425
                                                               (let ((__tmp97428
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96476_ '())))
                             (__tmp97426
                              (let ((__tmp97427
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target96342_))))
                                (declare (not safe))
                                (cons __tmp97427 '()))))
                         (declare (not safe))
                         (cons __tmp97428 __tmp97426))))
                  (declare (not safe))
                  (cons __tmp97425 '())))
               (__tmp97421
                (let ((__tmp97423
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96476_ _body96359_)))
                      (__tmp97422 (_k96344_ _vars96341_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97423 __tmp97422 _E96343_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97424
                                                    __tmp97421))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97429
                                             __tmp97420
                                             _E96343_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG96248_ _e96340_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9634596352_))
                                      (let ((_hd9634996481_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9634596352_)))
                                            (_tl9635096483_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9634596352_))))
                                        (let* ((_tag96486_ _hd9634996481_)
                                               (_body96488_ _tl9635096483_))
                                          (declare (not safe))
                                          (_K9634896478_
                                           _body96488_
                                           _tag96486_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9634796356_))))))
                             (_splice-rlen96250_
                              (lambda (_e96302_)
                                (let _lp96304_ ((_e96306_ _e96302_)
                                                (_n96307_ '0))
                                  (let* ((_e9630896315_ _e96306_)
                                         (_E9631096319_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9630896315_))))
                                         (_K9631196328_
                                          (lambda (_body96322_ _tag96323_)
                                            (let ((_$e96325_ _tag96323_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e96325_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx96069_
                                                     _where96241_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e96325_))
                                                      (let ((__tmp97528
                                                             (cdr _body96322_))
                                                            (__tmp97527
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n96307_ '1))))
                (declare (not safe))
                (_lp96304_ __tmp97528 __tmp97527))
              _n96307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9630896315_))
                                        (let ((_hd9631296331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9630896315_)))
                                              (_tl9631396333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9630896315_))))
                                          (let* ((_tag96336_ _hd9631296331_)
                                                 (_body96338_ _tl9631396333_))
                                            (declare (not safe))
                                            (_K9631196328_
                                             _body96338_
                                             _tag96336_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9631096319_)))))))
                             (_splice-vars96251_
                              (lambda (_e96258_)
                                (let _recur96260_ ((_e96262_ _e96258_)
                                                   (_vars96263_ '()))
                                  (let* ((_e9626496271_ _e96262_)
                                         (_E9626696275_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9626496271_))))
                                         (_K9626796290_
                                          (lambda (_body96278_ _tag96279_)
                                            (let ((_$e96281_ _tag96279_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e96281_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body96278_
                                                          _vars96263_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e96281_))
                  (let () (declare (not safe)) (eq? 'splice _$e96281_)))
              (let ((__tmp97531 (cdr _body96278_))
                    (__tmp97529
                     (let ((__tmp97530 (car _body96278_)))
                       (declare (not safe))
                       (_recur96260_ __tmp97530 _vars96263_))))
                (declare (not safe))
                (_recur96260_ __tmp97531 __tmp97529))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e96281_))
                      (let () (declare (not safe)) (eq? 'box _$e96281_)))
                  (let ()
                    (declare (not safe))
                    (_recur96260_ _body96278_ _vars96263_))
                  _vars96263_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9626496271_))
                                        (let ((_hd9626896293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9626496271_)))
                                              (_tl9626996295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9626496271_))))
                                          (let* ((_tag96298_ _hd9626896293_)
                                                 (_body96300_ _tl9626996295_))
                                            (declare (not safe))
                                            (_K9626796290_
                                             _body96300_
                                             _tag96298_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9626696275_)))))))
                             (_make-body96252_
                              (lambda (_vars96254_)
                                (let ((__tmp97532
                                       (map (lambda (_mvar96256_)
                                              (let ((__tmp97533
                                                     (car _mvar96256_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97533
                                                 _vars96254_
                                                 _BUG96248_)))
                                            _mvars96244_)))
                                  (declare (not safe))
                                  (cons _K96245_ __tmp97532)))))
                      (let ()
                        (declare (not safe))
                        (_recur96249_
                         _hd96243_
                         '()
                         _target96242_
                         _E96246_
                         _make-body96252_)))))
                 (_parse-clause96078_
                  (lambda (_hd96147_ _ids96148_)
                    (let _recur96150_ ((_e96152_ _hd96147_)
                                       (_vars96153_ '())
                                       (_depth96154_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e96152_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e96152_))
                              (values '(any) _vars96153_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e96152_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx96069_
                                     _hd96147_))
                                  (if (let ((__tmp97549
                                             (lambda (_id96156_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e96152_
                                                  _id96156_)))))
                                        (declare (not safe))
                                        (find __tmp97549 _ids96148_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e96152_))
                                              _vars96153_)
                                      (if (let ((__tmp97547
                                                 (lambda (_var96158_)
                                                   (let ((__tmp97548
                                                          (car _var96158_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e96152_
                                                      __tmp97548)))))
                                            (declare (not safe))
                                            (find __tmp97547 _vars96153_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx96069_
                                             _e96152_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e96152_))
                                                  (let ((__tmp97546
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e96152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth96154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97546
                                                          _vars96153_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e96152_))
                              (let* ((_e9615996166_ _e96152_)
                                     (_E9616196170_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9615996166_))))
                                     (_E9616096231_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9615996166_))
                                            (let ((_e9616296174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9615996166_))))
                                              (let ((_hd9616396177_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9616296174_)))
                                                    (_tl9616496179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9616296174_))))
                                                (let* ((_hd96182_
                                                        _hd9616396177_)
                                                       (_rest96184_
                                                        _tl9616496179_))
                                                  (if '#t
                                                      (let* ((_make-pair96199_
                                                              (lambda (_tag96186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd96187_
                               _tl96188_)
                        (let* ((_hd-depth96190_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag96186_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth96154_ '1))
                                    _depth96154_))
                               (_g97541_
                                (let ()
                                  (declare (not safe))
                                  (_recur96150_
                                   _hd96187_
                                   _vars96153_
                                   _hd-depth96190_))))
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
                                  (error "Context expects 2 values" _g97542_)))
                            (let ((_hd96192_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97541_ 0)))
                                  (_vars96193_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97541_ 1))))
                              (let ((_g97543_
                                     (let ()
                                       (declare (not safe))
                                       (_recur96150_
                                        _tl96188_
                                        _vars96193_
                                        _depth96154_))))
                                (begin
                                  (let ((_g97544_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97543_)
                                               (##vector-length _g97543_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97544_ 2)))
                                        (error "Context expects 2 values"
                                               _g97544_)))
                                  (let ((_tl96195_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97543_ 0)))
                                        (_vars96196_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97543_ 1))))
                                    (let ()
                                      (values (let ((__tmp97545
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd96192_
                                                             _tl96195_))))
                                                (declare (not safe))
                                                (cons _tag96186_ __tmp97545))
                                              _vars96196_))))))))))
                     (_e9620096207_ _rest96184_)
                     (_E9620296211_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair96199_ 'cons _hd96182_ _rest96184_))))
                     (_E9620196227_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9620096207_))
                            (let ((_e9620396215_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9620096207_))))
                              (let ((_hd9620496218_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9620396215_)))
                                    (_tl9620596220_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9620396215_))))
                                (let* ((_rest-hd96223_ _hd9620496218_)
                                       (_rest-tl96225_ _tl9620596220_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd96223_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96199_
                                             'splice
                                             _hd96182_
                                             _rest-tl96225_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96199_
                                             'cons
                                             _hd96182_
                                             _rest96184_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9620296211_))))))
                            (let () (declare (not safe)) (_E9620296211_))))))
                (let () (declare (not safe)) (_E9620196227_)))
              (let () (declare (not safe)) (_E9616196170_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9616196170_))))))
                                (let () (declare (not safe)) (_E9616096231_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e96152_))
                                  (values '(null) _vars96153_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e96152_))
                                      (let ((_g97538_
                                             (let ((__tmp97540
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e96152_)))))
                                               (declare (not safe))
                                               (_recur96150_
                                                __tmp97540
                                                _vars96153_
                                                _depth96154_))))
                                        (begin
                                          (let ((_g97539_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97538_)
                                                       (##vector-length
                                                        _g97538_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97539_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97539_)))
                                          (let ((_e96235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97538_ 0)))
                                                (_vars96236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97538_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e96235_))
                                                    _vars96236_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e96152_))
                                          (let ((_g97535_
                                                 (let ((__tmp97537
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e96152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur96150_
                                                    __tmp97537
                                                    _vars96153_
                                                    _depth96154_))))
                                            (begin
                                              (let ((_g97536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97535_)
                                                           (##vector-length
                                                            _g97535_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97536_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97536_)))
                                              (let ((_e96238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97535_
                                                        0)))
                                                    (_vars96239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97535_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e96238_))
                                                        _vars96239_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e96152_))
                                              (values (let ((__tmp97534
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e96152_))))
                (declare (not safe))
                (cons 'datum __tmp97534))
              _vars96153_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx96069_
                                                 _e96152_))))))))))))
          (let* ((_e9607996092_ _stx96069_)
                 (_E9608196096_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9607996092_))))
                 (_E9608096143_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9607996092_))
                        (let ((_e9608296100_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9607996092_))))
                          (let ((_hd9608396103_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9608296100_)))
                                (_tl9608496105_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9608296100_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9608496105_))
                                (let ((_e9608596108_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9608496105_))))
                                  (let ((_hd9608696111_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9608596108_)))
                                        (_tl9608796113_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9608596108_))))
                                    (let ((_expr96116_ _hd9608696111_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9608796113_))
                                          (let ((_e9608896118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9608796113_))))
                                            (let ((_hd9608996121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9608896118_)))
                                                  (_tl9609096123_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9608896118_))))
                                              (let* ((_ids96126_
                                                      _hd9608996121_)
                                                     (_clauses96128_
                                                      _tl9609096123_))
                                                (if '#t
                                                    (if (let ((__tmp97567
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids96126_))))
                  (declare (not safe))
                  (not __tmp97567))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx96069_
                   _ids96126_))
                (if (let ((__tmp97566
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses96128_))))
                      (declare (not safe))
                      (not __tmp97566))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx96069_))
                    (let* ((_ids96130_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids96126_)))
                           (_clauses96132_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses96128_)))
                           (_clause-ids96134_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses96132_)))
                           (_E96136_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target96138_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first96140_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses96132_))
                                _E96136_
                                (car _clause-ids96134_))))
                      (let ((__tmp97551
                             (let ((__tmp97552
                                    (let ((__tmp97554
                                           (let ((__tmp97559
                                                  (let ((__tmp97560
                                                         (let ((__tmp97565
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E96136_ '())))
                       (__tmp97561
                        (let ((__tmp97562
                               (let ((__tmp97564
                                      (let ()
                                        (declare (not safe))
                                        (cons _target96138_ '())))
                                     (__tmp97563
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target96138_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97564
                                  __tmp97563))))
                          (declare (not safe))
                          (cons __tmp97562 '()))))
                   (declare (not safe))
                   (cons __tmp97565 __tmp97561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97560 '())))
                                                 (__tmp97555
                                                  (let ((__tmp97558
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings96074_
                                                            _target96138_
                                                            _ids96130_
                                                            _clauses96132_
                                                            _clause-ids96134_
                                                            _E96136_)))
                                                        (__tmp97556
                                                         (let ((__tmp97557
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr96116_ '()))))
                   (declare (not safe))
                   (cons _first96140_ __tmp97557))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body96075_
                                                     __tmp97558
                                                     __tmp97556))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97559
                                              __tmp97555)))
                                          (__tmp97553
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx96069_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97554
                                       __tmp97553))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97552)))
                            (__tmp97550
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx96069_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97551 __tmp97550)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9608196096_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9608196096_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9608196096_)))))
                        (let () (declare (not safe)) (_E9608196096_))))))
            (let () (declare (not safe)) (_E9608096143_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96779_)
        (let* ((_identifier=?96781_ 'free-identifier=?)
               (_unwrap-e96783_ 'syntax-e)
               (_wrap-e96785_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96779_
           _identifier=?96781_
           _unwrap-e96783_
           _wrap-e96785_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96787_ _identifier=?96788_)
        (let* ((_unwrap-e96790_ 'syntax-e) (_wrap-e96792_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96787_
           _identifier=?96788_
           _unwrap-e96790_
           _wrap-e96792_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96794_ _identifier=?96795_ _unwrap-e96796_)
        (let ((_wrap-e96798_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96794_
           _identifier=?96795_
           _unwrap-e96796_
           _wrap-e96798_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97569_
        (let ((_g97568_ (let () (declare (not safe)) (##length _g97569_))))
          (cond ((let () (declare (not safe)) (##fx= _g97568_ 1))
                 (apply (lambda (_stx96779_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96779_)))
                        _g97569_))
                ((let () (declare (not safe)) (##fx= _g97568_ 2))
                 (apply (lambda (_stx96787_ _identifier=?96788_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96787_
                             _identifier=?96788_)))
                        _g97569_))
                ((let () (declare (not safe)) (##fx= _g97568_ 3))
                 (apply (lambda (_stx96794_
                                 _identifier=?96795_
                                 _unwrap-e96796_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96794_
                             _identifier=?96795_
                             _unwrap-e96796_)))
                        _g97569_))
                ((let () (declare (not safe)) (##fx= _g97568_ 4))
                 (apply (lambda (_stx96800_
                                 _identifier=?96801_
                                 _unwrap-e96802_
                                 _wrap-e96803_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96800_
                             _identifier=?96801_
                             _unwrap-e96802_
                             _wrap-e96803_)))
                        _g97569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97569_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx96066_)
        (if (let () (declare (not safe)) (gx#identifier? _stx96066_))
            (let ((__tmp97570
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx96066_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97570 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96024_ . _rest96025_)
        (let ((_len96027_ (length _hd96024_)))
          (let _lp96029_ ((_rest96031_ _rest96025_))
            (let* ((_rest9603296040_ _rest96031_)
                   (_else9603496048_ (lambda () '#!void))
                   (_K9603696054_
                    (lambda (_rest96051_ _hd96052_)
                      (if (fx= _len96027_ (length _hd96052_))
                          (let () (declare (not safe)) (_lp96029_ _rest96051_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96052_))))))
              (if (let () (declare (not safe)) (##pair? _rest9603296040_))
                  (let ((_hd9603796057_
                         (let ()
                           (declare (not safe))
                           (##car _rest9603296040_)))
                        (_tl9603896059_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9603296040_))))
                    (let* ((_hd96062_ _hd9603796057_)
                           (_rest96064_ _tl9603896059_))
                      (declare (not safe))
                      (_K9603696054_ _rest96064_ _hd96062_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95982_ _n95983_)
        (let _lp95985_ ((_rest95987_ _stx95982_) (_r95988_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95987_))
              (let* ((_g9598995996_
                      (let () (declare (not safe)) (gx#syntax-e _rest95987_)))
                     (_E9599196000_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9598995996_))))
                     (_K9599296006_
                      (lambda (_rest96003_ _hd96004_)
                        (let ((__tmp97575
                               (let ()
                                 (declare (not safe))
                                 (cons _hd96004_ _r95988_))))
                          (declare (not safe))
                          (_lp95985_ _rest96003_ __tmp97575)))))
                (if (let () (declare (not safe)) (##pair? _g9598995996_))
                    (let ((_hd9599396009_
                           (let () (declare (not safe)) (##car _g9598995996_)))
                          (_tl9599496011_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9598995996_))))
                      (let* ((_hd96014_ _hd9599396009_)
                             (_rest96016_ _tl9599496011_))
                        (declare (not safe))
                        (_K9599296006_ _rest96016_ _hd96014_)))
                    (let () (declare (not safe)) (_E9599196000_))))
              (let _lp96018_ ((_n96020_ _n95983_)
                              (_l96021_ _r95988_)
                              (_r96022_ _rest95987_))
                (if (let () (declare (not safe)) (null? _l96021_))
                    (values _l96021_ _r96022_)
                    (if (fxpositive? _n96020_)
                        (let ((__tmp97574
                               (let () (declare (not safe)) (fx- _n96020_ '1)))
                              (__tmp97573 (cdr _l96021_))
                              (__tmp97571
                               (let ((__tmp97572 (car _l96021_)))
                                 (declare (not safe))
                                 (cons __tmp97572 _r96022_))))
                          (declare (not safe))
                          (_lp96018_ __tmp97574 __tmp97573 __tmp97571))
                        (values (reverse _l96021_) _r96022_))))))))))
