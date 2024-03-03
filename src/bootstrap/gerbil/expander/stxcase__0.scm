(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1709457369)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp97588 (list gx#expander::t))
            (__tmp97586
             (let ((__tmp97587
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97587 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp97588
         '(id depth)
         __tmp97586
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args97583_
        (apply make-instance gx#syntax-pattern::t _$args97583_)))
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
      (lambda (_self97580_ _stx97581_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx97581_))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx97062_)
        (letrec ((_generate97064_
                  (lambda (_e97291_)
                    (letrec ((_BUG97293_
                              (lambda (_q97455_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _stx97062_
                                         _e97291_
                                         _q97455_))))
                             (_local-pattern-e97294_
                              (lambda (_pat97453_)
                                (let ((__tmp97589
                                       (##structure-ref
                                        _pat97453_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp97589))))
                             (_getvar97295_
                              (lambda (_q97450_ _vars97451_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq__%
                                   _q97450_
                                   _vars97451_
                                   _BUG97293_))))
                             (_getarg97296_
                              (lambda (_arg97416_ _vars97417_)
                                (let* ((_arg9741897425_ _arg97416_)
                                       (_E9742097429_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _arg9741897425_))))
                                       (_K9742197438_
                                        (lambda (_e97432_ _tag97433_)
                                          (let ((_$e97435_ _tag97433_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e97435_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar97295_
                                                   _e97432_
                                                   _vars97417_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern _$e97435_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e97294_
                                                       _e97432_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG97293_
                                                       _arg97416_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg9741897425_))
                                      (let ((_hd9742297441_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg9741897425_)))
                                            (_tl9742397443_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg9741897425_))))
                                        (let* ((_tag97446_ _hd9742297441_)
                                               (_e97448_ _tl9742397443_))
                                          (declare (not safe))
                                          (_K9742197438_ _e97448_ _tag97446_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9742097429_)))))))
                      (let _recur97298_ ((_e97300_ _e97291_) (_vars97301_ '()))
                        (let* ((_e9730297309_ _e97300_)
                               (_E9730497313_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _e9730297309_))))
                               (_K9730597404_
                                (lambda (_body97316_ _tag97317_)
                                  (let ((_$e97319_ _tag97317_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e97319_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body97316_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e97319_))
                                            (let ((_id97322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body97316_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id97322_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks97324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id97322_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks97324_))
                                                        (let ((__tmp97617
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body97316_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp97617))
                (let ((__tmp97616
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body97316_)))
                      (__tmp97615
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body97316_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp97616
                   __tmp97615
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id97322_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body97316_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG97293_
                                                         _e97300_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e97319_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e97294_
                                                   _body97316_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e97319_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar97295_
                                                       _body97316_
                                                       _vars97301_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e97319_))
                                                        (let ((__tmp97613
                                                               (let ((__tmp97614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body97316_)))
                         (declare (not safe))
                         (_recur97298_ __tmp97614 _vars97301_)))
                      (__tmp97611
                       (let ((__tmp97612 (cdr _body97316_)))
                         (declare (not safe))
                         (_recur97298_ __tmp97612 _vars97301_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp97613 __tmp97611))
                (if (let () (declare (not safe)) (eq? 'vector _$e97319_))
                    (let ((__tmp97610
                           (let ()
                             (declare (not safe))
                             (_recur97298_ _body97316_ _vars97301_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp97610))
                    (if (let () (declare (not safe)) (eq? 'box _$e97319_))
                        (let ((__tmp97609
                               (let ()
                                 (declare (not safe))
                                 (_recur97298_ _body97316_ _vars97301_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp97609))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e97319_))
                            (let* ((_body9732597336_ _body97316_)
                                   (_E9732797340_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _body9732597336_))))
                                   (_K9732897378_
                                    (lambda (_args97343_
                                             _iv97344_
                                             _hd97345_
                                             _depth97346_)
                                      (let* ((_targets97352_
                                              (map (lambda (_g9734797349_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg97296_
                                                        _g9734797349_
                                                        _vars97301_)))
                                                   _args97343_))
                                             (_fold-in97354_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args97343_)))
                                             (_fold-out97356_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args97358_
                                              (let ((__tmp97590
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out97356_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp97590
                                                        _fold-in97354_)))
                                             (_lambda-body97375_
                                              (if (fx> _depth97346_ '1)
                                                  (let ((_r-args97366_
                                                         (map (lambda (_arg97360_)
                                                                (let ((__tmp97595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg97360_)))
                          (declare (not safe))
                          (cons 'ref __tmp97595)))
                      _args97343_))
                (_r-vars97367_
                 (let ((__tmp97596
                        (lambda (_arg97362_ _var97363_ _r97364_)
                          (let ((__tmp97597
                                 (let ((__tmp97598 (cdr _arg97362_)))
                                   (declare (not safe))
                                   (cons __tmp97598 _var97363_))))
                            (declare (not safe))
                            (cons __tmp97597 _r97364_)))))
                   (declare (not safe))
                   (foldr2 __tmp97596
                           _vars97301_
                           _args97343_
                           _fold-in97354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp97599
                                                           (let ((__tmp97600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97604
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth97346_ '1)))
                                (__tmp97601
                                 (let ((__tmp97602
                                        (let ((__tmp97603
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var _fold-out97356_))))
                                          (declare (not safe))
                                          (cons __tmp97603 _r-args97366_))))
                                   (declare (not safe))
                                   (cons _hd97345_ __tmp97602))))
                            (declare (not safe))
                            (cons __tmp97604 __tmp97601))))
                     (declare (not safe))
                     (cons 'splice __tmp97600))))
              (declare (not safe))
              (_recur97298_ __tmp97599 _r-vars97367_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars97373_
                                                          (let ((__tmp97591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg97369_ _var97370_ _r97371_)
                           (let ((__tmp97592
                                  (let ((__tmp97593 (cdr _arg97369_)))
                                    (declare (not safe))
                                    (cons __tmp97593 _var97370_))))
                             (declare (not safe))
                             (cons __tmp97592 _r97371_)))))
                    (declare (not safe))
                    (foldr2 __tmp97591
                            _vars97301_
                            _args97343_
                            _fold-in97354_)))
                 (__tmp97594
                  (let ()
                    (declare (not safe))
                    (_recur97298_ _hd97345_ _hd-vars97373_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp97594
                                                     _fold-out97356_)))))
                                        (let ((__tmp97608
                                               (if (fx> (length _targets97352_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets97352_))
                                                   '#!void))
                                              (__tmp97605
                                               (let ((__tmp97607
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args97358_
                                                         _lambda-body97375_)))
                                                     (__tmp97606
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur97298_
                                                         _iv97344_
                                                         _vars97301_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp97607
                                                  __tmp97606
                                                  _targets97352_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp97608
                                           __tmp97605))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body9732597336_))
                                  (let ((_hd9732997381_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body9732597336_)))
                                        (_tl9733097383_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body9732597336_))))
                                    (let ((_depth97386_ _hd9732997381_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl9733097383_))
                                          (let ((_hd9733197388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl9733097383_)))
                                                (_tl9733297390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl9733097383_))))
                                            (let ((_hd97393_ _hd9733197388_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl9733297390_))
                                                  (let ((_hd9733397395_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl9733297390_)))
                                                        (_tl9733497397_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl9733297390_))))
                                                    (let* ((_iv97400_
                                                            _hd9733397395_)
                                                           (_args97402_
                                                            _tl9733497397_))
                                                      (declare (not safe))
                                                      (_K9732897378_
                                                       _args97402_
                                                       _iv97400_
                                                       _hd97393_
                                                       _depth97386_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9732797340_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9732797340_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E9732797340_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e97319_))
                                _body97316_
                                (let ()
                                  (declare (not safe))
                                  (_BUG97293_ _e97300_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e9730297309_))
                              (let ((_hd9730697407_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9730297309_)))
                                    (_tl9730797409_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9730297309_))))
                                (let* ((_tag97412_ _hd9730697407_)
                                       (_body97414_ _tl9730797409_))
                                  (declare (not safe))
                                  (_K9730597404_ _body97414_ _tag97412_)))
                              (let ()
                                (declare (not safe))
                                (_E9730497313_))))))))
                 (_parse97065_
                  (lambda (_e97106_)
                    (letrec ((_make-cons97108_
                              (lambda (_hd97283_ _tl97284_)
                                (let ((_g97618_ _hd97283_)
                                      (_g97620_ _tl97284_))
                                  (begin
                                    (let ((_g97619_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97618_)
                                                 (##vector-length _g97618_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97619_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97619_)))
                                    (let ((_g97621_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97620_)
                                                 (##vector-length _g97620_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97621_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97621_)))
                                    (let ((_hd-e97286_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97618_ 0)))
                                          (_hd-vars97287_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97618_ 1))))
                                      (let ((_tl-e97288_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97620_ 0)))
                                            (_tl-vars97289_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97620_ 1))))
                                        (values (let ((__tmp97622
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e97286_
                                                               _tl-e97288_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp97622))
                                                (append _hd-vars97287_
                                                        _tl-vars97289_))))))))
                             (_make-splice97109_
                              (lambda (_where97222_
                                       _depth97223_
                                       _hd97224_
                                       _tl97225_)
                                (let ((_g97623_ _hd97224_)
                                      (_g97625_ _tl97225_))
                                  (begin
                                    (let ((_g97624_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97623_)
                                                 (##vector-length _g97623_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97624_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97624_)))
                                    (let ((_g97626_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97625_)
                                                 (##vector-length _g97625_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97626_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97626_)))
                                    (let ((_hd-e97227_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97623_ 0)))
                                          (_hd-vars97228_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97623_ 1))))
                                      (let ((_tl-e97229_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97625_ 0)))
                                            (_tl-vars97230_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g97625_ 1))))
                                        (let _lp97232_ ((_rest97234_
                                                         _hd-vars97228_)
                                                        (_targets97235_ '())
                                                        (_vars97236_
                                                         _tl-vars97230_))
                                          (let* ((_rest9723797247_ _rest97234_)
                                                 (_else9723997255_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets97235_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx97062_
                                                           _where97222_))
                                                        (values (let ((__tmp97627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp97628
                                      (let ((__tmp97629
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e97229_
                                                     _targets97235_))))
                                        (declare (not safe))
                                        (cons _hd-e97227_ __tmp97629))))
                                 (declare (not safe))
                                 (cons _depth97223_ __tmp97628))))
                          (declare (not safe))
                          (cons 'splice __tmp97627))
                        _vars97236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K9724197264_
                                                  (lambda (_rest97258_
                                                           _hd-pat97259_
                                                           _hd-depth*97260_)
                                                    (let ((_hd-depth97262_
                                                           (fx- _hd-depth*97260_
                                                                _depth97223_)))
                                                      (if (fxpositive?
                                                           _hd-depth97262_)
                                                          (let ((__tmp97634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp97635
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat97259_))))
                           (declare (not safe))
                           (cons __tmp97635 _targets97235_)))
                        (__tmp97632
                         (let ((__tmp97633
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth97262_ _hd-pat97259_))))
                           (declare (not safe))
                           (cons __tmp97633 _vars97236_))))
                    (declare (not safe))
                    (_lp97232_ _rest97258_ __tmp97634 __tmp97632))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth97262_))
                      (let ((__tmp97630
                             (let ((__tmp97631
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat97259_))))
                               (declare (not safe))
                               (cons __tmp97631 _targets97235_))))
                        (declare (not safe))
                        (_lp97232_ _rest97258_ __tmp97630 _vars97236_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx97062_
                         _where97222_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest9723797247_))
                                                (let ((_hd9724297267_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest9723797247_)))
                                                      (_tl9724397269_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest9723797247_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd9724297267_))
                                                      (let ((_hd9724497272_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd9724297267_)))
                    (_tl9724597274_
                     (let () (declare (not safe)) (##cdr _hd9724297267_))))
                (let* ((_hd-depth*97277_ _hd9724497272_)
                       (_hd-pat97279_ _tl9724597274_)
                       (_rest97281_ _tl9724397269_))
                  (declare (not safe))
                  (_K9724197264_ _rest97281_ _hd-pat97279_ _hd-depth*97277_)))
              (let () (declare (not safe)) (_else9723997255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else9723997255_)))))))))))
                             (_recur97110_
                              (lambda (_e97115_ _is-e?97116_)
                                (if (_is-e?97116_ _e97115_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx97062_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e97115_))
                                        (let* ((_pat97118_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e97115_)))
                                               (_depth97120_
                                                (##structure-ref
                                                 _pat97118_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth97120_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref _pat97118_))
                                                      (let ((__tmp97651
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth97120_ _pat97118_))))
                (declare (not safe))
                (cons __tmp97651 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat97118_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e97115_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e97115_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e97115_))
                                                (let* ((_e9712297129_ _e97115_)
                                                       (_E9712497133_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e9712297129_))))
                                                       (_E9712397212_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e9712297129_))
                      (let ((_e9712597137_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e9712297129_))))
                        (let ((_hd9712697140_
                               (let ()
                                 (declare (not safe))
                                 (##car _e9712597137_)))
                              (_tl9712797142_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e9712597137_))))
                          (let* ((_hd97145_ _hd9712697140_)
                                 (_rest97147_ _tl9712797142_))
                            (if '#t
                                (if (_is-e?97116_ _hd97145_)
                                    (let* ((_e9714897155_ _rest97147_)
                                           (_E9715097159_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx97062_
                                                 _e97115_))))
                                           (_E9714997173_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e9714897155_))
                                                  (let ((_e9715197163_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e9714897155_))))
                                                    (let ((_hd9715297166_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e9715197163_)))
                                                          (_tl9715397168_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e9715197163_))))
                                                      (let ((_rest97171_
                                                             _hd9715297166_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl9715397168_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur97110_ _rest97171_ false))
                        (let () (declare (not safe)) (_E9715097159_)))
                    (let () (declare (not safe)) (_E9715097159_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9715097159_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E9714997173_)))
                                    (let _lp97177_ ((_rest97179_ _rest97147_)
                                                    (_depth97180_ '0))
                                      (let* ((_e9718197188_ _rest97179_)
                                             (_E9718397192_
                                              (lambda ()
                                                (if (fxpositive? _depth97180_)
                                                    (let ((__tmp97645
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97110_
                                                              _hd97145_
                                                              _is-e?97116_)))
                                                          (__tmp97644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97110_
                                                              _rest97179_
                                                              _is-e?97116_))))
                                                      (declare (not safe))
                                                      (_make-splice97109_
                                                       _e97115_
                                                       _depth97180_
                                                       __tmp97645
                                                       __tmp97644))
                                                    (let ((__tmp97643
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97110_
                                                              _hd97145_
                                                              _is-e?97116_)))
                                                          (__tmp97642
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur97110_
                                                              _rest97179_
                                                              _is-e?97116_))))
                                                      (declare (not safe))
                                                      (_make-cons97108_
                                                       __tmp97643
                                                       __tmp97642)))))
                                             (_E9718297208_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e9718197188_))
                                                    (let ((_e9718497196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e9718197188_))))
                                                      (let ((_hd9718597199_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e9718497196_)))
                    (_tl9718697201_
                     (let () (declare (not safe)) (##cdr _e9718497196_))))
                (let* ((_rest-hd97204_ _hd9718597199_)
                       (_rest-tl97206_ _tl9718697201_))
                  (if '#t
                      (if (_is-e?97116_ _rest-hd97204_)
                          (let ((__tmp97650
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth97180_ '1))))
                            (declare (not safe))
                            (_lp97177_ _rest-tl97206_ __tmp97650))
                          (if (fxpositive? _depth97180_)
                              (let ((__tmp97649
                                     (let ()
                                       (declare (not safe))
                                       (_recur97110_ _hd97145_ _is-e?97116_)))
                                    (__tmp97648
                                     (let ()
                                       (declare (not safe))
                                       (_recur97110_
                                        _rest97179_
                                        _is-e?97116_))))
                                (declare (not safe))
                                (_make-splice97109_
                                 _e97115_
                                 _depth97180_
                                 __tmp97649
                                 __tmp97648))
                              (let ((__tmp97647
                                     (let ()
                                       (declare (not safe))
                                       (_recur97110_ _hd97145_ _is-e?97116_)))
                                    (__tmp97646
                                     (let ()
                                       (declare (not safe))
                                       (_recur97110_
                                        _rest97179_
                                        _is-e?97116_))))
                                (declare (not safe))
                                (_make-cons97108_ __tmp97647 __tmp97646))))
                      (let () (declare (not safe)) (_E9718397192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9718397192_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E9718297208_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E9712497133_))))))
                      (let () (declare (not safe)) (_E9712497133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E9712397212_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e97115_))
                                                    (let ((_g97639_
                                                           (let ((__tmp97641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e97115_)))))
                     (declare (not safe))
                     (_recur97110_ __tmp97641 _is-e?97116_))))
              (begin
                (let ((_g97640_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g97639_)
                             (##vector-length _g97639_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97640_ 2)))
                      (error "Context expects 2 values" _g97640_)))
                (let ((_e97216_
                       (let () (declare (not safe)) (##vector-ref _g97639_ 0)))
                      (_vars97217_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97639_ 1))))
                  (values (let () (declare (not safe)) (cons 'vector _e97216_))
                          _vars97217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e97115_))
                                                        (let ((_g97636_
                                                               (let ((__tmp97638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e97115_)))))
                         (declare (not safe))
                         (_recur97110_ __tmp97638 _is-e?97116_))))
                  (begin
                    (let ((_g97637_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97636_)
                                 (##vector-length _g97636_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97637_ 2)))
                          (error "Context expects 2 values" _g97637_)))
                    (let ((_e97219_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97636_ 0)))
                          (_vars97220_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97636_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e97219_))
                              _vars97220_))))
                (values (let () (declare (not safe)) (cons 'datum _e97115_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g97652_
                             (let ()
                               (declare (not safe))
                               (_recur97110_ _e97106_ gx#ellipsis?))))
                        (begin
                          (let ((_g97653_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97652_)
                                       (##vector-length _g97652_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97653_ 2)))
                                (error "Context expects 2 values" _g97653_)))
                          (let ((_tree97112_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97652_ 0)))
                                (_vars97113_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97652_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars97113_))
                                _tree97112_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx97062_
                                   _vars97113_))))))))))
          (let* ((_e9706697076_ _stx97062_)
                 (_E9706897080_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx97062_))))
                 (_E9706797102_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9706697076_))
                        (let ((_e9706997084_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9706697076_))))
                          (let ((_hd9707097087_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9706997084_)))
                                (_tl9707197089_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9706997084_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9707197089_))
                                (let ((_e9707297092_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9707197089_))))
                                  (let ((_hd9707397095_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9707297092_)))
                                        (_tl9707497097_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9707297092_))))
                                    (let ((_form97100_ _hd9707397095_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl9707497097_))
                                          (if '#t
                                              (let ((__tmp97655
                                                     (let ((__tmp97656
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse97065_
                                                               _form97100_))))
                                                       (declare (not safe))
                                                       (_generate97064_
                                                        __tmp97656)))
                                                    (__tmp97654
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx97062_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp97655
                                                 __tmp97654))
                                              (let ()
                                                (declare (not safe))
                                                (_E9706897080_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E9706897080_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9706897080_)))))
                        (let () (declare (not safe)) (_E9706897080_))))))
            (let () (declare (not safe)) (_E9706797102_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx96326_ _identifier=?96327_ _unwrap-e96328_ _wrap-e96329_)
        (letrec ((_generate-bindings96331_
                  (lambda (_target96926_
                           _ids96927_
                           _clauses96928_
                           _clause-ids96929_
                           _E96930_)
                    (letrec ((_generate196932_
                              (lambda (_clause97029_ _clause-id97030_ _E97031_)
                                (let ((__tmp97661
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id97030_ '())))
                                      (__tmp97657
                                       (let ((__tmp97658
                                              (let ((__tmp97660
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96926_
                                                             '())))
                                                    (__tmp97659
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause96333_
                                                        _target96926_
                                                        _ids96927_
                                                        _clause97029_
                                                        _E97031_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp97660
                                                 __tmp97659))))
                                         (declare (not safe))
                                         (cons __tmp97658 '()))))
                                  (declare (not safe))
                                  (cons __tmp97661 __tmp97657)))))
                      (let _lp96934_ ((_rest96936_ _clauses96928_)
                                      (_rest-ids96937_ _clause-ids96929_)
                                      (_bindings96938_ '()))
                        (let* ((_rest9693996947_ _rest96936_)
                               (_else9694196955_ (lambda () _bindings96938_))
                               (_K9694397017_
                                (lambda (_rest96958_ _clause96959_)
                                  (let* ((_rest-ids9696096967_ _rest-ids96937_)
                                         (_E9696296971_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _rest-ids9696096967_))))
                                         (_K9696397005_
                                          (lambda (_rest-ids96974_
                                                   _clause-id96975_)
                                            (let* ((_rest-ids9697696984_
                                                    _rest-ids96974_)
                                                   (_else9697896992_
                                                    (lambda ()
                                                      (let ((__tmp97662
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate196932_
                        _clause96959_
                        _clause-id96975_
                        _E96930_))))
                (declare (not safe))
                (cons __tmp97662 _bindings96938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K9698096997_
                                                    (lambda (_next-clause-id96995_)
                                                      (let ((__tmp97663
                                                             (let ((__tmp97664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate196932_
                               _clause96959_
                               _clause-id96975_
                               _next-clause-id96995_))))
                       (declare (not safe))
                       (cons __tmp97664 _bindings96938_))))
                (declare (not safe))
                (_lp96934_ _rest96958_ _rest-ids96974_ __tmp97663)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids9697696984_))
                                                  (let* ((_hd9698197000_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids9697696984_)))
                                                         (_next-clause-id97003_
                                                          _hd9698197000_))
                                                    (declare (not safe))
                                                    (_K9698096997_
                                                     _next-clause-id97003_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else9697896992_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids9696096967_))
                                        (let ((_hd9696497008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids9696096967_)))
                                              (_tl9696597010_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids9696096967_))))
                                          (let* ((_clause-id97013_
                                                  _hd9696497008_)
                                                 (_rest-ids97015_
                                                  _tl9696597010_))
                                            (declare (not safe))
                                            (_K9696397005_
                                             _rest-ids97015_
                                             _clause-id97013_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9696296971_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9693996947_))
                              (let ((_hd9694497020_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9693996947_)))
                                    (_tl9694597022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9693996947_))))
                                (let* ((_clause97025_ _hd9694497020_)
                                       (_rest97027_ _tl9694597022_))
                                  (declare (not safe))
                                  (_K9694397017_ _rest97027_ _clause97025_)))
                              (let ()
                                (declare (not safe))
                                (_else9694196955_))))))))
                 (_generate-body96332_
                  (lambda (_bindings96886_ _body96887_)
                    (let _recur96889_ ((_rest96891_ _bindings96886_))
                      (let* ((_rest9689296900_ _rest96891_)
                             (_else9689496908_ (lambda () _body96887_))
                             (_K9689696914_
                              (lambda (_rest96911_ _hd96912_)
                                (let ((__tmp97666
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd96912_ '())))
                                      (__tmp97665
                                       (let ()
                                         (declare (not safe))
                                         (_recur96889_ _rest96911_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp97666
                                   __tmp97665)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest9689296900_))
                            (let ((_hd9689796917_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest9689296900_)))
                                  (_tl9689896919_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest9689296900_))))
                              (let* ((_hd96922_ _hd9689796917_)
                                     (_rest96924_ _tl9689896919_))
                                (declare (not safe))
                                (_K9689696914_ _rest96924_ _hd96922_)))
                            (let ()
                              (declare (not safe))
                              (_else9689496908_)))))))
                 (_generate-clause96333_
                  (lambda (_target96749_ _ids96750_ _clause96751_ _E96752_)
                    (letrec ((_generate196754_
                              (lambda (_hd96841_ _fender96842_ _body96843_)
                                (let ((_g97667_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause96335_
                                          _hd96841_
                                          _ids96750_))))
                                  (begin
                                    (let ((_g97668_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g97667_)
                                                 (##vector-length _g97667_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g97668_ 2)))
                                          (error "Context expects 2 values"
                                                 _g97668_)))
                                    (let ((_e96845_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97667_ 0)))
                                          (_mvars96846_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g97667_ 1))))
                                      (let* ((_pvars96848_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars96846_))))
                                             (_E96850_
                                              (let ((__tmp97669
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target96749_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E96752_ __tmp97669)))
                                             (_K96883_
                                              (let ((__tmp97670
                                                     (let ((__tmp97672
                                                            (map (lambda (_mvar96852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar96853_)
                           (let* ((_mvar9685496861_ _mvar96852_)
                                  (_E9685696865_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _mvar9685496861_))))
                                  (_K9685796871_
                                   (lambda (_depth96868_ _id96869_)
                                     (let ((__tmp97673
                                            (let ((__tmp97674
                                                   (let ((__tmp97676
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id96869_)))
                                                         (__tmp97675
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar96853_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp97676
                                                      __tmp97675
                                                      _depth96868_))))
                                              (declare (not safe))
                                              (cons __tmp97674 '()))))
                                       (declare (not safe))
                                       (cons _id96869_ __tmp97673)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar9685496861_))
                                 (let ((_hd9685896874_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar9685496861_)))
                                       (_tl9685996876_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar9685496861_))))
                                   (let* ((_id96879_ _hd9685896874_)
                                          (_depth96881_ _tl9685996876_))
                                     (declare (not safe))
                                     (_K9685796871_ _depth96881_ _id96879_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E9685696865_)))))
                         _mvars96846_
                         _pvars96848_))
                   (__tmp97671
                    (if (let () (declare (not safe)) (eq? _fender96842_ '#t))
                        _body96843_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender96842_
                           _body96843_
                           _E96850_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp97672 __tmp97671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars96848_
                                                 __tmp97670))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match96334_
                                           _hd96841_
                                           _target96749_
                                           _e96845_
                                           _mvars96846_
                                           _K96883_
                                           _E96850_)))))))))
                      (let* ((_e9675596775_ _clause96751_)
                             (_E9676496779_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e9675596775_))))
                             (_E9675796813_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9675596775_))
                                    (let ((_e9676596783_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9675596775_))))
                                      (let ((_hd9676696786_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9676596783_)))
                                            (_tl9676796788_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9676596783_))))
                                        (let ((_hd96791_ _hd9676696786_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9676796788_))
                                              (let ((_e9676896793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9676796788_))))
                                                (let ((_hd9676996796_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9676896793_)))
                                                      (_tl9677096798_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9676896793_))))
                                                  (let ((_fender96801_
                                                         _hd9676996796_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl9677096798_))
                                                        (let ((_e9677196803_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl9677096798_))))
                  (let ((_hd9677296806_
                         (let () (declare (not safe)) (##car _e9677196803_)))
                        (_tl9677396808_
                         (let () (declare (not safe)) (##cdr _e9677196803_))))
                    (let ((_body96811_ _hd9677296806_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl9677396808_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate196754_
                                 _hd96791_
                                 _fender96801_
                                 _body96811_))
                              (let () (declare (not safe)) (_E9676496779_)))
                          (let () (declare (not safe)) (_E9676496779_))))))
                (let () (declare (not safe)) (_E9676496779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E9676496779_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9676496779_)))))
                             (_E9675696837_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e9675596775_))
                                    (let ((_e9675896817_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e9675596775_))))
                                      (let ((_hd9675996820_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9675896817_)))
                                            (_tl9676096822_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9675896817_))))
                                        (let ((_hd96825_ _hd9675996820_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl9676096822_))
                                              (let ((_e9676196827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl9676096822_))))
                                                (let ((_hd9676296830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e9676196827_)))
                                                      (_tl9676396832_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e9676196827_))))
                                                  (let ((_body96835_
                                                         _hd9676296830_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl9676396832_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate196754_
                                                               _hd96825_
                                                               '#t
                                                               _body96835_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E9675796813_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E9675796813_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E9675796813_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E9675796813_))))))
                        (let () (declare (not safe)) (_E9675696837_))))))
                 (_generate-match96334_
                  (lambda (_where96498_
                           _target96499_
                           _hd96500_
                           _mvars96501_
                           _K96502_
                           _E96503_)
                    (letrec ((_BUG96505_
                              (lambda (_q96747_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _stx96326_
                                         _hd96500_
                                         _q96747_))))
                             (_recur96506_
                              (lambda (_e96597_
                                       _vars96598_
                                       _target96599_
                                       _E96600_
                                       _k96601_)
                                (let* ((_e9660296609_ _e96597_)
                                       (_E9660496613_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _e9660296609_))))
                                       (_K9660596735_
                                        (lambda (_body96616_ _tag96617_)
                                          (let ((_$e96619_ _tag96617_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e96619_))
                                                (_k96601_ _vars96598_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e96619_))
                                                    (let ((__tmp97783
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target96599_)))
                                                          (__tmp97779
                                                           (let ((__tmp97781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97782
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list _wrap-e96329_ _body96616_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?96327_
                             __tmp97782
                             _target96599_)))
                         (__tmp97780 (_k96601_ _vars96598_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp97781 __tmp97780 _E96600_))))
              (declare (not safe))
              (gx#core-list 'if __tmp97783 __tmp97779 _E96600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var _$e96619_))
                                                        (_k96601_
                                                         (let ((__tmp97778
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body96616_ _target96599_))))
                   (declare (not safe))
                   (cons __tmp97778 _vars96598_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e96619_))
                    (let ((_$e96622_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd96623_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl96624_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp97777
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target96599_)))
                            (__tmp97758
                             (let ((__tmp97772
                                    (let ((__tmp97773
                                           (let ((__tmp97776
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e96622_ '())))
                                                 (__tmp97774
                                                  (let ((__tmp97775
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e96328_
                                                            _target96599_))))
                                                    (declare (not safe))
                                                    (cons __tmp97775 '()))))
                                             (declare (not safe))
                                             (cons __tmp97776 __tmp97774))))
                                      (declare (not safe))
                                      (cons __tmp97773 '())))
                                   (__tmp97759
                                    (let ((__tmp97762
                                           (let ((__tmp97768
                                                  (let ((__tmp97771
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd96623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp97769
                 (let ((__tmp97770
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e96622_))))
                   (declare (not safe))
                   (cons __tmp97770 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97771
                                                          __tmp97769)))
                                                 (__tmp97763
                                                  (let ((__tmp97764
                                                         (let ((__tmp97767
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl96624_ '())))
                       (__tmp97765
                        (let ((__tmp97766
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e96622_))))
                          (declare (not safe))
                          (cons __tmp97766 '()))))
                   (declare (not safe))
                   (cons __tmp97767 __tmp97765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97764 '()))))
                                             (declare (not safe))
                                             (cons __tmp97768 __tmp97763)))
                                          (__tmp97760
                                           (let* ((_body9662596632_
                                                   _body96616_)
                                                  (_E9662796636_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _body9662596632_))))
                                                  (_K9662896644_
                                                   (lambda (_tl96639_
                                                            _hd96640_)
                                                     (let ((__tmp97761
                                                            (lambda (_vars96642_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur96506_
                         _tl96639_
                         _vars96642_
                         _$tl96624_
                         _E96600_
                         _k96601_)))))
               (declare (not safe))
               (_recur96506_
                _hd96640_
                _vars96598_
                _$hd96623_
                _E96600_
                __tmp97761)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body9662596632_))
                                                 (let ((_hd9662996647_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body9662596632_)))
                                                       (_tl9663096649_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body9662596632_))))
                                                   (let* ((_hd96652_
                                                           _hd9662996647_)
                                                          (_tl96654_
                                                           _tl9663096649_))
                                                     (declare (not safe))
                                                     (_K9662896644_
                                                      _tl96654_
                                                      _hd96652_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E9662796636_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp97762
                                       __tmp97760))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp97772
                                __tmp97759))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp97777 __tmp97758 _E96600_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e96619_))
                        (let* ((_body9665596662_ _body96616_)
                               (_E9665796666_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _body9665596662_))))
                               (_K9665896717_
                                (lambda (_tl96669_ _hd96670_)
                                  (let* ((_rlen96672_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen96507_ _tl96669_)))
                                         (_$target96674_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd96676_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl96678_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp96680_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e96682_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd96684_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl96686_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars96688_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars96508_ _hd96670_)))
                                         (_lvars96690_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96688_)))
                                         (_tlvars96692_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars96688_)))
                                         (_linit96696_
                                          (map (lambda (_var96694_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars96690_)))
                                    (letrec ((_make-loop96699_
                                              (lambda (_vars96703_)
                                                (let ((__tmp97709
                                                       (let ((__tmp97710
                                                              (let ((__tmp97746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp96680_ '())))
                            (__tmp97711
                             (let ((__tmp97712
                                    (let ((__tmp97745
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd96676_ _lvars96690_)))
                                          (__tmp97713
                                           (let ((__tmp97744
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd96676_)))
                                                 (__tmp97722
                                                  (let ((__tmp97739
                                                         (let ((__tmp97740
                                                                (let ((__tmp97743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e96682_ '())))
                              (__tmp97741
                               (let ((__tmp97742
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e96328_
                                         _$hd96676_))))
                                 (declare (not safe))
                                 (cons __tmp97742 '()))))
                          (declare (not safe))
                          (cons __tmp97743 __tmp97741))))
                   (declare (not safe))
                   (cons __tmp97740 '())))
                (__tmp97723
                 (let ((__tmp97729
                        (let ((__tmp97735
                               (let ((__tmp97738
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd96684_ '())))
                                     (__tmp97736
                                      (let ((__tmp97737
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e96682_))))
                                        (declare (not safe))
                                        (cons __tmp97737 '()))))
                                 (declare (not safe))
                                 (cons __tmp97738 __tmp97736)))
                              (__tmp97730
                               (let ((__tmp97731
                                      (let ((__tmp97734
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl96686_ '())))
                                            (__tmp97732
                                             (let ((__tmp97733
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e96682_))))
                                               (declare (not safe))
                                               (cons __tmp97733 '()))))
                                        (declare (not safe))
                                        (cons __tmp97734 __tmp97732))))
                                 (declare (not safe))
                                 (cons __tmp97731 '()))))
                          (declare (not safe))
                          (cons __tmp97735 __tmp97730)))
                       (__tmp97724
                        (let ((__tmp97725
                               (lambda (_hdvars96705_)
                                 (let ((__tmp97726
                                        (let ((__tmp97727
                                               (map (lambda (_svar96707_
                                                             _lvar96708_)
                                                      (let ((__tmp97728
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq__% _svar96707_ _hdvars96705_ _BUG96505_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp97728 _lvar96708_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars96688_
                                                    _lvars96690_)))
                                          (declare (not safe))
                                          (cons _$lp-tl96686_ __tmp97727))))
                                   (declare (not safe))
                                   (cons _$lp96680_ __tmp97726)))))
                          (declare (not safe))
                          (_recur96506_
                           _hd96670_
                           '()
                           _$lp-hd96684_
                           _E96600_
                           __tmp97725))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp97729 __tmp97724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97739
                                                     __tmp97723)))
                                                 (__tmp97714
                                                  (let ((__tmp97718
                                                         (map (lambda (_lvar96710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar96711_)
                        (let ((__tmp97721
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar96711_ '())))
                              (__tmp97719
                               (let ((__tmp97720
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar96710_))))
                                 (declare (not safe))
                                 (cons __tmp97720 '()))))
                          (declare (not safe))
                          (cons __tmp97721 __tmp97719)))
                      _lvars96690_
                      _tlvars96692_))
                (__tmp97715
                 (_k96601_
                  (let ((__tmp97716
                         (lambda (_svar96713_ _tlvar96714_ _r96715_)
                           (let ((__tmp97717
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar96713_ _tlvar96714_))))
                             (declare (not safe))
                             (cons __tmp97717 _r96715_)))))
                    (declare (not safe))
                    (foldl2 __tmp97716
                            _vars96703_
                            _svars96688_
                            _tlvars96692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp97718
                                                     __tmp97715))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp97744
                                              __tmp97722
                                              __tmp97714))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp97745
                                       __tmp97713))))
                               (declare (not safe))
                               (cons __tmp97712 '()))))
                        (declare (not safe))
                        (cons __tmp97746 __tmp97711))))
                 (declare (not safe))
                 (cons __tmp97710 '())))
              (__tmp97707
               (let ((__tmp97708
                      (let ()
                        (declare (not safe))
                        (cons _$target96674_ _linit96696_))))
                 (declare (not safe))
                 (cons _$lp96680_ __tmp97708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp97709
                                                   __tmp97707)))))
                                      (let ((_body96701_
                                             (let ((__tmp97748
                                                    (let ((__tmp97749
                                                           (let ((__tmp97752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp97753
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl96678_ '()))))
                            (declare (not safe))
                            (cons _$target96674_ __tmp97753)))
                         (__tmp97750
                          (let ((__tmp97751
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target96599_
                                    _rlen96672_))))
                            (declare (not safe))
                            (cons __tmp97751 '()))))
                     (declare (not safe))
                     (cons __tmp97752 __tmp97750))))
              (declare (not safe))
              (cons __tmp97749 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97747
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96506_
                                                       _tl96669_
                                                       _vars96598_
                                                       _$tl96678_
                                                       _E96600_
                                                       _make-loop96699_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97748
                                                __tmp97747))))
                                        (let ((__tmp97757
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target96599_)))
                                              (__tmp97754
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen96672_))
                                                   _body96701_
                                                   (let ((__tmp97755
                                                          (let ((__tmp97756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target96599_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp97756 _rlen96672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp97755
                                                      _body96701_
                                                      _E96600_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp97757
                                           __tmp97754
                                           _E96600_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body9665596662_))
                              (let ((_hd9665996720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body9665596662_)))
                                    (_tl9666096722_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body9665596662_))))
                                (let* ((_hd96725_ _hd9665996720_)
                                       (_tl96727_ _tl9666096722_))
                                  (declare (not safe))
                                  (_K9665896717_ _tl96727_ _hd96725_)))
                              (let () (declare (not safe)) (_E9665796666_))))
                        (if (let () (declare (not safe)) (eq? 'null _$e96619_))
                            (let ((__tmp97706
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target96599_)))
                                  (__tmp97705 (_k96601_ _vars96598_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp97706
                               __tmp97705
                               _E96600_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e96619_))
                                (let ((_$e96729_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp97704
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target96599_)))
                                        (__tmp97696
                                         (let ((__tmp97698
                                                (let ((__tmp97699
                                                       (let ((__tmp97703
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e96729_ '())))
                     (__tmp97700
                      (let ((__tmp97701
                             (let ((__tmp97702
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e96328_
                                       _target96599_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp97702))))
                        (declare (not safe))
                        (cons __tmp97701 '()))))
                 (declare (not safe))
                 (cons __tmp97703 __tmp97700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp97699 '())))
                                               (__tmp97697
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur96506_
                                                   _body96616_
                                                   _vars96598_
                                                   _$e96729_
                                                   _E96600_
                                                   _k96601_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp97698
                                            __tmp97697))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp97704
                                     __tmp97696
                                     _E96600_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e96619_))
                                    (let ((_$e96731_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp97695
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target96599_)))
                                            (__tmp97687
                                             (let ((__tmp97689
                                                    (let ((__tmp97690
                                                           (let ((__tmp97694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e96731_ '())))
                         (__tmp97691
                          (let ((__tmp97692
                                 (let ((__tmp97693
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e96328_
                                           _target96599_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp97693))))
                            (declare (not safe))
                            (cons __tmp97692 '()))))
                     (declare (not safe))
                     (cons __tmp97694 __tmp97691))))
              (declare (not safe))
              (cons __tmp97690 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp97688
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur96506_
                                                       _body96616_
                                                       _vars96598_
                                                       _$e96731_
                                                       _E96600_
                                                       _k96601_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp97689
                                                __tmp97688))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp97695
                                         __tmp97687
                                         _E96600_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e96619_))
                                        (let ((_$e96733_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp97686
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target96599_)))
                                                (__tmp97677
                                                 (let ((__tmp97681
                                                        (let ((__tmp97682
                                                               (let ((__tmp97685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e96733_ '())))
                             (__tmp97683
                              (let ((__tmp97684
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target96599_))))
                                (declare (not safe))
                                (cons __tmp97684 '()))))
                         (declare (not safe))
                         (cons __tmp97685 __tmp97683))))
                  (declare (not safe))
                  (cons __tmp97682 '())))
               (__tmp97678
                (let ((__tmp97680
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e96733_ _body96616_)))
                      (__tmp97679 (_k96601_ _vars96598_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp97680 __tmp97679 _E96600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp97681
                                                    __tmp97678))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp97686
                                             __tmp97677
                                             _E96600_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG96505_ _e96597_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e9660296609_))
                                      (let ((_hd9660696738_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e9660296609_)))
                                            (_tl9660796740_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e9660296609_))))
                                        (let* ((_tag96743_ _hd9660696738_)
                                               (_body96745_ _tl9660796740_))
                                          (declare (not safe))
                                          (_K9660596735_
                                           _body96745_
                                           _tag96743_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9660496613_))))))
                             (_splice-rlen96507_
                              (lambda (_e96559_)
                                (let _lp96561_ ((_e96563_ _e96559_)
                                                (_n96564_ '0))
                                  (let* ((_e9656596572_ _e96563_)
                                         (_E9656796576_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9656596572_))))
                                         (_K9656896585_
                                          (lambda (_body96579_ _tag96580_)
                                            (let ((_$e96582_ _tag96580_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e96582_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx96326_
                                                     _where96498_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e96582_))
                                                      (let ((__tmp97785
                                                             (cdr _body96579_))
                                                            (__tmp97784
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n96564_ '1))))
                (declare (not safe))
                (_lp96561_ __tmp97785 __tmp97784))
              _n96564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9656596572_))
                                        (let ((_hd9656996588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9656596572_)))
                                              (_tl9657096590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9656596572_))))
                                          (let* ((_tag96593_ _hd9656996588_)
                                                 (_body96595_ _tl9657096590_))
                                            (declare (not safe))
                                            (_K9656896585_
                                             _body96595_
                                             _tag96593_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9656796576_)))))))
                             (_splice-vars96508_
                              (lambda (_e96515_)
                                (let _recur96517_ ((_e96519_ _e96515_)
                                                   (_vars96520_ '()))
                                  (let* ((_e9652196528_ _e96519_)
                                         (_E9652396532_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _e9652196528_))))
                                         (_K9652496547_
                                          (lambda (_body96535_ _tag96536_)
                                            (let ((_$e96538_ _tag96536_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e96538_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body96535_
                                                          _vars96520_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e96538_))
                  (let () (declare (not safe)) (eq? 'splice _$e96538_)))
              (let ((__tmp97788 (cdr _body96535_))
                    (__tmp97786
                     (let ((__tmp97787 (car _body96535_)))
                       (declare (not safe))
                       (_recur96517_ __tmp97787 _vars96520_))))
                (declare (not safe))
                (_recur96517_ __tmp97788 __tmp97786))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e96538_))
                      (let () (declare (not safe)) (eq? 'box _$e96538_)))
                  (let ()
                    (declare (not safe))
                    (_recur96517_ _body96535_ _vars96520_))
                  _vars96520_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e9652196528_))
                                        (let ((_hd9652596550_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e9652196528_)))
                                              (_tl9652696552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e9652196528_))))
                                          (let* ((_tag96555_ _hd9652596550_)
                                                 (_body96557_ _tl9652696552_))
                                            (declare (not safe))
                                            (_K9652496547_
                                             _body96557_
                                             _tag96555_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E9652396532_)))))))
                             (_make-body96509_
                              (lambda (_vars96511_)
                                (let ((__tmp97789
                                       (map (lambda (_mvar96513_)
                                              (let ((__tmp97790
                                                     (car _mvar96513_)))
                                                (declare (not safe))
                                                (assgetq__%
                                                 __tmp97790
                                                 _vars96511_
                                                 _BUG96505_)))
                                            _mvars96501_)))
                                  (declare (not safe))
                                  (cons _K96502_ __tmp97789)))))
                      (let ()
                        (declare (not safe))
                        (_recur96506_
                         _hd96500_
                         '()
                         _target96499_
                         _E96503_
                         _make-body96509_)))))
                 (_parse-clause96335_
                  (lambda (_hd96404_ _ids96405_)
                    (let _recur96407_ ((_e96409_ _hd96404_)
                                       (_vars96410_ '())
                                       (_depth96411_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e96409_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e96409_))
                              (values '(any) _vars96410_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e96409_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx96326_
                                     _hd96404_))
                                  (if (let ((__tmp97806
                                             (lambda (_id96413_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e96409_
                                                  _id96413_)))))
                                        (declare (not safe))
                                        (find __tmp97806 _ids96405_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e96409_))
                                              _vars96410_)
                                      (if (let ((__tmp97804
                                                 (lambda (_var96415_)
                                                   (let ((__tmp97805
                                                          (car _var96415_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e96409_
                                                      __tmp97805)))))
                                            (declare (not safe))
                                            (find __tmp97804 _vars96410_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx96326_
                                             _e96409_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e96409_))
                                                  (let ((__tmp97803
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e96409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth96411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97803
                                                          _vars96410_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e96409_))
                              (let* ((_e9641696423_ _e96409_)
                                     (_E9641896427_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e9641696423_))))
                                     (_E9641796488_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e9641696423_))
                                            (let ((_e9641996431_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e9641696423_))))
                                              (let ((_hd9642096434_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e9641996431_)))
                                                    (_tl9642196436_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e9641996431_))))
                                                (let* ((_hd96439_
                                                        _hd9642096434_)
                                                       (_rest96441_
                                                        _tl9642196436_))
                                                  (if '#t
                                                      (let* ((_make-pair96456_
                                                              (lambda (_tag96443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd96444_
                               _tl96445_)
                        (let* ((_hd-depth96447_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag96443_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth96411_ '1))
                                    _depth96411_))
                               (_g97798_
                                (let ()
                                  (declare (not safe))
                                  (_recur96407_
                                   _hd96444_
                                   _vars96410_
                                   _hd-depth96447_))))
                          (begin
                            (let ((_g97799_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97798_)
                                         (##vector-length _g97798_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97799_ 2)))
                                  (error "Context expects 2 values" _g97799_)))
                            (let ((_hd96449_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97798_ 0)))
                                  (_vars96450_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97798_ 1))))
                              (let ((_g97800_
                                     (let ()
                                       (declare (not safe))
                                       (_recur96407_
                                        _tl96445_
                                        _vars96450_
                                        _depth96411_))))
                                (begin
                                  (let ((_g97801_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97800_)
                                               (##vector-length _g97800_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97801_ 2)))
                                        (error "Context expects 2 values"
                                               _g97801_)))
                                  (let ((_tl96452_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97800_ 0)))
                                        (_vars96453_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97800_ 1))))
                                    (let ()
                                      (values (let ((__tmp97802
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd96449_
                                                             _tl96452_))))
                                                (declare (not safe))
                                                (cons _tag96443_ __tmp97802))
                                              _vars96453_))))))))))
                     (_e9645796464_ _rest96441_)
                     (_E9645996468_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair96456_ 'cons _hd96439_ _rest96441_))))
                     (_E9645896484_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e9645796464_))
                            (let ((_e9646096472_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e9645796464_))))
                              (let ((_hd9646196475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e9646096472_)))
                                    (_tl9646296477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e9646096472_))))
                                (let* ((_rest-hd96480_ _hd9646196475_)
                                       (_rest-tl96482_ _tl9646296477_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd96480_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96456_
                                             'splice
                                             _hd96439_
                                             _rest-tl96482_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair96456_
                                             'cons
                                             _hd96439_
                                             _rest96441_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E9645996468_))))))
                            (let () (declare (not safe)) (_E9645996468_))))))
                (let () (declare (not safe)) (_E9645896484_)))
              (let () (declare (not safe)) (_E9641896427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E9641896427_))))))
                                (let () (declare (not safe)) (_E9641796488_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e96409_))
                                  (values '(null) _vars96410_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e96409_))
                                      (let ((_g97795_
                                             (let ((__tmp97797
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e96409_)))))
                                               (declare (not safe))
                                               (_recur96407_
                                                __tmp97797
                                                _vars96410_
                                                _depth96411_))))
                                        (begin
                                          (let ((_g97796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g97795_)
                                                       (##vector-length
                                                        _g97795_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g97796_ 2)))
                                                (error "Context expects 2 values"
                                                       _g97796_)))
                                          (let ((_e96492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97795_ 0)))
                                                (_vars96493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g97795_ 1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e96492_))
                                                    _vars96493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e96409_))
                                          (let ((_g97792_
                                                 (let ((__tmp97794
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e96409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur96407_
                                                    __tmp97794
                                                    _vars96410_
                                                    _depth96411_))))
                                            (begin
                                              (let ((_g97793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g97792_)
                                                           (##vector-length
                                                            _g97792_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g97793_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g97793_)))
                                              (let ((_e96495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97792_
                                                        0)))
                                                    (_vars96496_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g97792_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box _e96495_))
                                                        _vars96496_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e96409_))
                                              (values (let ((__tmp97791
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e96409_))))
                (declare (not safe))
                (cons 'datum __tmp97791))
              _vars96410_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx96326_
                                                 _e96409_))))))))))))
          (let* ((_e9633696349_ _stx96326_)
                 (_E9633896353_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e9633696349_))))
                 (_E9633796400_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e9633696349_))
                        (let ((_e9633996357_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e9633696349_))))
                          (let ((_hd9634096360_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e9633996357_)))
                                (_tl9634196362_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e9633996357_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl9634196362_))
                                (let ((_e9634296365_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl9634196362_))))
                                  (let ((_hd9634396368_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e9634296365_)))
                                        (_tl9634496370_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e9634296365_))))
                                    (let ((_expr96373_ _hd9634396368_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl9634496370_))
                                          (let ((_e9634596375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl9634496370_))))
                                            (let ((_hd9634696378_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e9634596375_)))
                                                  (_tl9634796380_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e9634596375_))))
                                              (let* ((_ids96383_
                                                      _hd9634696378_)
                                                     (_clauses96385_
                                                      _tl9634796380_))
                                                (if '#t
                                                    (if (let ((__tmp97824
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids96383_))))
                  (declare (not safe))
                  (not __tmp97824))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx96326_
                   _ids96383_))
                (if (let ((__tmp97823
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses96385_))))
                      (declare (not safe))
                      (not __tmp97823))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx96326_))
                    (let* ((_ids96387_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids96383_)))
                           (_clauses96389_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses96385_)))
                           (_clause-ids96391_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses96389_)))
                           (_E96393_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target96395_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first96397_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses96389_))
                                _E96393_
                                (car _clause-ids96391_))))
                      (let ((__tmp97808
                             (let ((__tmp97809
                                    (let ((__tmp97811
                                           (let ((__tmp97816
                                                  (let ((__tmp97817
                                                         (let ((__tmp97822
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E96393_ '())))
                       (__tmp97818
                        (let ((__tmp97819
                               (let ((__tmp97821
                                      (let ()
                                        (declare (not safe))
                                        (cons _target96395_ '())))
                                     (__tmp97820
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target96395_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp97821
                                  __tmp97820))))
                          (declare (not safe))
                          (cons __tmp97819 '()))))
                   (declare (not safe))
                   (cons __tmp97822 __tmp97818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp97817 '())))
                                                 (__tmp97812
                                                  (let ((__tmp97815
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings96331_
                                                            _target96395_
                                                            _ids96387_
                                                            _clauses96389_
                                                            _clause-ids96391_
                                                            _E96393_)))
                                                        (__tmp97813
                                                         (let ((__tmp97814
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr96373_ '()))))
                   (declare (not safe))
                   (cons _first96397_ __tmp97814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body96332_
                                                     __tmp97815
                                                     __tmp97813))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp97816
                                              __tmp97812)))
                                          (__tmp97810
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx96326_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp97811
                                       __tmp97810))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp97809)))
                            (__tmp97807
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx96326_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp97808 __tmp97807)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E9633896353_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E9633896353_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E9633896353_)))))
                        (let () (declare (not safe)) (_E9633896353_))))))
            (let () (declare (not safe)) (_E9633796400_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx97036_)
        (let* ((_identifier=?97038_ 'free-identifier=?)
               (_unwrap-e97040_ 'syntax-e)
               (_wrap-e97042_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97036_
           _identifier=?97038_
           _unwrap-e97040_
           _wrap-e97042_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx97044_ _identifier=?97045_)
        (let* ((_unwrap-e97047_ 'syntax-e) (_wrap-e97049_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97044_
           _identifier=?97045_
           _unwrap-e97047_
           _wrap-e97049_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx97051_ _identifier=?97052_ _unwrap-e97053_)
        (let ((_wrap-e97055_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx97051_
           _identifier=?97052_
           _unwrap-e97053_
           _wrap-e97055_))))
    (define gx#macro-expand-syntax-case
      (lambda _g97826_
        (let ((_g97825_ (let () (declare (not safe)) (##length _g97826_))))
          (cond ((let () (declare (not safe)) (##fx= _g97825_ 1))
                 (apply (lambda (_stx97036_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx97036_)))
                        _g97826_))
                ((let () (declare (not safe)) (##fx= _g97825_ 2))
                 (apply (lambda (_stx97044_ _identifier=?97045_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx97044_
                             _identifier=?97045_)))
                        _g97826_))
                ((let () (declare (not safe)) (##fx= _g97825_ 3))
                 (apply (lambda (_stx97051_
                                 _identifier=?97052_
                                 _unwrap-e97053_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx97051_
                             _identifier=?97052_
                             _unwrap-e97053_)))
                        _g97826_))
                ((let () (declare (not safe)) (##fx= _g97825_ 4))
                 (apply (lambda (_stx97057_
                                 _identifier=?97058_
                                 _unwrap-e97059_
                                 _wrap-e97060_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx97057_
                             _identifier=?97058_
                             _unwrap-e97059_
                             _wrap-e97060_)))
                        _g97826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g97826_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx96323_)
        (if (let () (declare (not safe)) (gx#identifier? _stx96323_))
            (let ((__tmp97827
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx96323_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp97827 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd96281_ . _rest96282_)
        (let ((_len96284_ (length _hd96281_)))
          (let _lp96286_ ((_rest96288_ _rest96282_))
            (let* ((_rest9628996297_ _rest96288_)
                   (_else9629196305_ (lambda () '#!void))
                   (_K9629396311_
                    (lambda (_rest96308_ _hd96309_)
                      (if (fx= _len96284_ (length _hd96309_))
                          (let () (declare (not safe)) (_lp96286_ _rest96308_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd96309_))))))
              (if (let () (declare (not safe)) (##pair? _rest9628996297_))
                  (let ((_hd9629496314_
                         (let ()
                           (declare (not safe))
                           (##car _rest9628996297_)))
                        (_tl9629596316_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest9628996297_))))
                    (let* ((_hd96319_ _hd9629496314_)
                           (_rest96321_ _tl9629596316_))
                      (declare (not safe))
                      (_K9629396311_ _rest96321_ _hd96319_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx96239_ _n96240_)
        (let _lp96242_ ((_rest96244_ _stx96239_) (_r96245_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest96244_))
              (let* ((_g9624696253_
                      (let () (declare (not safe)) (gx#syntax-e _rest96244_)))
                     (_E9624896257_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching" _g9624696253_))))
                     (_K9624996263_
                      (lambda (_rest96260_ _hd96261_)
                        (let ((__tmp97832
                               (let ()
                                 (declare (not safe))
                                 (cons _hd96261_ _r96245_))))
                          (declare (not safe))
                          (_lp96242_ _rest96260_ __tmp97832)))))
                (if (let () (declare (not safe)) (##pair? _g9624696253_))
                    (let ((_hd9625096266_
                           (let () (declare (not safe)) (##car _g9624696253_)))
                          (_tl9625196268_
                           (let ()
                             (declare (not safe))
                             (##cdr _g9624696253_))))
                      (let* ((_hd96271_ _hd9625096266_)
                             (_rest96273_ _tl9625196268_))
                        (declare (not safe))
                        (_K9624996263_ _rest96273_ _hd96271_)))
                    (let () (declare (not safe)) (_E9624896257_))))
              (let _lp96275_ ((_n96277_ _n96240_)
                              (_l96278_ _r96245_)
                              (_r96279_ _rest96244_))
                (if (let () (declare (not safe)) (null? _l96278_))
                    (values _l96278_ _r96279_)
                    (if (fxpositive? _n96277_)
                        (let ((__tmp97831
                               (let () (declare (not safe)) (fx- _n96277_ '1)))
                              (__tmp97830 (cdr _l96278_))
                              (__tmp97828
                               (let ((__tmp97829 (car _l96278_)))
                                 (declare (not safe))
                                 (cons __tmp97829 _r96279_))))
                          (declare (not safe))
                          (_lp96275_ __tmp97831 __tmp97830 __tmp97828))
                        (values (reverse _l96278_) _r96279_))))))))))
