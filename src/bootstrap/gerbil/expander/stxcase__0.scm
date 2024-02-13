(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707840756)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp186285 (list gx#expander::t))
            (__tmp186283
             (let ((__tmp186284
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp186284 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp186285
         '(id depth)
         __tmp186283
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args181712_
        (apply make-instance gx#syntax-pattern::t _$args181712_)))
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
      (lambda (_self181709_ _stx181710_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx181710_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx181191_)
        (letrec ((_generate181193_
                  (lambda (_e181420_)
                    (letrec ((_BUG181422_
                              (lambda (_q181584_)
                                (error '"BUG: syntax; generate"
                                       _stx181191_
                                       _e181420_
                                       _q181584_)))
                             (_local-pattern-e181423_
                              (lambda (_pat181582_)
                                (let ((__tmp186286
                                       (##structure-ref
                                        _pat181582_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp186286))))
                             (_getvar181424_
                              (lambda (_q181579_ _vars181580_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q181579_
                                           _vars181580_
                                           _BUG181422_))))
                             (_getarg181425_
                              (lambda (_arg181545_ _vars181546_)
                                (let* ((_arg181547181554_ _arg181545_)
                                       (_E181549181558_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg181547181554_)))
                                       (_K181550181567_
                                        (lambda (_e181561_ _tag181562_)
                                          (let ((_$e181564_ _tag181562_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e181564_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar181424_
                                                   _e181561_
                                                   _vars181546_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e181564_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e181423_
                                                       _e181561_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG181422_
                                                       _arg181545_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg181547181554_))
                                      (let ((_hd181551181570_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg181547181554_)))
                                            (_tl181552181572_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg181547181554_))))
                                        (let* ((_tag181575_ _hd181551181570_)
                                               (_e181577_ _tl181552181572_))
                                          (declare (not safe))
                                          (_K181550181567_
                                           _e181577_
                                           _tag181575_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E181549181558_)))))))
                      (let _recur181427_ ((_e181429_ _e181420_)
                                          (_vars181430_ '()))
                        (let* ((_e181431181438_ _e181429_)
                               (_E181433181442_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e181431181438_)))
                               (_K181434181533_
                                (lambda (_body181445_ _tag181446_)
                                  (let ((_$e181448_ _tag181446_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e181448_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body181445_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e181448_))
                                            (let ((_id181451_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body181445_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id181451_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks181453_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id181451_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks181453_))
                                                        (let ((__tmp186314
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body181445_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp186314))
                (let ((__tmp186313
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body181445_)))
                      (__tmp186312
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body181445_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp186313
                   __tmp186312
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id181451_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body181445_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG181422_
                                                         _e181429_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e181448_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e181423_
                                                   _body181445_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e181448_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar181424_
                                                       _body181445_
                                                       _vars181430_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e181448_))
                                                        (let ((__tmp186310
                                                               (let ((__tmp186311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body181445_)))
                         (declare (not safe))
                         (_recur181427_ __tmp186311 _vars181430_)))
                      (__tmp186308
                       (let ((__tmp186309 (cdr _body181445_)))
                         (declare (not safe))
                         (_recur181427_ __tmp186309 _vars181430_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp186310 __tmp186308))
                (if (let () (declare (not safe)) (eq? 'vector _$e181448_))
                    (let ((__tmp186307
                           (let ()
                             (declare (not safe))
                             (_recur181427_ _body181445_ _vars181430_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp186307))
                    (if (let () (declare (not safe)) (eq? 'box _$e181448_))
                        (let ((__tmp186306
                               (let ()
                                 (declare (not safe))
                                 (_recur181427_ _body181445_ _vars181430_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp186306))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e181448_))
                            (let* ((_body181454181465_ _body181445_)
                                   (_E181456181469_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body181454181465_)))
                                   (_K181457181507_
                                    (lambda (_args181472_
                                             _iv181473_
                                             _hd181474_
                                             _depth181475_)
                                      (let* ((_targets181481_
                                              (map (lambda (_g181476181478_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg181425_
                                                        _g181476181478_
                                                        _vars181430_)))
                                                   _args181472_))
                                             (_fold-in181483_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args181472_)))
                                             (_fold-out181485_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args181487_
                                              (let ((__tmp186287
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out181485_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp186287
                                                        _fold-in181483_)))
                                             (_lambda-body181504_
                                              (if (fx> _depth181475_ '1)
                                                  (let ((_r-args181495_
                                                         (map (lambda (_arg181489_)
                                                                (let ((__tmp186292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg181489_)))
                          (declare (not safe))
                          (cons 'ref __tmp186292)))
                      _args181472_))
                (_r-vars181496_
                 (let ((__tmp186293
                        (lambda (_arg181491_ _var181492_ _r181493_)
                          (let ((__tmp186294
                                 (let ((__tmp186295 (cdr _arg181491_)))
                                   (declare (not safe))
                                   (cons __tmp186295 _var181492_))))
                            (declare (not safe))
                            (cons __tmp186294 _r181493_)))))
                   (declare (not safe))
                   (foldr2 __tmp186293
                           _vars181430_
                           _args181472_
                           _fold-in181483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp186296
                                                           (let ((__tmp186297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186301
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth181475_ '1)))
                                (__tmp186298
                                 (let ((__tmp186299
                                        (let ((__tmp186300
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out181485_))))
                                          (declare (not safe))
                                          (cons __tmp186300 _r-args181495_))))
                                   (declare (not safe))
                                   (cons _hd181474_ __tmp186299))))
                            (declare (not safe))
                            (cons __tmp186301 __tmp186298))))
                     (declare (not safe))
                     (cons 'splice __tmp186297))))
              (declare (not safe))
              (_recur181427_ __tmp186296 _r-vars181496_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars181502_
                                                          (let ((__tmp186288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg181498_ _var181499_ _r181500_)
                           (let ((__tmp186289
                                  (let ((__tmp186290 (cdr _arg181498_)))
                                    (declare (not safe))
                                    (cons __tmp186290 _var181499_))))
                             (declare (not safe))
                             (cons __tmp186289 _r181500_)))))
                    (declare (not safe))
                    (foldr2 __tmp186288
                            _vars181430_
                            _args181472_
                            _fold-in181483_)))
                 (__tmp186291
                  (let ()
                    (declare (not safe))
                    (_recur181427_ _hd181474_ _hd-vars181502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp186291
                                                     _fold-out181485_)))))
                                        (let ((__tmp186305
                                               (if (fx> (length _targets181481_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets181481_))
                                                   '#!void))
                                              (__tmp186302
                                               (let ((__tmp186304
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args181487_
                                                         _lambda-body181504_)))
                                                     (__tmp186303
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur181427_
                                                         _iv181473_
                                                         _vars181430_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp186304
                                                  __tmp186303
                                                  _targets181481_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp186305
                                           __tmp186302))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body181454181465_))
                                  (let ((_hd181458181510_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body181454181465_)))
                                        (_tl181459181512_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body181454181465_))))
                                    (let ((_depth181515_ _hd181458181510_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl181459181512_))
                                          (let ((_hd181460181517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl181459181512_)))
                                                (_tl181461181519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl181459181512_))))
                                            (let ((_hd181522_
                                                   _hd181460181517_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl181461181519_))
                                                  (let ((_hd181462181524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl181461181519_)))
                                                        (_tl181463181526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl181461181519_))))
                                                    (let* ((_iv181529_
                                                            _hd181462181524_)
                                                           (_args181531_
                                                            _tl181463181526_))
                                                      (declare (not safe))
                                                      (_K181457181507_
                                                       _args181531_
                                                       _iv181529_
                                                       _hd181522_
                                                       _depth181515_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181456181469_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E181456181469_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E181456181469_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e181448_))
                                _body181445_
                                (let ()
                                  (declare (not safe))
                                  (_BUG181422_ _e181429_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e181431181438_))
                              (let ((_hd181435181536_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e181431181438_)))
                                    (_tl181436181538_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e181431181438_))))
                                (let* ((_tag181541_ _hd181435181536_)
                                       (_body181543_ _tl181436181538_))
                                  (declare (not safe))
                                  (_K181434181533_ _body181543_ _tag181541_)))
                              (let ()
                                (declare (not safe))
                                (_E181433181442_))))))))
                 (_parse181194_
                  (lambda (_e181235_)
                    (letrec ((_make-cons181237_
                              (lambda (_hd181412_ _tl181413_)
                                (let ((_g186315_ _hd181412_)
                                      (_g186317_ _tl181413_))
                                  (begin
                                    (let ((_g186316_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186315_)
                                                 (##vector-length _g186315_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186316_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186316_)))
                                    (let ((_g186318_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186317_)
                                                 (##vector-length _g186317_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186318_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186318_)))
                                    (let ((_hd-e181415_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186315_ 0)))
                                          (_hd-vars181416_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186315_ 1))))
                                      (let ((_tl-e181417_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186317_ 0)))
                                            (_tl-vars181418_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186317_ 1))))
                                        (values (let ((__tmp186319
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e181415_
                                                               _tl-e181417_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp186319))
                                                (append _hd-vars181416_
                                                        _tl-vars181418_))))))))
                             (_make-splice181238_
                              (lambda (_where181351_
                                       _depth181352_
                                       _hd181353_
                                       _tl181354_)
                                (let ((_g186320_ _hd181353_)
                                      (_g186322_ _tl181354_))
                                  (begin
                                    (let ((_g186321_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186320_)
                                                 (##vector-length _g186320_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186321_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186321_)))
                                    (let ((_g186323_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186322_)
                                                 (##vector-length _g186322_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186323_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186323_)))
                                    (let ((_hd-e181356_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186320_ 0)))
                                          (_hd-vars181357_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186320_ 1))))
                                      (let ((_tl-e181358_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186322_ 0)))
                                            (_tl-vars181359_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g186322_ 1))))
                                        (let _lp181361_ ((_rest181363_
                                                          _hd-vars181357_)
                                                         (_targets181364_ '())
                                                         (_vars181365_
                                                          _tl-vars181359_))
                                          (let* ((_rest181366181376_
                                                  _rest181363_)
                                                 (_else181368181384_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets181364_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx181191_
                                                           _where181351_))
                                                        (values (let ((__tmp186324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp186325
                                      (let ((__tmp186326
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e181358_
                                                     _targets181364_))))
                                        (declare (not safe))
                                        (cons _hd-e181356_ __tmp186326))))
                                 (declare (not safe))
                                 (cons _depth181352_ __tmp186325))))
                          (declare (not safe))
                          (cons 'splice __tmp186324))
                        _vars181365_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K181370181393_
                                                  (lambda (_rest181387_
                                                           _hd-pat181388_
                                                           _hd-depth*181389_)
                                                    (let ((_hd-depth181391_
                                                           (fx- _hd-depth*181389_
                                                                _depth181352_)))
                                                      (if (fxpositive?
                                                           _hd-depth181391_)
                                                          (let ((__tmp186331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp186332
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat181388_))))
                           (declare (not safe))
                           (cons __tmp186332 _targets181364_)))
                        (__tmp186329
                         (let ((__tmp186330
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth181391_ _hd-pat181388_))))
                           (declare (not safe))
                           (cons __tmp186330 _vars181365_))))
                    (declare (not safe))
                    (_lp181361_ _rest181387_ __tmp186331 __tmp186329))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth181391_))
                      (let ((__tmp186327
                             (let ((__tmp186328
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat181388_))))
                               (declare (not safe))
                               (cons __tmp186328 _targets181364_))))
                        (declare (not safe))
                        (_lp181361_ _rest181387_ __tmp186327 _vars181365_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx181191_
                         _where181351_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest181366181376_))
                                                (let ((_hd181371181396_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest181366181376_)))
                                                      (_tl181372181398_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest181366181376_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd181371181396_))
                                                      (let ((_hd181373181401_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd181371181396_)))
                    (_tl181374181403_
                     (let () (declare (not safe)) (##cdr _hd181371181396_))))
                (let* ((_hd-depth*181406_ _hd181373181401_)
                       (_hd-pat181408_ _tl181374181403_)
                       (_rest181410_ _tl181372181398_))
                  (declare (not safe))
                  (_K181370181393_
                   _rest181410_
                   _hd-pat181408_
                   _hd-depth*181406_)))
              (let () (declare (not safe)) (_else181368181384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else181368181384_)))))))))))
                             (_recur181239_
                              (lambda (_e181244_ _is-e?181245_)
                                (if (_is-e?181245_ _e181244_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx181191_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e181244_))
                                        (let* ((_pat181247_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e181244_)))
                                               (_depth181249_
                                                (##structure-ref
                                                 _pat181247_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth181249_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat181247_))
                                                      (let ((__tmp186348
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth181249_ _pat181247_))))
                (declare (not safe))
                (cons __tmp186348 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat181247_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e181244_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e181244_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e181244_))
                                                (let* ((_e181251181258_
                                                        _e181244_)
                                                       (_E181253181262_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e181251181258_))))
                                                       (_E181252181341_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e181251181258_))
                      (let ((_e181254181266_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e181251181258_))))
                        (let ((_hd181255181269_
                               (let ()
                                 (declare (not safe))
                                 (##car _e181254181266_)))
                              (_tl181256181271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e181254181266_))))
                          (let* ((_hd181274_ _hd181255181269_)
                                 (_rest181276_ _tl181256181271_))
                            (if '#t
                                (if (_is-e?181245_ _hd181274_)
                                    (let* ((_e181277181284_ _rest181276_)
                                           (_E181279181288_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx181191_
                                                 _e181244_))))
                                           (_E181278181302_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e181277181284_))
                                                  (let ((_e181280181292_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e181277181284_))))
                                                    (let ((_hd181281181295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e181280181292_)))
                                                          (_tl181282181297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e181280181292_))))
                                                      (let ((_rest181300_
                                                             _hd181281181295_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl181282181297_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur181239_ _rest181300_ false))
                        (let () (declare (not safe)) (_E181279181288_)))
                    (let () (declare (not safe)) (_E181279181288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181279181288_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E181278181302_)))
                                    (let _lp181306_ ((_rest181308_
                                                      _rest181276_)
                                                     (_depth181309_ '0))
                                      (let* ((_e181310181317_ _rest181308_)
                                             (_E181312181321_
                                              (lambda ()
                                                (if (fxpositive? _depth181309_)
                                                    (let ((__tmp186342
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181239_
                                                              _hd181274_
                                                              _is-e?181245_)))
                                                          (__tmp186341
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181239_
                                                              _rest181308_
                                                              _is-e?181245_))))
                                                      (declare (not safe))
                                                      (_make-splice181238_
                                                       _e181244_
                                                       _depth181309_
                                                       __tmp186342
                                                       __tmp186341))
                                                    (let ((__tmp186340
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181239_
                                                              _hd181274_
                                                              _is-e?181245_)))
                                                          (__tmp186339
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur181239_
                                                              _rest181308_
                                                              _is-e?181245_))))
                                                      (declare (not safe))
                                                      (_make-cons181237_
                                                       __tmp186340
                                                       __tmp186339)))))
                                             (_E181311181337_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e181310181317_))
                                                    (let ((_e181313181325_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e181310181317_))))
                                                      (let ((_hd181314181328_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e181313181325_)))
                    (_tl181315181330_
                     (let () (declare (not safe)) (##cdr _e181313181325_))))
                (let* ((_rest-hd181333_ _hd181314181328_)
                       (_rest-tl181335_ _tl181315181330_))
                  (if '#t
                      (if (_is-e?181245_ _rest-hd181333_)
                          (let ((__tmp186347
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth181309_ '1))))
                            (declare (not safe))
                            (_lp181306_ _rest-tl181335_ __tmp186347))
                          (if (fxpositive? _depth181309_)
                              (let ((__tmp186346
                                     (let ()
                                       (declare (not safe))
                                       (_recur181239_
                                        _hd181274_
                                        _is-e?181245_)))
                                    (__tmp186345
                                     (let ()
                                       (declare (not safe))
                                       (_recur181239_
                                        _rest181308_
                                        _is-e?181245_))))
                                (declare (not safe))
                                (_make-splice181238_
                                 _e181244_
                                 _depth181309_
                                 __tmp186346
                                 __tmp186345))
                              (let ((__tmp186344
                                     (let ()
                                       (declare (not safe))
                                       (_recur181239_
                                        _hd181274_
                                        _is-e?181245_)))
                                    (__tmp186343
                                     (let ()
                                       (declare (not safe))
                                       (_recur181239_
                                        _rest181308_
                                        _is-e?181245_))))
                                (declare (not safe))
                                (_make-cons181237_ __tmp186344 __tmp186343))))
                      (let () (declare (not safe)) (_E181312181321_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E181312181321_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E181311181337_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E181253181262_))))))
                      (let () (declare (not safe)) (_E181253181262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E181252181341_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e181244_))
                                                    (let ((_g186336_
                                                           (let ((__tmp186338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e181244_)))))
                     (declare (not safe))
                     (_recur181239_ __tmp186338 _is-e?181245_))))
              (begin
                (let ((_g186337_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g186336_)
                             (##vector-length _g186336_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g186337_ 2)))
                      (error "Context expects 2 values" _g186337_)))
                (let ((_e181345_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186336_ 0)))
                      (_vars181346_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g186336_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e181345_))
                          _vars181346_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e181244_))
                                                        (let ((_g186333_
                                                               (let ((__tmp186335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e181244_)))))
                         (declare (not safe))
                         (_recur181239_ __tmp186335 _is-e?181245_))))
                  (begin
                    (let ((_g186334_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g186333_)
                                 (##vector-length _g186333_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g186334_ 2)))
                          (error "Context expects 2 values" _g186334_)))
                    (let ((_e181348_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186333_ 0)))
                          (_vars181349_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g186333_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e181348_))
                              _vars181349_))))
                (values (let () (declare (not safe)) (cons 'datum _e181244_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g186349_
                             (let ()
                               (declare (not safe))
                               (_recur181239_ _e181235_ gx#ellipsis?))))
                        (begin
                          (let ((_g186350_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g186349_)
                                       (##vector-length _g186349_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g186350_ 2)))
                                (error "Context expects 2 values" _g186350_)))
                          (let ((_tree181241_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186349_ 0)))
                                (_vars181242_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g186349_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars181242_))
                                _tree181241_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx181191_
                                   _vars181242_))))))))))
          (let* ((_e181195181205_ _stx181191_)
                 (_E181197181209_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx181191_))))
                 (_E181196181231_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e181195181205_))
                        (let ((_e181198181213_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e181195181205_))))
                          (let ((_hd181199181216_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e181198181213_)))
                                (_tl181200181218_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e181198181213_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl181200181218_))
                                (let ((_e181201181221_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl181200181218_))))
                                  (let ((_hd181202181224_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e181201181221_)))
                                        (_tl181203181226_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e181201181221_))))
                                    (let ((_form181229_ _hd181202181224_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl181203181226_))
                                          (if '#t
                                              (let ((__tmp186352
                                                     (let ((__tmp186353
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse181194_
                                                               _form181229_))))
                                                       (declare (not safe))
                                                       (_generate181193_
                                                        __tmp186353)))
                                                    (__tmp186351
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx181191_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp186352
                                                 __tmp186351))
                                              (let ()
                                                (declare (not safe))
                                                (_E181197181209_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E181197181209_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E181197181209_)))))
                        (let () (declare (not safe)) (_E181197181209_))))))
            (let () (declare (not safe)) (_E181196181231_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx180455_
               _identifier=?180456_
               _unwrap-e180457_
               _wrap-e180458_)
        (letrec ((_generate-bindings180460_
                  (lambda (_target181055_
                           _ids181056_
                           _clauses181057_
                           _clause-ids181058_
                           _E181059_)
                    (letrec ((_generate1181061_
                              (lambda (_clause181158_
                                       _clause-id181159_
                                       _E181160_)
                                (let ((__tmp186358
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id181159_ '())))
                                      (__tmp186354
                                       (let ((__tmp186355
                                              (let ((__tmp186357
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target181055_
                                                             '())))
                                                    (__tmp186356
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause180462_
                                                        _target181055_
                                                        _ids181056_
                                                        _clause181158_
                                                        _E181160_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp186357
                                                 __tmp186356))))
                                         (declare (not safe))
                                         (cons __tmp186355 '()))))
                                  (declare (not safe))
                                  (cons __tmp186358 __tmp186354)))))
                      (let _lp181063_ ((_rest181065_ _clauses181057_)
                                       (_rest-ids181066_ _clause-ids181058_)
                                       (_bindings181067_ '()))
                        (let* ((_rest181068181076_ _rest181065_)
                               (_else181070181084_
                                (lambda () _bindings181067_))
                               (_K181072181146_
                                (lambda (_rest181087_ _clause181088_)
                                  (let* ((_rest-ids181089181096_
                                          _rest-ids181066_)
                                         (_E181091181100_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids181089181096_)))
                                         (_K181092181134_
                                          (lambda (_rest-ids181103_
                                                   _clause-id181104_)
                                            (let* ((_rest-ids181105181113_
                                                    _rest-ids181103_)
                                                   (_else181107181121_
                                                    (lambda ()
                                                      (let ((__tmp186359
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1181061_
                        _clause181088_
                        _clause-id181104_
                        _E181059_))))
                (declare (not safe))
                (cons __tmp186359 _bindings181067_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K181109181126_
                                                    (lambda (_next-clause-id181124_)
                                                      (let ((__tmp186360
                                                             (let ((__tmp186361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1181061_
                               _clause181088_
                               _clause-id181104_
                               _next-clause-id181124_))))
                       (declare (not safe))
                       (cons __tmp186361 _bindings181067_))))
                (declare (not safe))
                (_lp181063_ _rest181087_ _rest-ids181103_ __tmp186360)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids181105181113_))
                                                  (let* ((_hd181110181129_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids181105181113_)))
                                                         (_next-clause-id181132_
                                                          _hd181110181129_))
                                                    (declare (not safe))
                                                    (_K181109181126_
                                                     _next-clause-id181132_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else181107181121_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids181089181096_))
                                        (let ((_hd181093181137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids181089181096_)))
                                              (_tl181094181139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids181089181096_))))
                                          (let* ((_clause-id181142_
                                                  _hd181093181137_)
                                                 (_rest-ids181144_
                                                  _tl181094181139_))
                                            (declare (not safe))
                                            (_K181092181134_
                                             _rest-ids181144_
                                             _clause-id181142_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E181091181100_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest181068181076_))
                              (let ((_hd181073181149_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest181068181076_)))
                                    (_tl181074181151_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest181068181076_))))
                                (let* ((_clause181154_ _hd181073181149_)
                                       (_rest181156_ _tl181074181151_))
                                  (declare (not safe))
                                  (_K181072181146_
                                   _rest181156_
                                   _clause181154_)))
                              (let ()
                                (declare (not safe))
                                (_else181070181084_))))))))
                 (_generate-body180461_
                  (lambda (_bindings181015_ _body181016_)
                    (let _recur181018_ ((_rest181020_ _bindings181015_))
                      (let* ((_rest181021181029_ _rest181020_)
                             (_else181023181037_ (lambda () _body181016_))
                             (_K181025181043_
                              (lambda (_rest181040_ _hd181041_)
                                (let ((__tmp186363
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd181041_ '())))
                                      (__tmp186362
                                       (let ()
                                         (declare (not safe))
                                         (_recur181018_ _rest181040_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp186363
                                   __tmp186362)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest181021181029_))
                            (let ((_hd181026181046_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest181021181029_)))
                                  (_tl181027181048_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest181021181029_))))
                              (let* ((_hd181051_ _hd181026181046_)
                                     (_rest181053_ _tl181027181048_))
                                (declare (not safe))
                                (_K181025181043_ _rest181053_ _hd181051_)))
                            (let ()
                              (declare (not safe))
                              (_else181023181037_)))))))
                 (_generate-clause180462_
                  (lambda (_target180878_ _ids180879_ _clause180880_ _E180881_)
                    (letrec ((_generate1180883_
                              (lambda (_hd180970_ _fender180971_ _body180972_)
                                (let ((_g186364_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause180464_
                                          _hd180970_
                                          _ids180879_))))
                                  (begin
                                    (let ((_g186365_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g186364_)
                                                 (##vector-length _g186364_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g186365_ 2)))
                                          (error "Context expects 2 values"
                                                 _g186365_)))
                                    (let ((_e180974_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186364_ 0)))
                                          (_mvars180975_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g186364_ 1))))
                                      (let* ((_pvars180977_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars180975_))))
                                             (_E180979_
                                              (let ((__tmp186366
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180878_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E180881_ __tmp186366)))
                                             (_K181012_
                                              (let ((__tmp186367
                                                     (let ((__tmp186369
                                                            (map (lambda (_mvar180981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar180982_)
                           (let* ((_mvar180983180990_ _mvar180981_)
                                  (_E180985180994_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar180983180990_)))
                                  (_K180986181000_
                                   (lambda (_depth180997_ _id180998_)
                                     (let ((__tmp186370
                                            (let ((__tmp186371
                                                   (let ((__tmp186373
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id180998_)))
                                                         (__tmp186372
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar180982_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp186373
                                                      __tmp186372
                                                      _depth180997_))))
                                              (declare (not safe))
                                              (cons __tmp186371 '()))))
                                       (declare (not safe))
                                       (cons _id180998_ __tmp186370)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar180983180990_))
                                 (let ((_hd180987181003_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar180983180990_)))
                                       (_tl180988181005_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar180983180990_))))
                                   (let* ((_id181008_ _hd180987181003_)
                                          (_depth181010_ _tl180988181005_))
                                     (declare (not safe))
                                     (_K180986181000_
                                      _depth181010_
                                      _id181008_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E180985180994_)))))
                         _mvars180975_
                         _pvars180977_))
                   (__tmp186368
                    (if (let () (declare (not safe)) (eq? _fender180971_ '#t))
                        _body180972_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender180971_
                           _body180972_
                           _E180979_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp186369 __tmp186368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars180977_
                                                 __tmp186367))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match180463_
                                           _hd180970_
                                           _target180878_
                                           _e180974_
                                           _mvars180975_
                                           _K181012_
                                           _E180979_)))))))))
                      (let* ((_e180884180904_ _clause180880_)
                             (_E180893180908_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e180884180904_))))
                             (_E180886180942_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180884180904_))
                                    (let ((_e180894180912_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180884180904_))))
                                      (let ((_hd180895180915_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180894180912_)))
                                            (_tl180896180917_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180894180912_))))
                                        (let ((_hd180920_ _hd180895180915_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180896180917_))
                                              (let ((_e180897180922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180896180917_))))
                                                (let ((_hd180898180925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180897180922_)))
                                                      (_tl180899180927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180897180922_))))
                                                  (let ((_fender180930_
                                                         _hd180898180925_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl180899180927_))
                                                        (let ((_e180900180932_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl180899180927_))))
                  (let ((_hd180901180935_
                         (let () (declare (not safe)) (##car _e180900180932_)))
                        (_tl180902180937_
                         (let ()
                           (declare (not safe))
                           (##cdr _e180900180932_))))
                    (let ((_body180940_ _hd180901180935_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl180902180937_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1180883_
                                 _hd180920_
                                 _fender180930_
                                 _body180940_))
                              (let () (declare (not safe)) (_E180893180908_)))
                          (let () (declare (not safe)) (_E180893180908_))))))
                (let () (declare (not safe)) (_E180893180908_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E180893180908_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180893180908_)))))
                             (_E180885180966_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180884180904_))
                                    (let ((_e180887180946_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180884180904_))))
                                      (let ((_hd180888180949_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180887180946_)))
                                            (_tl180889180951_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180887180946_))))
                                        (let ((_hd180954_ _hd180888180949_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180889180951_))
                                              (let ((_e180890180956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180889180951_))))
                                                (let ((_hd180891180959_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180890180956_)))
                                                      (_tl180892180961_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180890180956_))))
                                                  (let ((_body180964_
                                                         _hd180891180959_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl180892180961_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1180883_
                                                               _hd180954_
                                                               '#t
                                                               _body180964_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E180886180942_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E180886180942_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E180886180942_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180886180942_))))))
                        (let () (declare (not safe)) (_E180885180966_))))))
                 (_generate-match180463_
                  (lambda (_where180627_
                           _target180628_
                           _hd180629_
                           _mvars180630_
                           _K180631_
                           _E180632_)
                    (letrec ((_BUG180634_
                              (lambda (_q180876_)
                                (error '"BUG: syntax-case; generate"
                                       _stx180455_
                                       _hd180629_
                                       _q180876_)))
                             (_recur180635_
                              (lambda (_e180726_
                                       _vars180727_
                                       _target180728_
                                       _E180729_
                                       _k180730_)
                                (let* ((_e180731180738_ _e180726_)
                                       (_E180733180742_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e180731180738_)))
                                       (_K180734180864_
                                        (lambda (_body180745_ _tag180746_)
                                          (let ((_$e180748_ _tag180746_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e180748_))
                                                (_k180730_ _vars180727_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e180748_))
                                                    (let ((__tmp186480
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target180728_)))
                                                          (__tmp186476
                                                           (let ((__tmp186478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186479
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e180458_
                                    _body180745_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?180456_
                             __tmp186479
                             _target180728_)))
                         (__tmp186477 (_k180730_ _vars180727_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp186478 __tmp186477 _E180729_))))
              (declare (not safe))
              (gx#core-list 'if __tmp186480 __tmp186476 _E180729_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e180748_))
                                                        (_k180730_
                                                         (let ((__tmp186475
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body180745_ _target180728_))))
                   (declare (not safe))
                   (cons __tmp186475 _vars180727_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e180748_))
                    (let ((_$e180751_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd180752_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl180753_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp186474
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target180728_)))
                            (__tmp186455
                             (let ((__tmp186469
                                    (let ((__tmp186470
                                           (let ((__tmp186473
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e180751_ '())))
                                                 (__tmp186471
                                                  (let ((__tmp186472
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e180457_
                                                            _target180728_))))
                                                    (declare (not safe))
                                                    (cons __tmp186472 '()))))
                                             (declare (not safe))
                                             (cons __tmp186473 __tmp186471))))
                                      (declare (not safe))
                                      (cons __tmp186470 '())))
                                   (__tmp186456
                                    (let ((__tmp186459
                                           (let ((__tmp186465
                                                  (let ((__tmp186468
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd180752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp186466
                 (let ((__tmp186467
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e180751_))))
                   (declare (not safe))
                   (cons __tmp186467 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186468
                                                          __tmp186466)))
                                                 (__tmp186460
                                                  (let ((__tmp186461
                                                         (let ((__tmp186464
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl180753_ '())))
                       (__tmp186462
                        (let ((__tmp186463
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e180751_))))
                          (declare (not safe))
                          (cons __tmp186463 '()))))
                   (declare (not safe))
                   (cons __tmp186464 __tmp186462))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186461 '()))))
                                             (declare (not safe))
                                             (cons __tmp186465 __tmp186460)))
                                          (__tmp186457
                                           (let* ((_body180754180761_
                                                   _body180745_)
                                                  (_E180756180765_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body180754180761_)))
                                                  (_K180757180773_
                                                   (lambda (_tl180768_
                                                            _hd180769_)
                                                     (let ((__tmp186458
                                                            (lambda (_vars180771_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur180635_
                         _tl180768_
                         _vars180771_
                         _$tl180753_
                         _E180729_
                         _k180730_)))))
               (declare (not safe))
               (_recur180635_
                _hd180769_
                _vars180727_
                _$hd180752_
                _E180729_
                __tmp186458)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body180754180761_))
                                                 (let ((_hd180758180776_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body180754180761_)))
                                                       (_tl180759180778_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body180754180761_))))
                                                   (let* ((_hd180781_
                                                           _hd180758180776_)
                                                          (_tl180783_
                                                           _tl180759180778_))
                                                     (declare (not safe))
                                                     (_K180757180773_
                                                      _tl180783_
                                                      _hd180781_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E180756180765_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp186459
                                       __tmp186457))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp186469
                                __tmp186456))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp186474 __tmp186455 _E180729_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e180748_))
                        (let* ((_body180784180791_ _body180745_)
                               (_E180786180795_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body180784180791_)))
                               (_K180787180846_
                                (lambda (_tl180798_ _hd180799_)
                                  (let* ((_rlen180801_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen180636_ _tl180798_)))
                                         (_$target180803_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd180805_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl180807_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp180809_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e180811_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd180813_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl180815_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars180817_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars180637_ _hd180799_)))
                                         (_lvars180819_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180817_)))
                                         (_tlvars180821_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180817_)))
                                         (_linit180825_
                                          (map (lambda (_var180823_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars180819_)))
                                    (letrec ((_make-loop180828_
                                              (lambda (_vars180832_)
                                                (let ((__tmp186406
                                                       (let ((__tmp186407
                                                              (let ((__tmp186443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp180809_ '())))
                            (__tmp186408
                             (let ((__tmp186409
                                    (let ((__tmp186442
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd180805_ _lvars180819_)))
                                          (__tmp186410
                                           (let ((__tmp186441
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd180805_)))
                                                 (__tmp186419
                                                  (let ((__tmp186436
                                                         (let ((__tmp186437
                                                                (let ((__tmp186440
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e180811_ '())))
                              (__tmp186438
                               (let ((__tmp186439
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e180457_
                                         _$hd180805_))))
                                 (declare (not safe))
                                 (cons __tmp186439 '()))))
                          (declare (not safe))
                          (cons __tmp186440 __tmp186438))))
                   (declare (not safe))
                   (cons __tmp186437 '())))
                (__tmp186420
                 (let ((__tmp186426
                        (let ((__tmp186432
                               (let ((__tmp186435
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd180813_ '())))
                                     (__tmp186433
                                      (let ((__tmp186434
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e180811_))))
                                        (declare (not safe))
                                        (cons __tmp186434 '()))))
                                 (declare (not safe))
                                 (cons __tmp186435 __tmp186433)))
                              (__tmp186427
                               (let ((__tmp186428
                                      (let ((__tmp186431
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl180815_ '())))
                                            (__tmp186429
                                             (let ((__tmp186430
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e180811_))))
                                               (declare (not safe))
                                               (cons __tmp186430 '()))))
                                        (declare (not safe))
                                        (cons __tmp186431 __tmp186429))))
                                 (declare (not safe))
                                 (cons __tmp186428 '()))))
                          (declare (not safe))
                          (cons __tmp186432 __tmp186427)))
                       (__tmp186421
                        (let ((__tmp186422
                               (lambda (_hdvars180834_)
                                 (let ((__tmp186423
                                        (let ((__tmp186424
                                               (map (lambda (_svar180836_
                                                             _lvar180837_)
                                                      (let ((__tmp186425
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar180836_ _hdvars180834_ _BUG180634_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp186425 _lvar180837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars180817_
                                                    _lvars180819_)))
                                          (declare (not safe))
                                          (cons _$lp-tl180815_ __tmp186424))))
                                   (declare (not safe))
                                   (cons _$lp180809_ __tmp186423)))))
                          (declare (not safe))
                          (_recur180635_
                           _hd180799_
                           '()
                           _$lp-hd180813_
                           _E180729_
                           __tmp186422))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp186426 __tmp186421))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186436
                                                     __tmp186420)))
                                                 (__tmp186411
                                                  (let ((__tmp186415
                                                         (map (lambda (_lvar180839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar180840_)
                        (let ((__tmp186418
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar180840_ '())))
                              (__tmp186416
                               (let ((__tmp186417
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar180839_))))
                                 (declare (not safe))
                                 (cons __tmp186417 '()))))
                          (declare (not safe))
                          (cons __tmp186418 __tmp186416)))
                      _lvars180819_
                      _tlvars180821_))
                (__tmp186412
                 (_k180730_
                  (let ((__tmp186413
                         (lambda (_svar180842_ _tlvar180843_ _r180844_)
                           (let ((__tmp186414
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar180842_ _tlvar180843_))))
                             (declare (not safe))
                             (cons __tmp186414 _r180844_)))))
                    (declare (not safe))
                    (foldl2 __tmp186413
                            _vars180832_
                            _svars180817_
                            _tlvars180821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp186415
                                                     __tmp186412))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp186441
                                              __tmp186419
                                              __tmp186411))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp186442
                                       __tmp186410))))
                               (declare (not safe))
                               (cons __tmp186409 '()))))
                        (declare (not safe))
                        (cons __tmp186443 __tmp186408))))
                 (declare (not safe))
                 (cons __tmp186407 '())))
              (__tmp186404
               (let ((__tmp186405
                      (let ()
                        (declare (not safe))
                        (cons _$target180803_ _linit180825_))))
                 (declare (not safe))
                 (cons _$lp180809_ __tmp186405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp186406
                                                   __tmp186404)))))
                                      (let ((_body180830_
                                             (let ((__tmp186445
                                                    (let ((__tmp186446
                                                           (let ((__tmp186449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp186450
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl180807_ '()))))
                            (declare (not safe))
                            (cons _$target180803_ __tmp186450)))
                         (__tmp186447
                          (let ((__tmp186448
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target180728_
                                    _rlen180801_))))
                            (declare (not safe))
                            (cons __tmp186448 '()))))
                     (declare (not safe))
                     (cons __tmp186449 __tmp186447))))
              (declare (not safe))
              (cons __tmp186446 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186444
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180635_
                                                       _tl180798_
                                                       _vars180727_
                                                       _$tl180807_
                                                       _E180729_
                                                       _make-loop180828_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186445
                                                __tmp186444))))
                                        (let ((__tmp186454
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target180728_)))
                                              (__tmp186451
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen180801_))
                                                   _body180830_
                                                   (let ((__tmp186452
                                                          (let ((__tmp186453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target180728_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp186453 _rlen180801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp186452
                                                      _body180830_
                                                      _E180729_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp186454
                                           __tmp186451
                                           _E180729_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body180784180791_))
                              (let ((_hd180788180849_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body180784180791_)))
                                    (_tl180789180851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body180784180791_))))
                                (let* ((_hd180854_ _hd180788180849_)
                                       (_tl180856_ _tl180789180851_))
                                  (declare (not safe))
                                  (_K180787180846_ _tl180856_ _hd180854_)))
                              (let () (declare (not safe)) (_E180786180795_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e180748_))
                            (let ((__tmp186403
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target180728_)))
                                  (__tmp186402 (_k180730_ _vars180727_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp186403
                               __tmp186402
                               _E180729_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e180748_))
                                (let ((_$e180858_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp186401
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target180728_)))
                                        (__tmp186393
                                         (let ((__tmp186395
                                                (let ((__tmp186396
                                                       (let ((__tmp186400
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e180858_ '())))
                     (__tmp186397
                      (let ((__tmp186398
                             (let ((__tmp186399
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e180457_
                                       _target180728_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp186399))))
                        (declare (not safe))
                        (cons __tmp186398 '()))))
                 (declare (not safe))
                 (cons __tmp186400 __tmp186397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp186396 '())))
                                               (__tmp186394
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur180635_
                                                   _body180745_
                                                   _vars180727_
                                                   _$e180858_
                                                   _E180729_
                                                   _k180730_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp186395
                                            __tmp186394))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp186401
                                     __tmp186393
                                     _E180729_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e180748_))
                                    (let ((_$e180860_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp186392
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target180728_)))
                                            (__tmp186384
                                             (let ((__tmp186386
                                                    (let ((__tmp186387
                                                           (let ((__tmp186391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e180860_ '())))
                         (__tmp186388
                          (let ((__tmp186389
                                 (let ((__tmp186390
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e180457_
                                           _target180728_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp186390))))
                            (declare (not safe))
                            (cons __tmp186389 '()))))
                     (declare (not safe))
                     (cons __tmp186391 __tmp186388))))
              (declare (not safe))
              (cons __tmp186387 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp186385
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur180635_
                                                       _body180745_
                                                       _vars180727_
                                                       _$e180860_
                                                       _E180729_
                                                       _k180730_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp186386
                                                __tmp186385))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp186392
                                         __tmp186384
                                         _E180729_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e180748_))
                                        (let ((_$e180862_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp186383
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target180728_)))
                                                (__tmp186374
                                                 (let ((__tmp186378
                                                        (let ((__tmp186379
                                                               (let ((__tmp186382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e180862_ '())))
                             (__tmp186380
                              (let ((__tmp186381
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target180728_))))
                                (declare (not safe))
                                (cons __tmp186381 '()))))
                         (declare (not safe))
                         (cons __tmp186382 __tmp186380))))
                  (declare (not safe))
                  (cons __tmp186379 '())))
               (__tmp186375
                (let ((__tmp186377
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e180862_ _body180745_)))
                      (__tmp186376 (_k180730_ _vars180727_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp186377 __tmp186376 _E180729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp186378
                                                    __tmp186375))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp186383
                                             __tmp186374
                                             _E180729_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG180634_ _e180726_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e180731180738_))
                                      (let ((_hd180735180867_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180731180738_)))
                                            (_tl180736180869_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180731180738_))))
                                        (let* ((_tag180872_ _hd180735180867_)
                                               (_body180874_ _tl180736180869_))
                                          (declare (not safe))
                                          (_K180734180864_
                                           _body180874_
                                           _tag180872_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180733180742_))))))
                             (_splice-rlen180636_
                              (lambda (_e180688_)
                                (let _lp180690_ ((_e180692_ _e180688_)
                                                 (_n180693_ '0))
                                  (let* ((_e180694180701_ _e180692_)
                                         (_E180696180705_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180694180701_)))
                                         (_K180697180714_
                                          (lambda (_body180708_ _tag180709_)
                                            (let ((_$e180711_ _tag180709_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e180711_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx180455_
                                                     _where180627_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e180711_))
                                                      (let ((__tmp186482
                                                             (cdr _body180708_))
                                                            (__tmp186481
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n180693_ '1))))
                (declare (not safe))
                (_lp180690_ __tmp186482 __tmp186481))
              _n180693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180694180701_))
                                        (let ((_hd180698180717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180694180701_)))
                                              (_tl180699180719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180694180701_))))
                                          (let* ((_tag180722_ _hd180698180717_)
                                                 (_body180724_
                                                  _tl180699180719_))
                                            (declare (not safe))
                                            (_K180697180714_
                                             _body180724_
                                             _tag180722_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180696180705_)))))))
                             (_splice-vars180637_
                              (lambda (_e180644_)
                                (let _recur180646_ ((_e180648_ _e180644_)
                                                    (_vars180649_ '()))
                                  (let* ((_e180650180657_ _e180648_)
                                         (_E180652180661_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e180650180657_)))
                                         (_K180653180676_
                                          (lambda (_body180664_ _tag180665_)
                                            (let ((_$e180667_ _tag180665_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e180667_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body180664_
                                                          _vars180649_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e180667_))
                  (let () (declare (not safe)) (eq? 'splice _$e180667_)))
              (let ((__tmp186485 (cdr _body180664_))
                    (__tmp186483
                     (let ((__tmp186484 (car _body180664_)))
                       (declare (not safe))
                       (_recur180646_ __tmp186484 _vars180649_))))
                (declare (not safe))
                (_recur180646_ __tmp186485 __tmp186483))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e180667_))
                      (let () (declare (not safe)) (eq? 'box _$e180667_)))
                  (let ()
                    (declare (not safe))
                    (_recur180646_ _body180664_ _vars180649_))
                  _vars180649_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e180650180657_))
                                        (let ((_hd180654180679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e180650180657_)))
                                              (_tl180655180681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e180650180657_))))
                                          (let* ((_tag180684_ _hd180654180679_)
                                                 (_body180686_
                                                  _tl180655180681_))
                                            (declare (not safe))
                                            (_K180653180676_
                                             _body180686_
                                             _tag180684_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180652180661_)))))))
                             (_make-body180638_
                              (lambda (_vars180640_)
                                (let ((__tmp186486
                                       (map (lambda (_mvar180642_)
                                              (let ((__tmp186487
                                                     (car _mvar180642_)))
                                                (declare (not safe))
                                                (assgetq __tmp186487
                                                         _vars180640_
                                                         _BUG180634_)))
                                            _mvars180630_)))
                                  (declare (not safe))
                                  (cons _K180631_ __tmp186486)))))
                      (let ()
                        (declare (not safe))
                        (_recur180635_
                         _hd180629_
                         '()
                         _target180628_
                         _E180632_
                         _make-body180638_)))))
                 (_parse-clause180464_
                  (lambda (_hd180533_ _ids180534_)
                    (let _recur180536_ ((_e180538_ _hd180533_)
                                        (_vars180539_ '())
                                        (_depth180540_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e180538_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e180538_))
                              (values '(any) _vars180539_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e180538_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx180455_
                                     _hd180533_))
                                  (if (let ((__tmp186503
                                             (lambda (_id180542_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e180538_
                                                  _id180542_)))))
                                        (declare (not safe))
                                        (find __tmp186503 _ids180534_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e180538_))
                                              _vars180539_)
                                      (if (let ((__tmp186501
                                                 (lambda (_var180544_)
                                                   (let ((__tmp186502
                                                          (car _var180544_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e180538_
                                                      __tmp186502)))))
                                            (declare (not safe))
                                            (find __tmp186501 _vars180539_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx180455_
                                             _e180538_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e180538_))
                                                  (let ((__tmp186500
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e180538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth180540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186500
                                                          _vars180539_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e180538_))
                              (let* ((_e180545180552_ _e180538_)
                                     (_E180547180556_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e180545180552_))))
                                     (_E180546180617_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e180545180552_))
                                            (let ((_e180548180560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e180545180552_))))
                                              (let ((_hd180549180563_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e180548180560_)))
                                                    (_tl180550180565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e180548180560_))))
                                                (let* ((_hd180568_
                                                        _hd180549180563_)
                                                       (_rest180570_
                                                        _tl180550180565_))
                                                  (if '#t
                                                      (let* ((_make-pair180585_
                                                              (lambda (_tag180572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd180573_
                               _tl180574_)
                        (let* ((_hd-depth180576_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag180572_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth180540_ '1))
                                    _depth180540_))
                               (_g186495_
                                (let ()
                                  (declare (not safe))
                                  (_recur180536_
                                   _hd180573_
                                   _vars180539_
                                   _hd-depth180576_))))
                          (begin
                            (let ((_g186496_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g186495_)
                                         (##vector-length _g186495_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g186496_ 2)))
                                  (error "Context expects 2 values"
                                         _g186496_)))
                            (let ((_hd180578_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186495_ 0)))
                                  (_vars180579_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g186495_ 1))))
                              (let ((_g186497_
                                     (let ()
                                       (declare (not safe))
                                       (_recur180536_
                                        _tl180574_
                                        _vars180579_
                                        _depth180540_))))
                                (begin
                                  (let ((_g186498_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g186497_)
                                               (##vector-length _g186497_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g186498_ 2)))
                                        (error "Context expects 2 values"
                                               _g186498_)))
                                  (let ((_tl180581_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186497_ 0)))
                                        (_vars180582_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g186497_ 1))))
                                    (let ()
                                      (values (let ((__tmp186499
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd180578_
                                                             _tl180581_))))
                                                (declare (not safe))
                                                (cons _tag180572_ __tmp186499))
                                              _vars180582_))))))))))
                     (_e180586180593_ _rest180570_)
                     (_E180588180597_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair180585_ 'cons _hd180568_ _rest180570_))))
                     (_E180587180613_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e180586180593_))
                            (let ((_e180589180601_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e180586180593_))))
                              (let ((_hd180590180604_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e180589180601_)))
                                    (_tl180591180606_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e180589180601_))))
                                (let* ((_rest-hd180609_ _hd180590180604_)
                                       (_rest-tl180611_ _tl180591180606_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd180609_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180585_
                                             'splice
                                             _hd180568_
                                             _rest-tl180611_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair180585_
                                             'cons
                                             _hd180568_
                                             _rest180570_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180588180597_))))))
                            (let () (declare (not safe)) (_E180588180597_))))))
                (let () (declare (not safe)) (_E180587180613_)))
              (let () (declare (not safe)) (_E180547180556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E180547180556_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180546180617_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e180538_))
                                  (values '(null) _vars180539_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e180538_))
                                      (let ((_g186492_
                                             (let ((__tmp186494
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e180538_)))))
                                               (declare (not safe))
                                               (_recur180536_
                                                __tmp186494
                                                _vars180539_
                                                _depth180540_))))
                                        (begin
                                          (let ((_g186493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g186492_)
                                                       (##vector-length
                                                        _g186492_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g186493_ 2)))
                                                (error "Context expects 2 values"
                                                       _g186493_)))
                                          (let ((_e180621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g186492_ 0)))
                                                (_vars180622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g186492_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e180621_))
                                                    _vars180622_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e180538_))
                                          (let ((_g186489_
                                                 (let ((__tmp186491
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e180538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur180536_
                                                    __tmp186491
                                                    _vars180539_
                                                    _depth180540_))))
                                            (begin
                                              (let ((_g186490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g186489_)
                                                           (##vector-length
                                                            _g186489_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g186490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g186490_)))
                                              (let ((_e180624_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186489_
                                                        0)))
                                                    (_vars180625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g186489_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e180624_))
                                                        _vars180625_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e180538_))
                                              (values (let ((__tmp186488
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e180538_))))
                (declare (not safe))
                (cons 'datum __tmp186488))
              _vars180539_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx180455_
                                                 _e180538_))))))))))))
          (let* ((_e180465180478_ _stx180455_)
                 (_E180467180482_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e180465180478_))))
                 (_E180466180529_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e180465180478_))
                        (let ((_e180468180486_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e180465180478_))))
                          (let ((_hd180469180489_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e180468180486_)))
                                (_tl180470180491_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e180468180486_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl180470180491_))
                                (let ((_e180471180494_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl180470180491_))))
                                  (let ((_hd180472180497_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e180471180494_)))
                                        (_tl180473180499_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e180471180494_))))
                                    (let ((_expr180502_ _hd180472180497_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl180473180499_))
                                          (let ((_e180474180504_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl180473180499_))))
                                            (let ((_hd180475180507_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e180474180504_)))
                                                  (_tl180476180509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e180474180504_))))
                                              (let* ((_ids180512_
                                                      _hd180475180507_)
                                                     (_clauses180514_
                                                      _tl180476180509_))
                                                (if '#t
                                                    (if (let ((__tmp186521
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids180512_))))
                  (declare (not safe))
                  (not __tmp186521))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx180455_
                   _ids180512_))
                (if (let ((__tmp186520
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses180514_))))
                      (declare (not safe))
                      (not __tmp186520))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx180455_))
                    (let* ((_ids180516_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids180512_)))
                           (_clauses180518_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses180514_)))
                           (_clause-ids180520_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses180518_)))
                           (_E180522_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target180524_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first180526_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses180518_))
                                _E180522_
                                (car _clause-ids180520_))))
                      (let ((__tmp186505
                             (let ((__tmp186506
                                    (let ((__tmp186508
                                           (let ((__tmp186513
                                                  (let ((__tmp186514
                                                         (let ((__tmp186519
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E180522_ '())))
                       (__tmp186515
                        (let ((__tmp186516
                               (let ((__tmp186518
                                      (let ()
                                        (declare (not safe))
                                        (cons _target180524_ '())))
                                     (__tmp186517
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target180524_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp186518
                                  __tmp186517))))
                          (declare (not safe))
                          (cons __tmp186516 '()))))
                   (declare (not safe))
                   (cons __tmp186519 __tmp186515))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp186514 '())))
                                                 (__tmp186509
                                                  (let ((__tmp186512
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings180460_
                                                            _target180524_
                                                            _ids180516_
                                                            _clauses180518_
                                                            _clause-ids180520_
                                                            _E180522_)))
                                                        (__tmp186510
                                                         (let ((__tmp186511
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr180502_ '()))))
                   (declare (not safe))
                   (cons _first180526_ __tmp186511))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body180461_
                                                     __tmp186512
                                                     __tmp186510))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp186513
                                              __tmp186509)))
                                          (__tmp186507
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx180455_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp186508
                                       __tmp186507))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp186506)))
                            (__tmp186504
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx180455_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp186505 __tmp186504)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E180467180482_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E180467180482_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180467180482_)))))
                        (let () (declare (not safe)) (_E180467180482_))))))
            (let () (declare (not safe)) (_E180466180529_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx181165_)
        (let* ((_identifier=?181167_ 'free-identifier=?)
               (_unwrap-e181169_ 'syntax-e)
               (_wrap-e181171_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181165_
           _identifier=?181167_
           _unwrap-e181169_
           _wrap-e181171_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx181173_ _identifier=?181174_)
        (let* ((_unwrap-e181176_ 'syntax-e) (_wrap-e181178_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181173_
           _identifier=?181174_
           _unwrap-e181176_
           _wrap-e181178_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx181180_ _identifier=?181181_ _unwrap-e181182_)
        (let ((_wrap-e181184_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx181180_
           _identifier=?181181_
           _unwrap-e181182_
           _wrap-e181184_))))
    (define gx#macro-expand-syntax-case
      (lambda _g186523_
        (let ((_g186522_ (let () (declare (not safe)) (##length _g186523_))))
          (cond ((let () (declare (not safe)) (##fx= _g186522_ 1))
                 (apply (lambda (_stx181165_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx181165_)))
                        _g186523_))
                ((let () (declare (not safe)) (##fx= _g186522_ 2))
                 (apply (lambda (_stx181173_ _identifier=?181174_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx181173_
                             _identifier=?181174_)))
                        _g186523_))
                ((let () (declare (not safe)) (##fx= _g186522_ 3))
                 (apply (lambda (_stx181180_
                                 _identifier=?181181_
                                 _unwrap-e181182_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx181180_
                             _identifier=?181181_
                             _unwrap-e181182_)))
                        _g186523_))
                ((let () (declare (not safe)) (##fx= _g186522_ 4))
                 (apply (lambda (_stx181186_
                                 _identifier=?181187_
                                 _unwrap-e181188_
                                 _wrap-e181189_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx181186_
                             _identifier=?181187_
                             _unwrap-e181188_
                             _wrap-e181189_)))
                        _g186523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g186523_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx180452_)
        (if (let () (declare (not safe)) (gx#identifier? _stx180452_))
            (let ((__tmp186524
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx180452_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp186524 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd180410_ . _rest180411_)
        (let ((_len180413_ (length _hd180410_)))
          (let _lp180415_ ((_rest180417_ _rest180411_))
            (let* ((_rest180418180426_ _rest180417_)
                   (_else180420180434_ (lambda () '#!void))
                   (_K180422180440_
                    (lambda (_rest180437_ _hd180438_)
                      (if (fx= _len180413_ (length _hd180438_))
                          (let ()
                            (declare (not safe))
                            (_lp180415_ _rest180437_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd180438_))))))
              (if (let () (declare (not safe)) (##pair? _rest180418180426_))
                  (let ((_hd180423180443_
                         (let ()
                           (declare (not safe))
                           (##car _rest180418180426_)))
                        (_tl180424180445_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest180418180426_))))
                    (let* ((_hd180448_ _hd180423180443_)
                           (_rest180450_ _tl180424180445_))
                      (declare (not safe))
                      (_K180422180440_ _rest180450_ _hd180448_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx180368_ _n180369_)
        (let _lp180371_ ((_rest180373_ _stx180368_) (_r180374_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest180373_))
              (let* ((_g180375180382_
                      (let () (declare (not safe)) (gx#syntax-e _rest180373_)))
                     (_E180377180386_
                      (lambda ()
                        (error '"No clause matching" _g180375180382_)))
                     (_K180378180392_
                      (lambda (_rest180389_ _hd180390_)
                        (let ((__tmp186529
                               (let ()
                                 (declare (not safe))
                                 (cons _hd180390_ _r180374_))))
                          (declare (not safe))
                          (_lp180371_ _rest180389_ __tmp186529)))))
                (if (let () (declare (not safe)) (##pair? _g180375180382_))
                    (let ((_hd180379180395_
                           (let ()
                             (declare (not safe))
                             (##car _g180375180382_)))
                          (_tl180380180397_
                           (let ()
                             (declare (not safe))
                             (##cdr _g180375180382_))))
                      (let* ((_hd180400_ _hd180379180395_)
                             (_rest180402_ _tl180380180397_))
                        (declare (not safe))
                        (_K180378180392_ _rest180402_ _hd180400_)))
                    (let () (declare (not safe)) (_E180377180386_))))
              (let _lp180404_ ((_n180406_ _n180369_)
                               (_l180407_ _r180374_)
                               (_r180408_ _rest180373_))
                (if (let () (declare (not safe)) (null? _l180407_))
                    (values _l180407_ _r180408_)
                    (if (fxpositive? _n180406_)
                        (let ((__tmp186528
                               (let ()
                                 (declare (not safe))
                                 (fx- _n180406_ '1)))
                              (__tmp186527 (cdr _l180407_))
                              (__tmp186525
                               (let ((__tmp186526 (car _l180407_)))
                                 (declare (not safe))
                                 (cons __tmp186526 _r180408_))))
                          (declare (not safe))
                          (_lp180404_ __tmp186528 __tmp186527 __tmp186525))
                        (values (reverse _l180407_) _r180408_))))))))))
