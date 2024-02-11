(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707657571)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182612 (list gx#expander::t))
            (__tmp182610
             (let ((__tmp182611
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182611 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp182612
         '(id depth)
         __tmp182610
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178139_
        (apply make-class-instance gx#syntax-pattern::t _$args178139_)))
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
      (lambda (_self178136_ _stx178137_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178137_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177618_)
        (letrec ((_generate177620_
                  (lambda (_e177847_)
                    (letrec ((_BUG177849_
                              (lambda (_q178011_)
                                (error '"BUG: syntax; generate"
                                       _stx177618_
                                       _e177847_
                                       _q178011_)))
                             (_local-pattern-e177850_
                              (lambda (_pat178009_)
                                (let ((__tmp182613
                                       (##structure-ref
                                        _pat178009_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182613))))
                             (_getvar177851_
                              (lambda (_q178006_ _vars178007_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178006_
                                           _vars178007_
                                           _BUG177849_))))
                             (_getarg177852_
                              (lambda (_arg177972_ _vars177973_)
                                (let* ((_arg177974177981_ _arg177972_)
                                       (_E177976177985_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg177974177981_)))
                                       (_K177977177994_
                                        (lambda (_e177988_ _tag177989_)
                                          (let ((_$e177991_ _tag177989_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e177991_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar177851_
                                                   _e177988_
                                                   _vars177973_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e177991_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e177850_
                                                       _e177988_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG177849_
                                                       _arg177972_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg177974177981_))
                                      (let ((_hd177978177997_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg177974177981_)))
                                            (_tl177979177999_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg177974177981_))))
                                        (let* ((_tag178002_ _hd177978177997_)
                                               (_e178004_ _tl177979177999_))
                                          (declare (not safe))
                                          (_K177977177994_
                                           _e178004_
                                           _tag178002_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177976177985_)))))))
                      (let _recur177854_ ((_e177856_ _e177847_)
                                          (_vars177857_ '()))
                        (let* ((_e177858177865_ _e177856_)
                               (_E177860177869_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e177858177865_)))
                               (_K177861177960_
                                (lambda (_body177872_ _tag177873_)
                                  (let ((_$e177875_ _tag177873_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177875_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body177872_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e177875_))
                                            (let ((_id177878_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body177872_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id177878_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks177880_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id177878_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks177880_))
                                                        (let ((__tmp182641
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body177872_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182641))
                (let ((__tmp182640
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body177872_)))
                      (__tmp182639
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body177872_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182640
                   __tmp182639
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id177878_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body177872_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG177849_
                                                         _e177856_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e177875_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e177850_
                                                   _body177872_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e177875_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar177851_
                                                       _body177872_
                                                       _vars177857_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e177875_))
                                                        (let ((__tmp182637
                                                               (let ((__tmp182638
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body177872_)))
                         (declare (not safe))
                         (_recur177854_ __tmp182638 _vars177857_)))
                      (__tmp182635
                       (let ((__tmp182636 (cdr _body177872_)))
                         (declare (not safe))
                         (_recur177854_ __tmp182636 _vars177857_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182637 __tmp182635))
                (if (let () (declare (not safe)) (eq? 'vector _$e177875_))
                    (let ((__tmp182634
                           (let ()
                             (declare (not safe))
                             (_recur177854_ _body177872_ _vars177857_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182634))
                    (if (let () (declare (not safe)) (eq? 'box _$e177875_))
                        (let ((__tmp182633
                               (let ()
                                 (declare (not safe))
                                 (_recur177854_ _body177872_ _vars177857_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182633))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e177875_))
                            (let* ((_body177881177892_ _body177872_)
                                   (_E177883177896_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body177881177892_)))
                                   (_K177884177934_
                                    (lambda (_args177899_
                                             _iv177900_
                                             _hd177901_
                                             _depth177902_)
                                      (let* ((_targets177908_
                                              (map (lambda (_g177903177905_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg177852_
                                                        _g177903177905_
                                                        _vars177857_)))
                                                   _args177899_))
                                             (_fold-in177910_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args177899_)))
                                             (_fold-out177912_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args177914_
                                              (let ((__tmp182614
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out177912_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182614
                                                        _fold-in177910_)))
                                             (_lambda-body177931_
                                              (if (fx> _depth177902_ '1)
                                                  (let ((_r-args177922_
                                                         (map (lambda (_arg177916_)
                                                                (let ((__tmp182619
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg177916_)))
                          (declare (not safe))
                          (cons 'ref __tmp182619)))
                      _args177899_))
                (_r-vars177923_
                 (let ((__tmp182620
                        (lambda (_arg177918_ _var177919_ _r177920_)
                          (let ((__tmp182621
                                 (let ((__tmp182622 (cdr _arg177918_)))
                                   (declare (not safe))
                                   (cons __tmp182622 _var177919_))))
                            (declare (not safe))
                            (cons __tmp182621 _r177920_)))))
                   (declare (not safe))
                   (foldr2 __tmp182620
                           _vars177857_
                           _args177899_
                           _fold-in177910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182623
                                                           (let ((__tmp182624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182628
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth177902_ '1)))
                                (__tmp182625
                                 (let ((__tmp182626
                                        (let ((__tmp182627
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out177912_))))
                                          (declare (not safe))
                                          (cons __tmp182627 _r-args177922_))))
                                   (declare (not safe))
                                   (cons _hd177901_ __tmp182626))))
                            (declare (not safe))
                            (cons __tmp182628 __tmp182625))))
                     (declare (not safe))
                     (cons 'splice __tmp182624))))
              (declare (not safe))
              (_recur177854_ __tmp182623 _r-vars177923_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars177929_
                                                          (let ((__tmp182615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg177925_ _var177926_ _r177927_)
                           (let ((__tmp182616
                                  (let ((__tmp182617 (cdr _arg177925_)))
                                    (declare (not safe))
                                    (cons __tmp182617 _var177926_))))
                             (declare (not safe))
                             (cons __tmp182616 _r177927_)))))
                    (declare (not safe))
                    (foldr2 __tmp182615
                            _vars177857_
                            _args177899_
                            _fold-in177910_)))
                 (__tmp182618
                  (let ()
                    (declare (not safe))
                    (_recur177854_ _hd177901_ _hd-vars177929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182618
                                                     _fold-out177912_)))))
                                        (let ((__tmp182632
                                               (if (fx> (length _targets177908_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets177908_))
                                                   '#!void))
                                              (__tmp182629
                                               (let ((__tmp182631
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args177914_
                                                         _lambda-body177931_)))
                                                     (__tmp182630
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur177854_
                                                         _iv177900_
                                                         _vars177857_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182631
                                                  __tmp182630
                                                  _targets177908_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182632
                                           __tmp182629))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body177881177892_))
                                  (let ((_hd177885177937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body177881177892_)))
                                        (_tl177886177939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body177881177892_))))
                                    (let ((_depth177942_ _hd177885177937_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl177886177939_))
                                          (let ((_hd177887177944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl177886177939_)))
                                                (_tl177888177946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl177886177939_))))
                                            (let ((_hd177949_
                                                   _hd177887177944_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl177888177946_))
                                                  (let ((_hd177889177951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl177888177946_)))
                                                        (_tl177890177953_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl177888177946_))))
                                                    (let* ((_iv177956_
                                                            _hd177889177951_)
                                                           (_args177958_
                                                            _tl177890177953_))
                                                      (declare (not safe))
                                                      (_K177884177934_
                                                       _args177958_
                                                       _iv177956_
                                                       _hd177949_
                                                       _depth177942_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177883177896_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177883177896_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E177883177896_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e177875_))
                                _body177872_
                                (let ()
                                  (declare (not safe))
                                  (_BUG177849_ _e177856_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e177858177865_))
                              (let ((_hd177862177963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177858177865_)))
                                    (_tl177863177965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177858177865_))))
                                (let* ((_tag177968_ _hd177862177963_)
                                       (_body177970_ _tl177863177965_))
                                  (declare (not safe))
                                  (_K177861177960_ _body177970_ _tag177968_)))
                              (let ()
                                (declare (not safe))
                                (_E177860177869_))))))))
                 (_parse177621_
                  (lambda (_e177662_)
                    (letrec ((_make-cons177664_
                              (lambda (_hd177839_ _tl177840_)
                                (let ((_g182642_ _hd177839_)
                                      (_g182644_ _tl177840_))
                                  (begin
                                    (let ((_g182643_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182642_)
                                                 (##vector-length _g182642_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182643_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182643_)))
                                    (let ((_g182645_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182644_)
                                                 (##vector-length _g182644_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182645_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182645_)))
                                    (let ((_hd-e177842_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182642_ 0)))
                                          (_hd-vars177843_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182642_ 1))))
                                      (let ((_tl-e177844_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182644_ 0)))
                                            (_tl-vars177845_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182644_ 1))))
                                        (values (let ((__tmp182646
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e177842_
                                                               _tl-e177844_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182646))
                                                (append _hd-vars177843_
                                                        _tl-vars177845_))))))))
                             (_make-splice177665_
                              (lambda (_where177778_
                                       _depth177779_
                                       _hd177780_
                                       _tl177781_)
                                (let ((_g182647_ _hd177780_)
                                      (_g182649_ _tl177781_))
                                  (begin
                                    (let ((_g182648_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182647_)
                                                 (##vector-length _g182647_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182648_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182648_)))
                                    (let ((_g182650_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182649_)
                                                 (##vector-length _g182649_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182650_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182650_)))
                                    (let ((_hd-e177783_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182647_ 0)))
                                          (_hd-vars177784_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182647_ 1))))
                                      (let ((_tl-e177785_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182649_ 0)))
                                            (_tl-vars177786_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182649_ 1))))
                                        (let _lp177788_ ((_rest177790_
                                                          _hd-vars177784_)
                                                         (_targets177791_ '())
                                                         (_vars177792_
                                                          _tl-vars177786_))
                                          (let* ((_rest177793177803_
                                                  _rest177790_)
                                                 (_else177795177811_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets177791_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177618_
                                                           _where177778_))
                                                        (values (let ((__tmp182651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182652
                                      (let ((__tmp182653
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e177785_
                                                     _targets177791_))))
                                        (declare (not safe))
                                        (cons _hd-e177783_ __tmp182653))))
                                 (declare (not safe))
                                 (cons _depth177779_ __tmp182652))))
                          (declare (not safe))
                          (cons 'splice __tmp182651))
                        _vars177792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K177797177820_
                                                  (lambda (_rest177814_
                                                           _hd-pat177815_
                                                           _hd-depth*177816_)
                                                    (let ((_hd-depth177818_
                                                           (fx- _hd-depth*177816_
                                                                _depth177779_)))
                                                      (if (fxpositive?
                                                           _hd-depth177818_)
                                                          (let ((__tmp182658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182659
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat177815_))))
                           (declare (not safe))
                           (cons __tmp182659 _targets177791_)))
                        (__tmp182656
                         (let ((__tmp182657
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth177818_ _hd-pat177815_))))
                           (declare (not safe))
                           (cons __tmp182657 _vars177792_))))
                    (declare (not safe))
                    (_lp177788_ _rest177814_ __tmp182658 __tmp182656))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth177818_))
                      (let ((__tmp182654
                             (let ((__tmp182655
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat177815_))))
                               (declare (not safe))
                               (cons __tmp182655 _targets177791_))))
                        (declare (not safe))
                        (_lp177788_ _rest177814_ __tmp182654 _vars177792_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177618_
                         _where177778_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest177793177803_))
                                                (let ((_hd177798177823_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest177793177803_)))
                                                      (_tl177799177825_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest177793177803_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd177798177823_))
                                                      (let ((_hd177800177828_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd177798177823_)))
                    (_tl177801177830_
                     (let () (declare (not safe)) (##cdr _hd177798177823_))))
                (let* ((_hd-depth*177833_ _hd177800177828_)
                       (_hd-pat177835_ _tl177801177830_)
                       (_rest177837_ _tl177799177825_))
                  (declare (not safe))
                  (_K177797177820_
                   _rest177837_
                   _hd-pat177835_
                   _hd-depth*177833_)))
              (let () (declare (not safe)) (_else177795177811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else177795177811_)))))))))))
                             (_recur177666_
                              (lambda (_e177671_ _is-e?177672_)
                                (if (_is-e?177672_ _e177671_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177618_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e177671_))
                                        (let* ((_pat177674_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e177671_)))
                                               (_depth177676_
                                                (##structure-ref
                                                 _pat177674_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth177676_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat177674_))
                                                      (let ((__tmp182675
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth177676_ _pat177674_))))
                (declare (not safe))
                (cons __tmp182675 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat177674_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e177671_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e177671_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e177671_))
                                                (let* ((_e177678177685_
                                                        _e177671_)
                                                       (_E177680177689_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e177678177685_))))
                                                       (_E177679177768_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e177678177685_))
                      (let ((_e177681177693_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e177678177685_))))
                        (let ((_hd177682177696_
                               (let ()
                                 (declare (not safe))
                                 (##car _e177681177693_)))
                              (_tl177683177698_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e177681177693_))))
                          (let* ((_hd177701_ _hd177682177696_)
                                 (_rest177703_ _tl177683177698_))
                            (if '#t
                                (if (_is-e?177672_ _hd177701_)
                                    (let* ((_e177704177711_ _rest177703_)
                                           (_E177706177715_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177618_
                                                 _e177671_))))
                                           (_E177705177729_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e177704177711_))
                                                  (let ((_e177707177719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e177704177711_))))
                                                    (let ((_hd177708177722_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e177707177719_)))
                                                          (_tl177709177724_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e177707177719_))))
                                                      (let ((_rest177727_
                                                             _hd177708177722_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl177709177724_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur177666_ _rest177727_ false))
                        (let () (declare (not safe)) (_E177706177715_)))
                    (let () (declare (not safe)) (_E177706177715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177706177715_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E177705177729_)))
                                    (let _lp177733_ ((_rest177735_
                                                      _rest177703_)
                                                     (_depth177736_ '0))
                                      (let* ((_e177737177744_ _rest177735_)
                                             (_E177739177748_
                                              (lambda ()
                                                (if (fxpositive? _depth177736_)
                                                    (let ((__tmp182669
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177666_
                                                              _hd177701_
                                                              _is-e?177672_)))
                                                          (__tmp182668
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177666_
                                                              _rest177735_
                                                              _is-e?177672_))))
                                                      (declare (not safe))
                                                      (_make-splice177665_
                                                       _e177671_
                                                       _depth177736_
                                                       __tmp182669
                                                       __tmp182668))
                                                    (let ((__tmp182667
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177666_
                                                              _hd177701_
                                                              _is-e?177672_)))
                                                          (__tmp182666
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177666_
                                                              _rest177735_
                                                              _is-e?177672_))))
                                                      (declare (not safe))
                                                      (_make-cons177664_
                                                       __tmp182667
                                                       __tmp182666)))))
                                             (_E177738177764_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e177737177744_))
                                                    (let ((_e177740177752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e177737177744_))))
                                                      (let ((_hd177741177755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e177740177752_)))
                    (_tl177742177757_
                     (let () (declare (not safe)) (##cdr _e177740177752_))))
                (let* ((_rest-hd177760_ _hd177741177755_)
                       (_rest-tl177762_ _tl177742177757_))
                  (if '#t
                      (if (_is-e?177672_ _rest-hd177760_)
                          (let ((__tmp182674
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth177736_ '1))))
                            (declare (not safe))
                            (_lp177733_ _rest-tl177762_ __tmp182674))
                          (if (fxpositive? _depth177736_)
                              (let ((__tmp182673
                                     (let ()
                                       (declare (not safe))
                                       (_recur177666_
                                        _hd177701_
                                        _is-e?177672_)))
                                    (__tmp182672
                                     (let ()
                                       (declare (not safe))
                                       (_recur177666_
                                        _rest177735_
                                        _is-e?177672_))))
                                (declare (not safe))
                                (_make-splice177665_
                                 _e177671_
                                 _depth177736_
                                 __tmp182673
                                 __tmp182672))
                              (let ((__tmp182671
                                     (let ()
                                       (declare (not safe))
                                       (_recur177666_
                                        _hd177701_
                                        _is-e?177672_)))
                                    (__tmp182670
                                     (let ()
                                       (declare (not safe))
                                       (_recur177666_
                                        _rest177735_
                                        _is-e?177672_))))
                                (declare (not safe))
                                (_make-cons177664_ __tmp182671 __tmp182670))))
                      (let () (declare (not safe)) (_E177739177748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177739177748_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E177738177764_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E177680177689_))))))
                      (let () (declare (not safe)) (_E177680177689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177679177768_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e177671_))
                                                    (let ((_g182663_
                                                           (let ((__tmp182665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e177671_)))))
                     (declare (not safe))
                     (_recur177666_ __tmp182665 _is-e?177672_))))
              (begin
                (let ((_g182664_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g182663_)
                             (##vector-length _g182663_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g182664_ 2)))
                      (error "Context expects 2 values" _g182664_)))
                (let ((_e177772_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182663_ 0)))
                      (_vars177773_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182663_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e177772_))
                          _vars177773_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e177671_))
                                                        (let ((_g182660_
                                                               (let ((__tmp182662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e177671_)))))
                         (declare (not safe))
                         (_recur177666_ __tmp182662 _is-e?177672_))))
                  (begin
                    (let ((_g182661_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g182660_)
                                 (##vector-length _g182660_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g182661_ 2)))
                          (error "Context expects 2 values" _g182661_)))
                    (let ((_e177775_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182660_ 0)))
                          (_vars177776_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182660_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e177775_))
                              _vars177776_))))
                (values (let () (declare (not safe)) (cons 'datum _e177671_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g182676_
                             (let ()
                               (declare (not safe))
                               (_recur177666_ _e177662_ gx#ellipsis?))))
                        (begin
                          (let ((_g182677_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g182676_)
                                       (##vector-length _g182676_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g182677_ 2)))
                                (error "Context expects 2 values" _g182677_)))
                          (let ((_tree177668_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182676_ 0)))
                                (_vars177669_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182676_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars177669_))
                                _tree177668_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177618_
                                   _vars177669_))))))))))
          (let* ((_e177622177632_ _stx177618_)
                 (_E177624177636_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177618_))))
                 (_E177623177658_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177622177632_))
                        (let ((_e177625177640_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177622177632_))))
                          (let ((_hd177626177643_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177625177640_)))
                                (_tl177627177645_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177625177640_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177627177645_))
                                (let ((_e177628177648_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177627177645_))))
                                  (let ((_hd177629177651_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177628177648_)))
                                        (_tl177630177653_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177628177648_))))
                                    (let ((_form177656_ _hd177629177651_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177630177653_))
                                          (if '#t
                                              (let ((__tmp182679
                                                     (let ((__tmp182680
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177621_
                                                               _form177656_))))
                                                       (declare (not safe))
                                                       (_generate177620_
                                                        __tmp182680)))
                                                    (__tmp182678
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177618_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp182679
                                                 __tmp182678))
                                              (let ()
                                                (declare (not safe))
                                                (_E177624177636_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177624177636_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177624177636_)))))
                        (let () (declare (not safe)) (_E177624177636_))))))
            (let () (declare (not safe)) (_E177623177658_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx176882_
               _identifier=?176883_
               _unwrap-e176884_
               _wrap-e176885_)
        (letrec ((_generate-bindings176887_
                  (lambda (_target177482_
                           _ids177483_
                           _clauses177484_
                           _clause-ids177485_
                           _E177486_)
                    (letrec ((_generate1177488_
                              (lambda (_clause177585_
                                       _clause-id177586_
                                       _E177587_)
                                (let ((__tmp182685
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177586_ '())))
                                      (__tmp182681
                                       (let ((__tmp182682
                                              (let ((__tmp182684
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177482_
                                                             '())))
                                                    (__tmp182683
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause176889_
                                                        _target177482_
                                                        _ids177483_
                                                        _clause177585_
                                                        _E177587_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp182684
                                                 __tmp182683))))
                                         (declare (not safe))
                                         (cons __tmp182682 '()))))
                                  (declare (not safe))
                                  (cons __tmp182685 __tmp182681)))))
                      (let _lp177490_ ((_rest177492_ _clauses177484_)
                                       (_rest-ids177493_ _clause-ids177485_)
                                       (_bindings177494_ '()))
                        (let* ((_rest177495177503_ _rest177492_)
                               (_else177497177511_
                                (lambda () _bindings177494_))
                               (_K177499177573_
                                (lambda (_rest177514_ _clause177515_)
                                  (let* ((_rest-ids177516177523_
                                          _rest-ids177493_)
                                         (_E177518177527_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177516177523_)))
                                         (_K177519177561_
                                          (lambda (_rest-ids177530_
                                                   _clause-id177531_)
                                            (let* ((_rest-ids177532177540_
                                                    _rest-ids177530_)
                                                   (_else177534177548_
                                                    (lambda ()
                                                      (let ((__tmp182686
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177488_
                        _clause177515_
                        _clause-id177531_
                        _E177486_))))
                (declare (not safe))
                (cons __tmp182686 _bindings177494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177536177553_
                                                    (lambda (_next-clause-id177551_)
                                                      (let ((__tmp182687
                                                             (let ((__tmp182688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177488_
                               _clause177515_
                               _clause-id177531_
                               _next-clause-id177551_))))
                       (declare (not safe))
                       (cons __tmp182688 _bindings177494_))))
                (declare (not safe))
                (_lp177490_ _rest177514_ _rest-ids177530_ __tmp182687)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177532177540_))
                                                  (let* ((_hd177537177556_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177532177540_)))
                                                         (_next-clause-id177559_
                                                          _hd177537177556_))
                                                    (declare (not safe))
                                                    (_K177536177553_
                                                     _next-clause-id177559_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177534177548_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177516177523_))
                                        (let ((_hd177520177564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177516177523_)))
                                              (_tl177521177566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177516177523_))))
                                          (let* ((_clause-id177569_
                                                  _hd177520177564_)
                                                 (_rest-ids177571_
                                                  _tl177521177566_))
                                            (declare (not safe))
                                            (_K177519177561_
                                             _rest-ids177571_
                                             _clause-id177569_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177518177527_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177495177503_))
                              (let ((_hd177500177576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177495177503_)))
                                    (_tl177501177578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177495177503_))))
                                (let* ((_clause177581_ _hd177500177576_)
                                       (_rest177583_ _tl177501177578_))
                                  (declare (not safe))
                                  (_K177499177573_
                                   _rest177583_
                                   _clause177581_)))
                              (let ()
                                (declare (not safe))
                                (_else177497177511_))))))))
                 (_generate-body176888_
                  (lambda (_bindings177442_ _body177443_)
                    (let _recur177445_ ((_rest177447_ _bindings177442_))
                      (let* ((_rest177448177456_ _rest177447_)
                             (_else177450177464_ (lambda () _body177443_))
                             (_K177452177470_
                              (lambda (_rest177467_ _hd177468_)
                                (let ((__tmp182690
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177468_ '())))
                                      (__tmp182689
                                       (let ()
                                         (declare (not safe))
                                         (_recur177445_ _rest177467_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp182690
                                   __tmp182689)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177448177456_))
                            (let ((_hd177453177473_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177448177456_)))
                                  (_tl177454177475_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177448177456_))))
                              (let* ((_hd177478_ _hd177453177473_)
                                     (_rest177480_ _tl177454177475_))
                                (declare (not safe))
                                (_K177452177470_ _rest177480_ _hd177478_)))
                            (let ()
                              (declare (not safe))
                              (_else177450177464_)))))))
                 (_generate-clause176889_
                  (lambda (_target177305_ _ids177306_ _clause177307_ _E177308_)
                    (letrec ((_generate1177310_
                              (lambda (_hd177397_ _fender177398_ _body177399_)
                                (let ((_g182691_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause176891_
                                          _hd177397_
                                          _ids177306_))))
                                  (begin
                                    (let ((_g182692_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182691_)
                                                 (##vector-length _g182691_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182692_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182692_)))
                                    (let ((_e177401_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182691_ 0)))
                                          (_mvars177402_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182691_ 1))))
                                      (let* ((_pvars177404_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177402_))))
                                             (_E177406_
                                              (let ((__tmp182693
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177305_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177308_ __tmp182693)))
                                             (_K177439_
                                              (let ((__tmp182694
                                                     (let ((__tmp182696
                                                            (map (lambda (_mvar177408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177409_)
                           (let* ((_mvar177410177417_ _mvar177408_)
                                  (_E177412177421_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177410177417_)))
                                  (_K177413177427_
                                   (lambda (_depth177424_ _id177425_)
                                     (let ((__tmp182697
                                            (let ((__tmp182698
                                                   (let ((__tmp182700
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177425_)))
                                                         (__tmp182699
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177409_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp182700
                                                      __tmp182699
                                                      _depth177424_))))
                                              (declare (not safe))
                                              (cons __tmp182698 '()))))
                                       (declare (not safe))
                                       (cons _id177425_ __tmp182697)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177410177417_))
                                 (let ((_hd177414177430_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177410177417_)))
                                       (_tl177415177432_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177410177417_))))
                                   (let* ((_id177435_ _hd177414177430_)
                                          (_depth177437_ _tl177415177432_))
                                     (declare (not safe))
                                     (_K177413177427_
                                      _depth177437_
                                      _id177435_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177412177421_)))))
                         _mvars177402_
                         _pvars177404_))
                   (__tmp182695
                    (if (let () (declare (not safe)) (eq? _fender177398_ '#t))
                        _body177399_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177398_
                           _body177399_
                           _E177406_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp182696 __tmp182695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177404_
                                                 __tmp182694))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match176890_
                                           _hd177397_
                                           _target177305_
                                           _e177401_
                                           _mvars177402_
                                           _K177439_
                                           _E177406_)))))))))
                      (let* ((_e177311177331_ _clause177307_)
                             (_E177320177335_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177311177331_))))
                             (_E177313177369_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177311177331_))
                                    (let ((_e177321177339_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177311177331_))))
                                      (let ((_hd177322177342_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177321177339_)))
                                            (_tl177323177344_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177321177339_))))
                                        (let ((_hd177347_ _hd177322177342_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177323177344_))
                                              (let ((_e177324177349_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177323177344_))))
                                                (let ((_hd177325177352_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177324177349_)))
                                                      (_tl177326177354_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177324177349_))))
                                                  (let ((_fender177357_
                                                         _hd177325177352_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177326177354_))
                                                        (let ((_e177327177359_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177326177354_))))
                  (let ((_hd177328177362_
                         (let () (declare (not safe)) (##car _e177327177359_)))
                        (_tl177329177364_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177327177359_))))
                    (let ((_body177367_ _hd177328177362_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177329177364_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177310_
                                 _hd177347_
                                 _fender177357_
                                 _body177367_))
                              (let () (declare (not safe)) (_E177320177335_)))
                          (let () (declare (not safe)) (_E177320177335_))))))
                (let () (declare (not safe)) (_E177320177335_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177320177335_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177320177335_)))))
                             (_E177312177393_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177311177331_))
                                    (let ((_e177314177373_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177311177331_))))
                                      (let ((_hd177315177376_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177314177373_)))
                                            (_tl177316177378_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177314177373_))))
                                        (let ((_hd177381_ _hd177315177376_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177316177378_))
                                              (let ((_e177317177383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177316177378_))))
                                                (let ((_hd177318177386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177317177383_)))
                                                      (_tl177319177388_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177317177383_))))
                                                  (let ((_body177391_
                                                         _hd177318177386_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177319177388_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177310_
                                                               _hd177381_
                                                               '#t
                                                               _body177391_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177313177369_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177313177369_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177313177369_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177313177369_))))))
                        (let () (declare (not safe)) (_E177312177393_))))))
                 (_generate-match176890_
                  (lambda (_where177054_
                           _target177055_
                           _hd177056_
                           _mvars177057_
                           _K177058_
                           _E177059_)
                    (letrec ((_BUG177061_
                              (lambda (_q177303_)
                                (error '"BUG: syntax-case; generate"
                                       _stx176882_
                                       _hd177056_
                                       _q177303_)))
                             (_recur177062_
                              (lambda (_e177153_
                                       _vars177154_
                                       _target177155_
                                       _E177156_
                                       _k177157_)
                                (let* ((_e177158177165_ _e177153_)
                                       (_E177160177169_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177158177165_)))
                                       (_K177161177291_
                                        (lambda (_body177172_ _tag177173_)
                                          (let ((_$e177175_ _tag177173_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177175_))
                                                (_k177157_ _vars177154_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177175_))
                                                    (let ((__tmp182807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177155_)))
                                                          (__tmp182803
                                                           (let ((__tmp182805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182806
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e176885_
                                    _body177172_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?176883_
                             __tmp182806
                             _target177155_)))
                         (__tmp182804 (_k177157_ _vars177154_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp182805 __tmp182804 _E177156_))))
              (declare (not safe))
              (gx#core-list 'if __tmp182807 __tmp182803 _E177156_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177175_))
                                                        (_k177157_
                                                         (let ((__tmp182802
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177172_ _target177155_))))
                   (declare (not safe))
                   (cons __tmp182802 _vars177154_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177175_))
                    (let ((_$e177178_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177179_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177180_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp182801
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177155_)))
                            (__tmp182782
                             (let ((__tmp182796
                                    (let ((__tmp182797
                                           (let ((__tmp182800
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177178_ '())))
                                                 (__tmp182798
                                                  (let ((__tmp182799
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e176884_
                                                            _target177155_))))
                                                    (declare (not safe))
                                                    (cons __tmp182799 '()))))
                                             (declare (not safe))
                                             (cons __tmp182800 __tmp182798))))
                                      (declare (not safe))
                                      (cons __tmp182797 '())))
                                   (__tmp182783
                                    (let ((__tmp182786
                                           (let ((__tmp182792
                                                  (let ((__tmp182795
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp182793
                 (let ((__tmp182794
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177178_))))
                   (declare (not safe))
                   (cons __tmp182794 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182795
                                                          __tmp182793)))
                                                 (__tmp182787
                                                  (let ((__tmp182788
                                                         (let ((__tmp182791
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177180_ '())))
                       (__tmp182789
                        (let ((__tmp182790
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177178_))))
                          (declare (not safe))
                          (cons __tmp182790 '()))))
                   (declare (not safe))
                   (cons __tmp182791 __tmp182789))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182788 '()))))
                                             (declare (not safe))
                                             (cons __tmp182792 __tmp182787)))
                                          (__tmp182784
                                           (let* ((_body177181177188_
                                                   _body177172_)
                                                  (_E177183177192_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177181177188_)))
                                                  (_K177184177200_
                                                   (lambda (_tl177195_
                                                            _hd177196_)
                                                     (let ((__tmp182785
                                                            (lambda (_vars177198_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177062_
                         _tl177195_
                         _vars177198_
                         _$tl177180_
                         _E177156_
                         _k177157_)))))
               (declare (not safe))
               (_recur177062_
                _hd177196_
                _vars177154_
                _$hd177179_
                _E177156_
                __tmp182785)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177181177188_))
                                                 (let ((_hd177185177203_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177181177188_)))
                                                       (_tl177186177205_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177181177188_))))
                                                   (let* ((_hd177208_
                                                           _hd177185177203_)
                                                          (_tl177210_
                                                           _tl177186177205_))
                                                     (declare (not safe))
                                                     (_K177184177200_
                                                      _tl177210_
                                                      _hd177208_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177183177192_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp182786
                                       __tmp182784))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp182796
                                __tmp182783))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp182801 __tmp182782 _E177156_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177175_))
                        (let* ((_body177211177218_ _body177172_)
                               (_E177213177222_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177211177218_)))
                               (_K177214177273_
                                (lambda (_tl177225_ _hd177226_)
                                  (let* ((_rlen177228_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177063_ _tl177225_)))
                                         (_$target177230_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177232_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177234_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177236_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177238_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177240_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177242_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177244_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177064_ _hd177226_)))
                                         (_lvars177246_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177244_)))
                                         (_tlvars177248_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177244_)))
                                         (_linit177252_
                                          (map (lambda (_var177250_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177246_)))
                                    (letrec ((_make-loop177255_
                                              (lambda (_vars177259_)
                                                (let ((__tmp182733
                                                       (let ((__tmp182734
                                                              (let ((__tmp182770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177236_ '())))
                            (__tmp182735
                             (let ((__tmp182736
                                    (let ((__tmp182769
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177232_ _lvars177246_)))
                                          (__tmp182737
                                           (let ((__tmp182768
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177232_)))
                                                 (__tmp182746
                                                  (let ((__tmp182763
                                                         (let ((__tmp182764
                                                                (let ((__tmp182767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177238_ '())))
                              (__tmp182765
                               (let ((__tmp182766
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e176884_
                                         _$hd177232_))))
                                 (declare (not safe))
                                 (cons __tmp182766 '()))))
                          (declare (not safe))
                          (cons __tmp182767 __tmp182765))))
                   (declare (not safe))
                   (cons __tmp182764 '())))
                (__tmp182747
                 (let ((__tmp182753
                        (let ((__tmp182759
                               (let ((__tmp182762
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177240_ '())))
                                     (__tmp182760
                                      (let ((__tmp182761
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177238_))))
                                        (declare (not safe))
                                        (cons __tmp182761 '()))))
                                 (declare (not safe))
                                 (cons __tmp182762 __tmp182760)))
                              (__tmp182754
                               (let ((__tmp182755
                                      (let ((__tmp182758
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177242_ '())))
                                            (__tmp182756
                                             (let ((__tmp182757
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177238_))))
                                               (declare (not safe))
                                               (cons __tmp182757 '()))))
                                        (declare (not safe))
                                        (cons __tmp182758 __tmp182756))))
                                 (declare (not safe))
                                 (cons __tmp182755 '()))))
                          (declare (not safe))
                          (cons __tmp182759 __tmp182754)))
                       (__tmp182748
                        (let ((__tmp182749
                               (lambda (_hdvars177261_)
                                 (let ((__tmp182750
                                        (let ((__tmp182751
                                               (map (lambda (_svar177263_
                                                             _lvar177264_)
                                                      (let ((__tmp182752
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177263_ _hdvars177261_ _BUG177061_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp182752 _lvar177264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177244_
                                                    _lvars177246_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177242_ __tmp182751))))
                                   (declare (not safe))
                                   (cons _$lp177236_ __tmp182750)))))
                          (declare (not safe))
                          (_recur177062_
                           _hd177226_
                           '()
                           _$lp-hd177240_
                           _E177156_
                           __tmp182749))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp182753 __tmp182748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182763
                                                     __tmp182747)))
                                                 (__tmp182738
                                                  (let ((__tmp182742
                                                         (map (lambda (_lvar177266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177267_)
                        (let ((__tmp182745
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177267_ '())))
                              (__tmp182743
                               (let ((__tmp182744
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177266_))))
                                 (declare (not safe))
                                 (cons __tmp182744 '()))))
                          (declare (not safe))
                          (cons __tmp182745 __tmp182743)))
                      _lvars177246_
                      _tlvars177248_))
                (__tmp182739
                 (_k177157_
                  (let ((__tmp182740
                         (lambda (_svar177269_ _tlvar177270_ _r177271_)
                           (let ((__tmp182741
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177269_ _tlvar177270_))))
                             (declare (not safe))
                             (cons __tmp182741 _r177271_)))))
                    (declare (not safe))
                    (foldl2 __tmp182740
                            _vars177259_
                            _svars177244_
                            _tlvars177248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182742
                                                     __tmp182739))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp182768
                                              __tmp182746
                                              __tmp182738))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp182769
                                       __tmp182737))))
                               (declare (not safe))
                               (cons __tmp182736 '()))))
                        (declare (not safe))
                        (cons __tmp182770 __tmp182735))))
                 (declare (not safe))
                 (cons __tmp182734 '())))
              (__tmp182731
               (let ((__tmp182732
                      (let ()
                        (declare (not safe))
                        (cons _$target177230_ _linit177252_))))
                 (declare (not safe))
                 (cons _$lp177236_ __tmp182732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp182733
                                                   __tmp182731)))))
                                      (let ((_body177257_
                                             (let ((__tmp182772
                                                    (let ((__tmp182773
                                                           (let ((__tmp182776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182777
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177234_ '()))))
                            (declare (not safe))
                            (cons _$target177230_ __tmp182777)))
                         (__tmp182774
                          (let ((__tmp182775
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177155_
                                    _rlen177228_))))
                            (declare (not safe))
                            (cons __tmp182775 '()))))
                     (declare (not safe))
                     (cons __tmp182776 __tmp182774))))
              (declare (not safe))
              (cons __tmp182773 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182771
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177062_
                                                       _tl177225_
                                                       _vars177154_
                                                       _$tl177234_
                                                       _E177156_
                                                       _make-loop177255_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182772
                                                __tmp182771))))
                                        (let ((__tmp182781
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177155_)))
                                              (__tmp182778
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177228_))
                                                   _body177257_
                                                   (let ((__tmp182779
                                                          (let ((__tmp182780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177155_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp182780 _rlen177228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp182779
                                                      _body177257_
                                                      _E177156_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp182781
                                           __tmp182778
                                           _E177156_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177211177218_))
                              (let ((_hd177215177276_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177211177218_)))
                                    (_tl177216177278_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177211177218_))))
                                (let* ((_hd177281_ _hd177215177276_)
                                       (_tl177283_ _tl177216177278_))
                                  (declare (not safe))
                                  (_K177214177273_ _tl177283_ _hd177281_)))
                              (let () (declare (not safe)) (_E177213177222_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177175_))
                            (let ((__tmp182730
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177155_)))
                                  (__tmp182729 (_k177157_ _vars177154_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp182730
                               __tmp182729
                               _E177156_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177175_))
                                (let ((_$e177285_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp182728
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177155_)))
                                        (__tmp182720
                                         (let ((__tmp182722
                                                (let ((__tmp182723
                                                       (let ((__tmp182727
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177285_ '())))
                     (__tmp182724
                      (let ((__tmp182725
                             (let ((__tmp182726
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e176884_
                                       _target177155_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp182726))))
                        (declare (not safe))
                        (cons __tmp182725 '()))))
                 (declare (not safe))
                 (cons __tmp182727 __tmp182724))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp182723 '())))
                                               (__tmp182721
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177062_
                                                   _body177172_
                                                   _vars177154_
                                                   _$e177285_
                                                   _E177156_
                                                   _k177157_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp182722
                                            __tmp182721))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp182728
                                     __tmp182720
                                     _E177156_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177175_))
                                    (let ((_$e177287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp182719
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177155_)))
                                            (__tmp182711
                                             (let ((__tmp182713
                                                    (let ((__tmp182714
                                                           (let ((__tmp182718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177287_ '())))
                         (__tmp182715
                          (let ((__tmp182716
                                 (let ((__tmp182717
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e176884_
                                           _target177155_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp182717))))
                            (declare (not safe))
                            (cons __tmp182716 '()))))
                     (declare (not safe))
                     (cons __tmp182718 __tmp182715))))
              (declare (not safe))
              (cons __tmp182714 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182712
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177062_
                                                       _body177172_
                                                       _vars177154_
                                                       _$e177287_
                                                       _E177156_
                                                       _k177157_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182713
                                                __tmp182712))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp182719
                                         __tmp182711
                                         _E177156_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177175_))
                                        (let ((_$e177289_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp182710
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177155_)))
                                                (__tmp182701
                                                 (let ((__tmp182705
                                                        (let ((__tmp182706
                                                               (let ((__tmp182709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177289_ '())))
                             (__tmp182707
                              (let ((__tmp182708
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177155_))))
                                (declare (not safe))
                                (cons __tmp182708 '()))))
                         (declare (not safe))
                         (cons __tmp182709 __tmp182707))))
                  (declare (not safe))
                  (cons __tmp182706 '())))
               (__tmp182702
                (let ((__tmp182704
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177289_ _body177172_)))
                      (__tmp182703 (_k177157_ _vars177154_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp182704 __tmp182703 _E177156_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp182705
                                                    __tmp182702))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp182710
                                             __tmp182701
                                             _E177156_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177061_ _e177153_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177158177165_))
                                      (let ((_hd177162177294_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177158177165_)))
                                            (_tl177163177296_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177158177165_))))
                                        (let* ((_tag177299_ _hd177162177294_)
                                               (_body177301_ _tl177163177296_))
                                          (declare (not safe))
                                          (_K177161177291_
                                           _body177301_
                                           _tag177299_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177160177169_))))))
                             (_splice-rlen177063_
                              (lambda (_e177115_)
                                (let _lp177117_ ((_e177119_ _e177115_)
                                                 (_n177120_ '0))
                                  (let* ((_e177121177128_ _e177119_)
                                         (_E177123177132_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177121177128_)))
                                         (_K177124177141_
                                          (lambda (_body177135_ _tag177136_)
                                            (let ((_$e177138_ _tag177136_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177138_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx176882_
                                                     _where177054_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177138_))
                                                      (let ((__tmp182809
                                                             (cdr _body177135_))
                                                            (__tmp182808
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177120_ '1))))
                (declare (not safe))
                (_lp177117_ __tmp182809 __tmp182808))
              _n177120_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177121177128_))
                                        (let ((_hd177125177144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177121177128_)))
                                              (_tl177126177146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177121177128_))))
                                          (let* ((_tag177149_ _hd177125177144_)
                                                 (_body177151_
                                                  _tl177126177146_))
                                            (declare (not safe))
                                            (_K177124177141_
                                             _body177151_
                                             _tag177149_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177123177132_)))))))
                             (_splice-vars177064_
                              (lambda (_e177071_)
                                (let _recur177073_ ((_e177075_ _e177071_)
                                                    (_vars177076_ '()))
                                  (let* ((_e177077177084_ _e177075_)
                                         (_E177079177088_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177077177084_)))
                                         (_K177080177103_
                                          (lambda (_body177091_ _tag177092_)
                                            (let ((_$e177094_ _tag177092_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177094_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177091_
                                                          _vars177076_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177094_))
                  (let () (declare (not safe)) (eq? 'splice _$e177094_)))
              (let ((__tmp182812 (cdr _body177091_))
                    (__tmp182810
                     (let ((__tmp182811 (car _body177091_)))
                       (declare (not safe))
                       (_recur177073_ __tmp182811 _vars177076_))))
                (declare (not safe))
                (_recur177073_ __tmp182812 __tmp182810))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177094_))
                      (let () (declare (not safe)) (eq? 'box _$e177094_)))
                  (let ()
                    (declare (not safe))
                    (_recur177073_ _body177091_ _vars177076_))
                  _vars177076_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177077177084_))
                                        (let ((_hd177081177106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177077177084_)))
                                              (_tl177082177108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177077177084_))))
                                          (let* ((_tag177111_ _hd177081177106_)
                                                 (_body177113_
                                                  _tl177082177108_))
                                            (declare (not safe))
                                            (_K177080177103_
                                             _body177113_
                                             _tag177111_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177079177088_)))))))
                             (_make-body177065_
                              (lambda (_vars177067_)
                                (let ((__tmp182813
                                       (map (lambda (_mvar177069_)
                                              (let ((__tmp182814
                                                     (car _mvar177069_)))
                                                (declare (not safe))
                                                (assgetq __tmp182814
                                                         _vars177067_
                                                         _BUG177061_)))
                                            _mvars177057_)))
                                  (declare (not safe))
                                  (cons _K177058_ __tmp182813)))))
                      (let ()
                        (declare (not safe))
                        (_recur177062_
                         _hd177056_
                         '()
                         _target177055_
                         _E177059_
                         _make-body177065_)))))
                 (_parse-clause176891_
                  (lambda (_hd176960_ _ids176961_)
                    (let _recur176963_ ((_e176965_ _hd176960_)
                                        (_vars176966_ '())
                                        (_depth176967_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e176965_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e176965_))
                              (values '(any) _vars176966_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e176965_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx176882_
                                     _hd176960_))
                                  (if (let ((__tmp182830
                                             (lambda (_id176969_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e176965_
                                                  _id176969_)))))
                                        (declare (not safe))
                                        (find __tmp182830 _ids176961_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e176965_))
                                              _vars176966_)
                                      (if (let ((__tmp182828
                                                 (lambda (_var176971_)
                                                   (let ((__tmp182829
                                                          (car _var176971_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e176965_
                                                      __tmp182829)))))
                                            (declare (not safe))
                                            (find __tmp182828 _vars176966_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx176882_
                                             _e176965_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e176965_))
                                                  (let ((__tmp182827
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e176965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth176967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182827
                                                          _vars176966_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e176965_))
                              (let* ((_e176972176979_ _e176965_)
                                     (_E176974176983_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e176972176979_))))
                                     (_E176973177044_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e176972176979_))
                                            (let ((_e176975176987_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e176972176979_))))
                                              (let ((_hd176976176990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e176975176987_)))
                                                    (_tl176977176992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e176975176987_))))
                                                (let* ((_hd176995_
                                                        _hd176976176990_)
                                                       (_rest176997_
                                                        _tl176977176992_))
                                                  (if '#t
                                                      (let* ((_make-pair177012_
                                                              (lambda (_tag176999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177000_
                               _tl177001_)
                        (let* ((_hd-depth177003_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag176999_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth176967_ '1))
                                    _depth176967_))
                               (_g182822_
                                (let ()
                                  (declare (not safe))
                                  (_recur176963_
                                   _hd177000_
                                   _vars176966_
                                   _hd-depth177003_))))
                          (begin
                            (let ((_g182823_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g182822_)
                                         (##vector-length _g182822_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g182823_ 2)))
                                  (error "Context expects 2 values"
                                         _g182823_)))
                            (let ((_hd177005_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182822_ 0)))
                                  (_vars177006_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182822_ 1))))
                              (let ((_g182824_
                                     (let ()
                                       (declare (not safe))
                                       (_recur176963_
                                        _tl177001_
                                        _vars177006_
                                        _depth176967_))))
                                (begin
                                  (let ((_g182825_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g182824_)
                                               (##vector-length _g182824_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g182825_ 2)))
                                        (error "Context expects 2 values"
                                               _g182825_)))
                                  (let ((_tl177008_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182824_ 0)))
                                        (_vars177009_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182824_ 1))))
                                    (let ()
                                      (values (let ((__tmp182826
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177005_
                                                             _tl177008_))))
                                                (declare (not safe))
                                                (cons _tag176999_ __tmp182826))
                                              _vars177009_))))))))))
                     (_e177013177020_ _rest176997_)
                     (_E177015177024_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177012_ 'cons _hd176995_ _rest176997_))))
                     (_E177014177040_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177013177020_))
                            (let ((_e177016177028_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177013177020_))))
                              (let ((_hd177017177031_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177016177028_)))
                                    (_tl177018177033_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177016177028_))))
                                (let* ((_rest-hd177036_ _hd177017177031_)
                                       (_rest-tl177038_ _tl177018177033_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177036_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177012_
                                             'splice
                                             _hd176995_
                                             _rest-tl177038_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177012_
                                             'cons
                                             _hd176995_
                                             _rest176997_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177015177024_))))))
                            (let () (declare (not safe)) (_E177015177024_))))))
                (let () (declare (not safe)) (_E177014177040_)))
              (let () (declare (not safe)) (_E176974176983_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E176974176983_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176973177044_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e176965_))
                                  (values '(null) _vars176966_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e176965_))
                                      (let ((_g182819_
                                             (let ((__tmp182821
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e176965_)))))
                                               (declare (not safe))
                                               (_recur176963_
                                                __tmp182821
                                                _vars176966_
                                                _depth176967_))))
                                        (begin
                                          (let ((_g182820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g182819_)
                                                       (##vector-length
                                                        _g182819_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g182820_ 2)))
                                                (error "Context expects 2 values"
                                                       _g182820_)))
                                          (let ((_e177048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g182819_ 0)))
                                                (_vars177049_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g182819_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177048_))
                                                    _vars177049_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e176965_))
                                          (let ((_g182816_
                                                 (let ((__tmp182818
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e176965_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur176963_
                                                    __tmp182818
                                                    _vars176966_
                                                    _depth176967_))))
                                            (begin
                                              (let ((_g182817_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g182816_)
                                                           (##vector-length
                                                            _g182816_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g182817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g182817_)))
                                              (let ((_e177051_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182816_
                                                        0)))
                                                    (_vars177052_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182816_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177051_))
                                                        _vars177052_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e176965_))
                                              (values (let ((__tmp182815
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e176965_))))
                (declare (not safe))
                (cons 'datum __tmp182815))
              _vars176966_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx176882_
                                                 _e176965_))))))))))))
          (let* ((_e176892176905_ _stx176882_)
                 (_E176894176909_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e176892176905_))))
                 (_E176893176956_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176892176905_))
                        (let ((_e176895176913_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176892176905_))))
                          (let ((_hd176896176916_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176895176913_)))
                                (_tl176897176918_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176895176913_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176897176918_))
                                (let ((_e176898176921_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176897176918_))))
                                  (let ((_hd176899176924_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176898176921_)))
                                        (_tl176900176926_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176898176921_))))
                                    (let ((_expr176929_ _hd176899176924_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl176900176926_))
                                          (let ((_e176901176931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl176900176926_))))
                                            (let ((_hd176902176934_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e176901176931_)))
                                                  (_tl176903176936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e176901176931_))))
                                              (let* ((_ids176939_
                                                      _hd176902176934_)
                                                     (_clauses176941_
                                                      _tl176903176936_))
                                                (if '#t
                                                    (if (let ((__tmp182848
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids176939_))))
                  (declare (not safe))
                  (not __tmp182848))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx176882_
                   _ids176939_))
                (if (let ((__tmp182847
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses176941_))))
                      (declare (not safe))
                      (not __tmp182847))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx176882_))
                    (let* ((_ids176943_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids176939_)))
                           (_clauses176945_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses176941_)))
                           (_clause-ids176947_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses176945_)))
                           (_E176949_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target176951_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first176953_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses176945_))
                                _E176949_
                                (car _clause-ids176947_))))
                      (let ((__tmp182832
                             (let ((__tmp182833
                                    (let ((__tmp182835
                                           (let ((__tmp182840
                                                  (let ((__tmp182841
                                                         (let ((__tmp182846
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E176949_ '())))
                       (__tmp182842
                        (let ((__tmp182843
                               (let ((__tmp182845
                                      (let ()
                                        (declare (not safe))
                                        (cons _target176951_ '())))
                                     (__tmp182844
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target176951_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp182845
                                  __tmp182844))))
                          (declare (not safe))
                          (cons __tmp182843 '()))))
                   (declare (not safe))
                   (cons __tmp182846 __tmp182842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182841 '())))
                                                 (__tmp182836
                                                  (let ((__tmp182839
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings176887_
                                                            _target176951_
                                                            _ids176943_
                                                            _clauses176945_
                                                            _clause-ids176947_
                                                            _E176949_)))
                                                        (__tmp182837
                                                         (let ((__tmp182838
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr176929_ '()))))
                   (declare (not safe))
                   (cons _first176953_ __tmp182838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body176888_
                                                     __tmp182839
                                                     __tmp182837))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp182840
                                              __tmp182836)))
                                          (__tmp182834
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx176882_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp182835
                                       __tmp182834))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp182833)))
                            (__tmp182831
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx176882_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp182832 __tmp182831)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176894176909_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176894176909_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176894176909_)))))
                        (let () (declare (not safe)) (_E176894176909_))))))
            (let () (declare (not safe)) (_E176893176956_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177592_)
        (let* ((_identifier=?177594_ 'free-identifier=?)
               (_unwrap-e177596_ 'syntax-e)
               (_wrap-e177598_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177592_
           _identifier=?177594_
           _unwrap-e177596_
           _wrap-e177598_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177600_ _identifier=?177601_)
        (let* ((_unwrap-e177603_ 'syntax-e) (_wrap-e177605_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177600_
           _identifier=?177601_
           _unwrap-e177603_
           _wrap-e177605_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177607_ _identifier=?177608_ _unwrap-e177609_)
        (let ((_wrap-e177611_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177607_
           _identifier=?177608_
           _unwrap-e177609_
           _wrap-e177611_))))
    (define gx#macro-expand-syntax-case
      (lambda _g182850_
        (let ((_g182849_ (let () (declare (not safe)) (##length _g182850_))))
          (cond ((let () (declare (not safe)) (##fx= _g182849_ 1))
                 (apply (lambda (_stx177592_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177592_)))
                        _g182850_))
                ((let () (declare (not safe)) (##fx= _g182849_ 2))
                 (apply (lambda (_stx177600_ _identifier=?177601_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177600_
                             _identifier=?177601_)))
                        _g182850_))
                ((let () (declare (not safe)) (##fx= _g182849_ 3))
                 (apply (lambda (_stx177607_
                                 _identifier=?177608_
                                 _unwrap-e177609_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177607_
                             _identifier=?177608_
                             _unwrap-e177609_)))
                        _g182850_))
                ((let () (declare (not safe)) (##fx= _g182849_ 4))
                 (apply (lambda (_stx177613_
                                 _identifier=?177614_
                                 _unwrap-e177615_
                                 _wrap-e177616_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177613_
                             _identifier=?177614_
                             _unwrap-e177615_
                             _wrap-e177616_)))
                        _g182850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g182850_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx176879_)
        (if (let () (declare (not safe)) (gx#identifier? _stx176879_))
            (let ((__tmp182851
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx176879_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp182851 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd176837_ . _rest176838_)
        (let ((_len176840_ (length _hd176837_)))
          (let _lp176842_ ((_rest176844_ _rest176838_))
            (let* ((_rest176845176853_ _rest176844_)
                   (_else176847176861_ (lambda () '#!void))
                   (_K176849176867_
                    (lambda (_rest176864_ _hd176865_)
                      (if (fx= _len176840_ (length _hd176865_))
                          (let ()
                            (declare (not safe))
                            (_lp176842_ _rest176864_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd176865_))))))
              (if (let () (declare (not safe)) (##pair? _rest176845176853_))
                  (let ((_hd176850176870_
                         (let ()
                           (declare (not safe))
                           (##car _rest176845176853_)))
                        (_tl176851176872_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest176845176853_))))
                    (let* ((_hd176875_ _hd176850176870_)
                           (_rest176877_ _tl176851176872_))
                      (declare (not safe))
                      (_K176849176867_ _rest176877_ _hd176875_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx176795_ _n176796_)
        (let _lp176798_ ((_rest176800_ _stx176795_) (_r176801_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest176800_))
              (let* ((_g176802176809_
                      (let () (declare (not safe)) (gx#syntax-e _rest176800_)))
                     (_E176804176813_
                      (lambda ()
                        (error '"No clause matching" _g176802176809_)))
                     (_K176805176819_
                      (lambda (_rest176816_ _hd176817_)
                        (let ((__tmp182856
                               (let ()
                                 (declare (not safe))
                                 (cons _hd176817_ _r176801_))))
                          (declare (not safe))
                          (_lp176798_ _rest176816_ __tmp182856)))))
                (if (let () (declare (not safe)) (##pair? _g176802176809_))
                    (let ((_hd176806176822_
                           (let ()
                             (declare (not safe))
                             (##car _g176802176809_)))
                          (_tl176807176824_
                           (let ()
                             (declare (not safe))
                             (##cdr _g176802176809_))))
                      (let* ((_hd176827_ _hd176806176822_)
                             (_rest176829_ _tl176807176824_))
                        (declare (not safe))
                        (_K176805176819_ _rest176829_ _hd176827_)))
                    (let () (declare (not safe)) (_E176804176813_))))
              (let _lp176831_ ((_n176833_ _n176796_)
                               (_l176834_ _r176801_)
                               (_r176835_ _rest176800_))
                (if (let () (declare (not safe)) (null? _l176834_))
                    (values _l176834_ _r176835_)
                    (if (fxpositive? _n176833_)
                        (let ((__tmp182855
                               (let ()
                                 (declare (not safe))
                                 (fx- _n176833_ '1)))
                              (__tmp182854 (cdr _l176834_))
                              (__tmp182852
                               (let ((__tmp182853 (car _l176834_)))
                                 (declare (not safe))
                                 (cons __tmp182853 _r176835_))))
                          (declare (not safe))
                          (_lp176831_ __tmp182855 __tmp182854 __tmp182852))
                        (values (reverse _l176834_) _r176835_))))))))))
