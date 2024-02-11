(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707660403)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182485 (list gx#expander::t))
            (__tmp182483
             (let ((__tmp182484
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182484 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp182485
         '(id depth)
         __tmp182483
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178012_
        (apply make-instance gx#syntax-pattern::t _$args178012_)))
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
      (lambda (_self178009_ _stx178010_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178010_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177491_)
        (letrec ((_generate177493_
                  (lambda (_e177720_)
                    (letrec ((_BUG177722_
                              (lambda (_q177884_)
                                (error '"BUG: syntax; generate"
                                       _stx177491_
                                       _e177720_
                                       _q177884_)))
                             (_local-pattern-e177723_
                              (lambda (_pat177882_)
                                (let ((__tmp182486
                                       (##structure-ref
                                        _pat177882_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182486))))
                             (_getvar177724_
                              (lambda (_q177879_ _vars177880_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q177879_
                                           _vars177880_
                                           _BUG177722_))))
                             (_getarg177725_
                              (lambda (_arg177845_ _vars177846_)
                                (let* ((_arg177847177854_ _arg177845_)
                                       (_E177849177858_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg177847177854_)))
                                       (_K177850177867_
                                        (lambda (_e177861_ _tag177862_)
                                          (let ((_$e177864_ _tag177862_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e177864_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar177724_
                                                   _e177861_
                                                   _vars177846_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e177864_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e177723_
                                                       _e177861_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG177722_
                                                       _arg177845_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg177847177854_))
                                      (let ((_hd177851177870_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg177847177854_)))
                                            (_tl177852177872_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg177847177854_))))
                                        (let* ((_tag177875_ _hd177851177870_)
                                               (_e177877_ _tl177852177872_))
                                          (declare (not safe))
                                          (_K177850177867_
                                           _e177877_
                                           _tag177875_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177849177858_)))))))
                      (let _recur177727_ ((_e177729_ _e177720_)
                                          (_vars177730_ '()))
                        (let* ((_e177731177738_ _e177729_)
                               (_E177733177742_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e177731177738_)))
                               (_K177734177833_
                                (lambda (_body177745_ _tag177746_)
                                  (let ((_$e177748_ _tag177746_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177748_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body177745_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e177748_))
                                            (let ((_id177751_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body177745_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id177751_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks177753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id177751_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks177753_))
                                                        (let ((__tmp182514
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body177745_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182514))
                (let ((__tmp182513
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body177745_)))
                      (__tmp182512
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body177745_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182513
                   __tmp182512
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id177751_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body177745_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG177722_
                                                         _e177729_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e177748_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e177723_
                                                   _body177745_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e177748_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar177724_
                                                       _body177745_
                                                       _vars177730_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e177748_))
                                                        (let ((__tmp182510
                                                               (let ((__tmp182511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body177745_)))
                         (declare (not safe))
                         (_recur177727_ __tmp182511 _vars177730_)))
                      (__tmp182508
                       (let ((__tmp182509 (cdr _body177745_)))
                         (declare (not safe))
                         (_recur177727_ __tmp182509 _vars177730_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182510 __tmp182508))
                (if (let () (declare (not safe)) (eq? 'vector _$e177748_))
                    (let ((__tmp182507
                           (let ()
                             (declare (not safe))
                             (_recur177727_ _body177745_ _vars177730_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182507))
                    (if (let () (declare (not safe)) (eq? 'box _$e177748_))
                        (let ((__tmp182506
                               (let ()
                                 (declare (not safe))
                                 (_recur177727_ _body177745_ _vars177730_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182506))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e177748_))
                            (let* ((_body177754177765_ _body177745_)
                                   (_E177756177769_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body177754177765_)))
                                   (_K177757177807_
                                    (lambda (_args177772_
                                             _iv177773_
                                             _hd177774_
                                             _depth177775_)
                                      (let* ((_targets177781_
                                              (map (lambda (_g177776177778_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg177725_
                                                        _g177776177778_
                                                        _vars177730_)))
                                                   _args177772_))
                                             (_fold-in177783_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args177772_)))
                                             (_fold-out177785_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args177787_
                                              (let ((__tmp182487
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out177785_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182487
                                                        _fold-in177783_)))
                                             (_lambda-body177804_
                                              (if (fx> _depth177775_ '1)
                                                  (let ((_r-args177795_
                                                         (map (lambda (_arg177789_)
                                                                (let ((__tmp182492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg177789_)))
                          (declare (not safe))
                          (cons 'ref __tmp182492)))
                      _args177772_))
                (_r-vars177796_
                 (let ((__tmp182493
                        (lambda (_arg177791_ _var177792_ _r177793_)
                          (let ((__tmp182494
                                 (let ((__tmp182495 (cdr _arg177791_)))
                                   (declare (not safe))
                                   (cons __tmp182495 _var177792_))))
                            (declare (not safe))
                            (cons __tmp182494 _r177793_)))))
                   (declare (not safe))
                   (foldr2 __tmp182493
                           _vars177730_
                           _args177772_
                           _fold-in177783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182496
                                                           (let ((__tmp182497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182501
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth177775_ '1)))
                                (__tmp182498
                                 (let ((__tmp182499
                                        (let ((__tmp182500
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out177785_))))
                                          (declare (not safe))
                                          (cons __tmp182500 _r-args177795_))))
                                   (declare (not safe))
                                   (cons _hd177774_ __tmp182499))))
                            (declare (not safe))
                            (cons __tmp182501 __tmp182498))))
                     (declare (not safe))
                     (cons 'splice __tmp182497))))
              (declare (not safe))
              (_recur177727_ __tmp182496 _r-vars177796_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars177802_
                                                          (let ((__tmp182488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg177798_ _var177799_ _r177800_)
                           (let ((__tmp182489
                                  (let ((__tmp182490 (cdr _arg177798_)))
                                    (declare (not safe))
                                    (cons __tmp182490 _var177799_))))
                             (declare (not safe))
                             (cons __tmp182489 _r177800_)))))
                    (declare (not safe))
                    (foldr2 __tmp182488
                            _vars177730_
                            _args177772_
                            _fold-in177783_)))
                 (__tmp182491
                  (let ()
                    (declare (not safe))
                    (_recur177727_ _hd177774_ _hd-vars177802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182491
                                                     _fold-out177785_)))))
                                        (let ((__tmp182505
                                               (if (fx> (length _targets177781_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets177781_))
                                                   '#!void))
                                              (__tmp182502
                                               (let ((__tmp182504
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args177787_
                                                         _lambda-body177804_)))
                                                     (__tmp182503
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur177727_
                                                         _iv177773_
                                                         _vars177730_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182504
                                                  __tmp182503
                                                  _targets177781_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182505
                                           __tmp182502))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body177754177765_))
                                  (let ((_hd177758177810_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body177754177765_)))
                                        (_tl177759177812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body177754177765_))))
                                    (let ((_depth177815_ _hd177758177810_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl177759177812_))
                                          (let ((_hd177760177817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl177759177812_)))
                                                (_tl177761177819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl177759177812_))))
                                            (let ((_hd177822_
                                                   _hd177760177817_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl177761177819_))
                                                  (let ((_hd177762177824_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl177761177819_)))
                                                        (_tl177763177826_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl177761177819_))))
                                                    (let* ((_iv177829_
                                                            _hd177762177824_)
                                                           (_args177831_
                                                            _tl177763177826_))
                                                      (declare (not safe))
                                                      (_K177757177807_
                                                       _args177831_
                                                       _iv177829_
                                                       _hd177822_
                                                       _depth177815_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177756177769_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177756177769_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E177756177769_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e177748_))
                                _body177745_
                                (let ()
                                  (declare (not safe))
                                  (_BUG177722_ _e177729_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e177731177738_))
                              (let ((_hd177735177836_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177731177738_)))
                                    (_tl177736177838_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177731177738_))))
                                (let* ((_tag177841_ _hd177735177836_)
                                       (_body177843_ _tl177736177838_))
                                  (declare (not safe))
                                  (_K177734177833_ _body177843_ _tag177841_)))
                              (let ()
                                (declare (not safe))
                                (_E177733177742_))))))))
                 (_parse177494_
                  (lambda (_e177535_)
                    (letrec ((_make-cons177537_
                              (lambda (_hd177712_ _tl177713_)
                                (let ((_g182515_ _hd177712_)
                                      (_g182517_ _tl177713_))
                                  (begin
                                    (let ((_g182516_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182515_)
                                                 (##vector-length _g182515_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182516_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182516_)))
                                    (let ((_g182518_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182517_)
                                                 (##vector-length _g182517_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182518_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182518_)))
                                    (let ((_hd-e177715_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182515_ 0)))
                                          (_hd-vars177716_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182515_ 1))))
                                      (let ((_tl-e177717_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182517_ 0)))
                                            (_tl-vars177718_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182517_ 1))))
                                        (values (let ((__tmp182519
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e177715_
                                                               _tl-e177717_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182519))
                                                (append _hd-vars177716_
                                                        _tl-vars177718_))))))))
                             (_make-splice177538_
                              (lambda (_where177651_
                                       _depth177652_
                                       _hd177653_
                                       _tl177654_)
                                (let ((_g182520_ _hd177653_)
                                      (_g182522_ _tl177654_))
                                  (begin
                                    (let ((_g182521_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182520_)
                                                 (##vector-length _g182520_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182521_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182521_)))
                                    (let ((_g182523_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182522_)
                                                 (##vector-length _g182522_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182523_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182523_)))
                                    (let ((_hd-e177656_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182520_ 0)))
                                          (_hd-vars177657_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182520_ 1))))
                                      (let ((_tl-e177658_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182522_ 0)))
                                            (_tl-vars177659_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182522_ 1))))
                                        (let _lp177661_ ((_rest177663_
                                                          _hd-vars177657_)
                                                         (_targets177664_ '())
                                                         (_vars177665_
                                                          _tl-vars177659_))
                                          (let* ((_rest177666177676_
                                                  _rest177663_)
                                                 (_else177668177684_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets177664_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177491_
                                                           _where177651_))
                                                        (values (let ((__tmp182524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182525
                                      (let ((__tmp182526
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e177658_
                                                     _targets177664_))))
                                        (declare (not safe))
                                        (cons _hd-e177656_ __tmp182526))))
                                 (declare (not safe))
                                 (cons _depth177652_ __tmp182525))))
                          (declare (not safe))
                          (cons 'splice __tmp182524))
                        _vars177665_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K177670177693_
                                                  (lambda (_rest177687_
                                                           _hd-pat177688_
                                                           _hd-depth*177689_)
                                                    (let ((_hd-depth177691_
                                                           (fx- _hd-depth*177689_
                                                                _depth177652_)))
                                                      (if (fxpositive?
                                                           _hd-depth177691_)
                                                          (let ((__tmp182531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182532
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat177688_))))
                           (declare (not safe))
                           (cons __tmp182532 _targets177664_)))
                        (__tmp182529
                         (let ((__tmp182530
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth177691_ _hd-pat177688_))))
                           (declare (not safe))
                           (cons __tmp182530 _vars177665_))))
                    (declare (not safe))
                    (_lp177661_ _rest177687_ __tmp182531 __tmp182529))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth177691_))
                      (let ((__tmp182527
                             (let ((__tmp182528
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat177688_))))
                               (declare (not safe))
                               (cons __tmp182528 _targets177664_))))
                        (declare (not safe))
                        (_lp177661_ _rest177687_ __tmp182527 _vars177665_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177491_
                         _where177651_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest177666177676_))
                                                (let ((_hd177671177696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest177666177676_)))
                                                      (_tl177672177698_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest177666177676_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd177671177696_))
                                                      (let ((_hd177673177701_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd177671177696_)))
                    (_tl177674177703_
                     (let () (declare (not safe)) (##cdr _hd177671177696_))))
                (let* ((_hd-depth*177706_ _hd177673177701_)
                       (_hd-pat177708_ _tl177674177703_)
                       (_rest177710_ _tl177672177698_))
                  (declare (not safe))
                  (_K177670177693_
                   _rest177710_
                   _hd-pat177708_
                   _hd-depth*177706_)))
              (let () (declare (not safe)) (_else177668177684_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else177668177684_)))))))))))
                             (_recur177539_
                              (lambda (_e177544_ _is-e?177545_)
                                (if (_is-e?177545_ _e177544_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177491_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e177544_))
                                        (let* ((_pat177547_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e177544_)))
                                               (_depth177549_
                                                (##structure-ref
                                                 _pat177547_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth177549_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat177547_))
                                                      (let ((__tmp182548
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth177549_ _pat177547_))))
                (declare (not safe))
                (cons __tmp182548 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat177547_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e177544_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e177544_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e177544_))
                                                (let* ((_e177551177558_
                                                        _e177544_)
                                                       (_E177553177562_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e177551177558_))))
                                                       (_E177552177641_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e177551177558_))
                      (let ((_e177554177566_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e177551177558_))))
                        (let ((_hd177555177569_
                               (let ()
                                 (declare (not safe))
                                 (##car _e177554177566_)))
                              (_tl177556177571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e177554177566_))))
                          (let* ((_hd177574_ _hd177555177569_)
                                 (_rest177576_ _tl177556177571_))
                            (if '#t
                                (if (_is-e?177545_ _hd177574_)
                                    (let* ((_e177577177584_ _rest177576_)
                                           (_E177579177588_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177491_
                                                 _e177544_))))
                                           (_E177578177602_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e177577177584_))
                                                  (let ((_e177580177592_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e177577177584_))))
                                                    (let ((_hd177581177595_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e177580177592_)))
                                                          (_tl177582177597_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e177580177592_))))
                                                      (let ((_rest177600_
                                                             _hd177581177595_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl177582177597_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur177539_ _rest177600_ false))
                        (let () (declare (not safe)) (_E177579177588_)))
                    (let () (declare (not safe)) (_E177579177588_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177579177588_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E177578177602_)))
                                    (let _lp177606_ ((_rest177608_
                                                      _rest177576_)
                                                     (_depth177609_ '0))
                                      (let* ((_e177610177617_ _rest177608_)
                                             (_E177612177621_
                                              (lambda ()
                                                (if (fxpositive? _depth177609_)
                                                    (let ((__tmp182542
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177539_
                                                              _hd177574_
                                                              _is-e?177545_)))
                                                          (__tmp182541
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177539_
                                                              _rest177608_
                                                              _is-e?177545_))))
                                                      (declare (not safe))
                                                      (_make-splice177538_
                                                       _e177544_
                                                       _depth177609_
                                                       __tmp182542
                                                       __tmp182541))
                                                    (let ((__tmp182540
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177539_
                                                              _hd177574_
                                                              _is-e?177545_)))
                                                          (__tmp182539
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177539_
                                                              _rest177608_
                                                              _is-e?177545_))))
                                                      (declare (not safe))
                                                      (_make-cons177537_
                                                       __tmp182540
                                                       __tmp182539)))))
                                             (_E177611177637_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e177610177617_))
                                                    (let ((_e177613177625_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e177610177617_))))
                                                      (let ((_hd177614177628_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e177613177625_)))
                    (_tl177615177630_
                     (let () (declare (not safe)) (##cdr _e177613177625_))))
                (let* ((_rest-hd177633_ _hd177614177628_)
                       (_rest-tl177635_ _tl177615177630_))
                  (if '#t
                      (if (_is-e?177545_ _rest-hd177633_)
                          (let ((__tmp182547
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth177609_ '1))))
                            (declare (not safe))
                            (_lp177606_ _rest-tl177635_ __tmp182547))
                          (if (fxpositive? _depth177609_)
                              (let ((__tmp182546
                                     (let ()
                                       (declare (not safe))
                                       (_recur177539_
                                        _hd177574_
                                        _is-e?177545_)))
                                    (__tmp182545
                                     (let ()
                                       (declare (not safe))
                                       (_recur177539_
                                        _rest177608_
                                        _is-e?177545_))))
                                (declare (not safe))
                                (_make-splice177538_
                                 _e177544_
                                 _depth177609_
                                 __tmp182546
                                 __tmp182545))
                              (let ((__tmp182544
                                     (let ()
                                       (declare (not safe))
                                       (_recur177539_
                                        _hd177574_
                                        _is-e?177545_)))
                                    (__tmp182543
                                     (let ()
                                       (declare (not safe))
                                       (_recur177539_
                                        _rest177608_
                                        _is-e?177545_))))
                                (declare (not safe))
                                (_make-cons177537_ __tmp182544 __tmp182543))))
                      (let () (declare (not safe)) (_E177612177621_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177612177621_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E177611177637_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E177553177562_))))))
                      (let () (declare (not safe)) (_E177553177562_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177552177641_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e177544_))
                                                    (let ((_g182536_
                                                           (let ((__tmp182538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e177544_)))))
                     (declare (not safe))
                     (_recur177539_ __tmp182538 _is-e?177545_))))
              (begin
                (let ((_g182537_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g182536_)
                             (##vector-length _g182536_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g182537_ 2)))
                      (error "Context expects 2 values" _g182537_)))
                (let ((_e177645_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182536_ 0)))
                      (_vars177646_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182536_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e177645_))
                          _vars177646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e177544_))
                                                        (let ((_g182533_
                                                               (let ((__tmp182535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e177544_)))))
                         (declare (not safe))
                         (_recur177539_ __tmp182535 _is-e?177545_))))
                  (begin
                    (let ((_g182534_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g182533_)
                                 (##vector-length _g182533_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g182534_ 2)))
                          (error "Context expects 2 values" _g182534_)))
                    (let ((_e177648_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182533_ 0)))
                          (_vars177649_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182533_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e177648_))
                              _vars177649_))))
                (values (let () (declare (not safe)) (cons 'datum _e177544_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g182549_
                             (let ()
                               (declare (not safe))
                               (_recur177539_ _e177535_ gx#ellipsis?))))
                        (begin
                          (let ((_g182550_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g182549_)
                                       (##vector-length _g182549_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g182550_ 2)))
                                (error "Context expects 2 values" _g182550_)))
                          (let ((_tree177541_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182549_ 0)))
                                (_vars177542_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182549_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars177542_))
                                _tree177541_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177491_
                                   _vars177542_))))))))))
          (let* ((_e177495177505_ _stx177491_)
                 (_E177497177509_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177491_))))
                 (_E177496177531_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177495177505_))
                        (let ((_e177498177513_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177495177505_))))
                          (let ((_hd177499177516_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177498177513_)))
                                (_tl177500177518_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177498177513_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177500177518_))
                                (let ((_e177501177521_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177500177518_))))
                                  (let ((_hd177502177524_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177501177521_)))
                                        (_tl177503177526_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177501177521_))))
                                    (let ((_form177529_ _hd177502177524_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177503177526_))
                                          (if '#t
                                              (let ((__tmp182552
                                                     (let ((__tmp182553
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177494_
                                                               _form177529_))))
                                                       (declare (not safe))
                                                       (_generate177493_
                                                        __tmp182553)))
                                                    (__tmp182551
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177491_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp182552
                                                 __tmp182551))
                                              (let ()
                                                (declare (not safe))
                                                (_E177497177509_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177497177509_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177497177509_)))))
                        (let () (declare (not safe)) (_E177497177509_))))))
            (let () (declare (not safe)) (_E177496177531_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx176755_
               _identifier=?176756_
               _unwrap-e176757_
               _wrap-e176758_)
        (letrec ((_generate-bindings176760_
                  (lambda (_target177355_
                           _ids177356_
                           _clauses177357_
                           _clause-ids177358_
                           _E177359_)
                    (letrec ((_generate1177361_
                              (lambda (_clause177458_
                                       _clause-id177459_
                                       _E177460_)
                                (let ((__tmp182558
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177459_ '())))
                                      (__tmp182554
                                       (let ((__tmp182555
                                              (let ((__tmp182557
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177355_
                                                             '())))
                                                    (__tmp182556
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause176762_
                                                        _target177355_
                                                        _ids177356_
                                                        _clause177458_
                                                        _E177460_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp182557
                                                 __tmp182556))))
                                         (declare (not safe))
                                         (cons __tmp182555 '()))))
                                  (declare (not safe))
                                  (cons __tmp182558 __tmp182554)))))
                      (let _lp177363_ ((_rest177365_ _clauses177357_)
                                       (_rest-ids177366_ _clause-ids177358_)
                                       (_bindings177367_ '()))
                        (let* ((_rest177368177376_ _rest177365_)
                               (_else177370177384_
                                (lambda () _bindings177367_))
                               (_K177372177446_
                                (lambda (_rest177387_ _clause177388_)
                                  (let* ((_rest-ids177389177396_
                                          _rest-ids177366_)
                                         (_E177391177400_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177389177396_)))
                                         (_K177392177434_
                                          (lambda (_rest-ids177403_
                                                   _clause-id177404_)
                                            (let* ((_rest-ids177405177413_
                                                    _rest-ids177403_)
                                                   (_else177407177421_
                                                    (lambda ()
                                                      (let ((__tmp182559
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177361_
                        _clause177388_
                        _clause-id177404_
                        _E177359_))))
                (declare (not safe))
                (cons __tmp182559 _bindings177367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177409177426_
                                                    (lambda (_next-clause-id177424_)
                                                      (let ((__tmp182560
                                                             (let ((__tmp182561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177361_
                               _clause177388_
                               _clause-id177404_
                               _next-clause-id177424_))))
                       (declare (not safe))
                       (cons __tmp182561 _bindings177367_))))
                (declare (not safe))
                (_lp177363_ _rest177387_ _rest-ids177403_ __tmp182560)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177405177413_))
                                                  (let* ((_hd177410177429_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177405177413_)))
                                                         (_next-clause-id177432_
                                                          _hd177410177429_))
                                                    (declare (not safe))
                                                    (_K177409177426_
                                                     _next-clause-id177432_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177407177421_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177389177396_))
                                        (let ((_hd177393177437_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177389177396_)))
                                              (_tl177394177439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177389177396_))))
                                          (let* ((_clause-id177442_
                                                  _hd177393177437_)
                                                 (_rest-ids177444_
                                                  _tl177394177439_))
                                            (declare (not safe))
                                            (_K177392177434_
                                             _rest-ids177444_
                                             _clause-id177442_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177391177400_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177368177376_))
                              (let ((_hd177373177449_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177368177376_)))
                                    (_tl177374177451_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177368177376_))))
                                (let* ((_clause177454_ _hd177373177449_)
                                       (_rest177456_ _tl177374177451_))
                                  (declare (not safe))
                                  (_K177372177446_
                                   _rest177456_
                                   _clause177454_)))
                              (let ()
                                (declare (not safe))
                                (_else177370177384_))))))))
                 (_generate-body176761_
                  (lambda (_bindings177315_ _body177316_)
                    (let _recur177318_ ((_rest177320_ _bindings177315_))
                      (let* ((_rest177321177329_ _rest177320_)
                             (_else177323177337_ (lambda () _body177316_))
                             (_K177325177343_
                              (lambda (_rest177340_ _hd177341_)
                                (let ((__tmp182563
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177341_ '())))
                                      (__tmp182562
                                       (let ()
                                         (declare (not safe))
                                         (_recur177318_ _rest177340_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp182563
                                   __tmp182562)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177321177329_))
                            (let ((_hd177326177346_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177321177329_)))
                                  (_tl177327177348_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177321177329_))))
                              (let* ((_hd177351_ _hd177326177346_)
                                     (_rest177353_ _tl177327177348_))
                                (declare (not safe))
                                (_K177325177343_ _rest177353_ _hd177351_)))
                            (let ()
                              (declare (not safe))
                              (_else177323177337_)))))))
                 (_generate-clause176762_
                  (lambda (_target177178_ _ids177179_ _clause177180_ _E177181_)
                    (letrec ((_generate1177183_
                              (lambda (_hd177270_ _fender177271_ _body177272_)
                                (let ((_g182564_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause176764_
                                          _hd177270_
                                          _ids177179_))))
                                  (begin
                                    (let ((_g182565_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182564_)
                                                 (##vector-length _g182564_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182565_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182565_)))
                                    (let ((_e177274_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182564_ 0)))
                                          (_mvars177275_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182564_ 1))))
                                      (let* ((_pvars177277_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177275_))))
                                             (_E177279_
                                              (let ((__tmp182566
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177178_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177181_ __tmp182566)))
                                             (_K177312_
                                              (let ((__tmp182567
                                                     (let ((__tmp182569
                                                            (map (lambda (_mvar177281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177282_)
                           (let* ((_mvar177283177290_ _mvar177281_)
                                  (_E177285177294_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177283177290_)))
                                  (_K177286177300_
                                   (lambda (_depth177297_ _id177298_)
                                     (let ((__tmp182570
                                            (let ((__tmp182571
                                                   (let ((__tmp182573
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177298_)))
                                                         (__tmp182572
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177282_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp182573
                                                      __tmp182572
                                                      _depth177297_))))
                                              (declare (not safe))
                                              (cons __tmp182571 '()))))
                                       (declare (not safe))
                                       (cons _id177298_ __tmp182570)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177283177290_))
                                 (let ((_hd177287177303_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177283177290_)))
                                       (_tl177288177305_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177283177290_))))
                                   (let* ((_id177308_ _hd177287177303_)
                                          (_depth177310_ _tl177288177305_))
                                     (declare (not safe))
                                     (_K177286177300_
                                      _depth177310_
                                      _id177308_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177285177294_)))))
                         _mvars177275_
                         _pvars177277_))
                   (__tmp182568
                    (if (let () (declare (not safe)) (eq? _fender177271_ '#t))
                        _body177272_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177271_
                           _body177272_
                           _E177279_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp182569 __tmp182568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177277_
                                                 __tmp182567))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match176763_
                                           _hd177270_
                                           _target177178_
                                           _e177274_
                                           _mvars177275_
                                           _K177312_
                                           _E177279_)))))))))
                      (let* ((_e177184177204_ _clause177180_)
                             (_E177193177208_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177184177204_))))
                             (_E177186177242_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177184177204_))
                                    (let ((_e177194177212_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177184177204_))))
                                      (let ((_hd177195177215_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177194177212_)))
                                            (_tl177196177217_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177194177212_))))
                                        (let ((_hd177220_ _hd177195177215_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177196177217_))
                                              (let ((_e177197177222_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177196177217_))))
                                                (let ((_hd177198177225_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177197177222_)))
                                                      (_tl177199177227_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177197177222_))))
                                                  (let ((_fender177230_
                                                         _hd177198177225_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177199177227_))
                                                        (let ((_e177200177232_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177199177227_))))
                  (let ((_hd177201177235_
                         (let () (declare (not safe)) (##car _e177200177232_)))
                        (_tl177202177237_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177200177232_))))
                    (let ((_body177240_ _hd177201177235_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177202177237_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177183_
                                 _hd177220_
                                 _fender177230_
                                 _body177240_))
                              (let () (declare (not safe)) (_E177193177208_)))
                          (let () (declare (not safe)) (_E177193177208_))))))
                (let () (declare (not safe)) (_E177193177208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177193177208_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177193177208_)))))
                             (_E177185177266_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177184177204_))
                                    (let ((_e177187177246_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177184177204_))))
                                      (let ((_hd177188177249_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177187177246_)))
                                            (_tl177189177251_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177187177246_))))
                                        (let ((_hd177254_ _hd177188177249_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177189177251_))
                                              (let ((_e177190177256_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177189177251_))))
                                                (let ((_hd177191177259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177190177256_)))
                                                      (_tl177192177261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177190177256_))))
                                                  (let ((_body177264_
                                                         _hd177191177259_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177192177261_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177183_
                                                               _hd177254_
                                                               '#t
                                                               _body177264_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177186177242_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177186177242_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177186177242_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177186177242_))))))
                        (let () (declare (not safe)) (_E177185177266_))))))
                 (_generate-match176763_
                  (lambda (_where176927_
                           _target176928_
                           _hd176929_
                           _mvars176930_
                           _K176931_
                           _E176932_)
                    (letrec ((_BUG176934_
                              (lambda (_q177176_)
                                (error '"BUG: syntax-case; generate"
                                       _stx176755_
                                       _hd176929_
                                       _q177176_)))
                             (_recur176935_
                              (lambda (_e177026_
                                       _vars177027_
                                       _target177028_
                                       _E177029_
                                       _k177030_)
                                (let* ((_e177031177038_ _e177026_)
                                       (_E177033177042_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177031177038_)))
                                       (_K177034177164_
                                        (lambda (_body177045_ _tag177046_)
                                          (let ((_$e177048_ _tag177046_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177048_))
                                                (_k177030_ _vars177027_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177048_))
                                                    (let ((__tmp182680
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177028_)))
                                                          (__tmp182676
                                                           (let ((__tmp182678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182679
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e176758_
                                    _body177045_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?176756_
                             __tmp182679
                             _target177028_)))
                         (__tmp182677 (_k177030_ _vars177027_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp182678 __tmp182677 _E177029_))))
              (declare (not safe))
              (gx#core-list 'if __tmp182680 __tmp182676 _E177029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177048_))
                                                        (_k177030_
                                                         (let ((__tmp182675
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177045_ _target177028_))))
                   (declare (not safe))
                   (cons __tmp182675 _vars177027_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177048_))
                    (let ((_$e177051_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177052_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177053_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp182674
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177028_)))
                            (__tmp182655
                             (let ((__tmp182669
                                    (let ((__tmp182670
                                           (let ((__tmp182673
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177051_ '())))
                                                 (__tmp182671
                                                  (let ((__tmp182672
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e176757_
                                                            _target177028_))))
                                                    (declare (not safe))
                                                    (cons __tmp182672 '()))))
                                             (declare (not safe))
                                             (cons __tmp182673 __tmp182671))))
                                      (declare (not safe))
                                      (cons __tmp182670 '())))
                                   (__tmp182656
                                    (let ((__tmp182659
                                           (let ((__tmp182665
                                                  (let ((__tmp182668
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp182666
                 (let ((__tmp182667
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177051_))))
                   (declare (not safe))
                   (cons __tmp182667 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182668
                                                          __tmp182666)))
                                                 (__tmp182660
                                                  (let ((__tmp182661
                                                         (let ((__tmp182664
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177053_ '())))
                       (__tmp182662
                        (let ((__tmp182663
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177051_))))
                          (declare (not safe))
                          (cons __tmp182663 '()))))
                   (declare (not safe))
                   (cons __tmp182664 __tmp182662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182661 '()))))
                                             (declare (not safe))
                                             (cons __tmp182665 __tmp182660)))
                                          (__tmp182657
                                           (let* ((_body177054177061_
                                                   _body177045_)
                                                  (_E177056177065_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177054177061_)))
                                                  (_K177057177073_
                                                   (lambda (_tl177068_
                                                            _hd177069_)
                                                     (let ((__tmp182658
                                                            (lambda (_vars177071_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur176935_
                         _tl177068_
                         _vars177071_
                         _$tl177053_
                         _E177029_
                         _k177030_)))))
               (declare (not safe))
               (_recur176935_
                _hd177069_
                _vars177027_
                _$hd177052_
                _E177029_
                __tmp182658)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177054177061_))
                                                 (let ((_hd177058177076_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177054177061_)))
                                                       (_tl177059177078_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177054177061_))))
                                                   (let* ((_hd177081_
                                                           _hd177058177076_)
                                                          (_tl177083_
                                                           _tl177059177078_))
                                                     (declare (not safe))
                                                     (_K177057177073_
                                                      _tl177083_
                                                      _hd177081_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177056177065_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp182659
                                       __tmp182657))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp182669
                                __tmp182656))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp182674 __tmp182655 _E177029_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177048_))
                        (let* ((_body177084177091_ _body177045_)
                               (_E177086177095_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177084177091_)))
                               (_K177087177146_
                                (lambda (_tl177098_ _hd177099_)
                                  (let* ((_rlen177101_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen176936_ _tl177098_)))
                                         (_$target177103_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177105_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177107_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177109_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177111_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177113_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177115_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177117_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars176937_ _hd177099_)))
                                         (_lvars177119_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177117_)))
                                         (_tlvars177121_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177117_)))
                                         (_linit177125_
                                          (map (lambda (_var177123_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177119_)))
                                    (letrec ((_make-loop177128_
                                              (lambda (_vars177132_)
                                                (let ((__tmp182606
                                                       (let ((__tmp182607
                                                              (let ((__tmp182643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177109_ '())))
                            (__tmp182608
                             (let ((__tmp182609
                                    (let ((__tmp182642
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177105_ _lvars177119_)))
                                          (__tmp182610
                                           (let ((__tmp182641
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177105_)))
                                                 (__tmp182619
                                                  (let ((__tmp182636
                                                         (let ((__tmp182637
                                                                (let ((__tmp182640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177111_ '())))
                              (__tmp182638
                               (let ((__tmp182639
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e176757_
                                         _$hd177105_))))
                                 (declare (not safe))
                                 (cons __tmp182639 '()))))
                          (declare (not safe))
                          (cons __tmp182640 __tmp182638))))
                   (declare (not safe))
                   (cons __tmp182637 '())))
                (__tmp182620
                 (let ((__tmp182626
                        (let ((__tmp182632
                               (let ((__tmp182635
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177113_ '())))
                                     (__tmp182633
                                      (let ((__tmp182634
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177111_))))
                                        (declare (not safe))
                                        (cons __tmp182634 '()))))
                                 (declare (not safe))
                                 (cons __tmp182635 __tmp182633)))
                              (__tmp182627
                               (let ((__tmp182628
                                      (let ((__tmp182631
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177115_ '())))
                                            (__tmp182629
                                             (let ((__tmp182630
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177111_))))
                                               (declare (not safe))
                                               (cons __tmp182630 '()))))
                                        (declare (not safe))
                                        (cons __tmp182631 __tmp182629))))
                                 (declare (not safe))
                                 (cons __tmp182628 '()))))
                          (declare (not safe))
                          (cons __tmp182632 __tmp182627)))
                       (__tmp182621
                        (let ((__tmp182622
                               (lambda (_hdvars177134_)
                                 (let ((__tmp182623
                                        (let ((__tmp182624
                                               (map (lambda (_svar177136_
                                                             _lvar177137_)
                                                      (let ((__tmp182625
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177136_ _hdvars177134_ _BUG176934_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp182625 _lvar177137_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177117_
                                                    _lvars177119_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177115_ __tmp182624))))
                                   (declare (not safe))
                                   (cons _$lp177109_ __tmp182623)))))
                          (declare (not safe))
                          (_recur176935_
                           _hd177099_
                           '()
                           _$lp-hd177113_
                           _E177029_
                           __tmp182622))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp182626 __tmp182621))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182636
                                                     __tmp182620)))
                                                 (__tmp182611
                                                  (let ((__tmp182615
                                                         (map (lambda (_lvar177139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177140_)
                        (let ((__tmp182618
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177140_ '())))
                              (__tmp182616
                               (let ((__tmp182617
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177139_))))
                                 (declare (not safe))
                                 (cons __tmp182617 '()))))
                          (declare (not safe))
                          (cons __tmp182618 __tmp182616)))
                      _lvars177119_
                      _tlvars177121_))
                (__tmp182612
                 (_k177030_
                  (let ((__tmp182613
                         (lambda (_svar177142_ _tlvar177143_ _r177144_)
                           (let ((__tmp182614
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177142_ _tlvar177143_))))
                             (declare (not safe))
                             (cons __tmp182614 _r177144_)))))
                    (declare (not safe))
                    (foldl2 __tmp182613
                            _vars177132_
                            _svars177117_
                            _tlvars177121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182615
                                                     __tmp182612))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp182641
                                              __tmp182619
                                              __tmp182611))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp182642
                                       __tmp182610))))
                               (declare (not safe))
                               (cons __tmp182609 '()))))
                        (declare (not safe))
                        (cons __tmp182643 __tmp182608))))
                 (declare (not safe))
                 (cons __tmp182607 '())))
              (__tmp182604
               (let ((__tmp182605
                      (let ()
                        (declare (not safe))
                        (cons _$target177103_ _linit177125_))))
                 (declare (not safe))
                 (cons _$lp177109_ __tmp182605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp182606
                                                   __tmp182604)))))
                                      (let ((_body177130_
                                             (let ((__tmp182645
                                                    (let ((__tmp182646
                                                           (let ((__tmp182649
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182650
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177107_ '()))))
                            (declare (not safe))
                            (cons _$target177103_ __tmp182650)))
                         (__tmp182647
                          (let ((__tmp182648
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177028_
                                    _rlen177101_))))
                            (declare (not safe))
                            (cons __tmp182648 '()))))
                     (declare (not safe))
                     (cons __tmp182649 __tmp182647))))
              (declare (not safe))
              (cons __tmp182646 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182644
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur176935_
                                                       _tl177098_
                                                       _vars177027_
                                                       _$tl177107_
                                                       _E177029_
                                                       _make-loop177128_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182645
                                                __tmp182644))))
                                        (let ((__tmp182654
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177028_)))
                                              (__tmp182651
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177101_))
                                                   _body177130_
                                                   (let ((__tmp182652
                                                          (let ((__tmp182653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177028_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp182653 _rlen177101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp182652
                                                      _body177130_
                                                      _E177029_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp182654
                                           __tmp182651
                                           _E177029_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177084177091_))
                              (let ((_hd177088177149_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177084177091_)))
                                    (_tl177089177151_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177084177091_))))
                                (let* ((_hd177154_ _hd177088177149_)
                                       (_tl177156_ _tl177089177151_))
                                  (declare (not safe))
                                  (_K177087177146_ _tl177156_ _hd177154_)))
                              (let () (declare (not safe)) (_E177086177095_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177048_))
                            (let ((__tmp182603
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177028_)))
                                  (__tmp182602 (_k177030_ _vars177027_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp182603
                               __tmp182602
                               _E177029_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177048_))
                                (let ((_$e177158_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp182601
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177028_)))
                                        (__tmp182593
                                         (let ((__tmp182595
                                                (let ((__tmp182596
                                                       (let ((__tmp182600
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177158_ '())))
                     (__tmp182597
                      (let ((__tmp182598
                             (let ((__tmp182599
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e176757_
                                       _target177028_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp182599))))
                        (declare (not safe))
                        (cons __tmp182598 '()))))
                 (declare (not safe))
                 (cons __tmp182600 __tmp182597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp182596 '())))
                                               (__tmp182594
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur176935_
                                                   _body177045_
                                                   _vars177027_
                                                   _$e177158_
                                                   _E177029_
                                                   _k177030_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp182595
                                            __tmp182594))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp182601
                                     __tmp182593
                                     _E177029_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177048_))
                                    (let ((_$e177160_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp182592
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177028_)))
                                            (__tmp182584
                                             (let ((__tmp182586
                                                    (let ((__tmp182587
                                                           (let ((__tmp182591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177160_ '())))
                         (__tmp182588
                          (let ((__tmp182589
                                 (let ((__tmp182590
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e176757_
                                           _target177028_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp182590))))
                            (declare (not safe))
                            (cons __tmp182589 '()))))
                     (declare (not safe))
                     (cons __tmp182591 __tmp182588))))
              (declare (not safe))
              (cons __tmp182587 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182585
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur176935_
                                                       _body177045_
                                                       _vars177027_
                                                       _$e177160_
                                                       _E177029_
                                                       _k177030_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182586
                                                __tmp182585))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp182592
                                         __tmp182584
                                         _E177029_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177048_))
                                        (let ((_$e177162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp182583
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177028_)))
                                                (__tmp182574
                                                 (let ((__tmp182578
                                                        (let ((__tmp182579
                                                               (let ((__tmp182582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177162_ '())))
                             (__tmp182580
                              (let ((__tmp182581
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177028_))))
                                (declare (not safe))
                                (cons __tmp182581 '()))))
                         (declare (not safe))
                         (cons __tmp182582 __tmp182580))))
                  (declare (not safe))
                  (cons __tmp182579 '())))
               (__tmp182575
                (let ((__tmp182577
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177162_ _body177045_)))
                      (__tmp182576 (_k177030_ _vars177027_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp182577 __tmp182576 _E177029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp182578
                                                    __tmp182575))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp182583
                                             __tmp182574
                                             _E177029_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG176934_ _e177026_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177031177038_))
                                      (let ((_hd177035177167_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177031177038_)))
                                            (_tl177036177169_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177031177038_))))
                                        (let* ((_tag177172_ _hd177035177167_)
                                               (_body177174_ _tl177036177169_))
                                          (declare (not safe))
                                          (_K177034177164_
                                           _body177174_
                                           _tag177172_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177033177042_))))))
                             (_splice-rlen176936_
                              (lambda (_e176988_)
                                (let _lp176990_ ((_e176992_ _e176988_)
                                                 (_n176993_ '0))
                                  (let* ((_e176994177001_ _e176992_)
                                         (_E176996177005_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e176994177001_)))
                                         (_K176997177014_
                                          (lambda (_body177008_ _tag177009_)
                                            (let ((_$e177011_ _tag177009_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177011_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx176755_
                                                     _where176927_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177011_))
                                                      (let ((__tmp182682
                                                             (cdr _body177008_))
                                                            (__tmp182681
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n176993_ '1))))
                (declare (not safe))
                (_lp176990_ __tmp182682 __tmp182681))
              _n176993_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e176994177001_))
                                        (let ((_hd176998177017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e176994177001_)))
                                              (_tl176999177019_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e176994177001_))))
                                          (let* ((_tag177022_ _hd176998177017_)
                                                 (_body177024_
                                                  _tl176999177019_))
                                            (declare (not safe))
                                            (_K176997177014_
                                             _body177024_
                                             _tag177022_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E176996177005_)))))))
                             (_splice-vars176937_
                              (lambda (_e176944_)
                                (let _recur176946_ ((_e176948_ _e176944_)
                                                    (_vars176949_ '()))
                                  (let* ((_e176950176957_ _e176948_)
                                         (_E176952176961_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e176950176957_)))
                                         (_K176953176976_
                                          (lambda (_body176964_ _tag176965_)
                                            (let ((_$e176967_ _tag176965_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e176967_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body176964_
                                                          _vars176949_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e176967_))
                  (let () (declare (not safe)) (eq? 'splice _$e176967_)))
              (let ((__tmp182685 (cdr _body176964_))
                    (__tmp182683
                     (let ((__tmp182684 (car _body176964_)))
                       (declare (not safe))
                       (_recur176946_ __tmp182684 _vars176949_))))
                (declare (not safe))
                (_recur176946_ __tmp182685 __tmp182683))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e176967_))
                      (let () (declare (not safe)) (eq? 'box _$e176967_)))
                  (let ()
                    (declare (not safe))
                    (_recur176946_ _body176964_ _vars176949_))
                  _vars176949_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e176950176957_))
                                        (let ((_hd176954176979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e176950176957_)))
                                              (_tl176955176981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e176950176957_))))
                                          (let* ((_tag176984_ _hd176954176979_)
                                                 (_body176986_
                                                  _tl176955176981_))
                                            (declare (not safe))
                                            (_K176953176976_
                                             _body176986_
                                             _tag176984_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E176952176961_)))))))
                             (_make-body176938_
                              (lambda (_vars176940_)
                                (let ((__tmp182686
                                       (map (lambda (_mvar176942_)
                                              (let ((__tmp182687
                                                     (car _mvar176942_)))
                                                (declare (not safe))
                                                (assgetq __tmp182687
                                                         _vars176940_
                                                         _BUG176934_)))
                                            _mvars176930_)))
                                  (declare (not safe))
                                  (cons _K176931_ __tmp182686)))))
                      (let ()
                        (declare (not safe))
                        (_recur176935_
                         _hd176929_
                         '()
                         _target176928_
                         _E176932_
                         _make-body176938_)))))
                 (_parse-clause176764_
                  (lambda (_hd176833_ _ids176834_)
                    (let _recur176836_ ((_e176838_ _hd176833_)
                                        (_vars176839_ '())
                                        (_depth176840_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e176838_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e176838_))
                              (values '(any) _vars176839_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e176838_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx176755_
                                     _hd176833_))
                                  (if (let ((__tmp182703
                                             (lambda (_id176842_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e176838_
                                                  _id176842_)))))
                                        (declare (not safe))
                                        (find __tmp182703 _ids176834_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e176838_))
                                              _vars176839_)
                                      (if (let ((__tmp182701
                                                 (lambda (_var176844_)
                                                   (let ((__tmp182702
                                                          (car _var176844_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e176838_
                                                      __tmp182702)))))
                                            (declare (not safe))
                                            (find __tmp182701 _vars176839_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx176755_
                                             _e176838_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e176838_))
                                                  (let ((__tmp182700
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e176838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth176840_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182700
                                                          _vars176839_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e176838_))
                              (let* ((_e176845176852_ _e176838_)
                                     (_E176847176856_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e176845176852_))))
                                     (_E176846176917_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e176845176852_))
                                            (let ((_e176848176860_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e176845176852_))))
                                              (let ((_hd176849176863_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e176848176860_)))
                                                    (_tl176850176865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e176848176860_))))
                                                (let* ((_hd176868_
                                                        _hd176849176863_)
                                                       (_rest176870_
                                                        _tl176850176865_))
                                                  (if '#t
                                                      (let* ((_make-pair176885_
                                                              (lambda (_tag176872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd176873_
                               _tl176874_)
                        (let* ((_hd-depth176876_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag176872_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth176840_ '1))
                                    _depth176840_))
                               (_g182695_
                                (let ()
                                  (declare (not safe))
                                  (_recur176836_
                                   _hd176873_
                                   _vars176839_
                                   _hd-depth176876_))))
                          (begin
                            (let ((_g182696_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g182695_)
                                         (##vector-length _g182695_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g182696_ 2)))
                                  (error "Context expects 2 values"
                                         _g182696_)))
                            (let ((_hd176878_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182695_ 0)))
                                  (_vars176879_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182695_ 1))))
                              (let ((_g182697_
                                     (let ()
                                       (declare (not safe))
                                       (_recur176836_
                                        _tl176874_
                                        _vars176879_
                                        _depth176840_))))
                                (begin
                                  (let ((_g182698_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g182697_)
                                               (##vector-length _g182697_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g182698_ 2)))
                                        (error "Context expects 2 values"
                                               _g182698_)))
                                  (let ((_tl176881_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182697_ 0)))
                                        (_vars176882_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182697_ 1))))
                                    (let ()
                                      (values (let ((__tmp182699
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd176878_
                                                             _tl176881_))))
                                                (declare (not safe))
                                                (cons _tag176872_ __tmp182699))
                                              _vars176882_))))))))))
                     (_e176886176893_ _rest176870_)
                     (_E176888176897_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair176885_ 'cons _hd176868_ _rest176870_))))
                     (_E176887176913_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e176886176893_))
                            (let ((_e176889176901_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e176886176893_))))
                              (let ((_hd176890176904_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e176889176901_)))
                                    (_tl176891176906_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e176889176901_))))
                                (let* ((_rest-hd176909_ _hd176890176904_)
                                       (_rest-tl176911_ _tl176891176906_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd176909_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair176885_
                                             'splice
                                             _hd176868_
                                             _rest-tl176911_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair176885_
                                             'cons
                                             _hd176868_
                                             _rest176870_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E176888176897_))))))
                            (let () (declare (not safe)) (_E176888176897_))))))
                (let () (declare (not safe)) (_E176887176913_)))
              (let () (declare (not safe)) (_E176847176856_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E176847176856_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176846176917_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e176838_))
                                  (values '(null) _vars176839_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e176838_))
                                      (let ((_g182692_
                                             (let ((__tmp182694
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e176838_)))))
                                               (declare (not safe))
                                               (_recur176836_
                                                __tmp182694
                                                _vars176839_
                                                _depth176840_))))
                                        (begin
                                          (let ((_g182693_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g182692_)
                                                       (##vector-length
                                                        _g182692_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g182693_ 2)))
                                                (error "Context expects 2 values"
                                                       _g182693_)))
                                          (let ((_e176921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g182692_ 0)))
                                                (_vars176922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g182692_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e176921_))
                                                    _vars176922_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e176838_))
                                          (let ((_g182689_
                                                 (let ((__tmp182691
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e176838_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur176836_
                                                    __tmp182691
                                                    _vars176839_
                                                    _depth176840_))))
                                            (begin
                                              (let ((_g182690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g182689_)
                                                           (##vector-length
                                                            _g182689_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g182690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g182690_)))
                                              (let ((_e176924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182689_
                                                        0)))
                                                    (_vars176925_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182689_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e176924_))
                                                        _vars176925_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e176838_))
                                              (values (let ((__tmp182688
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e176838_))))
                (declare (not safe))
                (cons 'datum __tmp182688))
              _vars176839_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx176755_
                                                 _e176838_))))))))))))
          (let* ((_e176765176778_ _stx176755_)
                 (_E176767176782_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e176765176778_))))
                 (_E176766176829_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176765176778_))
                        (let ((_e176768176786_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176765176778_))))
                          (let ((_hd176769176789_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176768176786_)))
                                (_tl176770176791_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176768176786_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176770176791_))
                                (let ((_e176771176794_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176770176791_))))
                                  (let ((_hd176772176797_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176771176794_)))
                                        (_tl176773176799_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176771176794_))))
                                    (let ((_expr176802_ _hd176772176797_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl176773176799_))
                                          (let ((_e176774176804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl176773176799_))))
                                            (let ((_hd176775176807_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e176774176804_)))
                                                  (_tl176776176809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e176774176804_))))
                                              (let* ((_ids176812_
                                                      _hd176775176807_)
                                                     (_clauses176814_
                                                      _tl176776176809_))
                                                (if '#t
                                                    (if (let ((__tmp182721
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids176812_))))
                  (declare (not safe))
                  (not __tmp182721))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx176755_
                   _ids176812_))
                (if (let ((__tmp182720
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses176814_))))
                      (declare (not safe))
                      (not __tmp182720))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx176755_))
                    (let* ((_ids176816_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids176812_)))
                           (_clauses176818_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses176814_)))
                           (_clause-ids176820_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses176818_)))
                           (_E176822_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target176824_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first176826_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses176818_))
                                _E176822_
                                (car _clause-ids176820_))))
                      (let ((__tmp182705
                             (let ((__tmp182706
                                    (let ((__tmp182708
                                           (let ((__tmp182713
                                                  (let ((__tmp182714
                                                         (let ((__tmp182719
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E176822_ '())))
                       (__tmp182715
                        (let ((__tmp182716
                               (let ((__tmp182718
                                      (let ()
                                        (declare (not safe))
                                        (cons _target176824_ '())))
                                     (__tmp182717
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target176824_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp182718
                                  __tmp182717))))
                          (declare (not safe))
                          (cons __tmp182716 '()))))
                   (declare (not safe))
                   (cons __tmp182719 __tmp182715))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182714 '())))
                                                 (__tmp182709
                                                  (let ((__tmp182712
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings176760_
                                                            _target176824_
                                                            _ids176816_
                                                            _clauses176818_
                                                            _clause-ids176820_
                                                            _E176822_)))
                                                        (__tmp182710
                                                         (let ((__tmp182711
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr176802_ '()))))
                   (declare (not safe))
                   (cons _first176826_ __tmp182711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body176761_
                                                     __tmp182712
                                                     __tmp182710))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp182713
                                              __tmp182709)))
                                          (__tmp182707
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx176755_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp182708
                                       __tmp182707))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp182706)))
                            (__tmp182704
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx176755_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp182705 __tmp182704)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176767176782_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176767176782_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176767176782_)))))
                        (let () (declare (not safe)) (_E176767176782_))))))
            (let () (declare (not safe)) (_E176766176829_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177465_)
        (let* ((_identifier=?177467_ 'free-identifier=?)
               (_unwrap-e177469_ 'syntax-e)
               (_wrap-e177471_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177465_
           _identifier=?177467_
           _unwrap-e177469_
           _wrap-e177471_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177473_ _identifier=?177474_)
        (let* ((_unwrap-e177476_ 'syntax-e) (_wrap-e177478_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177473_
           _identifier=?177474_
           _unwrap-e177476_
           _wrap-e177478_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177480_ _identifier=?177481_ _unwrap-e177482_)
        (let ((_wrap-e177484_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177480_
           _identifier=?177481_
           _unwrap-e177482_
           _wrap-e177484_))))
    (define gx#macro-expand-syntax-case
      (lambda _g182723_
        (let ((_g182722_ (let () (declare (not safe)) (##length _g182723_))))
          (cond ((let () (declare (not safe)) (##fx= _g182722_ 1))
                 (apply (lambda (_stx177465_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177465_)))
                        _g182723_))
                ((let () (declare (not safe)) (##fx= _g182722_ 2))
                 (apply (lambda (_stx177473_ _identifier=?177474_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177473_
                             _identifier=?177474_)))
                        _g182723_))
                ((let () (declare (not safe)) (##fx= _g182722_ 3))
                 (apply (lambda (_stx177480_
                                 _identifier=?177481_
                                 _unwrap-e177482_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177480_
                             _identifier=?177481_
                             _unwrap-e177482_)))
                        _g182723_))
                ((let () (declare (not safe)) (##fx= _g182722_ 4))
                 (apply (lambda (_stx177486_
                                 _identifier=?177487_
                                 _unwrap-e177488_
                                 _wrap-e177489_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177486_
                             _identifier=?177487_
                             _unwrap-e177488_
                             _wrap-e177489_)))
                        _g182723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g182723_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx176752_)
        (if (let () (declare (not safe)) (gx#identifier? _stx176752_))
            (let ((__tmp182724
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx176752_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp182724 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd176710_ . _rest176711_)
        (let ((_len176713_ (length _hd176710_)))
          (let _lp176715_ ((_rest176717_ _rest176711_))
            (let* ((_rest176718176726_ _rest176717_)
                   (_else176720176734_ (lambda () '#!void))
                   (_K176722176740_
                    (lambda (_rest176737_ _hd176738_)
                      (if (fx= _len176713_ (length _hd176738_))
                          (let ()
                            (declare (not safe))
                            (_lp176715_ _rest176737_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd176738_))))))
              (if (let () (declare (not safe)) (##pair? _rest176718176726_))
                  (let ((_hd176723176743_
                         (let ()
                           (declare (not safe))
                           (##car _rest176718176726_)))
                        (_tl176724176745_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest176718176726_))))
                    (let* ((_hd176748_ _hd176723176743_)
                           (_rest176750_ _tl176724176745_))
                      (declare (not safe))
                      (_K176722176740_ _rest176750_ _hd176748_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx176668_ _n176669_)
        (let _lp176671_ ((_rest176673_ _stx176668_) (_r176674_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest176673_))
              (let* ((_g176675176682_
                      (let () (declare (not safe)) (gx#syntax-e _rest176673_)))
                     (_E176677176686_
                      (lambda ()
                        (error '"No clause matching" _g176675176682_)))
                     (_K176678176692_
                      (lambda (_rest176689_ _hd176690_)
                        (let ((__tmp182729
                               (let ()
                                 (declare (not safe))
                                 (cons _hd176690_ _r176674_))))
                          (declare (not safe))
                          (_lp176671_ _rest176689_ __tmp182729)))))
                (if (let () (declare (not safe)) (##pair? _g176675176682_))
                    (let ((_hd176679176695_
                           (let ()
                             (declare (not safe))
                             (##car _g176675176682_)))
                          (_tl176680176697_
                           (let ()
                             (declare (not safe))
                             (##cdr _g176675176682_))))
                      (let* ((_hd176700_ _hd176679176695_)
                             (_rest176702_ _tl176680176697_))
                        (declare (not safe))
                        (_K176678176692_ _rest176702_ _hd176700_)))
                    (let () (declare (not safe)) (_E176677176686_))))
              (let _lp176704_ ((_n176706_ _n176669_)
                               (_l176707_ _r176674_)
                               (_r176708_ _rest176673_))
                (if (let () (declare (not safe)) (null? _l176707_))
                    (values _l176707_ _r176708_)
                    (if (fxpositive? _n176706_)
                        (let ((__tmp182728
                               (let ()
                                 (declare (not safe))
                                 (fx- _n176706_ '1)))
                              (__tmp182727 (cdr _l176707_))
                              (__tmp182725
                               (let ((__tmp182726 (car _l176707_)))
                                 (declare (not safe))
                                 (cons __tmp182726 _r176708_))))
                          (declare (not safe))
                          (_lp176704_ __tmp182728 __tmp182727 __tmp182725))
                        (values (reverse _l176707_) _r176708_))))))))))
