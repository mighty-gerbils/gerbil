(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709213450)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp97339 (list gx#expander::t))
            (__tmp97337
             (let ((__tmp97338
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97338 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp97339
         '(id depth)
         __tmp97337
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args97334_
        (apply make-instance gx#syntax-pattern::t _$args97334_)))
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
      (lambda (_self97331_ _stx97332_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx97332_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx96813_)
        (letrec ((_generate96815_
                  (lambda (_e97042_)
                    (letrec ((_BUG97044_
                              (lambda (_q97206_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx96813_
                                         _e97042_
                                         _q97206_))))
                             (_local-pattern-e97045_
                              (lambda (_pat97204_)
                                (let ((__tmp97340
                                       (##structure-ref
                                        _pat97204_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp97340))))
                             (_getvar97046_
                              (lambda (_q97201_ _vars97202_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q97201_
                                   _vars97202_
                                   _BUG97044_))))
                             (_getarg97047_
                              (lambda (_arg97167_ _vars97168_)
                                (let* ((_arg9716997176_ _arg97167_)
                                       (_E9717197180_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9716997176_))))
                                       (_K9717297189_
                                        (lambda (_e97183_ _tag97184_)
                                          (let ((_$e97186_ _tag97184_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e97186_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97046_
                                                   _e97183_
                                                   _vars97168_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e97186_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97045_
                                                       _e97183_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97044_
                                                       _arg97167_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9716997176_))
                                      (let ((_hd9717397192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9716997176_)))
                                            (_tl9717497194_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9716997176_))))
                                        (let* ((_tag97197_ _hd9717397192_)
                                               (_e97199_ _tl9717497194_))
                                          (declare (not safe))
                                          (_K9717297189_ _e97199_ _tag97197_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9717197180_)))))))
                      (let _recur97049_ ((_e97051_ _e97042_) (_vars97052_ '()))
                        (let* ((_e9705397060_ _e97051_)
                               (_E9705597064_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9705397060_))))
                               (_K9705697155_
                                (lambda (_body97067_ _tag97068_)
                                  (let ((_$e97070_ _tag97068_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97070_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97067_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e97070_))
                                            (let ((_id97073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97067_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id97073_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks97075_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id97073_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks97075_))
                                                        (let ((__tmp97368
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97067_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp97368))
                (let ((__tmp97367
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97067_)))
                      (__tmp97366
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97067_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp97367
                   __tmp97366
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id97073_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97067_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97044_
                                                         _e97051_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e97070_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97045_
                                                   _body97067_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e97070_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97046_
                                                       _body97067_
                                                       _vars97052_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e97070_))
                                                        (let ((__tmp97364
                                                               (let ((__tmp97365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97067_)))
                         (declare (not safe))
                         (_recur97049_ __tmp97365 _vars97052_)))
                      (__tmp97362
                       (let ((__tmp97363 (cdr _body97067_)))
                         (declare (not safe))
                         (_recur97049_ __tmp97363 _vars97052_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp97364 __tmp97362))
                (if (let () (declare (not safe)) (eq? 'vector _$e97070_))
                    (let ((__tmp97361
                           (let ()
                             (declare (not safe))
                             (_recur97049_ _body97067_ _vars97052_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp97361))
                    (if (let () (declare (not safe)) (eq? 'box _$e97070_))
                        (let ((__tmp97360
                               (let ()
                                 (declare (not safe))
                                 (_recur97049_ _body97067_ _vars97052_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp97360))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e97070_))
                            (let* ((_body9707697087_ _body97067_)
                                   (_E9707897091_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9707697087_))))
                                   (_K9707997129_
                                    (lambda (_args97094_
                                             _iv97095_
                                             _hd97096_
                                             _depth97097_)
                                      (let* ((_targets97103_
                                              (map (lambda (_g9709897100_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97047_
                                                        _g9709897100_
                                                        _vars97052_)))
                                                   _args97094_))
                                             (_fold-in97105_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args97094_)))
                                             (_fold-out97107_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args97109_
                                              (let ((__tmp97341
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out97107_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp97341
                                                        _fold-in97105_)))
                                             (_lambda-body97126_
                                              (if (fx> _depth97097_ '1)
                                                  (let ((_r-args97117_
                                                         (map (lambda (_arg97111_)
                                                                (let ((__tmp97346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg97111_)))
                          (declare (not safe))
                          (cons 'ref __tmp97346)))
                      _args97094_))
                (_r-vars97118_
                 (let ((__tmp97347
                        (lambda (_arg97113_ _var97114_ _r97115_)
                          (let ((__tmp97348
                                 (let ((__tmp97349 (cdr _arg97113_)))
                                   (declare (not safe))
                                   (cons __tmp97349 _var97114_))))
                            (declare (not safe))
                            (cons __tmp97348 _r97115_)))))
                   (declare (not safe))
                   (foldr2 __tmp97347
                           _vars97052_
                           _args97094_
                           _fold-in97105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp97350
                                                           (let ((__tmp97351
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97355
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth97097_ '1)))
                                (__tmp97352
                                 (let ((__tmp97353
                                        (let ((__tmp97354
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out97107_))))
                                          (declare (not safe))
                                          (cons __tmp97354 _r-args97117_))))
                                   (declare (not safe))
                                   (cons _hd97096_ __tmp97353))))
                            (declare (not safe))
                            (cons __tmp97355 __tmp97352))))
                     (declare (not safe))
                     (cons 'splice __tmp97351))))
              (declare (not safe))
              (_recur97049_ __tmp97350 _r-vars97118_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars97124_
                                                          (let ((__tmp97342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg97120_ _var97121_ _r97122_)
                           (let ((__tmp97343
                                  (let ((__tmp97344 (cdr _arg97120_)))
                                    (declare (not safe))
                                    (cons __tmp97344 _var97121_))))
                             (declare (not safe))
                             (cons __tmp97343 _r97122_)))))
                    (declare (not safe))
                    (foldr2 __tmp97342
                            _vars97052_
                            _args97094_
                            _fold-in97105_)))
                 (__tmp97345
                  (let ()
                    (declare (not safe))
                    (_recur97049_ _hd97096_ _hd-vars97124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp97345
                                                     _fold-out97107_)))))
                                        (let ((__tmp97359
                                               (if (fx> (length _targets97103_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets97103_))
                                                   '#!void))
                                              (__tmp97356
                                               (let ((__tmp97358
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args97109_
                                                         _lambda-body97126_)))
                                                     (__tmp97357
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97049_
                                                         _iv97095_
                                                         _vars97052_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp97358
                                                  __tmp97357
                                                  _targets97103_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp97359
                                           __tmp97356))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9707697087_))
                                  (let ((_hd9708097132_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9707697087_)))
                                        (_tl9708197134_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9707697087_))))
                                    (let ((_depth97137_ _hd9708097132_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9708197134_))
                                          (let ((_hd9708297139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9708197134_)))
                                                (_tl9708397141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9708197134_))))
                                            (let ((_hd97144_ _hd9708297139_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9708397141_))
                                                  (let ((_hd9708497146_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9708397141_)))
                                                        (_tl9708597148_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9708397141_))))
                                                    (let* ((_iv97151_
                                                            _hd9708497146_)
                                                           (_args97153_
                                                            _tl9708597148_))
                                                      (declare (not safe))
                                                      (_K9707997129_
                                                       _args97153_
                                                       _iv97151_
                                                       _hd97144_
                                                       _depth97137_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9707897091_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9707897091_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9707897091_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e97070_))
                                _body97067_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97044_ _e97051_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9705397060_))
                              (let ((_hd9705797158_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9705397060_)))
                                    (_tl9705897160_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9705397060_))))
                                (let* ((_tag97163_ _hd9705797158_)
                                       (_body97165_ _tl9705897160_))
                                  (declare (not safe))
                                  (_K9705697155_ _body97165_ _tag97163_)))
                              (let ()
                                (declare (not safe))
                                (_E9705597064_))))))))
                 (_parse96816_
                  (lambda (_e96857_)
                    (letrec ((_make-cons96859_
                              (lambda (_hd97034_ _tl97035_)
                                (let ((_g97369_ _hd97034_)
                                      (_g97371_ _tl97035_))
                                  (begin
                                    (let ((_g97370_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97369_)
                                                 (##vector-length _g97369_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97370_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97370_)))
                                    (let ((_g97372_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97371_)
                                                 (##vector-length _g97371_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97372_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97372_)))
                                    (let ((_hd-e97037_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97369_ 0)))
                                          (_hd-vars97038_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97369_ 1))))
                                      (let ((_tl-e97039_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97371_ 0)))
                                            (_tl-vars97040_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97371_ 1))))
                                        (values (let ((__tmp97373
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97037_
                                                               _tl-e97039_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp97373))
                                                (append _hd-vars97038_
                                                        _tl-vars97040_))))))))
                             (_make-splice96860_
                              (lambda (_where96973_
                                       _depth96974_
                                       _hd96975_
                                       _tl96976_)
                                (let ((_g97374_ _hd96975_)
                                      (_g97376_ _tl96976_))
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
                                          (error "Context expects 2 values"
                                                 _g97375_)))
                                    (let ((_g97377_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97376_)
                                                 (##vector-length _g97376_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97377_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97377_)))
                                    (let ((_hd-e96978_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97374_ 0)))
                                          (_hd-vars96979_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97374_ 1))))
                                      (let ((_tl-e96980_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97376_ 0)))
                                            (_tl-vars96981_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97376_ 1))))
                                        (let _lp96983_ ((_rest96985_
                                                         _hd-vars96979_)
                                                        (_targets96986_ '())
                                                        (_vars96987_
                                                         _tl-vars96981_))
                                          (let* ((_rest9698896998_ _rest96985_)
                                                 (_else9699097006_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets96986_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx96813_
                                                           _where96973_))
                                                        (values (let ((__tmp97378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp97379
                                      (let ((__tmp97380
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e96980_
                                                     _targets96986_))))
                                        (declare (not safe))
                                        (cons _hd-e96978_ __tmp97380))))
                                 (declare (not safe))
                                 (cons _depth96974_ __tmp97379))))
                          (declare (not safe))
                          (cons 'splice __tmp97378))
                        _vars96987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9699297015_
                                                  (lambda (_rest97009_
                                                           _hd-pat97010_
                                                           _hd-depth*97011_)
                                                    (let ((_hd-depth97013_
                                                           (fx- _hd-depth*97011_
                                                                _depth96974_)))
                                                      (if (fxpositive?
                                                           _hd-depth97013_)
                                                          (let ((__tmp97385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97386
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat97010_))))
                           (declare (not safe))
                           (cons __tmp97386 _targets96986_)))
                        (__tmp97383
                         (let ((__tmp97384
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97013_ _hd-pat97010_))))
                           (declare (not safe))
                           (cons __tmp97384 _vars96987_))))
                    (declare (not safe))
                    (_lp96983_ _rest97009_ __tmp97385 __tmp97383))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97013_))
                      (let ((__tmp97381
                             (let ((__tmp97382
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat97010_))))
                               (declare (not safe))
                               (cons __tmp97382 _targets96986_))))
                        (declare (not safe))
                        (_lp96983_ _rest97009_ __tmp97381 _vars96987_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx96813_
                         _where96973_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9698896998_))
                                                (let ((_hd9699397018_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9698896998_)))
                                                      (_tl9699497020_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9698896998_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9699397018_))
                                                      (let ((_hd9699597023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9699397018_)))
                    (_tl9699697025_
                     (let () (declare (not safe)) (##cdr _hd9699397018_))))
                (let* ((_hd-depth*97028_ _hd9699597023_)
                       (_hd-pat97030_ _tl9699697025_)
                       (_rest97032_ _tl9699497020_))
                  (declare (not safe))
                  (_K9699297015_ _rest97032_ _hd-pat97030_ _hd-depth*97028_)))
              (let () (declare (not safe)) (_else9699097006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9699097006_)))))))))))
                             (_recur96861_
                              (lambda (_e96866_ _is-e?96867_)
                                (if (_is-e?96867_ _e96866_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx96813_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e96866_))
                                        (let* ((_pat96869_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e96866_)))
                                               (_depth96871_
                                                (##structure-ref
                                                 _pat96869_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth96871_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat96869_))
                                                      (let ((__tmp97402
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth96871_ _pat96869_))))
                (declare (not safe))
                (cons __tmp97402 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat96869_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e96866_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e96866_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e96866_))
                                                (let* ((_e9687396880_ _e96866_)
                                                       (_E9687596884_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9687396880_))))
                                                       (_E9687496963_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9687396880_))
                      (let ((_e9687696888_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9687396880_))))
                        (let ((_hd9687796891_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9687696888_)))
                              (_tl9687896893_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9687696888_))))
                          (let* ((_hd96896_ _hd9687796891_)
                                 (_rest96898_ _tl9687896893_))
                            (if '#t
                                (if (_is-e?96867_ _hd96896_)
                                    (let* ((_e9689996906_ _rest96898_)
                                           (_E9690196910_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx96813_
                                                 _e96866_))))
                                           (_E9690096924_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9689996906_))
                                                  (let ((_e9690296914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9689996906_))))
                                                    (let ((_hd9690396917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9690296914_)))
                                                          (_tl9690496919_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9690296914_))))
                                                      (let ((_rest96922_
                                                             _hd9690396917_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9690496919_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur96861_ _rest96922_ false))
                        (let () (declare (not safe)) (_E9690196910_)))
                    (let () (declare (not safe)) (_E9690196910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9690196910_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9690096924_)))
                                    (let _lp96928_ ((_rest96930_ _rest96898_)
                                                    (_depth96931_ '0))
                                      (let* ((_e9693296939_ _rest96930_)
                                             (_E9693496943_
                                              (lambda ()
                                                (if (fxpositive? _depth96931_)
                                                    (let ((__tmp97396
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96861_
                                                              _hd96896_
                                                              _is-e?96867_)))
                                                          (__tmp97395
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96861_
                                                              _rest96930_
                                                              _is-e?96867_))))
                                                      (declare (not safe))
                                                      (_make-splice96860_
                                                       _e96866_
                                                       _depth96931_
                                                       __tmp97396
                                                       __tmp97395))
                                                    (let ((__tmp97394
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96861_
                                                              _hd96896_
                                                              _is-e?96867_)))
                                                          (__tmp97393
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur96861_
                                                              _rest96930_
                                                              _is-e?96867_))))
                                                      (declare (not safe))
                                                      (_make-cons96859_
                                                       __tmp97394
                                                       __tmp97393)))))
                                             (_E9693396959_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9693296939_))
                                                    (let ((_e9693596947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9693296939_))))
                                                      (let ((_hd9693696950_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9693596947_)))
                    (_tl9693796952_
                     (let () (declare (not safe)) (##cdr _e9693596947_))))
                (let* ((_rest-hd96955_ _hd9693696950_)
                       (_rest-tl96957_ _tl9693796952_))
                  (if '#t
                      (if (_is-e?96867_ _rest-hd96955_)
                          (let ((__tmp97401
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth96931_ '1))))
                            (declare (not safe))
                            (_lp96928_ _rest-tl96957_ __tmp97401))
                          (if (fxpositive? _depth96931_)
                              (let ((__tmp97400
                                     (let ()
                                       (declare (not safe))
                                       (_recur96861_ _hd96896_ _is-e?96867_)))
                                    (__tmp97399
                                     (let ()
                                       (declare (not safe))
                                       (_recur96861_
                                        _rest96930_
                                        _is-e?96867_))))
                                (declare (not safe))
                                (_make-splice96860_
                                 _e96866_
                                 _depth96931_
                                 __tmp97400
                                 __tmp97399))
                              (let ((__tmp97398
                                     (let ()
                                       (declare (not safe))
                                       (_recur96861_ _hd96896_ _is-e?96867_)))
                                    (__tmp97397
                                     (let ()
                                       (declare (not safe))
                                       (_recur96861_
                                        _rest96930_
                                        _is-e?96867_))))
                                (declare (not safe))
                                (_make-cons96859_ __tmp97398 __tmp97397))))
                      (let () (declare (not safe)) (_E9693496943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9693496943_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9693396959_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9687596884_))))))
                      (let () (declare (not safe)) (_E9687596884_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9687496963_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e96866_))
                                                    (let ((_g97390_
                                                           (let ((__tmp97392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e96866_)))))
                     (declare (not safe))
                     (_recur96861_ __tmp97392 _is-e?96867_))))
              (begin
                (let ((_g97391_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97390_)
                             (##vector-length _g97390_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97391_ 2)))
                      (error "Context expects 2 values" _g97391_)))
                (let ((_e96967_
                       (let () (declare (not safe)) (##vector-ref _g97390_ 0)))
                      (_vars96968_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97390_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e96967_))
                          _vars96968_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e96866_))
                                                        (let ((_g97387_
                                                               (let ((__tmp97389
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e96866_)))))
                         (declare (not safe))
                         (_recur96861_ __tmp97389 _is-e?96867_))))
                  (begin
                    (let ((_g97388_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97387_)
                                 (##vector-length _g97387_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97388_ 2)))
                          (error "Context expects 2 values" _g97388_)))
                    (let ((_e96970_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97387_ 0)))
                          (_vars96971_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97387_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e96970_))
                              _vars96971_))))
                (values (let () (declare (not safe)) (cons 'datum _e96866_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g97403_
                             (let ()
                               (declare (not safe))
                               (_recur96861_ _e96857_ gx#ellipsis?))))
                        (begin
                          (let ((_g97404_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97403_)
                                       (##vector-length _g97403_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97404_ 2)))
                                (error "Context expects 2 values" _g97404_)))
                          (let ((_tree96863_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97403_ 0)))
                                (_vars96864_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97403_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars96864_))
                                _tree96863_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx96813_
                                   _vars96864_))))))))))
          (let* ((_e9681796827_ _stx96813_)
                 (_E9681996831_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx96813_))))
                 (_E9681896853_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9681796827_))
                        (let ((_e9682096835_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9681796827_))))
                          (let ((_hd9682196838_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9682096835_)))
                                (_tl9682296840_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9682096835_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9682296840_))
                                (let ((_e9682396843_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9682296840_))))
                                  (let ((_hd9682496846_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9682396843_)))
                                        (_tl9682596848_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9682396843_))))
                                    (let ((_form96851_ _hd9682496846_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9682596848_))
                                          (if '#t
                                              (let ((__tmp97406
                                                     (let ((__tmp97407
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse96816_
                                                               _form96851_))))
                                                       (declare (not safe))
                                                       (_generate96815_
                                                        __tmp97407)))
                                                    (__tmp97405
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx96813_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp97406
                                                 __tmp97405))
                                              (let ()
                                                (declare (not safe))
                                                (_E9681996831_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9681996831_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9681996831_)))))
                        (let () (declare (not safe)) (_E9681996831_))))))
            (let () (declare (not safe)) (_E9681896853_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx96077_ _identifier=?96078_ _unwrap-e96079_ _wrap-e96080_)
        (letrec ((_generate-bindings96082_
                  (lambda (_target96677_
                           _ids96678_
                           _clauses96679_
                           _clause-ids96680_
                           _E96681_)
                    (letrec ((_generate196683_
                              (lambda (_clause96780_ _clause-id96781_ _E96782_)
                                (let ((__tmp97412
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id96781_ '())))
                                      (__tmp97408
                                       (let ((__tmp97409
                                              (let ((__tmp97411
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96677_
                                                             '())))
                                                    (__tmp97410
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause96084_
                                                        _target96677_
                                                        _ids96678_
                                                        _clause96780_
                                                        _E96782_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp97411
                                                 __tmp97410))))
                                         (declare (not safe))
                                         (cons __tmp97409 '()))))
                                  (declare (not safe))
                                  (cons __tmp97412 __tmp97408)))))
                      (let _lp96685_ ((_rest96687_ _clauses96679_)
                                      (_rest-ids96688_ _clause-ids96680_)
                                      (_bindings96689_ '()))
                        (let* ((_rest9669096698_ _rest96687_)
                               (_else9669296706_ (lambda () _bindings96689_))
                               (_K9669496768_
                                (lambda (_rest96709_ _clause96710_)
                                  (let* ((_rest-ids9671196718_ _rest-ids96688_)
                                         (_E9671396722_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9671196718_))))
                                         (_K9671496756_
                                          (lambda (_rest-ids96725_
                                                   _clause-id96726_)
                                            (let* ((_rest-ids9672796735_
                                                    _rest-ids96725_)
                                                   (_else9672996743_
                                                    (lambda ()
                                                      (let ((__tmp97413
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196683_
                        _clause96710_
                        _clause-id96726_
                        _E96681_))))
                (declare (not safe))
                (cons __tmp97413 _bindings96689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9673196748_
                                                    (lambda (_next-clause-id96746_)
                                                      (let ((__tmp97414
                                                             (let ((__tmp97415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196683_
                               _clause96710_
                               _clause-id96726_
                               _next-clause-id96746_))))
                       (declare (not safe))
                       (cons __tmp97415 _bindings96689_))))
                (declare (not safe))
                (_lp96685_ _rest96709_ _rest-ids96725_ __tmp97414)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9672796735_))
                                                  (let* ((_hd9673296751_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9672796735_)))
                                                         (_next-clause-id96754_
                                                          _hd9673296751_))
                                                    (declare (not safe))
                                                    (_K9673196748_
                                                     _next-clause-id96754_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9672996743_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9671196718_))
                                        (let ((_hd9671596759_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9671196718_)))
                                              (_tl9671696761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9671196718_))))
                                          (let* ((_clause-id96764_
                                                  _hd9671596759_)
                                                 (_rest-ids96766_
                                                  _tl9671696761_))
                                            (declare (not safe))
                                            (_K9671496756_
                                             _rest-ids96766_
                                             _clause-id96764_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9671396722_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9669096698_))
                              (let ((_hd9669596771_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9669096698_)))
                                    (_tl9669696773_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9669096698_))))
                                (let* ((_clause96776_ _hd9669596771_)
                                       (_rest96778_ _tl9669696773_))
                                  (declare (not safe))
                                  (_K9669496768_ _rest96778_ _clause96776_)))
                              (let ()
                                (declare (not safe))
                                (_else9669296706_))))))))
                 (_generate-body96083_
                  (lambda (_bindings96637_ _body96638_)
                    (let _recur96640_ ((_rest96642_ _bindings96637_))
                      (let* ((_rest9664396651_ _rest96642_)
                             (_else9664596659_ (lambda () _body96638_))
                             (_K9664796665_
                              (lambda (_rest96662_ _hd96663_)
                                (let ((__tmp97417
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96663_ '())))
                                      (__tmp97416
                                       (let ()
                                         (declare (not safe))
                                         (_recur96640_ _rest96662_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp97417
                                   __tmp97416)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9664396651_))
                            (let ((_hd9664896668_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9664396651_)))
                                  (_tl9664996670_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9664396651_))))
                              (let* ((_hd96673_ _hd9664896668_)
                                     (_rest96675_ _tl9664996670_))
                                (declare (not safe))
                                (_K9664796665_ _rest96675_ _hd96673_)))
                            (let ()
                              (declare (not safe))
                              (_else9664596659_)))))))
                 (_generate-clause96084_
                  (lambda (_target96500_ _ids96501_ _clause96502_ _E96503_)
                    (letrec ((_generate196505_
                              (lambda (_hd96592_ _fender96593_ _body96594_)
                                (let ((_g97418_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause96086_
                                          _hd96592_
                                          _ids96501_))))
                                  (begin
                                    (let ((_g97419_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97418_)
                                                 (##vector-length _g97418_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97419_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97419_)))
                                    (let ((_e96596_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97418_ 0)))
                                          (_mvars96597_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97418_ 1))))
                                      (let* ((_pvars96599_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96597_))))
                                             (_E96601_
                                              (let ((__tmp97420
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96500_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96503_ __tmp97420)))
                                             (_K96634_
                                              (let ((__tmp97421
                                                     (let ((__tmp97423
                                                            (map (lambda (_mvar96603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96604_)
                           (let* ((_mvar9660596612_ _mvar96603_)
                                  (_E9660796616_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9660596612_))))
                                  (_K9660896622_
                                   (lambda (_depth96619_ _id96620_)
                                     (let ((__tmp97424
                                            (let ((__tmp97425
                                                   (let ((__tmp97427
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96620_)))
                                                         (__tmp97426
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96604_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97427
                                                      __tmp97426
                                                      _depth96619_))))
                                              (declare (not safe))
                                              (cons __tmp97425 '()))))
                                       (declare (not safe))
                                       (cons _id96620_ __tmp97424)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9660596612_))
                                 (let ((_hd9660996625_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9660596612_)))
                                       (_tl9661096627_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9660596612_))))
                                   (let* ((_id96630_ _hd9660996625_)
                                          (_depth96632_ _tl9661096627_))
                                     (declare (not safe))
                                     (_K9660896622_ _depth96632_ _id96630_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9660796616_)))))
                         _mvars96597_
                         _pvars96599_))
                   (__tmp97422
                    (if (let () (declare (not safe)) (eq? _fender96593_ '#t))
                        _body96594_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96593_
                           _body96594_
                           _E96601_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp97423 __tmp97422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96599_
                                                 __tmp97421))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match96085_
                                           _hd96592_
                                           _target96500_
                                           _e96596_
                                           _mvars96597_
                                           _K96634_
                                           _E96601_)))))))))
                      (let* ((_e9650696526_ _clause96502_)
                             (_E9651596530_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9650696526_))))
                             (_E9650896564_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9650696526_))
                                    (let ((_e9651696534_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9650696526_))))
                                      (let ((_hd9651796537_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9651696534_)))
                                            (_tl9651896539_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9651696534_))))
                                        (let ((_hd96542_ _hd9651796537_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9651896539_))
                                              (let ((_e9651996544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9651896539_))))
                                                (let ((_hd9652096547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9651996544_)))
                                                      (_tl9652196549_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9651996544_))))
                                                  (let ((_fender96552_
                                                         _hd9652096547_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9652196549_))
                                                        (let ((_e9652296554_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9652196549_))))
                  (let ((_hd9652396557_
                         (let () (declare (not safe)) (##car _e9652296554_)))
                        (_tl9652496559_
                         (let () (declare (not safe)) (##cdr _e9652296554_))))
                    (let ((_body96562_ _hd9652396557_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9652496559_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196505_
                                 _hd96542_
                                 _fender96552_
                                 _body96562_))
                              (let () (declare (not safe)) (_E9651596530_)))
                          (let () (declare (not safe)) (_E9651596530_))))))
                (let () (declare (not safe)) (_E9651596530_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9651596530_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9651596530_)))))
                             (_E9650796588_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9650696526_))
                                    (let ((_e9650996568_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9650696526_))))
                                      (let ((_hd9651096571_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9650996568_)))
                                            (_tl9651196573_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9650996568_))))
                                        (let ((_hd96576_ _hd9651096571_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9651196573_))
                                              (let ((_e9651296578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9651196573_))))
                                                (let ((_hd9651396581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9651296578_)))
                                                      (_tl9651496583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9651296578_))))
                                                  (let ((_body96586_
                                                         _hd9651396581_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9651496583_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196505_
                                                               _hd96576_
                                                               '#t
                                                               _body96586_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9650896564_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9650896564_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9650896564_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9650896564_))))))
                        (let () (declare (not safe)) (_E9650796588_))))))
                 (_generate-match96085_
                  (lambda (_where96249_
                           _target96250_
                           _hd96251_
                           _mvars96252_
                           _K96253_
                           _E96254_)
                    (letrec ((_BUG96256_
                              (lambda (_q96498_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx96077_
                                         _hd96251_
                                         _q96498_))))
                             (_recur96257_
                              (lambda (_e96348_
                                       _vars96349_
                                       _target96350_
                                       _E96351_
                                       _k96352_)
                                (let* ((_e9635396360_ _e96348_)
                                       (_E9635596364_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9635396360_))))
                                       (_K9635696486_
                                        (lambda (_body96367_ _tag96368_)
                                          (let ((_$e96370_ _tag96368_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e96370_))
                                                (_k96352_ _vars96349_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e96370_))
                                                    (let ((__tmp97534
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target96350_)))
                                                          (__tmp97530
                                                           (let ((__tmp97532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97533
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e96080_ _body96367_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?96078_
                             __tmp97533
                             _target96350_)))
                         (__tmp97531 (_k96352_ _vars96349_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97532 __tmp97531 _E96351_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97534 __tmp97530 _E96351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e96370_))
                                                        (_k96352_
                                                         (let ((__tmp97529
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body96367_ _target96350_))))
                   (declare (not safe))
                   (cons __tmp97529 _vars96349_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e96370_))
                    (let ((_$e96373_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd96374_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl96375_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97528
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target96350_)))
                            (__tmp97509
                             (let ((__tmp97523
                                    (let ((__tmp97524
                                           (let ((__tmp97527
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e96373_ '())))
                                                 (__tmp97525
                                                  (let ((__tmp97526
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e96079_
                                                            _target96350_))))
                                                    (declare (not safe))
                                                    (cons __tmp97526 '()))))
                                             (declare (not safe))
                                             (cons __tmp97527 __tmp97525))))
                                      (declare (not safe))
                                      (cons __tmp97524 '())))
                                   (__tmp97510
                                    (let ((__tmp97513
                                           (let ((__tmp97519
                                                  (let ((__tmp97522
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd96374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97520
                 (let ((__tmp97521
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e96373_))))
                   (declare (not safe))
                   (cons __tmp97521 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97522
                                                          __tmp97520)))
                                                 (__tmp97514
                                                  (let ((__tmp97515
                                                         (let ((__tmp97518
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl96375_ '())))
                       (__tmp97516
                        (let ((__tmp97517
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e96373_))))
                          (declare (not safe))
                          (cons __tmp97517 '()))))
                   (declare (not safe))
                   (cons __tmp97518 __tmp97516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97515 '()))))
                                             (declare (not safe))
                                             (cons __tmp97519 __tmp97514)))
                                          (__tmp97511
                                           (let* ((_body9637696383_
                                                   _body96367_)
                                                  (_E9637896387_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9637696383_))))
                                                  (_K9637996395_
                                                   (lambda (_tl96390_
                                                            _hd96391_)
                                                     (let ((__tmp97512
                                                            (lambda (_vars96393_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur96257_
                         _tl96390_
                         _vars96393_
                         _$tl96375_
                         _E96351_
                         _k96352_)))))
               (declare (not safe))
               (_recur96257_
                _hd96391_
                _vars96349_
                _$hd96374_
                _E96351_
                __tmp97512)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9637696383_))
                                                 (let ((_hd9638096398_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9637696383_)))
                                                       (_tl9638196400_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9637696383_))))
                                                   (let* ((_hd96403_
                                                           _hd9638096398_)
                                                          (_tl96405_
                                                           _tl9638196400_))
                                                     (declare (not safe))
                                                     (_K9637996395_
                                                      _tl96405_
                                                      _hd96403_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9637896387_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97513
                                       __tmp97511))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97523
                                __tmp97510))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97528 __tmp97509 _E96351_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e96370_))
                        (let* ((_body9640696413_ _body96367_)
                               (_E9640896417_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9640696413_))))
                               (_K9640996468_
                                (lambda (_tl96420_ _hd96421_)
                                  (let* ((_rlen96423_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen96258_ _tl96420_)))
                                         (_$target96425_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96427_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96429_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96431_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96433_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96435_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96437_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96439_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars96259_ _hd96421_)))
                                         (_lvars96441_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96439_)))
                                         (_tlvars96443_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96439_)))
                                         (_linit96447_
                                          (map (lambda (_var96445_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96441_)))
                                    (letrec ((_make-loop96450_
                                              (lambda (_vars96454_)
                                                (let ((__tmp97460
                                                       (let ((__tmp97461
                                                              (let ((__tmp97497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96431_ '())))
                            (__tmp97462
                             (let ((__tmp97463
                                    (let ((__tmp97496
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96427_ _lvars96441_)))
                                          (__tmp97464
                                           (let ((__tmp97495
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96427_)))
                                                 (__tmp97473
                                                  (let ((__tmp97490
                                                         (let ((__tmp97491
                                                                (let ((__tmp97494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96433_ '())))
                              (__tmp97492
                               (let ((__tmp97493
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e96079_
                                         _$hd96427_))))
                                 (declare (not safe))
                                 (cons __tmp97493 '()))))
                          (declare (not safe))
                          (cons __tmp97494 __tmp97492))))
                   (declare (not safe))
                   (cons __tmp97491 '())))
                (__tmp97474
                 (let ((__tmp97480
                        (let ((__tmp97486
                               (let ((__tmp97489
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96435_ '())))
                                     (__tmp97487
                                      (let ((__tmp97488
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96433_))))
                                        (declare (not safe))
                                        (cons __tmp97488 '()))))
                                 (declare (not safe))
                                 (cons __tmp97489 __tmp97487)))
                              (__tmp97481
                               (let ((__tmp97482
                                      (let ((__tmp97485
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96437_ '())))
                                            (__tmp97483
                                             (let ((__tmp97484
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96433_))))
                                               (declare (not safe))
                                               (cons __tmp97484 '()))))
                                        (declare (not safe))
                                        (cons __tmp97485 __tmp97483))))
                                 (declare (not safe))
                                 (cons __tmp97482 '()))))
                          (declare (not safe))
                          (cons __tmp97486 __tmp97481)))
                       (__tmp97475
                        (let ((__tmp97476
                               (lambda (_hdvars96456_)
                                 (let ((__tmp97477
                                        (let ((__tmp97478
                                               (map (lambda (_svar96458_
                                                             _lvar96459_)
                                                      (let ((__tmp97479
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96458_ _hdvars96456_ _BUG96256_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97479 _lvar96459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96439_
                                                    _lvars96441_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96437_ __tmp97478))))
                                   (declare (not safe))
                                   (cons _$lp96431_ __tmp97477)))))
                          (declare (not safe))
                          (_recur96257_
                           _hd96421_
                           '()
                           _$lp-hd96435_
                           _E96351_
                           __tmp97476))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97480 __tmp97475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97490
                                                     __tmp97474)))
                                                 (__tmp97465
                                                  (let ((__tmp97469
                                                         (map (lambda (_lvar96461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96462_)
                        (let ((__tmp97472
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96462_ '())))
                              (__tmp97470
                               (let ((__tmp97471
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96461_))))
                                 (declare (not safe))
                                 (cons __tmp97471 '()))))
                          (declare (not safe))
                          (cons __tmp97472 __tmp97470)))
                      _lvars96441_
                      _tlvars96443_))
                (__tmp97466
                 (_k96352_
                  (let ((__tmp97467
                         (lambda (_svar96464_ _tlvar96465_ _r96466_)
                           (let ((__tmp97468
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96464_ _tlvar96465_))))
                             (declare (not safe))
                             (cons __tmp97468 _r96466_)))))
                    (declare (not safe))
                    (foldl2 __tmp97467
                            _vars96454_
                            _svars96439_
                            _tlvars96443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97469
                                                     __tmp97466))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97495
                                              __tmp97473
                                              __tmp97465))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97496
                                       __tmp97464))))
                               (declare (not safe))
                               (cons __tmp97463 '()))))
                        (declare (not safe))
                        (cons __tmp97497 __tmp97462))))
                 (declare (not safe))
                 (cons __tmp97461 '())))
              (__tmp97458
               (let ((__tmp97459
                      (let ()
                        (declare (not safe))
                        (cons _$target96425_ _linit96447_))))
                 (declare (not safe))
                 (cons _$lp96431_ __tmp97459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97460
                                                   __tmp97458)))))
                                      (let ((_body96452_
                                             (let ((__tmp97499
                                                    (let ((__tmp97500
                                                           (let ((__tmp97503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97504
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96429_ '()))))
                            (declare (not safe))
                            (cons _$target96425_ __tmp97504)))
                         (__tmp97501
                          (let ((__tmp97502
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target96350_
                                    _rlen96423_))))
                            (declare (not safe))
                            (cons __tmp97502 '()))))
                     (declare (not safe))
                     (cons __tmp97503 __tmp97501))))
              (declare (not safe))
              (cons __tmp97500 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97498
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96257_
                                                       _tl96420_
                                                       _vars96349_
                                                       _$tl96429_
                                                       _E96351_
                                                       _make-loop96450_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97499
                                                __tmp97498))))
                                        (let ((__tmp97508
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target96350_)))
                                              (__tmp97505
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen96423_))
                                                   _body96452_
                                                   (let ((__tmp97506
                                                          (let ((__tmp97507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target96350_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97507 _rlen96423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97506
                                                      _body96452_
                                                      _E96351_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97508
                                           __tmp97505
                                           _E96351_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9640696413_))
                              (let ((_hd9641096471_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9640696413_)))
                                    (_tl9641196473_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9640696413_))))
                                (let* ((_hd96476_ _hd9641096471_)
                                       (_tl96478_ _tl9641196473_))
                                  (declare (not safe))
                                  (_K9640996468_ _tl96478_ _hd96476_)))
                              (let () (declare (not safe)) (_E9640896417_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e96370_))
                            (let ((__tmp97457
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target96350_)))
                                  (__tmp97456 (_k96352_ _vars96349_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97457
                               __tmp97456
                               _E96351_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e96370_))
                                (let ((_$e96480_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97455
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target96350_)))
                                        (__tmp97447
                                         (let ((__tmp97449
                                                (let ((__tmp97450
                                                       (let ((__tmp97454
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96480_ '())))
                     (__tmp97451
                      (let ((__tmp97452
                             (let ((__tmp97453
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e96079_
                                       _target96350_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97453))))
                        (declare (not safe))
                        (cons __tmp97452 '()))))
                 (declare (not safe))
                 (cons __tmp97454 __tmp97451))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97450 '())))
                                               (__tmp97448
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur96257_
                                                   _body96367_
                                                   _vars96349_
                                                   _$e96480_
                                                   _E96351_
                                                   _k96352_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97449
                                            __tmp97448))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97455
                                     __tmp97447
                                     _E96351_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e96370_))
                                    (let ((_$e96482_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97446
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target96350_)))
                                            (__tmp97438
                                             (let ((__tmp97440
                                                    (let ((__tmp97441
                                                           (let ((__tmp97445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96482_ '())))
                         (__tmp97442
                          (let ((__tmp97443
                                 (let ((__tmp97444
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e96079_
                                           _target96350_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97444))))
                            (declare (not safe))
                            (cons __tmp97443 '()))))
                     (declare (not safe))
                     (cons __tmp97445 __tmp97442))))
              (declare (not safe))
              (cons __tmp97441 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97439
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96257_
                                                       _body96367_
                                                       _vars96349_
                                                       _$e96482_
                                                       _E96351_
                                                       _k96352_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97440
                                                __tmp97439))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97446
                                         __tmp97438
                                         _E96351_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96370_))
                                        (let ((_$e96484_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97437
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target96350_)))
                                                (__tmp97428
                                                 (let ((__tmp97432
                                                        (let ((__tmp97433
                                                               (let ((__tmp97436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96484_ '())))
                             (__tmp97434
                              (let ((__tmp97435
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target96350_))))
                                (declare (not safe))
                                (cons __tmp97435 '()))))
                         (declare (not safe))
                         (cons __tmp97436 __tmp97434))))
                  (declare (not safe))
                  (cons __tmp97433 '())))
               (__tmp97429
                (let ((__tmp97431
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96484_ _body96367_)))
                      (__tmp97430 (_k96352_ _vars96349_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97431 __tmp97430 _E96351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97432
                                                    __tmp97429))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97437
                                             __tmp97428
                                             _E96351_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG96256_ _e96348_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9635396360_))
                                      (let ((_hd9635796489_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9635396360_)))
                                            (_tl9635896491_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9635396360_))))
                                        (let* ((_tag96494_ _hd9635796489_)
                                               (_body96496_ _tl9635896491_))
                                          (declare (not safe))
                                          (_K9635696486_
                                           _body96496_
                                           _tag96494_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9635596364_))))))
                             (_splice-rlen96258_
                              (lambda (_e96310_)
                                (let _lp96312_ ((_e96314_ _e96310_)
                                                (_n96315_ '0))
                                  (let* ((_e9631696323_ _e96314_)
                                         (_E9631896327_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9631696323_))))
                                         (_K9631996336_
                                          (lambda (_body96330_ _tag96331_)
                                            (let ((_$e96333_ _tag96331_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e96333_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx96077_
                                                     _where96249_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e96333_))
                                                      (let ((__tmp97536
                                                             (cdr _body96330_))
                                                            (__tmp97535
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n96315_ '1))))
                (declare (not safe))
                (_lp96312_ __tmp97536 __tmp97535))
              _n96315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9631696323_))
                                        (let ((_hd9632096339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9631696323_)))
                                              (_tl9632196341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9631696323_))))
                                          (let* ((_tag96344_ _hd9632096339_)
                                                 (_body96346_ _tl9632196341_))
                                            (declare (not safe))
                                            (_K9631996336_
                                             _body96346_
                                             _tag96344_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9631896327_)))))))
                             (_splice-vars96259_
                              (lambda (_e96266_)
                                (let _recur96268_ ((_e96270_ _e96266_)
                                                   (_vars96271_ '()))
                                  (let* ((_e9627296279_ _e96270_)
                                         (_E9627496283_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9627296279_))))
                                         (_K9627596298_
                                          (lambda (_body96286_ _tag96287_)
                                            (let ((_$e96289_ _tag96287_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e96289_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body96286_
                                                          _vars96271_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e96289_))
                  (let () (declare (not safe)) (eq? 'splice _$e96289_)))
              (let ((__tmp97539 (cdr _body96286_))
                    (__tmp97537
                     (let ((__tmp97538 (car _body96286_)))
                       (declare (not safe))
                       (_recur96268_ __tmp97538 _vars96271_))))
                (declare (not safe))
                (_recur96268_ __tmp97539 __tmp97537))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e96289_))
                      (let () (declare (not safe)) (eq? 'box _$e96289_)))
                  (let ()
                    (declare (not safe))
                    (_recur96268_ _body96286_ _vars96271_))
                  _vars96271_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9627296279_))
                                        (let ((_hd9627696301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9627296279_)))
                                              (_tl9627796303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9627296279_))))
                                          (let* ((_tag96306_ _hd9627696301_)
                                                 (_body96308_ _tl9627796303_))
                                            (declare (not safe))
                                            (_K9627596298_
                                             _body96308_
                                             _tag96306_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9627496283_)))))))
                             (_make-body96260_
                              (lambda (_vars96262_)
                                (let ((__tmp97540
                                       (map (lambda (_mvar96264_)
                                              (let ((__tmp97541
                                                     (car _mvar96264_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97541
                                                 _vars96262_
                                                 _BUG96256_)))
                                            _mvars96252_)))
                                  (declare (not safe))
                                  (cons _K96253_ __tmp97540)))))
                      (let ()
                        (declare (not safe))
                        (_recur96257_
                         _hd96251_
                         '()
                         _target96250_
                         _E96254_
                         _make-body96260_)))))
                 (_parse-clause96086_
                  (lambda (_hd96155_ _ids96156_)
                    (let _recur96158_ ((_e96160_ _hd96155_)
                                       (_vars96161_ '())
                                       (_depth96162_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e96160_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e96160_))
                              (values '(any) _vars96161_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e96160_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx96077_
                                     _hd96155_))
                                  (if (let ((__tmp97557
                                             (lambda (_id96164_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e96160_
                                                  _id96164_)))))
                                        (declare (not safe))
                                        (find __tmp97557 _ids96156_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e96160_))
                                              _vars96161_)
                                      (if (let ((__tmp97555
                                                 (lambda (_var96166_)
                                                   (let ((__tmp97556
                                                          (car _var96166_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e96160_
                                                      __tmp97556)))))
                                            (declare (not safe))
                                            (find __tmp97555 _vars96161_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx96077_
                                             _e96160_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e96160_))
                                                  (let ((__tmp97554
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e96160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth96162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97554
                                                          _vars96161_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e96160_))
                              (let* ((_e9616796174_ _e96160_)
                                     (_E9616996178_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9616796174_))))
                                     (_E9616896239_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9616796174_))
                                            (let ((_e9617096182_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9616796174_))))
                                              (let ((_hd9617196185_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9617096182_)))
                                                    (_tl9617296187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9617096182_))))
                                                (let* ((_hd96190_
                                                        _hd9617196185_)
                                                       (_rest96192_
                                                        _tl9617296187_))
                                                  (if '#t
                                                      (let* ((_make-pair96207_
                                                              (lambda (_tag96194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd96195_
                               _tl96196_)
                        (let* ((_hd-depth96198_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag96194_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth96162_ '1))
                                    _depth96162_))
                               (_g97549_
                                (let ()
                                  (declare (not safe))
                                  (_recur96158_
                                   _hd96195_
                                   _vars96161_
                                   _hd-depth96198_))))
                          (begin
                            (let ((_g97550_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97549_)
                                         (##vector-length _g97549_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97550_ 2)))
                                  (error "Context expects 2 values" _g97550_)))
                            (let ((_hd96200_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97549_ 0)))
                                  (_vars96201_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97549_ 1))))
                              (let ((_g97551_
                                     (let ()
                                       (declare (not safe))
                                       (_recur96158_
                                        _tl96196_
                                        _vars96201_
                                        _depth96162_))))
                                (begin
                                  (let ((_g97552_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97551_)
                                               (##vector-length _g97551_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97552_ 2)))
                                        (error "Context expects 2 values"
                                               _g97552_)))
                                  (let ((_tl96203_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97551_ 0)))
                                        (_vars96204_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97551_ 1))))
                                    (let ()
                                      (values (let ((__tmp97553
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd96200_
                                                             _tl96203_))))
                                                (declare (not safe))
                                                (cons _tag96194_ __tmp97553))
                                              _vars96204_))))))))))
                     (_e9620896215_ _rest96192_)
                     (_E9621096219_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair96207_ 'cons _hd96190_ _rest96192_))))
                     (_E9620996235_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9620896215_))
                            (let ((_e9621196223_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9620896215_))))
                              (let ((_hd9621296226_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9621196223_)))
                                    (_tl9621396228_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9621196223_))))
                                (let* ((_rest-hd96231_ _hd9621296226_)
                                       (_rest-tl96233_ _tl9621396228_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd96231_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96207_
                                             'splice
                                             _hd96190_
                                             _rest-tl96233_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96207_
                                             'cons
                                             _hd96190_
                                             _rest96192_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9621096219_))))))
                            (let () (declare (not safe)) (_E9621096219_))))))
                (let () (declare (not safe)) (_E9620996235_)))
              (let () (declare (not safe)) (_E9616996178_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9616996178_))))))
                                (let () (declare (not safe)) (_E9616896239_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e96160_))
                                  (values '(null) _vars96161_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e96160_))
                                      (let ((_g97546_
                                             (let ((__tmp97548
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e96160_)))))
                                               (declare (not safe))
                                               (_recur96158_
                                                __tmp97548
                                                _vars96161_
                                                _depth96162_))))
                                        (begin
                                          (let ((_g97547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97546_)
                                                       (##vector-length
                                                        _g97546_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97547_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97547_)))
                                          (let ((_e96243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97546_ 0)))
                                                (_vars96244_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97546_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e96243_))
                                                    _vars96244_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e96160_))
                                          (let ((_g97543_
                                                 (let ((__tmp97545
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e96160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur96158_
                                                    __tmp97545
                                                    _vars96161_
                                                    _depth96162_))))
                                            (begin
                                              (let ((_g97544_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97543_)
                                                           (##vector-length
                                                            _g97543_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97544_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97544_)))
                                              (let ((_e96246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97543_
                                                        0)))
                                                    (_vars96247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97543_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e96246_))
                                                        _vars96247_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e96160_))
                                              (values (let ((__tmp97542
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e96160_))))
                (declare (not safe))
                (cons 'datum __tmp97542))
              _vars96161_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx96077_
                                                 _e96160_))))))))))))
          (let* ((_e9608796100_ _stx96077_)
                 (_E9608996104_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9608796100_))))
                 (_E9608896151_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9608796100_))
                        (let ((_e9609096108_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9608796100_))))
                          (let ((_hd9609196111_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9609096108_)))
                                (_tl9609296113_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9609096108_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9609296113_))
                                (let ((_e9609396116_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9609296113_))))
                                  (let ((_hd9609496119_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9609396116_)))
                                        (_tl9609596121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9609396116_))))
                                    (let ((_expr96124_ _hd9609496119_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9609596121_))
                                          (let ((_e9609696126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9609596121_))))
                                            (let ((_hd9609796129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9609696126_)))
                                                  (_tl9609896131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9609696126_))))
                                              (let* ((_ids96134_
                                                      _hd9609796129_)
                                                     (_clauses96136_
                                                      _tl9609896131_))
                                                (if '#t
                                                    (if (let ((__tmp97575
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids96134_))))
                  (declare (not safe))
                  (not __tmp97575))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx96077_
                   _ids96134_))
                (if (let ((__tmp97574
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses96136_))))
                      (declare (not safe))
                      (not __tmp97574))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx96077_))
                    (let* ((_ids96138_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids96134_)))
                           (_clauses96140_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses96136_)))
                           (_clause-ids96142_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses96140_)))
                           (_E96144_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target96146_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first96148_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses96140_))
                                _E96144_
                                (car _clause-ids96142_))))
                      (let ((__tmp97559
                             (let ((__tmp97560
                                    (let ((__tmp97562
                                           (let ((__tmp97567
                                                  (let ((__tmp97568
                                                         (let ((__tmp97573
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E96144_ '())))
                       (__tmp97569
                        (let ((__tmp97570
                               (let ((__tmp97572
                                      (let ()
                                        (declare (not safe))
                                        (cons _target96146_ '())))
                                     (__tmp97571
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target96146_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97572
                                  __tmp97571))))
                          (declare (not safe))
                          (cons __tmp97570 '()))))
                   (declare (not safe))
                   (cons __tmp97573 __tmp97569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97568 '())))
                                                 (__tmp97563
                                                  (let ((__tmp97566
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings96082_
                                                            _target96146_
                                                            _ids96138_
                                                            _clauses96140_
                                                            _clause-ids96142_
                                                            _E96144_)))
                                                        (__tmp97564
                                                         (let ((__tmp97565
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr96124_ '()))))
                   (declare (not safe))
                   (cons _first96148_ __tmp97565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body96083_
                                                     __tmp97566
                                                     __tmp97564))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97567
                                              __tmp97563)))
                                          (__tmp97561
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx96077_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97562
                                       __tmp97561))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97560)))
                            (__tmp97558
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx96077_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97559 __tmp97558)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9608996104_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9608996104_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9608996104_)))))
                        (let () (declare (not safe)) (_E9608996104_))))))
            (let () (declare (not safe)) (_E9608896151_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx96787_)
        (let* ((_identifier=?96789_ 'free-identifier=?)
               (_unwrap-e96791_ 'syntax-e)
               (_wrap-e96793_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96787_
           _identifier=?96789_
           _unwrap-e96791_
           _wrap-e96793_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx96795_ _identifier=?96796_)
        (let* ((_unwrap-e96798_ 'syntax-e) (_wrap-e96800_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96795_
           _identifier=?96796_
           _unwrap-e96798_
           _wrap-e96800_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx96802_ _identifier=?96803_ _unwrap-e96804_)
        (let ((_wrap-e96806_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx96802_
           _identifier=?96803_
           _unwrap-e96804_
           _wrap-e96806_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97577_
        (let ((_g97576_ (let () (declare (not safe)) (##length _g97577_))))
          (cond ((let () (declare (not safe)) (##fx= _g97576_ 1))
                 (apply (lambda (_stx96787_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx96787_)))
                        _g97577_))
                ((let () (declare (not safe)) (##fx= _g97576_ 2))
                 (apply (lambda (_stx96795_ _identifier=?96796_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx96795_
                             _identifier=?96796_)))
                        _g97577_))
                ((let () (declare (not safe)) (##fx= _g97576_ 3))
                 (apply (lambda (_stx96802_
                                 _identifier=?96803_
                                 _unwrap-e96804_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx96802_
                             _identifier=?96803_
                             _unwrap-e96804_)))
                        _g97577_))
                ((let () (declare (not safe)) (##fx= _g97576_ 4))
                 (apply (lambda (_stx96808_
                                 _identifier=?96809_
                                 _unwrap-e96810_
                                 _wrap-e96811_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx96808_
                             _identifier=?96809_
                             _unwrap-e96810_
                             _wrap-e96811_)))
                        _g97577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97577_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx96074_)
        (if (let () (declare (not safe)) (gx#identifier? _stx96074_))
            (let ((__tmp97578
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx96074_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97578 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96032_ . _rest96033_)
        (let ((_len96035_ (length _hd96032_)))
          (let _lp96037_ ((_rest96039_ _rest96033_))
            (let* ((_rest9604096048_ _rest96039_)
                   (_else9604296056_ (lambda () '#!void))
                   (_K9604496062_
                    (lambda (_rest96059_ _hd96060_)
                      (if (fx= _len96035_ (length _hd96060_))
                          (let () (declare (not safe)) (_lp96037_ _rest96059_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96060_))))))
              (if (let () (declare (not safe)) (##pair? _rest9604096048_))
                  (let ((_hd9604596065_
                         (let ()
                           (declare (not safe))
                           (##car _rest9604096048_)))
                        (_tl9604696067_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9604096048_))))
                    (let* ((_hd96070_ _hd9604596065_)
                           (_rest96072_ _tl9604696067_))
                      (declare (not safe))
                      (_K9604496062_ _rest96072_ _hd96070_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx95990_ _n95991_)
        (let _lp95993_ ((_rest95995_ _stx95990_) (_r95996_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest95995_))
              (let* ((_g9599796004_
                      (let () (declare (not safe)) (gx#syntax-e _rest95995_)))
                     (_E9599996008_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9599796004_))))
                     (_K9600096014_
                      (lambda (_rest96011_ _hd96012_)
                        (let ((__tmp97583
                               (let ()
                                 (declare (not safe))
                                 (cons _hd96012_ _r95996_))))
                          (declare (not safe))
                          (_lp95993_ _rest96011_ __tmp97583)))))
                (if (let () (declare (not safe)) (##pair? _g9599796004_))
                    (let ((_hd9600196017_
                           (let () (declare (not safe)) (##car _g9599796004_)))
                          (_tl9600296019_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9599796004_))))
                      (let* ((_hd96022_ _hd9600196017_)
                             (_rest96024_ _tl9600296019_))
                        (declare (not safe))
                        (_K9600096014_ _rest96024_ _hd96022_)))
                    (let () (declare (not safe)) (_E9599996008_))))
              (let _lp96026_ ((_n96028_ _n95991_)
                              (_l96029_ _r95996_)
                              (_r96030_ _rest95995_))
                (if (let () (declare (not safe)) (null? _l96029_))
                    (values _l96029_ _r96030_)
                    (if (fxpositive? _n96028_)
                        (let ((__tmp97582
                               (let () (declare (not safe)) (fx- _n96028_ '1)))
                              (__tmp97581 (cdr _l96029_))
                              (__tmp97579
                               (let ((__tmp97580 (car _l96029_)))
                                 (declare (not safe))
                                 (cons __tmp97580 _r96030_))))
                          (declare (not safe))
                          (_lp96026_ __tmp97582 __tmp97581 __tmp97579))
                        (values (reverse _l96029_) _r96030_))))))))))
