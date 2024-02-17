(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708165431)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp192434 (list gx#expander::t))
            (__tmp192432
             (let ((__tmp192433
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192433 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp192434
         '(id depth)
         __tmp192432
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args187861_
        (apply make-instance gx#syntax-pattern::t _$args187861_)))
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
      (lambda (_self187858_ _stx187859_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx187859_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx187340_)
        (letrec ((_generate187342_
                  (lambda (_e187569_)
                    (letrec ((_BUG187571_
                              (lambda (_q187733_)
                                (error '"BUG: syntax; generate"
                                       _stx187340_
                                       _e187569_
                                       _q187733_)))
                             (_local-pattern-e187572_
                              (lambda (_pat187731_)
                                (let ((__tmp192435
                                       (##structure-ref
                                        _pat187731_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp192435))))
                             (_getvar187573_
                              (lambda (_q187728_ _vars187729_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q187728_
                                           _vars187729_
                                           _BUG187571_))))
                             (_getarg187574_
                              (lambda (_arg187694_ _vars187695_)
                                (let* ((_arg187696187703_ _arg187694_)
                                       (_E187698187707_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg187696187703_)))
                                       (_K187699187716_
                                        (lambda (_e187710_ _tag187711_)
                                          (let ((_$e187713_ _tag187711_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e187713_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar187573_
                                                   _e187710_
                                                   _vars187695_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e187713_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e187572_
                                                       _e187710_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG187571_
                                                       _arg187694_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg187696187703_))
                                      (let ((_hd187700187719_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg187696187703_)))
                                            (_tl187701187721_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg187696187703_))))
                                        (let* ((_tag187724_ _hd187700187719_)
                                               (_e187726_ _tl187701187721_))
                                          (declare (not safe))
                                          (_K187699187716_
                                           _e187726_
                                           _tag187724_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E187698187707_)))))))
                      (let _recur187576_ ((_e187578_ _e187569_)
                                          (_vars187579_ '()))
                        (let* ((_e187580187587_ _e187578_)
                               (_E187582187591_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e187580187587_)))
                               (_K187583187682_
                                (lambda (_body187594_ _tag187595_)
                                  (let ((_$e187597_ _tag187595_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e187597_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body187594_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e187597_))
                                            (let ((_id187600_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body187594_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id187600_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks187602_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id187600_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks187602_))
                                                        (let ((__tmp192463
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body187594_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp192463))
                (let ((__tmp192462
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body187594_)))
                      (__tmp192461
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body187594_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp192462
                   __tmp192461
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id187600_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body187594_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG187571_
                                                         _e187578_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e187597_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e187572_
                                                   _body187594_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e187597_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar187573_
                                                       _body187594_
                                                       _vars187579_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e187597_))
                                                        (let ((__tmp192459
                                                               (let ((__tmp192460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body187594_)))
                         (declare (not safe))
                         (_recur187576_ __tmp192460 _vars187579_)))
                      (__tmp192457
                       (let ((__tmp192458 (cdr _body187594_)))
                         (declare (not safe))
                         (_recur187576_ __tmp192458 _vars187579_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp192459 __tmp192457))
                (if (let () (declare (not safe)) (eq? 'vector _$e187597_))
                    (let ((__tmp192456
                           (let ()
                             (declare (not safe))
                             (_recur187576_ _body187594_ _vars187579_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp192456))
                    (if (let () (declare (not safe)) (eq? 'box _$e187597_))
                        (let ((__tmp192455
                               (let ()
                                 (declare (not safe))
                                 (_recur187576_ _body187594_ _vars187579_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp192455))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e187597_))
                            (let* ((_body187603187614_ _body187594_)
                                   (_E187605187618_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body187603187614_)))
                                   (_K187606187656_
                                    (lambda (_args187621_
                                             _iv187622_
                                             _hd187623_
                                             _depth187624_)
                                      (let* ((_targets187630_
                                              (map (lambda (_g187625187627_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg187574_
                                                        _g187625187627_
                                                        _vars187579_)))
                                                   _args187621_))
                                             (_fold-in187632_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args187621_)))
                                             (_fold-out187634_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args187636_
                                              (let ((__tmp192436
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out187634_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp192436
                                                        _fold-in187632_)))
                                             (_lambda-body187653_
                                              (if (fx> _depth187624_ '1)
                                                  (let ((_r-args187644_
                                                         (map (lambda (_arg187638_)
                                                                (let ((__tmp192441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg187638_)))
                          (declare (not safe))
                          (cons 'ref __tmp192441)))
                      _args187621_))
                (_r-vars187645_
                 (let ((__tmp192442
                        (lambda (_arg187640_ _var187641_ _r187642_)
                          (let ((__tmp192443
                                 (let ((__tmp192444 (cdr _arg187640_)))
                                   (declare (not safe))
                                   (cons __tmp192444 _var187641_))))
                            (declare (not safe))
                            (cons __tmp192443 _r187642_)))))
                   (declare (not safe))
                   (foldr2 __tmp192442
                           _vars187579_
                           _args187621_
                           _fold-in187632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp192445
                                                           (let ((__tmp192446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp192450
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth187624_ '1)))
                                (__tmp192447
                                 (let ((__tmp192448
                                        (let ((__tmp192449
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out187634_))))
                                          (declare (not safe))
                                          (cons __tmp192449 _r-args187644_))))
                                   (declare (not safe))
                                   (cons _hd187623_ __tmp192448))))
                            (declare (not safe))
                            (cons __tmp192450 __tmp192447))))
                     (declare (not safe))
                     (cons 'splice __tmp192446))))
              (declare (not safe))
              (_recur187576_ __tmp192445 _r-vars187645_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars187651_
                                                          (let ((__tmp192437
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg187647_ _var187648_ _r187649_)
                           (let ((__tmp192438
                                  (let ((__tmp192439 (cdr _arg187647_)))
                                    (declare (not safe))
                                    (cons __tmp192439 _var187648_))))
                             (declare (not safe))
                             (cons __tmp192438 _r187649_)))))
                    (declare (not safe))
                    (foldr2 __tmp192437
                            _vars187579_
                            _args187621_
                            _fold-in187632_)))
                 (__tmp192440
                  (let ()
                    (declare (not safe))
                    (_recur187576_ _hd187623_ _hd-vars187651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp192440
                                                     _fold-out187634_)))))
                                        (let ((__tmp192454
                                               (if (fx> (length _targets187630_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets187630_))
                                                   '#!void))
                                              (__tmp192451
                                               (let ((__tmp192453
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args187636_
                                                         _lambda-body187653_)))
                                                     (__tmp192452
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur187576_
                                                         _iv187622_
                                                         _vars187579_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp192453
                                                  __tmp192452
                                                  _targets187630_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp192454
                                           __tmp192451))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body187603187614_))
                                  (let ((_hd187607187659_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body187603187614_)))
                                        (_tl187608187661_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body187603187614_))))
                                    (let ((_depth187664_ _hd187607187659_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl187608187661_))
                                          (let ((_hd187609187666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl187608187661_)))
                                                (_tl187610187668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl187608187661_))))
                                            (let ((_hd187671_
                                                   _hd187609187666_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl187610187668_))
                                                  (let ((_hd187611187673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl187610187668_)))
                                                        (_tl187612187675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl187610187668_))))
                                                    (let* ((_iv187678_
                                                            _hd187611187673_)
                                                           (_args187680_
                                                            _tl187612187675_))
                                                      (declare (not safe))
                                                      (_K187606187656_
                                                       _args187680_
                                                       _iv187678_
                                                       _hd187671_
                                                       _depth187664_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E187605187618_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E187605187618_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E187605187618_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e187597_))
                                _body187594_
                                (let ()
                                  (declare (not safe))
                                  (_BUG187571_ _e187578_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e187580187587_))
                              (let ((_hd187584187685_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e187580187587_)))
                                    (_tl187585187687_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e187580187587_))))
                                (let* ((_tag187690_ _hd187584187685_)
                                       (_body187692_ _tl187585187687_))
                                  (declare (not safe))
                                  (_K187583187682_ _body187692_ _tag187690_)))
                              (let ()
                                (declare (not safe))
                                (_E187582187591_))))))))
                 (_parse187343_
                  (lambda (_e187384_)
                    (letrec ((_make-cons187386_
                              (lambda (_hd187561_ _tl187562_)
                                (let ((_g192464_ _hd187561_)
                                      (_g192466_ _tl187562_))
                                  (begin
                                    (let ((_g192465_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192464_)
                                                 (##vector-length _g192464_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192465_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192465_)))
                                    (let ((_g192467_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192466_)
                                                 (##vector-length _g192466_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192467_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192467_)))
                                    (let ((_hd-e187564_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192464_ 0)))
                                          (_hd-vars187565_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192464_ 1))))
                                      (let ((_tl-e187566_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192466_ 0)))
                                            (_tl-vars187567_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192466_ 1))))
                                        (values (let ((__tmp192468
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e187564_
                                                               _tl-e187566_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp192468))
                                                (append _hd-vars187565_
                                                        _tl-vars187567_))))))))
                             (_make-splice187387_
                              (lambda (_where187500_
                                       _depth187501_
                                       _hd187502_
                                       _tl187503_)
                                (let ((_g192469_ _hd187502_)
                                      (_g192471_ _tl187503_))
                                  (begin
                                    (let ((_g192470_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192469_)
                                                 (##vector-length _g192469_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192470_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192470_)))
                                    (let ((_g192472_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192471_)
                                                 (##vector-length _g192471_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192472_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192472_)))
                                    (let ((_hd-e187505_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192469_ 0)))
                                          (_hd-vars187506_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192469_ 1))))
                                      (let ((_tl-e187507_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192471_ 0)))
                                            (_tl-vars187508_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g192471_ 1))))
                                        (let _lp187510_ ((_rest187512_
                                                          _hd-vars187506_)
                                                         (_targets187513_ '())
                                                         (_vars187514_
                                                          _tl-vars187508_))
                                          (let* ((_rest187515187525_
                                                  _rest187512_)
                                                 (_else187517187533_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets187513_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx187340_
                                                           _where187500_))
                                                        (values (let ((__tmp192473
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp192474
                                      (let ((__tmp192475
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e187507_
                                                     _targets187513_))))
                                        (declare (not safe))
                                        (cons _hd-e187505_ __tmp192475))))
                                 (declare (not safe))
                                 (cons _depth187501_ __tmp192474))))
                          (declare (not safe))
                          (cons 'splice __tmp192473))
                        _vars187514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K187519187542_
                                                  (lambda (_rest187536_
                                                           _hd-pat187537_
                                                           _hd-depth*187538_)
                                                    (let ((_hd-depth187540_
                                                           (fx- _hd-depth*187538_
                                                                _depth187501_)))
                                                      (if (fxpositive?
                                                           _hd-depth187540_)
                                                          (let ((__tmp192480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp192481
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat187537_))))
                           (declare (not safe))
                           (cons __tmp192481 _targets187513_)))
                        (__tmp192478
                         (let ((__tmp192479
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth187540_ _hd-pat187537_))))
                           (declare (not safe))
                           (cons __tmp192479 _vars187514_))))
                    (declare (not safe))
                    (_lp187510_ _rest187536_ __tmp192480 __tmp192478))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth187540_))
                      (let ((__tmp192476
                             (let ((__tmp192477
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat187537_))))
                               (declare (not safe))
                               (cons __tmp192477 _targets187513_))))
                        (declare (not safe))
                        (_lp187510_ _rest187536_ __tmp192476 _vars187514_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx187340_
                         _where187500_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest187515187525_))
                                                (let ((_hd187520187545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest187515187525_)))
                                                      (_tl187521187547_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest187515187525_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd187520187545_))
                                                      (let ((_hd187522187550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd187520187545_)))
                    (_tl187523187552_
                     (let () (declare (not safe)) (##cdr _hd187520187545_))))
                (let* ((_hd-depth*187555_ _hd187522187550_)
                       (_hd-pat187557_ _tl187523187552_)
                       (_rest187559_ _tl187521187547_))
                  (declare (not safe))
                  (_K187519187542_
                   _rest187559_
                   _hd-pat187557_
                   _hd-depth*187555_)))
              (let () (declare (not safe)) (_else187517187533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else187517187533_)))))))))))
                             (_recur187388_
                              (lambda (_e187393_ _is-e?187394_)
                                (if (_is-e?187394_ _e187393_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx187340_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e187393_))
                                        (let* ((_pat187396_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e187393_)))
                                               (_depth187398_
                                                (##structure-ref
                                                 _pat187396_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth187398_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat187396_))
                                                      (let ((__tmp192497
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth187398_ _pat187396_))))
                (declare (not safe))
                (cons __tmp192497 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat187396_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e187393_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e187393_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e187393_))
                                                (let* ((_e187400187407_
                                                        _e187393_)
                                                       (_E187402187411_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e187400187407_))))
                                                       (_E187401187490_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e187400187407_))
                      (let ((_e187403187415_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e187400187407_))))
                        (let ((_hd187404187418_
                               (let ()
                                 (declare (not safe))
                                 (##car _e187403187415_)))
                              (_tl187405187420_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e187403187415_))))
                          (let* ((_hd187423_ _hd187404187418_)
                                 (_rest187425_ _tl187405187420_))
                            (if '#t
                                (if (_is-e?187394_ _hd187423_)
                                    (let* ((_e187426187433_ _rest187425_)
                                           (_E187428187437_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx187340_
                                                 _e187393_))))
                                           (_E187427187451_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e187426187433_))
                                                  (let ((_e187429187441_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e187426187433_))))
                                                    (let ((_hd187430187444_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e187429187441_)))
                                                          (_tl187431187446_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e187429187441_))))
                                                      (let ((_rest187449_
                                                             _hd187430187444_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl187431187446_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur187388_ _rest187449_ false))
                        (let () (declare (not safe)) (_E187428187437_)))
                    (let () (declare (not safe)) (_E187428187437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E187428187437_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E187427187451_)))
                                    (let _lp187455_ ((_rest187457_
                                                      _rest187425_)
                                                     (_depth187458_ '0))
                                      (let* ((_e187459187466_ _rest187457_)
                                             (_E187461187470_
                                              (lambda ()
                                                (if (fxpositive? _depth187458_)
                                                    (let ((__tmp192491
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187388_
                                                              _hd187423_
                                                              _is-e?187394_)))
                                                          (__tmp192490
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187388_
                                                              _rest187457_
                                                              _is-e?187394_))))
                                                      (declare (not safe))
                                                      (_make-splice187387_
                                                       _e187393_
                                                       _depth187458_
                                                       __tmp192491
                                                       __tmp192490))
                                                    (let ((__tmp192489
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187388_
                                                              _hd187423_
                                                              _is-e?187394_)))
                                                          (__tmp192488
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur187388_
                                                              _rest187457_
                                                              _is-e?187394_))))
                                                      (declare (not safe))
                                                      (_make-cons187386_
                                                       __tmp192489
                                                       __tmp192488)))))
                                             (_E187460187486_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e187459187466_))
                                                    (let ((_e187462187474_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e187459187466_))))
                                                      (let ((_hd187463187477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e187462187474_)))
                    (_tl187464187479_
                     (let () (declare (not safe)) (##cdr _e187462187474_))))
                (let* ((_rest-hd187482_ _hd187463187477_)
                       (_rest-tl187484_ _tl187464187479_))
                  (if '#t
                      (if (_is-e?187394_ _rest-hd187482_)
                          (let ((__tmp192496
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth187458_ '1))))
                            (declare (not safe))
                            (_lp187455_ _rest-tl187484_ __tmp192496))
                          (if (fxpositive? _depth187458_)
                              (let ((__tmp192495
                                     (let ()
                                       (declare (not safe))
                                       (_recur187388_
                                        _hd187423_
                                        _is-e?187394_)))
                                    (__tmp192494
                                     (let ()
                                       (declare (not safe))
                                       (_recur187388_
                                        _rest187457_
                                        _is-e?187394_))))
                                (declare (not safe))
                                (_make-splice187387_
                                 _e187393_
                                 _depth187458_
                                 __tmp192495
                                 __tmp192494))
                              (let ((__tmp192493
                                     (let ()
                                       (declare (not safe))
                                       (_recur187388_
                                        _hd187423_
                                        _is-e?187394_)))
                                    (__tmp192492
                                     (let ()
                                       (declare (not safe))
                                       (_recur187388_
                                        _rest187457_
                                        _is-e?187394_))))
                                (declare (not safe))
                                (_make-cons187386_ __tmp192493 __tmp192492))))
                      (let () (declare (not safe)) (_E187461187470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E187461187470_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E187460187486_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E187402187411_))))))
                      (let () (declare (not safe)) (_E187402187411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E187401187490_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e187393_))
                                                    (let ((_g192485_
                                                           (let ((__tmp192487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e187393_)))))
                     (declare (not safe))
                     (_recur187388_ __tmp192487 _is-e?187394_))))
              (begin
                (let ((_g192486_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g192485_)
                             (##vector-length _g192485_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g192486_ 2)))
                      (error "Context expects 2 values" _g192486_)))
                (let ((_e187494_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g192485_ 0)))
                      (_vars187495_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g192485_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e187494_))
                          _vars187495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e187393_))
                                                        (let ((_g192482_
                                                               (let ((__tmp192484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e187393_)))))
                         (declare (not safe))
                         (_recur187388_ __tmp192484 _is-e?187394_))))
                  (begin
                    (let ((_g192483_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g192482_)
                                 (##vector-length _g192482_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g192483_ 2)))
                          (error "Context expects 2 values" _g192483_)))
                    (let ((_e187497_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g192482_ 0)))
                          (_vars187498_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g192482_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e187497_))
                              _vars187498_))))
                (values (let () (declare (not safe)) (cons 'datum _e187393_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g192498_
                             (let ()
                               (declare (not safe))
                               (_recur187388_ _e187384_ gx#ellipsis?))))
                        (begin
                          (let ((_g192499_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g192498_)
                                       (##vector-length _g192498_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g192499_ 2)))
                                (error "Context expects 2 values" _g192499_)))
                          (let ((_tree187390_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g192498_ 0)))
                                (_vars187391_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g192498_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars187391_))
                                _tree187390_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx187340_
                                   _vars187391_))))))))))
          (let* ((_e187344187354_ _stx187340_)
                 (_E187346187358_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx187340_))))
                 (_E187345187380_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e187344187354_))
                        (let ((_e187347187362_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e187344187354_))))
                          (let ((_hd187348187365_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e187347187362_)))
                                (_tl187349187367_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e187347187362_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl187349187367_))
                                (let ((_e187350187370_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl187349187367_))))
                                  (let ((_hd187351187373_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e187350187370_)))
                                        (_tl187352187375_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e187350187370_))))
                                    (let ((_form187378_ _hd187351187373_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl187352187375_))
                                          (if '#t
                                              (let ((__tmp192501
                                                     (let ((__tmp192502
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse187343_
                                                               _form187378_))))
                                                       (declare (not safe))
                                                       (_generate187342_
                                                        __tmp192502)))
                                                    (__tmp192500
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx187340_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp192501
                                                 __tmp192500))
                                              (let ()
                                                (declare (not safe))
                                                (_E187346187358_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E187346187358_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E187346187358_)))))
                        (let () (declare (not safe)) (_E187346187358_))))))
            (let () (declare (not safe)) (_E187345187380_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx186604_
               _identifier=?186605_
               _unwrap-e186606_
               _wrap-e186607_)
        (letrec ((_generate-bindings186609_
                  (lambda (_target187204_
                           _ids187205_
                           _clauses187206_
                           _clause-ids187207_
                           _E187208_)
                    (letrec ((_generate1187210_
                              (lambda (_clause187307_
                                       _clause-id187308_
                                       _E187309_)
                                (let ((__tmp192507
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id187308_ '())))
                                      (__tmp192503
                                       (let ((__tmp192504
                                              (let ((__tmp192506
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target187204_
                                                             '())))
                                                    (__tmp192505
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause186611_
                                                        _target187204_
                                                        _ids187205_
                                                        _clause187307_
                                                        _E187309_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp192506
                                                 __tmp192505))))
                                         (declare (not safe))
                                         (cons __tmp192504 '()))))
                                  (declare (not safe))
                                  (cons __tmp192507 __tmp192503)))))
                      (let _lp187212_ ((_rest187214_ _clauses187206_)
                                       (_rest-ids187215_ _clause-ids187207_)
                                       (_bindings187216_ '()))
                        (let* ((_rest187217187225_ _rest187214_)
                               (_else187219187233_
                                (lambda () _bindings187216_))
                               (_K187221187295_
                                (lambda (_rest187236_ _clause187237_)
                                  (let* ((_rest-ids187238187245_
                                          _rest-ids187215_)
                                         (_E187240187249_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids187238187245_)))
                                         (_K187241187283_
                                          (lambda (_rest-ids187252_
                                                   _clause-id187253_)
                                            (let* ((_rest-ids187254187262_
                                                    _rest-ids187252_)
                                                   (_else187256187270_
                                                    (lambda ()
                                                      (let ((__tmp192508
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1187210_
                        _clause187237_
                        _clause-id187253_
                        _E187208_))))
                (declare (not safe))
                (cons __tmp192508 _bindings187216_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K187258187275_
                                                    (lambda (_next-clause-id187273_)
                                                      (let ((__tmp192509
                                                             (let ((__tmp192510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1187210_
                               _clause187237_
                               _clause-id187253_
                               _next-clause-id187273_))))
                       (declare (not safe))
                       (cons __tmp192510 _bindings187216_))))
                (declare (not safe))
                (_lp187212_ _rest187236_ _rest-ids187252_ __tmp192509)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids187254187262_))
                                                  (let* ((_hd187259187278_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids187254187262_)))
                                                         (_next-clause-id187281_
                                                          _hd187259187278_))
                                                    (declare (not safe))
                                                    (_K187258187275_
                                                     _next-clause-id187281_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else187256187270_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids187238187245_))
                                        (let ((_hd187242187286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids187238187245_)))
                                              (_tl187243187288_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids187238187245_))))
                                          (let* ((_clause-id187291_
                                                  _hd187242187286_)
                                                 (_rest-ids187293_
                                                  _tl187243187288_))
                                            (declare (not safe))
                                            (_K187241187283_
                                             _rest-ids187293_
                                             _clause-id187291_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E187240187249_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest187217187225_))
                              (let ((_hd187222187298_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest187217187225_)))
                                    (_tl187223187300_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest187217187225_))))
                                (let* ((_clause187303_ _hd187222187298_)
                                       (_rest187305_ _tl187223187300_))
                                  (declare (not safe))
                                  (_K187221187295_
                                   _rest187305_
                                   _clause187303_)))
                              (let ()
                                (declare (not safe))
                                (_else187219187233_))))))))
                 (_generate-body186610_
                  (lambda (_bindings187164_ _body187165_)
                    (let _recur187167_ ((_rest187169_ _bindings187164_))
                      (let* ((_rest187170187178_ _rest187169_)
                             (_else187172187186_ (lambda () _body187165_))
                             (_K187174187192_
                              (lambda (_rest187189_ _hd187190_)
                                (let ((__tmp192512
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd187190_ '())))
                                      (__tmp192511
                                       (let ()
                                         (declare (not safe))
                                         (_recur187167_ _rest187189_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp192512
                                   __tmp192511)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest187170187178_))
                            (let ((_hd187175187195_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest187170187178_)))
                                  (_tl187176187197_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest187170187178_))))
                              (let* ((_hd187200_ _hd187175187195_)
                                     (_rest187202_ _tl187176187197_))
                                (declare (not safe))
                                (_K187174187192_ _rest187202_ _hd187200_)))
                            (let ()
                              (declare (not safe))
                              (_else187172187186_)))))))
                 (_generate-clause186611_
                  (lambda (_target187027_ _ids187028_ _clause187029_ _E187030_)
                    (letrec ((_generate1187032_
                              (lambda (_hd187119_ _fender187120_ _body187121_)
                                (let ((_g192513_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause186613_
                                          _hd187119_
                                          _ids187028_))))
                                  (begin
                                    (let ((_g192514_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g192513_)
                                                 (##vector-length _g192513_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g192514_ 2)))
                                          (error "Context expects 2 values"
                                                 _g192514_)))
                                    (let ((_e187123_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192513_ 0)))
                                          (_mvars187124_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g192513_ 1))))
                                      (let* ((_pvars187126_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars187124_))))
                                             (_E187128_
                                              (let ((__tmp192515
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target187027_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E187030_ __tmp192515)))
                                             (_K187161_
                                              (let ((__tmp192516
                                                     (let ((__tmp192518
                                                            (map (lambda (_mvar187130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar187131_)
                           (let* ((_mvar187132187139_ _mvar187130_)
                                  (_E187134187143_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar187132187139_)))
                                  (_K187135187149_
                                   (lambda (_depth187146_ _id187147_)
                                     (let ((__tmp192519
                                            (let ((__tmp192520
                                                   (let ((__tmp192522
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id187147_)))
                                                         (__tmp192521
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar187131_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp192522
                                                      __tmp192521
                                                      _depth187146_))))
                                              (declare (not safe))
                                              (cons __tmp192520 '()))))
                                       (declare (not safe))
                                       (cons _id187147_ __tmp192519)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar187132187139_))
                                 (let ((_hd187136187152_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar187132187139_)))
                                       (_tl187137187154_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar187132187139_))))
                                   (let* ((_id187157_ _hd187136187152_)
                                          (_depth187159_ _tl187137187154_))
                                     (declare (not safe))
                                     (_K187135187149_
                                      _depth187159_
                                      _id187157_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E187134187143_)))))
                         _mvars187124_
                         _pvars187126_))
                   (__tmp192517
                    (if (let () (declare (not safe)) (eq? _fender187120_ '#t))
                        _body187121_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender187120_
                           _body187121_
                           _E187128_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp192518 __tmp192517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars187126_
                                                 __tmp192516))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match186612_
                                           _hd187119_
                                           _target187027_
                                           _e187123_
                                           _mvars187124_
                                           _K187161_
                                           _E187128_)))))))))
                      (let* ((_e187033187053_ _clause187029_)
                             (_E187042187057_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e187033187053_))))
                             (_E187035187091_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e187033187053_))
                                    (let ((_e187043187061_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e187033187053_))))
                                      (let ((_hd187044187064_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e187043187061_)))
                                            (_tl187045187066_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e187043187061_))))
                                        (let ((_hd187069_ _hd187044187064_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl187045187066_))
                                              (let ((_e187046187071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl187045187066_))))
                                                (let ((_hd187047187074_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e187046187071_)))
                                                      (_tl187048187076_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e187046187071_))))
                                                  (let ((_fender187079_
                                                         _hd187047187074_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl187048187076_))
                                                        (let ((_e187049187081_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl187048187076_))))
                  (let ((_hd187050187084_
                         (let () (declare (not safe)) (##car _e187049187081_)))
                        (_tl187051187086_
                         (let ()
                           (declare (not safe))
                           (##cdr _e187049187081_))))
                    (let ((_body187089_ _hd187050187084_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl187051187086_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1187032_
                                 _hd187069_
                                 _fender187079_
                                 _body187089_))
                              (let () (declare (not safe)) (_E187042187057_)))
                          (let () (declare (not safe)) (_E187042187057_))))))
                (let () (declare (not safe)) (_E187042187057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E187042187057_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E187042187057_)))))
                             (_E187034187115_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e187033187053_))
                                    (let ((_e187036187095_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e187033187053_))))
                                      (let ((_hd187037187098_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e187036187095_)))
                                            (_tl187038187100_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e187036187095_))))
                                        (let ((_hd187103_ _hd187037187098_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl187038187100_))
                                              (let ((_e187039187105_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl187038187100_))))
                                                (let ((_hd187040187108_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e187039187105_)))
                                                      (_tl187041187110_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e187039187105_))))
                                                  (let ((_body187113_
                                                         _hd187040187108_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl187041187110_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1187032_
                                                               _hd187103_
                                                               '#t
                                                               _body187113_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E187035187091_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E187035187091_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E187035187091_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E187035187091_))))))
                        (let () (declare (not safe)) (_E187034187115_))))))
                 (_generate-match186612_
                  (lambda (_where186776_
                           _target186777_
                           _hd186778_
                           _mvars186779_
                           _K186780_
                           _E186781_)
                    (letrec ((_BUG186783_
                              (lambda (_q187025_)
                                (error '"BUG: syntax-case; generate"
                                       _stx186604_
                                       _hd186778_
                                       _q187025_)))
                             (_recur186784_
                              (lambda (_e186875_
                                       _vars186876_
                                       _target186877_
                                       _E186878_
                                       _k186879_)
                                (let* ((_e186880186887_ _e186875_)
                                       (_E186882186891_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e186880186887_)))
                                       (_K186883187013_
                                        (lambda (_body186894_ _tag186895_)
                                          (let ((_$e186897_ _tag186895_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e186897_))
                                                (_k186879_ _vars186876_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e186897_))
                                                    (let ((__tmp192629
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target186877_)))
                                                          (__tmp192625
                                                           (let ((__tmp192627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp192628
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e186607_
                                    _body186894_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?186605_
                             __tmp192628
                             _target186877_)))
                         (__tmp192626 (_k186879_ _vars186876_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp192627 __tmp192626 _E186878_))))
              (declare (not safe))
              (gx#core-list 'if __tmp192629 __tmp192625 _E186878_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e186897_))
                                                        (_k186879_
                                                         (let ((__tmp192624
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body186894_ _target186877_))))
                   (declare (not safe))
                   (cons __tmp192624 _vars186876_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e186897_))
                    (let ((_$e186900_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd186901_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl186902_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp192623
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target186877_)))
                            (__tmp192604
                             (let ((__tmp192618
                                    (let ((__tmp192619
                                           (let ((__tmp192622
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e186900_ '())))
                                                 (__tmp192620
                                                  (let ((__tmp192621
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e186606_
                                                            _target186877_))))
                                                    (declare (not safe))
                                                    (cons __tmp192621 '()))))
                                             (declare (not safe))
                                             (cons __tmp192622 __tmp192620))))
                                      (declare (not safe))
                                      (cons __tmp192619 '())))
                                   (__tmp192605
                                    (let ((__tmp192608
                                           (let ((__tmp192614
                                                  (let ((__tmp192617
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd186901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp192615
                 (let ((__tmp192616
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e186900_))))
                   (declare (not safe))
                   (cons __tmp192616 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp192617
                                                          __tmp192615)))
                                                 (__tmp192609
                                                  (let ((__tmp192610
                                                         (let ((__tmp192613
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl186902_ '())))
                       (__tmp192611
                        (let ((__tmp192612
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e186900_))))
                          (declare (not safe))
                          (cons __tmp192612 '()))))
                   (declare (not safe))
                   (cons __tmp192613 __tmp192611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp192610 '()))))
                                             (declare (not safe))
                                             (cons __tmp192614 __tmp192609)))
                                          (__tmp192606
                                           (let* ((_body186903186910_
                                                   _body186894_)
                                                  (_E186905186914_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body186903186910_)))
                                                  (_K186906186922_
                                                   (lambda (_tl186917_
                                                            _hd186918_)
                                                     (let ((__tmp192607
                                                            (lambda (_vars186920_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur186784_
                         _tl186917_
                         _vars186920_
                         _$tl186902_
                         _E186878_
                         _k186879_)))))
               (declare (not safe))
               (_recur186784_
                _hd186918_
                _vars186876_
                _$hd186901_
                _E186878_
                __tmp192607)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body186903186910_))
                                                 (let ((_hd186907186925_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body186903186910_)))
                                                       (_tl186908186927_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body186903186910_))))
                                                   (let* ((_hd186930_
                                                           _hd186907186925_)
                                                          (_tl186932_
                                                           _tl186908186927_))
                                                     (declare (not safe))
                                                     (_K186906186922_
                                                      _tl186932_
                                                      _hd186930_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E186905186914_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp192608
                                       __tmp192606))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp192618
                                __tmp192605))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp192623 __tmp192604 _E186878_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e186897_))
                        (let* ((_body186933186940_ _body186894_)
                               (_E186935186944_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body186933186940_)))
                               (_K186936186995_
                                (lambda (_tl186947_ _hd186948_)
                                  (let* ((_rlen186950_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen186785_ _tl186947_)))
                                         (_$target186952_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd186954_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl186956_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp186958_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e186960_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd186962_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl186964_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars186966_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars186786_ _hd186948_)))
                                         (_lvars186968_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars186966_)))
                                         (_tlvars186970_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars186966_)))
                                         (_linit186974_
                                          (map (lambda (_var186972_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars186968_)))
                                    (letrec ((_make-loop186977_
                                              (lambda (_vars186981_)
                                                (let ((__tmp192555
                                                       (let ((__tmp192556
                                                              (let ((__tmp192592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp186958_ '())))
                            (__tmp192557
                             (let ((__tmp192558
                                    (let ((__tmp192591
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd186954_ _lvars186968_)))
                                          (__tmp192559
                                           (let ((__tmp192590
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd186954_)))
                                                 (__tmp192568
                                                  (let ((__tmp192585
                                                         (let ((__tmp192586
                                                                (let ((__tmp192589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e186960_ '())))
                              (__tmp192587
                               (let ((__tmp192588
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e186606_
                                         _$hd186954_))))
                                 (declare (not safe))
                                 (cons __tmp192588 '()))))
                          (declare (not safe))
                          (cons __tmp192589 __tmp192587))))
                   (declare (not safe))
                   (cons __tmp192586 '())))
                (__tmp192569
                 (let ((__tmp192575
                        (let ((__tmp192581
                               (let ((__tmp192584
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd186962_ '())))
                                     (__tmp192582
                                      (let ((__tmp192583
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e186960_))))
                                        (declare (not safe))
                                        (cons __tmp192583 '()))))
                                 (declare (not safe))
                                 (cons __tmp192584 __tmp192582)))
                              (__tmp192576
                               (let ((__tmp192577
                                      (let ((__tmp192580
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl186964_ '())))
                                            (__tmp192578
                                             (let ((__tmp192579
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e186960_))))
                                               (declare (not safe))
                                               (cons __tmp192579 '()))))
                                        (declare (not safe))
                                        (cons __tmp192580 __tmp192578))))
                                 (declare (not safe))
                                 (cons __tmp192577 '()))))
                          (declare (not safe))
                          (cons __tmp192581 __tmp192576)))
                       (__tmp192570
                        (let ((__tmp192571
                               (lambda (_hdvars186983_)
                                 (let ((__tmp192572
                                        (let ((__tmp192573
                                               (map (lambda (_svar186985_
                                                             _lvar186986_)
                                                      (let ((__tmp192574
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar186985_ _hdvars186983_ _BUG186783_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp192574 _lvar186986_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars186966_
                                                    _lvars186968_)))
                                          (declare (not safe))
                                          (cons _$lp-tl186964_ __tmp192573))))
                                   (declare (not safe))
                                   (cons _$lp186958_ __tmp192572)))))
                          (declare (not safe))
                          (_recur186784_
                           _hd186948_
                           '()
                           _$lp-hd186962_
                           _E186878_
                           __tmp192571))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp192575 __tmp192570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp192585
                                                     __tmp192569)))
                                                 (__tmp192560
                                                  (let ((__tmp192564
                                                         (map (lambda (_lvar186988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar186989_)
                        (let ((__tmp192567
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar186989_ '())))
                              (__tmp192565
                               (let ((__tmp192566
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar186988_))))
                                 (declare (not safe))
                                 (cons __tmp192566 '()))))
                          (declare (not safe))
                          (cons __tmp192567 __tmp192565)))
                      _lvars186968_
                      _tlvars186970_))
                (__tmp192561
                 (_k186879_
                  (let ((__tmp192562
                         (lambda (_svar186991_ _tlvar186992_ _r186993_)
                           (let ((__tmp192563
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar186991_ _tlvar186992_))))
                             (declare (not safe))
                             (cons __tmp192563 _r186993_)))))
                    (declare (not safe))
                    (foldl2 __tmp192562
                            _vars186981_
                            _svars186966_
                            _tlvars186970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp192564
                                                     __tmp192561))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp192590
                                              __tmp192568
                                              __tmp192560))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp192591
                                       __tmp192559))))
                               (declare (not safe))
                               (cons __tmp192558 '()))))
                        (declare (not safe))
                        (cons __tmp192592 __tmp192557))))
                 (declare (not safe))
                 (cons __tmp192556 '())))
              (__tmp192553
               (let ((__tmp192554
                      (let ()
                        (declare (not safe))
                        (cons _$target186952_ _linit186974_))))
                 (declare (not safe))
                 (cons _$lp186958_ __tmp192554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp192555
                                                   __tmp192553)))))
                                      (let ((_body186979_
                                             (let ((__tmp192594
                                                    (let ((__tmp192595
                                                           (let ((__tmp192598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp192599
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl186956_ '()))))
                            (declare (not safe))
                            (cons _$target186952_ __tmp192599)))
                         (__tmp192596
                          (let ((__tmp192597
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target186877_
                                    _rlen186950_))))
                            (declare (not safe))
                            (cons __tmp192597 '()))))
                     (declare (not safe))
                     (cons __tmp192598 __tmp192596))))
              (declare (not safe))
              (cons __tmp192595 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192593
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur186784_
                                                       _tl186947_
                                                       _vars186876_
                                                       _$tl186956_
                                                       _E186878_
                                                       _make-loop186977_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192594
                                                __tmp192593))))
                                        (let ((__tmp192603
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target186877_)))
                                              (__tmp192600
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen186950_))
                                                   _body186979_
                                                   (let ((__tmp192601
                                                          (let ((__tmp192602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target186877_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp192602 _rlen186950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp192601
                                                      _body186979_
                                                      _E186878_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp192603
                                           __tmp192600
                                           _E186878_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body186933186940_))
                              (let ((_hd186937186998_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body186933186940_)))
                                    (_tl186938187000_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body186933186940_))))
                                (let* ((_hd187003_ _hd186937186998_)
                                       (_tl187005_ _tl186938187000_))
                                  (declare (not safe))
                                  (_K186936186995_ _tl187005_ _hd187003_)))
                              (let () (declare (not safe)) (_E186935186944_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e186897_))
                            (let ((__tmp192552
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target186877_)))
                                  (__tmp192551 (_k186879_ _vars186876_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp192552
                               __tmp192551
                               _E186878_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e186897_))
                                (let ((_$e187007_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp192550
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target186877_)))
                                        (__tmp192542
                                         (let ((__tmp192544
                                                (let ((__tmp192545
                                                       (let ((__tmp192549
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e187007_ '())))
                     (__tmp192546
                      (let ((__tmp192547
                             (let ((__tmp192548
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e186606_
                                       _target186877_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp192548))))
                        (declare (not safe))
                        (cons __tmp192547 '()))))
                 (declare (not safe))
                 (cons __tmp192549 __tmp192546))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp192545 '())))
                                               (__tmp192543
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur186784_
                                                   _body186894_
                                                   _vars186876_
                                                   _$e187007_
                                                   _E186878_
                                                   _k186879_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp192544
                                            __tmp192543))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp192550
                                     __tmp192542
                                     _E186878_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e186897_))
                                    (let ((_$e187009_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp192541
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target186877_)))
                                            (__tmp192533
                                             (let ((__tmp192535
                                                    (let ((__tmp192536
                                                           (let ((__tmp192540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e187009_ '())))
                         (__tmp192537
                          (let ((__tmp192538
                                 (let ((__tmp192539
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e186606_
                                           _target186877_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp192539))))
                            (declare (not safe))
                            (cons __tmp192538 '()))))
                     (declare (not safe))
                     (cons __tmp192540 __tmp192537))))
              (declare (not safe))
              (cons __tmp192536 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp192534
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur186784_
                                                       _body186894_
                                                       _vars186876_
                                                       _$e187009_
                                                       _E186878_
                                                       _k186879_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp192535
                                                __tmp192534))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp192541
                                         __tmp192533
                                         _E186878_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e186897_))
                                        (let ((_$e187011_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp192532
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target186877_)))
                                                (__tmp192523
                                                 (let ((__tmp192527
                                                        (let ((__tmp192528
                                                               (let ((__tmp192531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e187011_ '())))
                             (__tmp192529
                              (let ((__tmp192530
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target186877_))))
                                (declare (not safe))
                                (cons __tmp192530 '()))))
                         (declare (not safe))
                         (cons __tmp192531 __tmp192529))))
                  (declare (not safe))
                  (cons __tmp192528 '())))
               (__tmp192524
                (let ((__tmp192526
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e187011_ _body186894_)))
                      (__tmp192525 (_k186879_ _vars186876_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp192526 __tmp192525 _E186878_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp192527
                                                    __tmp192524))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp192532
                                             __tmp192523
                                             _E186878_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG186783_ _e186875_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e186880186887_))
                                      (let ((_hd186884187016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e186880186887_)))
                                            (_tl186885187018_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e186880186887_))))
                                        (let* ((_tag187021_ _hd186884187016_)
                                               (_body187023_ _tl186885187018_))
                                          (declare (not safe))
                                          (_K186883187013_
                                           _body187023_
                                           _tag187021_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E186882186891_))))))
                             (_splice-rlen186785_
                              (lambda (_e186837_)
                                (let _lp186839_ ((_e186841_ _e186837_)
                                                 (_n186842_ '0))
                                  (let* ((_e186843186850_ _e186841_)
                                         (_E186845186854_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e186843186850_)))
                                         (_K186846186863_
                                          (lambda (_body186857_ _tag186858_)
                                            (let ((_$e186860_ _tag186858_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e186860_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx186604_
                                                     _where186776_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e186860_))
                                                      (let ((__tmp192631
                                                             (cdr _body186857_))
                                                            (__tmp192630
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n186842_ '1))))
                (declare (not safe))
                (_lp186839_ __tmp192631 __tmp192630))
              _n186842_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e186843186850_))
                                        (let ((_hd186847186866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e186843186850_)))
                                              (_tl186848186868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e186843186850_))))
                                          (let* ((_tag186871_ _hd186847186866_)
                                                 (_body186873_
                                                  _tl186848186868_))
                                            (declare (not safe))
                                            (_K186846186863_
                                             _body186873_
                                             _tag186871_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E186845186854_)))))))
                             (_splice-vars186786_
                              (lambda (_e186793_)
                                (let _recur186795_ ((_e186797_ _e186793_)
                                                    (_vars186798_ '()))
                                  (let* ((_e186799186806_ _e186797_)
                                         (_E186801186810_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e186799186806_)))
                                         (_K186802186825_
                                          (lambda (_body186813_ _tag186814_)
                                            (let ((_$e186816_ _tag186814_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e186816_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body186813_
                                                          _vars186798_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e186816_))
                  (let () (declare (not safe)) (eq? 'splice _$e186816_)))
              (let ((__tmp192634 (cdr _body186813_))
                    (__tmp192632
                     (let ((__tmp192633 (car _body186813_)))
                       (declare (not safe))
                       (_recur186795_ __tmp192633 _vars186798_))))
                (declare (not safe))
                (_recur186795_ __tmp192634 __tmp192632))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e186816_))
                      (let () (declare (not safe)) (eq? 'box _$e186816_)))
                  (let ()
                    (declare (not safe))
                    (_recur186795_ _body186813_ _vars186798_))
                  _vars186798_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e186799186806_))
                                        (let ((_hd186803186828_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e186799186806_)))
                                              (_tl186804186830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e186799186806_))))
                                          (let* ((_tag186833_ _hd186803186828_)
                                                 (_body186835_
                                                  _tl186804186830_))
                                            (declare (not safe))
                                            (_K186802186825_
                                             _body186835_
                                             _tag186833_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E186801186810_)))))))
                             (_make-body186787_
                              (lambda (_vars186789_)
                                (let ((__tmp192635
                                       (map (lambda (_mvar186791_)
                                              (let ((__tmp192636
                                                     (car _mvar186791_)))
                                                (declare (not safe))
                                                (assgetq __tmp192636
                                                         _vars186789_
                                                         _BUG186783_)))
                                            _mvars186779_)))
                                  (declare (not safe))
                                  (cons _K186780_ __tmp192635)))))
                      (let ()
                        (declare (not safe))
                        (_recur186784_
                         _hd186778_
                         '()
                         _target186777_
                         _E186781_
                         _make-body186787_)))))
                 (_parse-clause186613_
                  (lambda (_hd186682_ _ids186683_)
                    (let _recur186685_ ((_e186687_ _hd186682_)
                                        (_vars186688_ '())
                                        (_depth186689_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e186687_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e186687_))
                              (values '(any) _vars186688_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e186687_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx186604_
                                     _hd186682_))
                                  (if (let ((__tmp192652
                                             (lambda (_id186691_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e186687_
                                                  _id186691_)))))
                                        (declare (not safe))
                                        (find __tmp192652 _ids186683_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e186687_))
                                              _vars186688_)
                                      (if (let ((__tmp192650
                                                 (lambda (_var186693_)
                                                   (let ((__tmp192651
                                                          (car _var186693_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e186687_
                                                      __tmp192651)))))
                                            (declare (not safe))
                                            (find __tmp192650 _vars186688_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx186604_
                                             _e186687_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e186687_))
                                                  (let ((__tmp192649
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e186687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth186689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp192649
                                                          _vars186688_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e186687_))
                              (let* ((_e186694186701_ _e186687_)
                                     (_E186696186705_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e186694186701_))))
                                     (_E186695186766_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e186694186701_))
                                            (let ((_e186697186709_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e186694186701_))))
                                              (let ((_hd186698186712_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e186697186709_)))
                                                    (_tl186699186714_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e186697186709_))))
                                                (let* ((_hd186717_
                                                        _hd186698186712_)
                                                       (_rest186719_
                                                        _tl186699186714_))
                                                  (if '#t
                                                      (let* ((_make-pair186734_
                                                              (lambda (_tag186721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd186722_
                               _tl186723_)
                        (let* ((_hd-depth186725_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag186721_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth186689_ '1))
                                    _depth186689_))
                               (_g192644_
                                (let ()
                                  (declare (not safe))
                                  (_recur186685_
                                   _hd186722_
                                   _vars186688_
                                   _hd-depth186725_))))
                          (begin
                            (let ((_g192645_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g192644_)
                                         (##vector-length _g192644_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g192645_ 2)))
                                  (error "Context expects 2 values"
                                         _g192645_)))
                            (let ((_hd186727_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g192644_ 0)))
                                  (_vars186728_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g192644_ 1))))
                              (let ((_g192646_
                                     (let ()
                                       (declare (not safe))
                                       (_recur186685_
                                        _tl186723_
                                        _vars186728_
                                        _depth186689_))))
                                (begin
                                  (let ((_g192647_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g192646_)
                                               (##vector-length _g192646_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g192647_ 2)))
                                        (error "Context expects 2 values"
                                               _g192647_)))
                                  (let ((_tl186730_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g192646_ 0)))
                                        (_vars186731_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g192646_ 1))))
                                    (let ()
                                      (values (let ((__tmp192648
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd186727_
                                                             _tl186730_))))
                                                (declare (not safe))
                                                (cons _tag186721_ __tmp192648))
                                              _vars186731_))))))))))
                     (_e186735186742_ _rest186719_)
                     (_E186737186746_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair186734_ 'cons _hd186717_ _rest186719_))))
                     (_E186736186762_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e186735186742_))
                            (let ((_e186738186750_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e186735186742_))))
                              (let ((_hd186739186753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e186738186750_)))
                                    (_tl186740186755_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e186738186750_))))
                                (let* ((_rest-hd186758_ _hd186739186753_)
                                       (_rest-tl186760_ _tl186740186755_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd186758_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair186734_
                                             'splice
                                             _hd186717_
                                             _rest-tl186760_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair186734_
                                             'cons
                                             _hd186717_
                                             _rest186719_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E186737186746_))))))
                            (let () (declare (not safe)) (_E186737186746_))))))
                (let () (declare (not safe)) (_E186736186762_)))
              (let () (declare (not safe)) (_E186696186705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E186696186705_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E186695186766_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e186687_))
                                  (values '(null) _vars186688_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e186687_))
                                      (let ((_g192641_
                                             (let ((__tmp192643
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e186687_)))))
                                               (declare (not safe))
                                               (_recur186685_
                                                __tmp192643
                                                _vars186688_
                                                _depth186689_))))
                                        (begin
                                          (let ((_g192642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g192641_)
                                                       (##vector-length
                                                        _g192641_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g192642_ 2)))
                                                (error "Context expects 2 values"
                                                       _g192642_)))
                                          (let ((_e186770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g192641_ 0)))
                                                (_vars186771_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g192641_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e186770_))
                                                    _vars186771_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e186687_))
                                          (let ((_g192638_
                                                 (let ((__tmp192640
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e186687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur186685_
                                                    __tmp192640
                                                    _vars186688_
                                                    _depth186689_))))
                                            (begin
                                              (let ((_g192639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g192638_)
                                                           (##vector-length
                                                            _g192638_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g192639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g192639_)))
                                              (let ((_e186773_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g192638_
                                                        0)))
                                                    (_vars186774_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g192638_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e186773_))
                                                        _vars186774_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e186687_))
                                              (values (let ((__tmp192637
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e186687_))))
                (declare (not safe))
                (cons 'datum __tmp192637))
              _vars186688_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx186604_
                                                 _e186687_))))))))))))
          (let* ((_e186614186627_ _stx186604_)
                 (_E186616186631_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e186614186627_))))
                 (_E186615186678_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e186614186627_))
                        (let ((_e186617186635_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e186614186627_))))
                          (let ((_hd186618186638_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e186617186635_)))
                                (_tl186619186640_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e186617186635_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl186619186640_))
                                (let ((_e186620186643_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl186619186640_))))
                                  (let ((_hd186621186646_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e186620186643_)))
                                        (_tl186622186648_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e186620186643_))))
                                    (let ((_expr186651_ _hd186621186646_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl186622186648_))
                                          (let ((_e186623186653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl186622186648_))))
                                            (let ((_hd186624186656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e186623186653_)))
                                                  (_tl186625186658_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e186623186653_))))
                                              (let* ((_ids186661_
                                                      _hd186624186656_)
                                                     (_clauses186663_
                                                      _tl186625186658_))
                                                (if '#t
                                                    (if (let ((__tmp192670
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids186661_))))
                  (declare (not safe))
                  (not __tmp192670))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx186604_
                   _ids186661_))
                (if (let ((__tmp192669
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses186663_))))
                      (declare (not safe))
                      (not __tmp192669))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx186604_))
                    (let* ((_ids186665_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids186661_)))
                           (_clauses186667_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses186663_)))
                           (_clause-ids186669_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses186667_)))
                           (_E186671_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target186673_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first186675_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses186667_))
                                _E186671_
                                (car _clause-ids186669_))))
                      (let ((__tmp192654
                             (let ((__tmp192655
                                    (let ((__tmp192657
                                           (let ((__tmp192662
                                                  (let ((__tmp192663
                                                         (let ((__tmp192668
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E186671_ '())))
                       (__tmp192664
                        (let ((__tmp192665
                               (let ((__tmp192667
                                      (let ()
                                        (declare (not safe))
                                        (cons _target186673_ '())))
                                     (__tmp192666
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target186673_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp192667
                                  __tmp192666))))
                          (declare (not safe))
                          (cons __tmp192665 '()))))
                   (declare (not safe))
                   (cons __tmp192668 __tmp192664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp192663 '())))
                                                 (__tmp192658
                                                  (let ((__tmp192661
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings186609_
                                                            _target186673_
                                                            _ids186665_
                                                            _clauses186667_
                                                            _clause-ids186669_
                                                            _E186671_)))
                                                        (__tmp192659
                                                         (let ((__tmp192660
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr186651_ '()))))
                   (declare (not safe))
                   (cons _first186675_ __tmp192660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body186610_
                                                     __tmp192661
                                                     __tmp192659))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp192662
                                              __tmp192658)))
                                          (__tmp192656
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx186604_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp192657
                                       __tmp192656))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp192655)))
                            (__tmp192653
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx186604_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp192654 __tmp192653)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E186616186631_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E186616186631_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E186616186631_)))))
                        (let () (declare (not safe)) (_E186616186631_))))))
            (let () (declare (not safe)) (_E186615186678_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx187314_)
        (let* ((_identifier=?187316_ 'free-identifier=?)
               (_unwrap-e187318_ 'syntax-e)
               (_wrap-e187320_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187314_
           _identifier=?187316_
           _unwrap-e187318_
           _wrap-e187320_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx187322_ _identifier=?187323_)
        (let* ((_unwrap-e187325_ 'syntax-e) (_wrap-e187327_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187322_
           _identifier=?187323_
           _unwrap-e187325_
           _wrap-e187327_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx187329_ _identifier=?187330_ _unwrap-e187331_)
        (let ((_wrap-e187333_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx187329_
           _identifier=?187330_
           _unwrap-e187331_
           _wrap-e187333_))))
    (define gx#macro-expand-syntax-case
      (lambda _g192672_
        (let ((_g192671_ (let () (declare (not safe)) (##length _g192672_))))
          (cond ((let () (declare (not safe)) (##fx= _g192671_ 1))
                 (apply (lambda (_stx187314_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx187314_)))
                        _g192672_))
                ((let () (declare (not safe)) (##fx= _g192671_ 2))
                 (apply (lambda (_stx187322_ _identifier=?187323_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx187322_
                             _identifier=?187323_)))
                        _g192672_))
                ((let () (declare (not safe)) (##fx= _g192671_ 3))
                 (apply (lambda (_stx187329_
                                 _identifier=?187330_
                                 _unwrap-e187331_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx187329_
                             _identifier=?187330_
                             _unwrap-e187331_)))
                        _g192672_))
                ((let () (declare (not safe)) (##fx= _g192671_ 4))
                 (apply (lambda (_stx187335_
                                 _identifier=?187336_
                                 _unwrap-e187337_
                                 _wrap-e187338_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx187335_
                             _identifier=?187336_
                             _unwrap-e187337_
                             _wrap-e187338_)))
                        _g192672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g192672_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx186601_)
        (if (let () (declare (not safe)) (gx#identifier? _stx186601_))
            (let ((__tmp192673
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx186601_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp192673 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd186559_ . _rest186560_)
        (let ((_len186562_ (length _hd186559_)))
          (let _lp186564_ ((_rest186566_ _rest186560_))
            (let* ((_rest186567186575_ _rest186566_)
                   (_else186569186583_ (lambda () '#!void))
                   (_K186571186589_
                    (lambda (_rest186586_ _hd186587_)
                      (if (fx= _len186562_ (length _hd186587_))
                          (let ()
                            (declare (not safe))
                            (_lp186564_ _rest186586_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd186587_))))))
              (if (let () (declare (not safe)) (##pair? _rest186567186575_))
                  (let ((_hd186572186592_
                         (let ()
                           (declare (not safe))
                           (##car _rest186567186575_)))
                        (_tl186573186594_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest186567186575_))))
                    (let* ((_hd186597_ _hd186572186592_)
                           (_rest186599_ _tl186573186594_))
                      (declare (not safe))
                      (_K186571186589_ _rest186599_ _hd186597_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx186517_ _n186518_)
        (let _lp186520_ ((_rest186522_ _stx186517_) (_r186523_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest186522_))
              (let* ((_g186524186531_
                      (let () (declare (not safe)) (gx#syntax-e _rest186522_)))
                     (_E186526186535_
                      (lambda ()
                        (error '"No clause matching" _g186524186531_)))
                     (_K186527186541_
                      (lambda (_rest186538_ _hd186539_)
                        (let ((__tmp192678
                               (let ()
                                 (declare (not safe))
                                 (cons _hd186539_ _r186523_))))
                          (declare (not safe))
                          (_lp186520_ _rest186538_ __tmp192678)))))
                (if (let () (declare (not safe)) (##pair? _g186524186531_))
                    (let ((_hd186528186544_
                           (let ()
                             (declare (not safe))
                             (##car _g186524186531_)))
                          (_tl186529186546_
                           (let ()
                             (declare (not safe))
                             (##cdr _g186524186531_))))
                      (let* ((_hd186549_ _hd186528186544_)
                             (_rest186551_ _tl186529186546_))
                        (declare (not safe))
                        (_K186527186541_ _rest186551_ _hd186549_)))
                    (let () (declare (not safe)) (_E186526186535_))))
              (let _lp186553_ ((_n186555_ _n186518_)
                               (_l186556_ _r186523_)
                               (_r186557_ _rest186522_))
                (if (let () (declare (not safe)) (null? _l186556_))
                    (values _l186556_ _r186557_)
                    (if (fxpositive? _n186555_)
                        (let ((__tmp192677
                               (let ()
                                 (declare (not safe))
                                 (fx- _n186555_ '1)))
                              (__tmp192676 (cdr _l186556_))
                              (__tmp192674
                               (let ((__tmp192675 (car _l186556_)))
                                 (declare (not safe))
                                 (cons __tmp192675 _r186557_))))
                          (declare (not safe))
                          (_lp186553_ __tmp192677 __tmp192676 __tmp192674))
                        (values (reverse _l186556_) _r186557_))))))))))
