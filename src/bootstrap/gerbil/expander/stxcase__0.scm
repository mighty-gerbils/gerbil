(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707830016)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp185532 (list gx#expander::t))
            (__tmp185530
             (let ((__tmp185531
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp185531 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp185532
         '(id depth)
         __tmp185530
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args180959_
        (apply make-instance gx#syntax-pattern::t _$args180959_)))
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
      (lambda (_self180956_ _stx180957_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx180957_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx180438_)
        (letrec ((_generate180440_
                  (lambda (_e180667_)
                    (letrec ((_BUG180669_
                              (lambda (_q180831_)
                                (error '"BUG: syntax; generate"
                                       _stx180438_
                                       _e180667_
                                       _q180831_)))
                             (_local-pattern-e180670_
                              (lambda (_pat180829_)
                                (let ((__tmp185533
                                       (##structure-ref
                                        _pat180829_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp185533))))
                             (_getvar180671_
                              (lambda (_q180826_ _vars180827_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q180826_
                                           _vars180827_
                                           _BUG180669_))))
                             (_getarg180672_
                              (lambda (_arg180792_ _vars180793_)
                                (let* ((_arg180794180801_ _arg180792_)
                                       (_E180796180805_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg180794180801_)))
                                       (_K180797180814_
                                        (lambda (_e180808_ _tag180809_)
                                          (let ((_$e180811_ _tag180809_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e180811_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar180671_
                                                   _e180808_
                                                   _vars180793_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e180811_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e180670_
                                                       _e180808_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG180669_
                                                       _arg180792_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg180794180801_))
                                      (let ((_hd180798180817_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg180794180801_)))
                                            (_tl180799180819_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg180794180801_))))
                                        (let* ((_tag180822_ _hd180798180817_)
                                               (_e180824_ _tl180799180819_))
                                          (declare (not safe))
                                          (_K180797180814_
                                           _e180824_
                                           _tag180822_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E180796180805_)))))))
                      (let _recur180674_ ((_e180676_ _e180667_)
                                          (_vars180677_ '()))
                        (let* ((_e180678180685_ _e180676_)
                               (_E180680180689_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e180678180685_)))
                               (_K180681180780_
                                (lambda (_body180692_ _tag180693_)
                                  (let ((_$e180695_ _tag180693_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e180695_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body180692_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e180695_))
                                            (let ((_id180698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body180692_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id180698_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks180700_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id180698_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks180700_))
                                                        (let ((__tmp185534
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body180692_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp185534))
                (let ((__tmp185536
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body180692_)))
                      (__tmp185535
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body180692_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp185536
                   __tmp185535
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id180698_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body180692_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG180669_
                                                         _e180676_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e180695_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e180670_
                                                   _body180692_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e180695_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar180671_
                                                       _body180692_
                                                       _vars180677_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e180695_))
                                                        (let ((__tmp185539
                                                               (let ((__tmp185540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body180692_)))
                         (declare (not safe))
                         (_recur180674_ __tmp185540 _vars180677_)))
                      (__tmp185537
                       (let ((__tmp185538 (cdr _body180692_)))
                         (declare (not safe))
                         (_recur180674_ __tmp185538 _vars180677_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp185539 __tmp185537))
                (if (let () (declare (not safe)) (eq? 'vector _$e180695_))
                    (let ((__tmp185541
                           (let ()
                             (declare (not safe))
                             (_recur180674_ _body180692_ _vars180677_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp185541))
                    (if (let () (declare (not safe)) (eq? 'box _$e180695_))
                        (let ((__tmp185542
                               (let ()
                                 (declare (not safe))
                                 (_recur180674_ _body180692_ _vars180677_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp185542))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e180695_))
                            (let* ((_body180701180712_ _body180692_)
                                   (_E180703180716_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body180701180712_)))
                                   (_K180704180754_
                                    (lambda (_args180719_
                                             _iv180720_
                                             _hd180721_
                                             _depth180722_)
                                      (let* ((_targets180728_
                                              (map (lambda (_g180723180725_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg180672_
                                                        _g180723180725_
                                                        _vars180677_)))
                                                   _args180719_))
                                             (_fold-in180730_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args180719_)))
                                             (_fold-out180732_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args180734_
                                              (let ((__tmp185543
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out180732_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp185543
                                                        _fold-in180730_)))
                                             (_lambda-body180751_
                                              (if (fx> _depth180722_ '1)
                                                  (let ((_r-args180742_
                                                         (map (lambda (_arg180736_)
                                                                (let ((__tmp185544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg180736_)))
                          (declare (not safe))
                          (cons 'ref __tmp185544)))
                      _args180719_))
                (_r-vars180743_
                 (let ((__tmp185545
                        (lambda (_arg180738_ _var180739_ _r180740_)
                          (let ((__tmp185546
                                 (let ((__tmp185547 (cdr _arg180738_)))
                                   (declare (not safe))
                                   (cons __tmp185547 _var180739_))))
                            (declare (not safe))
                            (cons __tmp185546 _r180740_)))))
                   (declare (not safe))
                   (foldr2 __tmp185545
                           _vars180677_
                           _args180719_
                           _fold-in180730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp185548
                                                           (let ((__tmp185549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185553
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth180722_ '1)))
                                (__tmp185550
                                 (let ((__tmp185551
                                        (let ((__tmp185552
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out180732_))))
                                          (declare (not safe))
                                          (cons __tmp185552 _r-args180742_))))
                                   (declare (not safe))
                                   (cons _hd180721_ __tmp185551))))
                            (declare (not safe))
                            (cons __tmp185553 __tmp185550))))
                     (declare (not safe))
                     (cons 'splice __tmp185549))))
              (declare (not safe))
              (_recur180674_ __tmp185548 _r-vars180743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars180749_
                                                          (let ((__tmp185554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg180745_ _var180746_ _r180747_)
                           (let ((__tmp185555
                                  (let ((__tmp185556 (cdr _arg180745_)))
                                    (declare (not safe))
                                    (cons __tmp185556 _var180746_))))
                             (declare (not safe))
                             (cons __tmp185555 _r180747_)))))
                    (declare (not safe))
                    (foldr2 __tmp185554
                            _vars180677_
                            _args180719_
                            _fold-in180730_)))
                 (__tmp185557
                  (let ()
                    (declare (not safe))
                    (_recur180674_ _hd180721_ _hd-vars180749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp185557
                                                     _fold-out180732_)))))
                                        (let ((__tmp185561
                                               (if (fx> (length _targets180728_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets180728_))
                                                   '#!void))
                                              (__tmp185558
                                               (let ((__tmp185560
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args180734_
                                                         _lambda-body180751_)))
                                                     (__tmp185559
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur180674_
                                                         _iv180720_
                                                         _vars180677_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp185560
                                                  __tmp185559
                                                  _targets180728_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp185561
                                           __tmp185558))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body180701180712_))
                                  (let ((_hd180705180757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body180701180712_)))
                                        (_tl180706180759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body180701180712_))))
                                    (let ((_depth180762_ _hd180705180757_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl180706180759_))
                                          (let ((_hd180707180764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl180706180759_)))
                                                (_tl180708180766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl180706180759_))))
                                            (let ((_hd180769_
                                                   _hd180707180764_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl180708180766_))
                                                  (let ((_hd180709180771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl180708180766_)))
                                                        (_tl180710180773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl180708180766_))))
                                                    (let* ((_iv180776_
                                                            _hd180709180771_)
                                                           (_args180778_
                                                            _tl180710180773_))
                                                      (declare (not safe))
                                                      (_K180704180754_
                                                       _args180778_
                                                       _iv180776_
                                                       _hd180769_
                                                       _depth180762_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E180703180716_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E180703180716_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E180703180716_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e180695_))
                                _body180692_
                                (let ()
                                  (declare (not safe))
                                  (_BUG180669_ _e180676_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e180678180685_))
                              (let ((_hd180682180783_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e180678180685_)))
                                    (_tl180683180785_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e180678180685_))))
                                (let* ((_tag180788_ _hd180682180783_)
                                       (_body180790_ _tl180683180785_))
                                  (declare (not safe))
                                  (_K180681180780_ _body180790_ _tag180788_)))
                              (let ()
                                (declare (not safe))
                                (_E180680180689_))))))))
                 (_parse180441_
                  (lambda (_e180482_)
                    (letrec ((_make-cons180484_
                              (lambda (_hd180659_ _tl180660_)
                                (let ((_g185562_ _hd180659_)
                                      (_g185564_ _tl180660_))
                                  (begin
                                    (let ((_g185563_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185562_)
                                                 (##vector-length _g185562_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185563_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185563_)))
                                    (let ((_g185565_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185564_)
                                                 (##vector-length _g185564_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185565_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185565_)))
                                    (let ((_hd-e180662_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185562_ 0)))
                                          (_hd-vars180663_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185562_ 1))))
                                      (let ((_tl-e180664_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185564_ 0)))
                                            (_tl-vars180665_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185564_ 1))))
                                        (values (let ((__tmp185566
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e180662_
                                                               _tl-e180664_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp185566))
                                                (append _hd-vars180663_
                                                        _tl-vars180665_))))))))
                             (_make-splice180485_
                              (lambda (_where180598_
                                       _depth180599_
                                       _hd180600_
                                       _tl180601_)
                                (let ((_g185567_ _hd180600_)
                                      (_g185569_ _tl180601_))
                                  (begin
                                    (let ((_g185568_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185567_)
                                                 (##vector-length _g185567_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185568_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185568_)))
                                    (let ((_g185570_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185569_)
                                                 (##vector-length _g185569_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185570_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185570_)))
                                    (let ((_hd-e180603_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185567_ 0)))
                                          (_hd-vars180604_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185567_ 1))))
                                      (let ((_tl-e180605_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185569_ 0)))
                                            (_tl-vars180606_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g185569_ 1))))
                                        (let _lp180608_ ((_rest180610_
                                                          _hd-vars180604_)
                                                         (_targets180611_ '())
                                                         (_vars180612_
                                                          _tl-vars180606_))
                                          (let* ((_rest180613180623_
                                                  _rest180610_)
                                                 (_else180615180631_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets180611_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx180438_
                                                           _where180598_))
                                                        (values (let ((__tmp185571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp185572
                                      (let ((__tmp185573
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e180605_
                                                     _targets180611_))))
                                        (declare (not safe))
                                        (cons _hd-e180603_ __tmp185573))))
                                 (declare (not safe))
                                 (cons _depth180599_ __tmp185572))))
                          (declare (not safe))
                          (cons 'splice __tmp185571))
                        _vars180612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K180617180640_
                                                  (lambda (_rest180634_
                                                           _hd-pat180635_
                                                           _hd-depth*180636_)
                                                    (let ((_hd-depth180638_
                                                           (fx- _hd-depth*180636_
                                                                _depth180599_)))
                                                      (if (fxpositive?
                                                           _hd-depth180638_)
                                                          (let ((__tmp185576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp185577
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat180635_))))
                           (declare (not safe))
                           (cons __tmp185577 _targets180611_)))
                        (__tmp185574
                         (let ((__tmp185575
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth180638_ _hd-pat180635_))))
                           (declare (not safe))
                           (cons __tmp185575 _vars180612_))))
                    (declare (not safe))
                    (_lp180608_ _rest180634_ __tmp185576 __tmp185574))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth180638_))
                      (let ((__tmp185578
                             (let ((__tmp185579
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat180635_))))
                               (declare (not safe))
                               (cons __tmp185579 _targets180611_))))
                        (declare (not safe))
                        (_lp180608_ _rest180634_ __tmp185578 _vars180612_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx180438_
                         _where180598_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest180613180623_))
                                                (let ((_hd180618180643_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest180613180623_)))
                                                      (_tl180619180645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest180613180623_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd180618180643_))
                                                      (let ((_hd180620180648_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd180618180643_)))
                    (_tl180621180650_
                     (let () (declare (not safe)) (##cdr _hd180618180643_))))
                (let* ((_hd-depth*180653_ _hd180620180648_)
                       (_hd-pat180655_ _tl180621180650_)
                       (_rest180657_ _tl180619180645_))
                  (declare (not safe))
                  (_K180617180640_
                   _rest180657_
                   _hd-pat180655_
                   _hd-depth*180653_)))
              (let () (declare (not safe)) (_else180615180631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else180615180631_)))))))))))
                             (_recur180486_
                              (lambda (_e180491_ _is-e?180492_)
                                (if (_is-e?180492_ _e180491_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx180438_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e180491_))
                                        (let* ((_pat180494_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e180491_)))
                                               (_depth180496_
                                                (##structure-ref
                                                 _pat180494_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth180496_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat180494_))
                                                      (let ((__tmp185580
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth180496_ _pat180494_))))
                (declare (not safe))
                (cons __tmp185580 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat180494_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e180491_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e180491_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e180491_))
                                                (let* ((_e180498180505_
                                                        _e180491_)
                                                       (_E180500180509_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e180498180505_))))
                                                       (_E180499180588_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e180498180505_))
                      (let ((_e180501180513_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e180498180505_))))
                        (let ((_hd180502180516_
                               (let ()
                                 (declare (not safe))
                                 (##car _e180501180513_)))
                              (_tl180503180518_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e180501180513_))))
                          (let* ((_hd180521_ _hd180502180516_)
                                 (_rest180523_ _tl180503180518_))
                            (if '#t
                                (if (_is-e?180492_ _hd180521_)
                                    (let* ((_e180524180531_ _rest180523_)
                                           (_E180526180535_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx180438_
                                                 _e180491_))))
                                           (_E180525180549_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e180524180531_))
                                                  (let ((_e180527180539_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e180524180531_))))
                                                    (let ((_hd180528180542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e180527180539_)))
                                                          (_tl180529180544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e180527180539_))))
                                                      (let ((_rest180547_
                                                             _hd180528180542_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl180529180544_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur180486_ _rest180547_ false))
                        (let () (declare (not safe)) (_E180526180535_)))
                    (let () (declare (not safe)) (_E180526180535_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E180526180535_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E180525180549_)))
                                    (let _lp180553_ ((_rest180555_
                                                      _rest180523_)
                                                     (_depth180556_ '0))
                                      (let* ((_e180557180564_ _rest180555_)
                                             (_E180559180568_
                                              (lambda ()
                                                (if (fxpositive? _depth180556_)
                                                    (let ((__tmp185582
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur180486_
                                                              _hd180521_
                                                              _is-e?180492_)))
                                                          (__tmp185581
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur180486_
                                                              _rest180555_
                                                              _is-e?180492_))))
                                                      (declare (not safe))
                                                      (_make-splice180485_
                                                       _e180491_
                                                       _depth180556_
                                                       __tmp185582
                                                       __tmp185581))
                                                    (let ((__tmp185584
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur180486_
                                                              _hd180521_
                                                              _is-e?180492_)))
                                                          (__tmp185583
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur180486_
                                                              _rest180555_
                                                              _is-e?180492_))))
                                                      (declare (not safe))
                                                      (_make-cons180484_
                                                       __tmp185584
                                                       __tmp185583)))))
                                             (_E180558180584_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e180557180564_))
                                                    (let ((_e180560180572_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e180557180564_))))
                                                      (let ((_hd180561180575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e180560180572_)))
                    (_tl180562180577_
                     (let () (declare (not safe)) (##cdr _e180560180572_))))
                (let* ((_rest-hd180580_ _hd180561180575_)
                       (_rest-tl180582_ _tl180562180577_))
                  (if '#t
                      (if (_is-e?180492_ _rest-hd180580_)
                          (let ((__tmp185585
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth180556_ '1))))
                            (declare (not safe))
                            (_lp180553_ _rest-tl180582_ __tmp185585))
                          (if (fxpositive? _depth180556_)
                              (let ((__tmp185587
                                     (let ()
                                       (declare (not safe))
                                       (_recur180486_
                                        _hd180521_
                                        _is-e?180492_)))
                                    (__tmp185586
                                     (let ()
                                       (declare (not safe))
                                       (_recur180486_
                                        _rest180555_
                                        _is-e?180492_))))
                                (declare (not safe))
                                (_make-splice180485_
                                 _e180491_
                                 _depth180556_
                                 __tmp185587
                                 __tmp185586))
                              (let ((__tmp185589
                                     (let ()
                                       (declare (not safe))
                                       (_recur180486_
                                        _hd180521_
                                        _is-e?180492_)))
                                    (__tmp185588
                                     (let ()
                                       (declare (not safe))
                                       (_recur180486_
                                        _rest180555_
                                        _is-e?180492_))))
                                (declare (not safe))
                                (_make-cons180484_ __tmp185589 __tmp185588))))
                      (let () (declare (not safe)) (_E180559180568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E180559180568_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E180558180584_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E180500180509_))))))
                      (let () (declare (not safe)) (_E180500180509_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E180499180588_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e180491_))
                                                    (let ((_g185590_
                                                           (let ((__tmp185592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e180491_)))))
                     (declare (not safe))
                     (_recur180486_ __tmp185592 _is-e?180492_))))
              (begin
                (let ((_g185591_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g185590_)
                             (##vector-length _g185590_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g185591_ 2)))
                      (error "Context expects 2 values" _g185591_)))
                (let ((_e180592_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g185590_ 0)))
                      (_vars180593_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g185590_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e180592_))
                          _vars180593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e180491_))
                                                        (let ((_g185593_
                                                               (let ((__tmp185595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e180491_)))))
                         (declare (not safe))
                         (_recur180486_ __tmp185595 _is-e?180492_))))
                  (begin
                    (let ((_g185594_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g185593_)
                                 (##vector-length _g185593_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g185594_ 2)))
                          (error "Context expects 2 values" _g185594_)))
                    (let ((_e180595_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g185593_ 0)))
                          (_vars180596_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g185593_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e180595_))
                              _vars180596_))))
                (values (let () (declare (not safe)) (cons 'datum _e180491_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g185596_
                             (let ()
                               (declare (not safe))
                               (_recur180486_ _e180482_ gx#ellipsis?))))
                        (begin
                          (let ((_g185597_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g185596_)
                                       (##vector-length _g185596_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g185597_ 2)))
                                (error "Context expects 2 values" _g185597_)))
                          (let ((_tree180488_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g185596_ 0)))
                                (_vars180489_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g185596_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars180489_))
                                _tree180488_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx180438_
                                   _vars180489_))))))))))
          (let* ((_e180442180452_ _stx180438_)
                 (_E180444180456_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx180438_))))
                 (_E180443180478_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e180442180452_))
                        (let ((_e180445180460_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e180442180452_))))
                          (let ((_hd180446180463_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e180445180460_)))
                                (_tl180447180465_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e180445180460_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl180447180465_))
                                (let ((_e180448180468_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl180447180465_))))
                                  (let ((_hd180449180471_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e180448180468_)))
                                        (_tl180450180473_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e180448180468_))))
                                    (let ((_form180476_ _hd180449180471_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl180450180473_))
                                          (if '#t
                                              (let ((__tmp185599
                                                     (let ((__tmp185600
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse180441_
                                                               _form180476_))))
                                                       (declare (not safe))
                                                       (_generate180440_
                                                        __tmp185600)))
                                                    (__tmp185598
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx180438_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp185599
                                                 __tmp185598))
                                              (let ()
                                                (declare (not safe))
                                                (_E180444180456_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E180444180456_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E180444180456_)))))
                        (let () (declare (not safe)) (_E180444180456_))))))
            (let () (declare (not safe)) (_E180443180478_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx179702_
               _identifier=?179703_
               _unwrap-e179704_
               _wrap-e179705_)
        (letrec ((_generate-bindings179707_
                  (lambda (_target180302_
                           _ids180303_
                           _clauses180304_
                           _clause-ids180305_
                           _E180306_)
                    (letrec ((_generate1180308_
                              (lambda (_clause180405_
                                       _clause-id180406_
                                       _E180407_)
                                (let ((__tmp185605
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id180406_ '())))
                                      (__tmp185601
                                       (let ((__tmp185602
                                              (let ((__tmp185604
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180302_
                                                             '())))
                                                    (__tmp185603
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause179709_
                                                        _target180302_
                                                        _ids180303_
                                                        _clause180405_
                                                        _E180407_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp185604
                                                 __tmp185603))))
                                         (declare (not safe))
                                         (cons __tmp185602 '()))))
                                  (declare (not safe))
                                  (cons __tmp185605 __tmp185601)))))
                      (let _lp180310_ ((_rest180312_ _clauses180304_)
                                       (_rest-ids180313_ _clause-ids180305_)
                                       (_bindings180314_ '()))
                        (let* ((_rest180315180323_ _rest180312_)
                               (_else180317180331_
                                (lambda () _bindings180314_))
                               (_K180319180393_
                                (lambda (_rest180334_ _clause180335_)
                                  (let* ((_rest-ids180336180343_
                                          _rest-ids180313_)
                                         (_E180338180347_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids180336180343_)))
                                         (_K180339180381_
                                          (lambda (_rest-ids180350_
                                                   _clause-id180351_)
                                            (let* ((_rest-ids180352180360_
                                                    _rest-ids180350_)
                                                   (_else180354180368_
                                                    (lambda ()
                                                      (let ((__tmp185606
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1180308_
                        _clause180335_
                        _clause-id180351_
                        _E180306_))))
                (declare (not safe))
                (cons __tmp185606 _bindings180314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K180356180373_
                                                    (lambda (_next-clause-id180371_)
                                                      (let ((__tmp185607
                                                             (let ((__tmp185608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1180308_
                               _clause180335_
                               _clause-id180351_
                               _next-clause-id180371_))))
                       (declare (not safe))
                       (cons __tmp185608 _bindings180314_))))
                (declare (not safe))
                (_lp180310_ _rest180334_ _rest-ids180350_ __tmp185607)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids180352180360_))
                                                  (let* ((_hd180357180376_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids180352180360_)))
                                                         (_next-clause-id180379_
                                                          _hd180357180376_))
                                                    (declare (not safe))
                                                    (_K180356180373_
                                                     _next-clause-id180379_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else180354180368_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids180336180343_))
                                        (let ((_hd180340180384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids180336180343_)))
                                              (_tl180341180386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids180336180343_))))
                                          (let* ((_clause-id180389_
                                                  _hd180340180384_)
                                                 (_rest-ids180391_
                                                  _tl180341180386_))
                                            (declare (not safe))
                                            (_K180339180381_
                                             _rest-ids180391_
                                             _clause-id180389_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E180338180347_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest180315180323_))
                              (let ((_hd180320180396_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest180315180323_)))
                                    (_tl180321180398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest180315180323_))))
                                (let* ((_clause180401_ _hd180320180396_)
                                       (_rest180403_ _tl180321180398_))
                                  (declare (not safe))
                                  (_K180319180393_
                                   _rest180403_
                                   _clause180401_)))
                              (let ()
                                (declare (not safe))
                                (_else180317180331_))))))))
                 (_generate-body179708_
                  (lambda (_bindings180262_ _body180263_)
                    (let _recur180265_ ((_rest180267_ _bindings180262_))
                      (let* ((_rest180268180276_ _rest180267_)
                             (_else180270180284_ (lambda () _body180263_))
                             (_K180272180290_
                              (lambda (_rest180287_ _hd180288_)
                                (let ((__tmp185610
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd180288_ '())))
                                      (__tmp185609
                                       (let ()
                                         (declare (not safe))
                                         (_recur180265_ _rest180287_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp185610
                                   __tmp185609)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest180268180276_))
                            (let ((_hd180273180293_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest180268180276_)))
                                  (_tl180274180295_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest180268180276_))))
                              (let* ((_hd180298_ _hd180273180293_)
                                     (_rest180300_ _tl180274180295_))
                                (declare (not safe))
                                (_K180272180290_ _rest180300_ _hd180298_)))
                            (let ()
                              (declare (not safe))
                              (_else180270180284_)))))))
                 (_generate-clause179709_
                  (lambda (_target180125_ _ids180126_ _clause180127_ _E180128_)
                    (letrec ((_generate1180130_
                              (lambda (_hd180217_ _fender180218_ _body180219_)
                                (let ((_g185611_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause179711_
                                          _hd180217_
                                          _ids180126_))))
                                  (begin
                                    (let ((_g185612_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g185611_)
                                                 (##vector-length _g185611_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g185612_ 2)))
                                          (error "Context expects 2 values"
                                                 _g185612_)))
                                    (let ((_e180221_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185611_ 0)))
                                          (_mvars180222_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g185611_ 1))))
                                      (let* ((_pvars180224_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars180222_))))
                                             (_E180226_
                                              (let ((__tmp185613
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target180125_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E180128_ __tmp185613)))
                                             (_K180259_
                                              (let ((__tmp185614
                                                     (let ((__tmp185616
                                                            (map (lambda (_mvar180228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar180229_)
                           (let* ((_mvar180230180237_ _mvar180228_)
                                  (_E180232180241_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar180230180237_)))
                                  (_K180233180247_
                                   (lambda (_depth180244_ _id180245_)
                                     (let ((__tmp185617
                                            (let ((__tmp185618
                                                   (let ((__tmp185620
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id180245_)))
                                                         (__tmp185619
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar180229_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp185620
                                                      __tmp185619
                                                      _depth180244_))))
                                              (declare (not safe))
                                              (cons __tmp185618 '()))))
                                       (declare (not safe))
                                       (cons _id180245_ __tmp185617)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar180230180237_))
                                 (let ((_hd180234180250_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar180230180237_)))
                                       (_tl180235180252_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar180230180237_))))
                                   (let* ((_id180255_ _hd180234180250_)
                                          (_depth180257_ _tl180235180252_))
                                     (declare (not safe))
                                     (_K180233180247_
                                      _depth180257_
                                      _id180255_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E180232180241_)))))
                         _mvars180222_
                         _pvars180224_))
                   (__tmp185615
                    (if (let () (declare (not safe)) (eq? _fender180218_ '#t))
                        _body180219_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender180218_
                           _body180219_
                           _E180226_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp185616 __tmp185615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars180224_
                                                 __tmp185614))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match179710_
                                           _hd180217_
                                           _target180125_
                                           _e180221_
                                           _mvars180222_
                                           _K180259_
                                           _E180226_)))))))))
                      (let* ((_e180131180151_ _clause180127_)
                             (_E180140180155_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e180131180151_))))
                             (_E180133180189_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180131180151_))
                                    (let ((_e180141180159_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180131180151_))))
                                      (let ((_hd180142180162_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180141180159_)))
                                            (_tl180143180164_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180141180159_))))
                                        (let ((_hd180167_ _hd180142180162_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180143180164_))
                                              (let ((_e180144180169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180143180164_))))
                                                (let ((_hd180145180172_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180144180169_)))
                                                      (_tl180146180174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180144180169_))))
                                                  (let ((_fender180177_
                                                         _hd180145180172_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl180146180174_))
                                                        (let ((_e180147180179_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl180146180174_))))
                  (let ((_hd180148180182_
                         (let () (declare (not safe)) (##car _e180147180179_)))
                        (_tl180149180184_
                         (let ()
                           (declare (not safe))
                           (##cdr _e180147180179_))))
                    (let ((_body180187_ _hd180148180182_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl180149180184_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1180130_
                                 _hd180167_
                                 _fender180177_
                                 _body180187_))
                              (let () (declare (not safe)) (_E180140180155_)))
                          (let () (declare (not safe)) (_E180140180155_))))))
                (let () (declare (not safe)) (_E180140180155_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E180140180155_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180140180155_)))))
                             (_E180132180213_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e180131180151_))
                                    (let ((_e180134180193_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e180131180151_))))
                                      (let ((_hd180135180196_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e180134180193_)))
                                            (_tl180136180198_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e180134180193_))))
                                        (let ((_hd180201_ _hd180135180196_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl180136180198_))
                                              (let ((_e180137180203_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl180136180198_))))
                                                (let ((_hd180138180206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e180137180203_)))
                                                      (_tl180139180208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e180137180203_))))
                                                  (let ((_body180211_
                                                         _hd180138180206_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl180139180208_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1180130_
                                                               _hd180201_
                                                               '#t
                                                               _body180211_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E180133180189_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E180133180189_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E180133180189_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E180133180189_))))))
                        (let () (declare (not safe)) (_E180132180213_))))))
                 (_generate-match179710_
                  (lambda (_where179874_
                           _target179875_
                           _hd179876_
                           _mvars179877_
                           _K179878_
                           _E179879_)
                    (letrec ((_BUG179881_
                              (lambda (_q180123_)
                                (error '"BUG: syntax-case; generate"
                                       _stx179702_
                                       _hd179876_
                                       _q180123_)))
                             (_recur179882_
                              (lambda (_e179973_
                                       _vars179974_
                                       _target179975_
                                       _E179976_
                                       _k179977_)
                                (let* ((_e179978179985_ _e179973_)
                                       (_E179980179989_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e179978179985_)))
                                       (_K179981180111_
                                        (lambda (_body179992_ _tag179993_)
                                          (let ((_$e179995_ _tag179993_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e179995_))
                                                (_k179977_ _vars179974_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e179995_))
                                                    (let ((__tmp185625
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target179975_)))
                                                          (__tmp185621
                                                           (let ((__tmp185623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185624
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e179705_
                                    _body179992_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?179703_
                             __tmp185624
                             _target179975_)))
                         (__tmp185622 (_k179977_ _vars179974_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp185623 __tmp185622 _E179976_))))
              (declare (not safe))
              (gx#core-list 'if __tmp185625 __tmp185621 _E179976_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e179995_))
                                                        (_k179977_
                                                         (let ((__tmp185626
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body179992_ _target179975_))))
                   (declare (not safe))
                   (cons __tmp185626 _vars179974_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e179995_))
                    (let ((_$e179998_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd179999_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl180000_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp185646
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target179975_)))
                            (__tmp185627
                             (let ((__tmp185641
                                    (let ((__tmp185642
                                           (let ((__tmp185645
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e179998_ '())))
                                                 (__tmp185643
                                                  (let ((__tmp185644
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e179704_
                                                            _target179975_))))
                                                    (declare (not safe))
                                                    (cons __tmp185644 '()))))
                                             (declare (not safe))
                                             (cons __tmp185645 __tmp185643))))
                                      (declare (not safe))
                                      (cons __tmp185642 '())))
                                   (__tmp185628
                                    (let ((__tmp185631
                                           (let ((__tmp185637
                                                  (let ((__tmp185640
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd179999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp185638
                 (let ((__tmp185639
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e179998_))))
                   (declare (not safe))
                   (cons __tmp185639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185640
                                                          __tmp185638)))
                                                 (__tmp185632
                                                  (let ((__tmp185633
                                                         (let ((__tmp185636
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl180000_ '())))
                       (__tmp185634
                        (let ((__tmp185635
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e179998_))))
                          (declare (not safe))
                          (cons __tmp185635 '()))))
                   (declare (not safe))
                   (cons __tmp185636 __tmp185634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185633 '()))))
                                             (declare (not safe))
                                             (cons __tmp185637 __tmp185632)))
                                          (__tmp185629
                                           (let* ((_body180001180008_
                                                   _body179992_)
                                                  (_E180003180012_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body180001180008_)))
                                                  (_K180004180020_
                                                   (lambda (_tl180015_
                                                            _hd180016_)
                                                     (let ((__tmp185630
                                                            (lambda (_vars180018_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur179882_
                         _tl180015_
                         _vars180018_
                         _$tl180000_
                         _E179976_
                         _k179977_)))))
               (declare (not safe))
               (_recur179882_
                _hd180016_
                _vars179974_
                _$hd179999_
                _E179976_
                __tmp185630)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body180001180008_))
                                                 (let ((_hd180005180023_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body180001180008_)))
                                                       (_tl180006180025_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body180001180008_))))
                                                   (let* ((_hd180028_
                                                           _hd180005180023_)
                                                          (_tl180030_
                                                           _tl180006180025_))
                                                     (declare (not safe))
                                                     (_K180004180020_
                                                      _tl180030_
                                                      _hd180028_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E180003180012_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp185631
                                       __tmp185629))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp185641
                                __tmp185628))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp185646 __tmp185627 _E179976_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e179995_))
                        (let* ((_body180031180038_ _body179992_)
                               (_E180033180042_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body180031180038_)))
                               (_K180034180093_
                                (lambda (_tl180045_ _hd180046_)
                                  (let* ((_rlen180048_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen179883_ _tl180045_)))
                                         (_$target180050_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd180052_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl180054_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp180056_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e180058_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd180060_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl180062_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars180064_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars179884_ _hd180046_)))
                                         (_lvars180066_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180064_)))
                                         (_tlvars180068_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars180064_)))
                                         (_linit180072_
                                          (map (lambda (_var180070_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars180066_)))
                                    (letrec ((_make-loop180075_
                                              (lambda (_vars180079_)
                                                (let ((__tmp185649
                                                       (let ((__tmp185650
                                                              (let ((__tmp185686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp180056_ '())))
                            (__tmp185651
                             (let ((__tmp185652
                                    (let ((__tmp185685
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd180052_ _lvars180066_)))
                                          (__tmp185653
                                           (let ((__tmp185684
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd180052_)))
                                                 (__tmp185662
                                                  (let ((__tmp185679
                                                         (let ((__tmp185680
                                                                (let ((__tmp185683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e180058_ '())))
                              (__tmp185681
                               (let ((__tmp185682
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e179704_
                                         _$hd180052_))))
                                 (declare (not safe))
                                 (cons __tmp185682 '()))))
                          (declare (not safe))
                          (cons __tmp185683 __tmp185681))))
                   (declare (not safe))
                   (cons __tmp185680 '())))
                (__tmp185663
                 (let ((__tmp185669
                        (let ((__tmp185675
                               (let ((__tmp185678
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd180060_ '())))
                                     (__tmp185676
                                      (let ((__tmp185677
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e180058_))))
                                        (declare (not safe))
                                        (cons __tmp185677 '()))))
                                 (declare (not safe))
                                 (cons __tmp185678 __tmp185676)))
                              (__tmp185670
                               (let ((__tmp185671
                                      (let ((__tmp185674
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl180062_ '())))
                                            (__tmp185672
                                             (let ((__tmp185673
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e180058_))))
                                               (declare (not safe))
                                               (cons __tmp185673 '()))))
                                        (declare (not safe))
                                        (cons __tmp185674 __tmp185672))))
                                 (declare (not safe))
                                 (cons __tmp185671 '()))))
                          (declare (not safe))
                          (cons __tmp185675 __tmp185670)))
                       (__tmp185664
                        (let ((__tmp185665
                               (lambda (_hdvars180081_)
                                 (let ((__tmp185666
                                        (let ((__tmp185667
                                               (map (lambda (_svar180083_
                                                             _lvar180084_)
                                                      (let ((__tmp185668
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar180083_ _hdvars180081_ _BUG179881_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp185668 _lvar180084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars180064_
                                                    _lvars180066_)))
                                          (declare (not safe))
                                          (cons _$lp-tl180062_ __tmp185667))))
                                   (declare (not safe))
                                   (cons _$lp180056_ __tmp185666)))))
                          (declare (not safe))
                          (_recur179882_
                           _hd180046_
                           '()
                           _$lp-hd180060_
                           _E179976_
                           __tmp185665))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp185669 __tmp185664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp185679
                                                     __tmp185663)))
                                                 (__tmp185654
                                                  (let ((__tmp185658
                                                         (map (lambda (_lvar180086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar180087_)
                        (let ((__tmp185661
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar180087_ '())))
                              (__tmp185659
                               (let ((__tmp185660
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar180086_))))
                                 (declare (not safe))
                                 (cons __tmp185660 '()))))
                          (declare (not safe))
                          (cons __tmp185661 __tmp185659)))
                      _lvars180066_
                      _tlvars180068_))
                (__tmp185655
                 (_k179977_
                  (let ((__tmp185656
                         (lambda (_svar180089_ _tlvar180090_ _r180091_)
                           (let ((__tmp185657
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar180089_ _tlvar180090_))))
                             (declare (not safe))
                             (cons __tmp185657 _r180091_)))))
                    (declare (not safe))
                    (foldl2 __tmp185656
                            _vars180079_
                            _svars180064_
                            _tlvars180068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp185658
                                                     __tmp185655))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp185684
                                              __tmp185662
                                              __tmp185654))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp185685
                                       __tmp185653))))
                               (declare (not safe))
                               (cons __tmp185652 '()))))
                        (declare (not safe))
                        (cons __tmp185686 __tmp185651))))
                 (declare (not safe))
                 (cons __tmp185650 '())))
              (__tmp185647
               (let ((__tmp185648
                      (let ()
                        (declare (not safe))
                        (cons _$target180050_ _linit180072_))))
                 (declare (not safe))
                 (cons _$lp180056_ __tmp185648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp185649
                                                   __tmp185647)))))
                                      (let ((_body180077_
                                             (let ((__tmp185688
                                                    (let ((__tmp185689
                                                           (let ((__tmp185692
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp185693
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl180054_ '()))))
                            (declare (not safe))
                            (cons _$target180050_ __tmp185693)))
                         (__tmp185690
                          (let ((__tmp185691
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target179975_
                                    _rlen180048_))))
                            (declare (not safe))
                            (cons __tmp185691 '()))))
                     (declare (not safe))
                     (cons __tmp185692 __tmp185690))))
              (declare (not safe))
              (cons __tmp185689 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp185687
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179882_
                                                       _tl180045_
                                                       _vars179974_
                                                       _$tl180054_
                                                       _E179976_
                                                       _make-loop180075_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp185688
                                                __tmp185687))))
                                        (let ((__tmp185697
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target179975_)))
                                              (__tmp185694
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen180048_))
                                                   _body180077_
                                                   (let ((__tmp185695
                                                          (let ((__tmp185696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target179975_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp185696 _rlen180048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp185695
                                                      _body180077_
                                                      _E179976_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp185697
                                           __tmp185694
                                           _E179976_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body180031180038_))
                              (let ((_hd180035180096_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body180031180038_)))
                                    (_tl180036180098_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body180031180038_))))
                                (let* ((_hd180101_ _hd180035180096_)
                                       (_tl180103_ _tl180036180098_))
                                  (declare (not safe))
                                  (_K180034180093_ _tl180103_ _hd180101_)))
                              (let () (declare (not safe)) (_E180033180042_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e179995_))
                            (let ((__tmp185699
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target179975_)))
                                  (__tmp185698 (_k179977_ _vars179974_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp185699
                               __tmp185698
                               _E179976_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e179995_))
                                (let ((_$e180105_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp185708
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target179975_)))
                                        (__tmp185700
                                         (let ((__tmp185702
                                                (let ((__tmp185703
                                                       (let ((__tmp185707
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e180105_ '())))
                     (__tmp185704
                      (let ((__tmp185705
                             (let ((__tmp185706
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e179704_
                                       _target179975_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp185706))))
                        (declare (not safe))
                        (cons __tmp185705 '()))))
                 (declare (not safe))
                 (cons __tmp185707 __tmp185704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp185703 '())))
                                               (__tmp185701
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur179882_
                                                   _body179992_
                                                   _vars179974_
                                                   _$e180105_
                                                   _E179976_
                                                   _k179977_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp185702
                                            __tmp185701))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp185708
                                     __tmp185700
                                     _E179976_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e179995_))
                                    (let ((_$e180107_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp185717
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target179975_)))
                                            (__tmp185709
                                             (let ((__tmp185711
                                                    (let ((__tmp185712
                                                           (let ((__tmp185716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e180107_ '())))
                         (__tmp185713
                          (let ((__tmp185714
                                 (let ((__tmp185715
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e179704_
                                           _target179975_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp185715))))
                            (declare (not safe))
                            (cons __tmp185714 '()))))
                     (declare (not safe))
                     (cons __tmp185716 __tmp185713))))
              (declare (not safe))
              (cons __tmp185712 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp185710
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur179882_
                                                       _body179992_
                                                       _vars179974_
                                                       _$e180107_
                                                       _E179976_
                                                       _k179977_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp185711
                                                __tmp185710))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp185717
                                         __tmp185709
                                         _E179976_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e179995_))
                                        (let ((_$e180109_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp185727
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target179975_)))
                                                (__tmp185718
                                                 (let ((__tmp185722
                                                        (let ((__tmp185723
                                                               (let ((__tmp185726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e180109_ '())))
                             (__tmp185724
                              (let ((__tmp185725
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target179975_))))
                                (declare (not safe))
                                (cons __tmp185725 '()))))
                         (declare (not safe))
                         (cons __tmp185726 __tmp185724))))
                  (declare (not safe))
                  (cons __tmp185723 '())))
               (__tmp185719
                (let ((__tmp185721
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e180109_ _body179992_)))
                      (__tmp185720 (_k179977_ _vars179974_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp185721 __tmp185720 _E179976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp185722
                                                    __tmp185719))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp185727
                                             __tmp185718
                                             _E179976_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG179881_ _e179973_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e179978179985_))
                                      (let ((_hd179982180114_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e179978179985_)))
                                            (_tl179983180116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e179978179985_))))
                                        (let* ((_tag180119_ _hd179982180114_)
                                               (_body180121_ _tl179983180116_))
                                          (declare (not safe))
                                          (_K179981180111_
                                           _body180121_
                                           _tag180119_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179980179989_))))))
                             (_splice-rlen179883_
                              (lambda (_e179935_)
                                (let _lp179937_ ((_e179939_ _e179935_)
                                                 (_n179940_ '0))
                                  (let* ((_e179941179948_ _e179939_)
                                         (_E179943179952_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179941179948_)))
                                         (_K179944179961_
                                          (lambda (_body179955_ _tag179956_)
                                            (let ((_$e179958_ _tag179956_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e179958_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx179702_
                                                     _where179874_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e179958_))
                                                      (let ((__tmp185729
                                                             (cdr _body179955_))
                                                            (__tmp185728
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n179940_ '1))))
                (declare (not safe))
                (_lp179937_ __tmp185729 __tmp185728))
              _n179940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179941179948_))
                                        (let ((_hd179945179964_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179941179948_)))
                                              (_tl179946179966_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179941179948_))))
                                          (let* ((_tag179969_ _hd179945179964_)
                                                 (_body179971_
                                                  _tl179946179966_))
                                            (declare (not safe))
                                            (_K179944179961_
                                             _body179971_
                                             _tag179969_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179943179952_)))))))
                             (_splice-vars179884_
                              (lambda (_e179891_)
                                (let _recur179893_ ((_e179895_ _e179891_)
                                                    (_vars179896_ '()))
                                  (let* ((_e179897179904_ _e179895_)
                                         (_E179899179908_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e179897179904_)))
                                         (_K179900179923_
                                          (lambda (_body179911_ _tag179912_)
                                            (let ((_$e179914_ _tag179912_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e179914_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body179911_
                                                          _vars179896_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e179914_))
                  (let () (declare (not safe)) (eq? 'splice _$e179914_)))
              (let ((__tmp185732 (cdr _body179911_))
                    (__tmp185730
                     (let ((__tmp185731 (car _body179911_)))
                       (declare (not safe))
                       (_recur179893_ __tmp185731 _vars179896_))))
                (declare (not safe))
                (_recur179893_ __tmp185732 __tmp185730))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e179914_))
                      (let () (declare (not safe)) (eq? 'box _$e179914_)))
                  (let ()
                    (declare (not safe))
                    (_recur179893_ _body179911_ _vars179896_))
                  _vars179896_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e179897179904_))
                                        (let ((_hd179901179926_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e179897179904_)))
                                              (_tl179902179928_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e179897179904_))))
                                          (let* ((_tag179931_ _hd179901179926_)
                                                 (_body179933_
                                                  _tl179902179928_))
                                            (declare (not safe))
                                            (_K179900179923_
                                             _body179933_
                                             _tag179931_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E179899179908_)))))))
                             (_make-body179885_
                              (lambda (_vars179887_)
                                (let ((__tmp185733
                                       (map (lambda (_mvar179889_)
                                              (let ((__tmp185734
                                                     (car _mvar179889_)))
                                                (declare (not safe))
                                                (assgetq __tmp185734
                                                         _vars179887_
                                                         _BUG179881_)))
                                            _mvars179877_)))
                                  (declare (not safe))
                                  (cons _K179878_ __tmp185733)))))
                      (let ()
                        (declare (not safe))
                        (_recur179882_
                         _hd179876_
                         '()
                         _target179875_
                         _E179879_
                         _make-body179885_)))))
                 (_parse-clause179711_
                  (lambda (_hd179780_ _ids179781_)
                    (let _recur179783_ ((_e179785_ _hd179780_)
                                        (_vars179786_ '())
                                        (_depth179787_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e179785_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e179785_))
                              (values '(any) _vars179786_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e179785_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx179702_
                                     _hd179780_))
                                  (if (let ((__tmp185735
                                             (lambda (_id179789_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e179785_
                                                  _id179789_)))))
                                        (declare (not safe))
                                        (find __tmp185735 _ids179781_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e179785_))
                                              _vars179786_)
                                      (if (let ((__tmp185736
                                                 (lambda (_var179791_)
                                                   (let ((__tmp185737
                                                          (car _var179791_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e179785_
                                                      __tmp185737)))))
                                            (declare (not safe))
                                            (find __tmp185736 _vars179786_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx179702_
                                             _e179785_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e179785_))
                                                  (let ((__tmp185738
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e179785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth179787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185738
                                                          _vars179786_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e179785_))
                              (let* ((_e179792179799_ _e179785_)
                                     (_E179794179803_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e179792179799_))))
                                     (_E179793179864_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e179792179799_))
                                            (let ((_e179795179807_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e179792179799_))))
                                              (let ((_hd179796179810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e179795179807_)))
                                                    (_tl179797179812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e179795179807_))))
                                                (let* ((_hd179815_
                                                        _hd179796179810_)
                                                       (_rest179817_
                                                        _tl179797179812_))
                                                  (if '#t
                                                      (let* ((_make-pair179832_
                                                              (lambda (_tag179819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd179820_
                               _tl179821_)
                        (let* ((_hd-depth179823_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag179819_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth179787_ '1))
                                    _depth179787_))
                               (_g185739_
                                (let ()
                                  (declare (not safe))
                                  (_recur179783_
                                   _hd179820_
                                   _vars179786_
                                   _hd-depth179823_))))
                          (begin
                            (let ((_g185740_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g185739_)
                                         (##vector-length _g185739_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g185740_ 2)))
                                  (error "Context expects 2 values"
                                         _g185740_)))
                            (let ((_hd179825_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185739_ 0)))
                                  (_vars179826_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g185739_ 1))))
                              (let ((_g185741_
                                     (let ()
                                       (declare (not safe))
                                       (_recur179783_
                                        _tl179821_
                                        _vars179826_
                                        _depth179787_))))
                                (begin
                                  (let ((_g185742_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g185741_)
                                               (##vector-length _g185741_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g185742_ 2)))
                                        (error "Context expects 2 values"
                                               _g185742_)))
                                  (let ((_tl179828_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185741_ 0)))
                                        (_vars179829_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g185741_ 1))))
                                    (let ()
                                      (values (let ((__tmp185743
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd179825_
                                                             _tl179828_))))
                                                (declare (not safe))
                                                (cons _tag179819_ __tmp185743))
                                              _vars179829_))))))))))
                     (_e179833179840_ _rest179817_)
                     (_E179835179844_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair179832_ 'cons _hd179815_ _rest179817_))))
                     (_E179834179860_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e179833179840_))
                            (let ((_e179836179848_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e179833179840_))))
                              (let ((_hd179837179851_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e179836179848_)))
                                    (_tl179838179853_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e179836179848_))))
                                (let* ((_rest-hd179856_ _hd179837179851_)
                                       (_rest-tl179858_ _tl179838179853_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd179856_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179832_
                                             'splice
                                             _hd179815_
                                             _rest-tl179858_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair179832_
                                             'cons
                                             _hd179815_
                                             _rest179817_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E179835179844_))))))
                            (let () (declare (not safe)) (_E179835179844_))))))
                (let () (declare (not safe)) (_E179834179860_)))
              (let () (declare (not safe)) (_E179794179803_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E179794179803_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179793179864_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e179785_))
                                  (values '(null) _vars179786_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e179785_))
                                      (let ((_g185744_
                                             (let ((__tmp185746
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e179785_)))))
                                               (declare (not safe))
                                               (_recur179783_
                                                __tmp185746
                                                _vars179786_
                                                _depth179787_))))
                                        (begin
                                          (let ((_g185745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g185744_)
                                                       (##vector-length
                                                        _g185744_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g185745_ 2)))
                                                (error "Context expects 2 values"
                                                       _g185745_)))
                                          (let ((_e179868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g185744_ 0)))
                                                (_vars179869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g185744_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e179868_))
                                                    _vars179869_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e179785_))
                                          (let ((_g185747_
                                                 (let ((__tmp185749
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e179785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur179783_
                                                    __tmp185749
                                                    _vars179786_
                                                    _depth179787_))))
                                            (begin
                                              (let ((_g185748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g185747_)
                                                           (##vector-length
                                                            _g185747_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g185748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g185748_)))
                                              (let ((_e179871_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185747_
                                                        0)))
                                                    (_vars179872_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g185747_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e179871_))
                                                        _vars179872_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e179785_))
                                              (values (let ((__tmp185750
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e179785_))))
                (declare (not safe))
                (cons 'datum __tmp185750))
              _vars179786_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx179702_
                                                 _e179785_))))))))))))
          (let* ((_e179712179725_ _stx179702_)
                 (_E179714179729_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e179712179725_))))
                 (_E179713179776_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e179712179725_))
                        (let ((_e179715179733_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e179712179725_))))
                          (let ((_hd179716179736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e179715179733_)))
                                (_tl179717179738_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e179715179733_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl179717179738_))
                                (let ((_e179718179741_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl179717179738_))))
                                  (let ((_hd179719179744_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e179718179741_)))
                                        (_tl179720179746_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e179718179741_))))
                                    (let ((_expr179749_ _hd179719179744_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl179720179746_))
                                          (let ((_e179721179751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl179720179746_))))
                                            (let ((_hd179722179754_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e179721179751_)))
                                                  (_tl179723179756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e179721179751_))))
                                              (let* ((_ids179759_
                                                      _hd179722179754_)
                                                     (_clauses179761_
                                                      _tl179723179756_))
                                                (if '#t
                                                    (if (let ((__tmp185751
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids179759_))))
                  (declare (not safe))
                  (not __tmp185751))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx179702_
                   _ids179759_))
                (if (let ((__tmp185752
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses179761_))))
                      (declare (not safe))
                      (not __tmp185752))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx179702_))
                    (let* ((_ids179763_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids179759_)))
                           (_clauses179765_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses179761_)))
                           (_clause-ids179767_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses179765_)))
                           (_E179769_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target179771_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first179773_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses179765_))
                                _E179769_
                                (car _clause-ids179767_))))
                      (let ((__tmp185754
                             (let ((__tmp185755
                                    (let ((__tmp185757
                                           (let ((__tmp185762
                                                  (let ((__tmp185763
                                                         (let ((__tmp185768
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E179769_ '())))
                       (__tmp185764
                        (let ((__tmp185765
                               (let ((__tmp185767
                                      (let ()
                                        (declare (not safe))
                                        (cons _target179771_ '())))
                                     (__tmp185766
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target179771_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp185767
                                  __tmp185766))))
                          (declare (not safe))
                          (cons __tmp185765 '()))))
                   (declare (not safe))
                   (cons __tmp185768 __tmp185764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp185763 '())))
                                                 (__tmp185758
                                                  (let ((__tmp185761
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings179707_
                                                            _target179771_
                                                            _ids179763_
                                                            _clauses179765_
                                                            _clause-ids179767_
                                                            _E179769_)))
                                                        (__tmp185759
                                                         (let ((__tmp185760
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr179749_ '()))))
                   (declare (not safe))
                   (cons _first179773_ __tmp185760))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body179708_
                                                     __tmp185761
                                                     __tmp185759))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp185762
                                              __tmp185758)))
                                          (__tmp185756
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx179702_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp185757
                                       __tmp185756))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp185755)))
                            (__tmp185753
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx179702_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp185754 __tmp185753)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E179714179729_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E179714179729_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E179714179729_)))))
                        (let () (declare (not safe)) (_E179714179729_))))))
            (let () (declare (not safe)) (_E179713179776_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx180412_)
        (let* ((_identifier=?180414_ 'free-identifier=?)
               (_unwrap-e180416_ 'syntax-e)
               (_wrap-e180418_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx180412_
           _identifier=?180414_
           _unwrap-e180416_
           _wrap-e180418_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx180420_ _identifier=?180421_)
        (let* ((_unwrap-e180423_ 'syntax-e) (_wrap-e180425_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx180420_
           _identifier=?180421_
           _unwrap-e180423_
           _wrap-e180425_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx180427_ _identifier=?180428_ _unwrap-e180429_)
        (let ((_wrap-e180431_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx180427_
           _identifier=?180428_
           _unwrap-e180429_
           _wrap-e180431_))))
    (define gx#macro-expand-syntax-case
      (lambda _g185770_
        (let ((_g185769_ (let () (declare (not safe)) (##length _g185770_))))
          (cond ((let () (declare (not safe)) (##fx= _g185769_ 1))
                 (apply (lambda (_stx180412_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx180412_)))
                        _g185770_))
                ((let () (declare (not safe)) (##fx= _g185769_ 2))
                 (apply (lambda (_stx180420_ _identifier=?180421_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx180420_
                             _identifier=?180421_)))
                        _g185770_))
                ((let () (declare (not safe)) (##fx= _g185769_ 3))
                 (apply (lambda (_stx180427_
                                 _identifier=?180428_
                                 _unwrap-e180429_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx180427_
                             _identifier=?180428_
                             _unwrap-e180429_)))
                        _g185770_))
                ((let () (declare (not safe)) (##fx= _g185769_ 4))
                 (apply (lambda (_stx180433_
                                 _identifier=?180434_
                                 _unwrap-e180435_
                                 _wrap-e180436_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx180433_
                             _identifier=?180434_
                             _unwrap-e180435_
                             _wrap-e180436_)))
                        _g185770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g185770_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx179699_)
        (if (let () (declare (not safe)) (gx#identifier? _stx179699_))
            (let ((__tmp185771
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx179699_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp185771 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd179657_ . _rest179658_)
        (let ((_len179660_ (length _hd179657_)))
          (let _lp179662_ ((_rest179664_ _rest179658_))
            (let* ((_rest179665179673_ _rest179664_)
                   (_else179667179681_ (lambda () '#!void))
                   (_K179669179687_
                    (lambda (_rest179684_ _hd179685_)
                      (if (fx= _len179660_ (length _hd179685_))
                          (let ()
                            (declare (not safe))
                            (_lp179662_ _rest179684_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd179685_))))))
              (if (let () (declare (not safe)) (##pair? _rest179665179673_))
                  (let ((_hd179670179690_
                         (let ()
                           (declare (not safe))
                           (##car _rest179665179673_)))
                        (_tl179671179692_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest179665179673_))))
                    (let* ((_hd179695_ _hd179670179690_)
                           (_rest179697_ _tl179671179692_))
                      (declare (not safe))
                      (_K179669179687_ _rest179697_ _hd179695_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx179615_ _n179616_)
        (let _lp179618_ ((_rest179620_ _stx179615_) (_r179621_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest179620_))
              (let* ((_g179622179629_
                      (let () (declare (not safe)) (gx#syntax-e _rest179620_)))
                     (_E179624179633_
                      (lambda ()
                        (error '"No clause matching" _g179622179629_)))
                     (_K179625179639_
                      (lambda (_rest179636_ _hd179637_)
                        (let ((__tmp185772
                               (let ()
                                 (declare (not safe))
                                 (cons _hd179637_ _r179621_))))
                          (declare (not safe))
                          (_lp179618_ _rest179636_ __tmp185772)))))
                (if (let () (declare (not safe)) (##pair? _g179622179629_))
                    (let ((_hd179626179642_
                           (let ()
                             (declare (not safe))
                             (##car _g179622179629_)))
                          (_tl179627179644_
                           (let ()
                             (declare (not safe))
                             (##cdr _g179622179629_))))
                      (let* ((_hd179647_ _hd179626179642_)
                             (_rest179649_ _tl179627179644_))
                        (declare (not safe))
                        (_K179625179639_ _rest179649_ _hd179647_)))
                    (let () (declare (not safe)) (_E179624179633_))))
              (let _lp179651_ ((_n179653_ _n179616_)
                               (_l179654_ _r179621_)
                               (_r179655_ _rest179620_))
                (if (let () (declare (not safe)) (null? _l179654_))
                    (values _l179654_ _r179655_)
                    (if (fxpositive? _n179653_)
                        (let ((__tmp185776
                               (let ()
                                 (declare (not safe))
                                 (fx- _n179653_ '1)))
                              (__tmp185775 (cdr _l179654_))
                              (__tmp185773
                               (let ((__tmp185774 (car _l179654_)))
                                 (declare (not safe))
                                 (cons __tmp185774 _r179655_))))
                          (declare (not safe))
                          (_lp179651_ __tmp185776 __tmp185775 __tmp185773))
                        (values (reverse _l179654_) _r179655_))))))))))
