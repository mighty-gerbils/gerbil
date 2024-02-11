(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707651234)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182590 (list gx#expander::t)))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp182590
         '(id depth)
         '()
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178117_
        (apply make-class-instance gx#syntax-pattern::t _$args178117_)))
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
      (lambda (_self178114_ _stx178115_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178115_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177596_)
        (letrec ((_generate177598_
                  (lambda (_e177825_)
                    (letrec ((_BUG177827_
                              (lambda (_q177989_)
                                (error '"BUG: syntax; generate"
                                       _stx177596_
                                       _e177825_
                                       _q177989_)))
                             (_local-pattern-e177828_
                              (lambda (_pat177987_)
                                (let ((__tmp182591
                                       (let ((__obj182588 _pat177987_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj182588
                                                'gx#syntax-pattern::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj182588
                                                '2
                                                gx#syntax-pattern::t
                                                '#f))
                                             (class-slot-ref
                                              gx#syntax-pattern::t
                                              __obj182588
                                              'id)))))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182591))))
                             (_getvar177829_
                              (lambda (_q177984_ _vars177985_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q177984_
                                           _vars177985_
                                           _BUG177827_))))
                             (_getarg177830_
                              (lambda (_arg177950_ _vars177951_)
                                (let* ((_arg177952177959_ _arg177950_)
                                       (_E177954177963_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg177952177959_)))
                                       (_K177955177972_
                                        (lambda (_e177966_ _tag177967_)
                                          (let ((_$e177969_ _tag177967_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e177969_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar177829_
                                                   _e177966_
                                                   _vars177951_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e177969_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e177828_
                                                       _e177966_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG177827_
                                                       _arg177950_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg177952177959_))
                                      (let ((_hd177956177975_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg177952177959_)))
                                            (_tl177957177977_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg177952177959_))))
                                        (let* ((_tag177980_ _hd177956177975_)
                                               (_e177982_ _tl177957177977_))
                                          (declare (not safe))
                                          (_K177955177972_
                                           _e177982_
                                           _tag177980_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177954177963_)))))))
                      (let _recur177832_ ((_e177834_ _e177825_)
                                          (_vars177835_ '()))
                        (let* ((_e177836177843_ _e177834_)
                               (_E177838177847_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e177836177843_)))
                               (_K177839177938_
                                (lambda (_body177850_ _tag177851_)
                                  (let ((_$e177853_ _tag177851_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177853_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body177850_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e177853_))
                                            (let ((_id177856_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body177850_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id177856_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks177858_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id177856_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks177858_))
                                                        (let ((__tmp182619
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body177850_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182619))
                (let ((__tmp182618
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body177850_)))
                      (__tmp182617
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body177850_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182618
                   __tmp182617
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id177856_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body177850_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG177827_
                                                         _e177834_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e177853_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e177828_
                                                   _body177850_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e177853_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar177829_
                                                       _body177850_
                                                       _vars177835_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e177853_))
                                                        (let ((__tmp182615
                                                               (let ((__tmp182616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body177850_)))
                         (declare (not safe))
                         (_recur177832_ __tmp182616 _vars177835_)))
                      (__tmp182613
                       (let ((__tmp182614 (cdr _body177850_)))
                         (declare (not safe))
                         (_recur177832_ __tmp182614 _vars177835_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182615 __tmp182613))
                (if (let () (declare (not safe)) (eq? 'vector _$e177853_))
                    (let ((__tmp182612
                           (let ()
                             (declare (not safe))
                             (_recur177832_ _body177850_ _vars177835_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182612))
                    (if (let () (declare (not safe)) (eq? 'box _$e177853_))
                        (let ((__tmp182611
                               (let ()
                                 (declare (not safe))
                                 (_recur177832_ _body177850_ _vars177835_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182611))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e177853_))
                            (let* ((_body177859177870_ _body177850_)
                                   (_E177861177874_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body177859177870_)))
                                   (_K177862177912_
                                    (lambda (_args177877_
                                             _iv177878_
                                             _hd177879_
                                             _depth177880_)
                                      (let* ((_targets177886_
                                              (map (lambda (_g177881177883_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg177830_
                                                        _g177881177883_
                                                        _vars177835_)))
                                                   _args177877_))
                                             (_fold-in177888_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args177877_)))
                                             (_fold-out177890_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args177892_
                                              (let ((__tmp182592
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out177890_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182592
                                                        _fold-in177888_)))
                                             (_lambda-body177909_
                                              (if (fx> _depth177880_ '1)
                                                  (let ((_r-args177900_
                                                         (map (lambda (_arg177894_)
                                                                (let ((__tmp182597
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg177894_)))
                          (declare (not safe))
                          (cons 'ref __tmp182597)))
                      _args177877_))
                (_r-vars177901_
                 (let ((__tmp182598
                        (lambda (_arg177896_ _var177897_ _r177898_)
                          (let ((__tmp182599
                                 (let ((__tmp182600 (cdr _arg177896_)))
                                   (declare (not safe))
                                   (cons __tmp182600 _var177897_))))
                            (declare (not safe))
                            (cons __tmp182599 _r177898_)))))
                   (declare (not safe))
                   (foldr2 __tmp182598
                           _vars177835_
                           _args177877_
                           _fold-in177888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182601
                                                           (let ((__tmp182602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182606
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth177880_ '1)))
                                (__tmp182603
                                 (let ((__tmp182604
                                        (let ((__tmp182605
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out177890_))))
                                          (declare (not safe))
                                          (cons __tmp182605 _r-args177900_))))
                                   (declare (not safe))
                                   (cons _hd177879_ __tmp182604))))
                            (declare (not safe))
                            (cons __tmp182606 __tmp182603))))
                     (declare (not safe))
                     (cons 'splice __tmp182602))))
              (declare (not safe))
              (_recur177832_ __tmp182601 _r-vars177901_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars177907_
                                                          (let ((__tmp182593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg177903_ _var177904_ _r177905_)
                           (let ((__tmp182594
                                  (let ((__tmp182595 (cdr _arg177903_)))
                                    (declare (not safe))
                                    (cons __tmp182595 _var177904_))))
                             (declare (not safe))
                             (cons __tmp182594 _r177905_)))))
                    (declare (not safe))
                    (foldr2 __tmp182593
                            _vars177835_
                            _args177877_
                            _fold-in177888_)))
                 (__tmp182596
                  (let ()
                    (declare (not safe))
                    (_recur177832_ _hd177879_ _hd-vars177907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182596
                                                     _fold-out177890_)))))
                                        (let ((__tmp182610
                                               (if (fx> (length _targets177886_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets177886_))
                                                   '#!void))
                                              (__tmp182607
                                               (let ((__tmp182609
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args177892_
                                                         _lambda-body177909_)))
                                                     (__tmp182608
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur177832_
                                                         _iv177878_
                                                         _vars177835_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182609
                                                  __tmp182608
                                                  _targets177886_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182610
                                           __tmp182607))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body177859177870_))
                                  (let ((_hd177863177915_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body177859177870_)))
                                        (_tl177864177917_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body177859177870_))))
                                    (let ((_depth177920_ _hd177863177915_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl177864177917_))
                                          (let ((_hd177865177922_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl177864177917_)))
                                                (_tl177866177924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl177864177917_))))
                                            (let ((_hd177927_
                                                   _hd177865177922_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl177866177924_))
                                                  (let ((_hd177867177929_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl177866177924_)))
                                                        (_tl177868177931_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl177866177924_))))
                                                    (let* ((_iv177934_
                                                            _hd177867177929_)
                                                           (_args177936_
                                                            _tl177868177931_))
                                                      (declare (not safe))
                                                      (_K177862177912_
                                                       _args177936_
                                                       _iv177934_
                                                       _hd177927_
                                                       _depth177920_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177861177874_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177861177874_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E177861177874_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e177853_))
                                _body177850_
                                (let ()
                                  (declare (not safe))
                                  (_BUG177827_ _e177834_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e177836177843_))
                              (let ((_hd177840177941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177836177843_)))
                                    (_tl177841177943_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177836177843_))))
                                (let* ((_tag177946_ _hd177840177941_)
                                       (_body177948_ _tl177841177943_))
                                  (declare (not safe))
                                  (_K177839177938_ _body177948_ _tag177946_)))
                              (let ()
                                (declare (not safe))
                                (_E177838177847_))))))))
                 (_parse177599_
                  (lambda (_e177640_)
                    (letrec ((_make-cons177642_
                              (lambda (_hd177817_ _tl177818_)
                                (let ((_g182620_ _hd177817_)
                                      (_g182622_ _tl177818_))
                                  (begin
                                    (let ((_g182621_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182620_)
                                                 (##vector-length _g182620_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182621_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182621_)))
                                    (let ((_g182623_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182622_)
                                                 (##vector-length _g182622_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182623_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182623_)))
                                    (let ((_hd-e177820_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182620_ 0)))
                                          (_hd-vars177821_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182620_ 1))))
                                      (let ((_tl-e177822_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182622_ 0)))
                                            (_tl-vars177823_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182622_ 1))))
                                        (values (let ((__tmp182624
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e177820_
                                                               _tl-e177822_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182624))
                                                (append _hd-vars177821_
                                                        _tl-vars177823_))))))))
                             (_make-splice177643_
                              (lambda (_where177756_
                                       _depth177757_
                                       _hd177758_
                                       _tl177759_)
                                (let ((_g182625_ _hd177758_)
                                      (_g182627_ _tl177759_))
                                  (begin
                                    (let ((_g182626_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182625_)
                                                 (##vector-length _g182625_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182626_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182626_)))
                                    (let ((_g182628_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182627_)
                                                 (##vector-length _g182627_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182628_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182628_)))
                                    (let ((_hd-e177761_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182625_ 0)))
                                          (_hd-vars177762_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182625_ 1))))
                                      (let ((_tl-e177763_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182627_ 0)))
                                            (_tl-vars177764_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182627_ 1))))
                                        (let _lp177766_ ((_rest177768_
                                                          _hd-vars177762_)
                                                         (_targets177769_ '())
                                                         (_vars177770_
                                                          _tl-vars177764_))
                                          (let* ((_rest177771177781_
                                                  _rest177768_)
                                                 (_else177773177789_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets177769_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177596_
                                                           _where177756_))
                                                        (values (let ((__tmp182629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182630
                                      (let ((__tmp182631
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e177763_
                                                     _targets177769_))))
                                        (declare (not safe))
                                        (cons _hd-e177761_ __tmp182631))))
                                 (declare (not safe))
                                 (cons _depth177757_ __tmp182630))))
                          (declare (not safe))
                          (cons 'splice __tmp182629))
                        _vars177770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K177775177798_
                                                  (lambda (_rest177792_
                                                           _hd-pat177793_
                                                           _hd-depth*177794_)
                                                    (let ((_hd-depth177796_
                                                           (fx- _hd-depth*177794_
                                                                _depth177757_)))
                                                      (if (fxpositive?
                                                           _hd-depth177796_)
                                                          (let ((__tmp182636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182637
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat177793_))))
                           (declare (not safe))
                           (cons __tmp182637 _targets177769_)))
                        (__tmp182634
                         (let ((__tmp182635
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth177796_ _hd-pat177793_))))
                           (declare (not safe))
                           (cons __tmp182635 _vars177770_))))
                    (declare (not safe))
                    (_lp177766_ _rest177792_ __tmp182636 __tmp182634))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth177796_))
                      (let ((__tmp182632
                             (let ((__tmp182633
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat177793_))))
                               (declare (not safe))
                               (cons __tmp182633 _targets177769_))))
                        (declare (not safe))
                        (_lp177766_ _rest177792_ __tmp182632 _vars177770_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177596_
                         _where177756_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest177771177781_))
                                                (let ((_hd177776177801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest177771177781_)))
                                                      (_tl177777177803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest177771177781_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd177776177801_))
                                                      (let ((_hd177778177806_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd177776177801_)))
                    (_tl177779177808_
                     (let () (declare (not safe)) (##cdr _hd177776177801_))))
                (let* ((_hd-depth*177811_ _hd177778177806_)
                       (_hd-pat177813_ _tl177779177808_)
                       (_rest177815_ _tl177777177803_))
                  (declare (not safe))
                  (_K177775177798_
                   _rest177815_
                   _hd-pat177813_
                   _hd-depth*177811_)))
              (let () (declare (not safe)) (_else177773177789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else177773177789_)))))))))))
                             (_recur177644_
                              (lambda (_e177649_ _is-e?177650_)
                                (if (_is-e?177650_ _e177649_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177596_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e177649_))
                                        (let* ((_pat177652_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e177649_)))
                                               (_depth177654_
                                                (let ((__obj182589
                                                       _pat177652_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj182589
                                                         'gx#syntax-pattern::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj182589
                                                         '3
                                                         gx#syntax-pattern::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gx#syntax-pattern::t
                                                       __obj182589
                                                       'depth)))))
                                          (if (fxpositive? _depth177654_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat177652_))
                                                      (let ((__tmp182653
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth177654_ _pat177652_))))
                (declare (not safe))
                (cons __tmp182653 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat177652_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e177649_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e177649_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e177649_))
                                                (let* ((_e177656177663_
                                                        _e177649_)
                                                       (_E177658177667_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e177656177663_))))
                                                       (_E177657177746_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e177656177663_))
                      (let ((_e177659177671_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e177656177663_))))
                        (let ((_hd177660177674_
                               (let ()
                                 (declare (not safe))
                                 (##car _e177659177671_)))
                              (_tl177661177676_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e177659177671_))))
                          (let* ((_hd177679_ _hd177660177674_)
                                 (_rest177681_ _tl177661177676_))
                            (if '#t
                                (if (_is-e?177650_ _hd177679_)
                                    (let* ((_e177682177689_ _rest177681_)
                                           (_E177684177693_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177596_
                                                 _e177649_))))
                                           (_E177683177707_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e177682177689_))
                                                  (let ((_e177685177697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e177682177689_))))
                                                    (let ((_hd177686177700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e177685177697_)))
                                                          (_tl177687177702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e177685177697_))))
                                                      (let ((_rest177705_
                                                             _hd177686177700_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl177687177702_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur177644_ _rest177705_ false))
                        (let () (declare (not safe)) (_E177684177693_)))
                    (let () (declare (not safe)) (_E177684177693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177684177693_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E177683177707_)))
                                    (let _lp177711_ ((_rest177713_
                                                      _rest177681_)
                                                     (_depth177714_ '0))
                                      (let* ((_e177715177722_ _rest177713_)
                                             (_E177717177726_
                                              (lambda ()
                                                (if (fxpositive? _depth177714_)
                                                    (let ((__tmp182647
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177644_
                                                              _hd177679_
                                                              _is-e?177650_)))
                                                          (__tmp182646
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177644_
                                                              _rest177713_
                                                              _is-e?177650_))))
                                                      (declare (not safe))
                                                      (_make-splice177643_
                                                       _e177649_
                                                       _depth177714_
                                                       __tmp182647
                                                       __tmp182646))
                                                    (let ((__tmp182645
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177644_
                                                              _hd177679_
                                                              _is-e?177650_)))
                                                          (__tmp182644
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177644_
                                                              _rest177713_
                                                              _is-e?177650_))))
                                                      (declare (not safe))
                                                      (_make-cons177642_
                                                       __tmp182645
                                                       __tmp182644)))))
                                             (_E177716177742_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e177715177722_))
                                                    (let ((_e177718177730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e177715177722_))))
                                                      (let ((_hd177719177733_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e177718177730_)))
                    (_tl177720177735_
                     (let () (declare (not safe)) (##cdr _e177718177730_))))
                (let* ((_rest-hd177738_ _hd177719177733_)
                       (_rest-tl177740_ _tl177720177735_))
                  (if '#t
                      (if (_is-e?177650_ _rest-hd177738_)
                          (let ((__tmp182652
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth177714_ '1))))
                            (declare (not safe))
                            (_lp177711_ _rest-tl177740_ __tmp182652))
                          (if (fxpositive? _depth177714_)
                              (let ((__tmp182651
                                     (let ()
                                       (declare (not safe))
                                       (_recur177644_
                                        _hd177679_
                                        _is-e?177650_)))
                                    (__tmp182650
                                     (let ()
                                       (declare (not safe))
                                       (_recur177644_
                                        _rest177713_
                                        _is-e?177650_))))
                                (declare (not safe))
                                (_make-splice177643_
                                 _e177649_
                                 _depth177714_
                                 __tmp182651
                                 __tmp182650))
                              (let ((__tmp182649
                                     (let ()
                                       (declare (not safe))
                                       (_recur177644_
                                        _hd177679_
                                        _is-e?177650_)))
                                    (__tmp182648
                                     (let ()
                                       (declare (not safe))
                                       (_recur177644_
                                        _rest177713_
                                        _is-e?177650_))))
                                (declare (not safe))
                                (_make-cons177642_ __tmp182649 __tmp182648))))
                      (let () (declare (not safe)) (_E177717177726_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177717177726_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E177716177742_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E177658177667_))))))
                      (let () (declare (not safe)) (_E177658177667_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177657177746_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e177649_))
                                                    (let ((_g182641_
                                                           (let ((__tmp182643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e177649_)))))
                     (declare (not safe))
                     (_recur177644_ __tmp182643 _is-e?177650_))))
              (begin
                (let ((_g182642_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g182641_)
                             (##vector-length _g182641_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g182642_ 2)))
                      (error "Context expects 2 values" _g182642_)))
                (let ((_e177750_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182641_ 0)))
                      (_vars177751_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182641_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e177750_))
                          _vars177751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e177649_))
                                                        (let ((_g182638_
                                                               (let ((__tmp182640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e177649_)))))
                         (declare (not safe))
                         (_recur177644_ __tmp182640 _is-e?177650_))))
                  (begin
                    (let ((_g182639_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g182638_)
                                 (##vector-length _g182638_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g182639_ 2)))
                          (error "Context expects 2 values" _g182639_)))
                    (let ((_e177753_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182638_ 0)))
                          (_vars177754_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182638_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e177753_))
                              _vars177754_))))
                (values (let () (declare (not safe)) (cons 'datum _e177649_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g182654_
                             (let ()
                               (declare (not safe))
                               (_recur177644_ _e177640_ gx#ellipsis?))))
                        (begin
                          (let ((_g182655_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g182654_)
                                       (##vector-length _g182654_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g182655_ 2)))
                                (error "Context expects 2 values" _g182655_)))
                          (let ((_tree177646_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182654_ 0)))
                                (_vars177647_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182654_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars177647_))
                                _tree177646_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177596_
                                   _vars177647_))))))))))
          (let* ((_e177600177610_ _stx177596_)
                 (_E177602177614_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177596_))))
                 (_E177601177636_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177600177610_))
                        (let ((_e177603177618_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177600177610_))))
                          (let ((_hd177604177621_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177603177618_)))
                                (_tl177605177623_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177603177618_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177605177623_))
                                (let ((_e177606177626_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177605177623_))))
                                  (let ((_hd177607177629_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177606177626_)))
                                        (_tl177608177631_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177606177626_))))
                                    (let ((_form177634_ _hd177607177629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177608177631_))
                                          (if '#t
                                              (let ((__tmp182657
                                                     (let ((__tmp182658
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177599_
                                                               _form177634_))))
                                                       (declare (not safe))
                                                       (_generate177598_
                                                        __tmp182658)))
                                                    (__tmp182656
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177596_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp182657
                                                 __tmp182656))
                                              (let ()
                                                (declare (not safe))
                                                (_E177602177614_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177602177614_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177602177614_)))))
                        (let () (declare (not safe)) (_E177602177614_))))))
            (let () (declare (not safe)) (_E177601177636_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx176860_
               _identifier=?176861_
               _unwrap-e176862_
               _wrap-e176863_)
        (letrec ((_generate-bindings176865_
                  (lambda (_target177460_
                           _ids177461_
                           _clauses177462_
                           _clause-ids177463_
                           _E177464_)
                    (letrec ((_generate1177466_
                              (lambda (_clause177563_
                                       _clause-id177564_
                                       _E177565_)
                                (let ((__tmp182663
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177564_ '())))
                                      (__tmp182659
                                       (let ((__tmp182660
                                              (let ((__tmp182662
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177460_
                                                             '())))
                                                    (__tmp182661
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause176867_
                                                        _target177460_
                                                        _ids177461_
                                                        _clause177563_
                                                        _E177565_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp182662
                                                 __tmp182661))))
                                         (declare (not safe))
                                         (cons __tmp182660 '()))))
                                  (declare (not safe))
                                  (cons __tmp182663 __tmp182659)))))
                      (let _lp177468_ ((_rest177470_ _clauses177462_)
                                       (_rest-ids177471_ _clause-ids177463_)
                                       (_bindings177472_ '()))
                        (let* ((_rest177473177481_ _rest177470_)
                               (_else177475177489_
                                (lambda () _bindings177472_))
                               (_K177477177551_
                                (lambda (_rest177492_ _clause177493_)
                                  (let* ((_rest-ids177494177501_
                                          _rest-ids177471_)
                                         (_E177496177505_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177494177501_)))
                                         (_K177497177539_
                                          (lambda (_rest-ids177508_
                                                   _clause-id177509_)
                                            (let* ((_rest-ids177510177518_
                                                    _rest-ids177508_)
                                                   (_else177512177526_
                                                    (lambda ()
                                                      (let ((__tmp182664
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177466_
                        _clause177493_
                        _clause-id177509_
                        _E177464_))))
                (declare (not safe))
                (cons __tmp182664 _bindings177472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177514177531_
                                                    (lambda (_next-clause-id177529_)
                                                      (let ((__tmp182665
                                                             (let ((__tmp182666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177466_
                               _clause177493_
                               _clause-id177509_
                               _next-clause-id177529_))))
                       (declare (not safe))
                       (cons __tmp182666 _bindings177472_))))
                (declare (not safe))
                (_lp177468_ _rest177492_ _rest-ids177508_ __tmp182665)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177510177518_))
                                                  (let* ((_hd177515177534_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177510177518_)))
                                                         (_next-clause-id177537_
                                                          _hd177515177534_))
                                                    (declare (not safe))
                                                    (_K177514177531_
                                                     _next-clause-id177537_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177512177526_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177494177501_))
                                        (let ((_hd177498177542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177494177501_)))
                                              (_tl177499177544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177494177501_))))
                                          (let* ((_clause-id177547_
                                                  _hd177498177542_)
                                                 (_rest-ids177549_
                                                  _tl177499177544_))
                                            (declare (not safe))
                                            (_K177497177539_
                                             _rest-ids177549_
                                             _clause-id177547_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177496177505_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177473177481_))
                              (let ((_hd177478177554_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177473177481_)))
                                    (_tl177479177556_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177473177481_))))
                                (let* ((_clause177559_ _hd177478177554_)
                                       (_rest177561_ _tl177479177556_))
                                  (declare (not safe))
                                  (_K177477177551_
                                   _rest177561_
                                   _clause177559_)))
                              (let ()
                                (declare (not safe))
                                (_else177475177489_))))))))
                 (_generate-body176866_
                  (lambda (_bindings177420_ _body177421_)
                    (let _recur177423_ ((_rest177425_ _bindings177420_))
                      (let* ((_rest177426177434_ _rest177425_)
                             (_else177428177442_ (lambda () _body177421_))
                             (_K177430177448_
                              (lambda (_rest177445_ _hd177446_)
                                (let ((__tmp182668
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177446_ '())))
                                      (__tmp182667
                                       (let ()
                                         (declare (not safe))
                                         (_recur177423_ _rest177445_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp182668
                                   __tmp182667)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177426177434_))
                            (let ((_hd177431177451_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177426177434_)))
                                  (_tl177432177453_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177426177434_))))
                              (let* ((_hd177456_ _hd177431177451_)
                                     (_rest177458_ _tl177432177453_))
                                (declare (not safe))
                                (_K177430177448_ _rest177458_ _hd177456_)))
                            (let ()
                              (declare (not safe))
                              (_else177428177442_)))))))
                 (_generate-clause176867_
                  (lambda (_target177283_ _ids177284_ _clause177285_ _E177286_)
                    (letrec ((_generate1177288_
                              (lambda (_hd177375_ _fender177376_ _body177377_)
                                (let ((_g182669_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause176869_
                                          _hd177375_
                                          _ids177284_))))
                                  (begin
                                    (let ((_g182670_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182669_)
                                                 (##vector-length _g182669_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182670_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182670_)))
                                    (let ((_e177379_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182669_ 0)))
                                          (_mvars177380_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182669_ 1))))
                                      (let* ((_pvars177382_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177380_))))
                                             (_E177384_
                                              (let ((__tmp182671
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177283_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177286_ __tmp182671)))
                                             (_K177417_
                                              (let ((__tmp182672
                                                     (let ((__tmp182674
                                                            (map (lambda (_mvar177386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177387_)
                           (let* ((_mvar177388177395_ _mvar177386_)
                                  (_E177390177399_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177388177395_)))
                                  (_K177391177405_
                                   (lambda (_depth177402_ _id177403_)
                                     (let ((__tmp182675
                                            (let ((__tmp182676
                                                   (let ((__tmp182678
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177403_)))
                                                         (__tmp182677
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177387_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp182678
                                                      __tmp182677
                                                      _depth177402_))))
                                              (declare (not safe))
                                              (cons __tmp182676 '()))))
                                       (declare (not safe))
                                       (cons _id177403_ __tmp182675)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177388177395_))
                                 (let ((_hd177392177408_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177388177395_)))
                                       (_tl177393177410_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177388177395_))))
                                   (let* ((_id177413_ _hd177392177408_)
                                          (_depth177415_ _tl177393177410_))
                                     (declare (not safe))
                                     (_K177391177405_
                                      _depth177415_
                                      _id177413_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177390177399_)))))
                         _mvars177380_
                         _pvars177382_))
                   (__tmp182673
                    (if (let () (declare (not safe)) (eq? _fender177376_ '#t))
                        _body177377_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177376_
                           _body177377_
                           _E177384_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp182674 __tmp182673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177382_
                                                 __tmp182672))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match176868_
                                           _hd177375_
                                           _target177283_
                                           _e177379_
                                           _mvars177380_
                                           _K177417_
                                           _E177384_)))))))))
                      (let* ((_e177289177309_ _clause177285_)
                             (_E177298177313_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177289177309_))))
                             (_E177291177347_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177289177309_))
                                    (let ((_e177299177317_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177289177309_))))
                                      (let ((_hd177300177320_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177299177317_)))
                                            (_tl177301177322_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177299177317_))))
                                        (let ((_hd177325_ _hd177300177320_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177301177322_))
                                              (let ((_e177302177327_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177301177322_))))
                                                (let ((_hd177303177330_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177302177327_)))
                                                      (_tl177304177332_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177302177327_))))
                                                  (let ((_fender177335_
                                                         _hd177303177330_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177304177332_))
                                                        (let ((_e177305177337_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177304177332_))))
                  (let ((_hd177306177340_
                         (let () (declare (not safe)) (##car _e177305177337_)))
                        (_tl177307177342_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177305177337_))))
                    (let ((_body177345_ _hd177306177340_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177307177342_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177288_
                                 _hd177325_
                                 _fender177335_
                                 _body177345_))
                              (let () (declare (not safe)) (_E177298177313_)))
                          (let () (declare (not safe)) (_E177298177313_))))))
                (let () (declare (not safe)) (_E177298177313_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177298177313_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177298177313_)))))
                             (_E177290177371_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177289177309_))
                                    (let ((_e177292177351_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177289177309_))))
                                      (let ((_hd177293177354_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177292177351_)))
                                            (_tl177294177356_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177292177351_))))
                                        (let ((_hd177359_ _hd177293177354_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177294177356_))
                                              (let ((_e177295177361_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177294177356_))))
                                                (let ((_hd177296177364_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177295177361_)))
                                                      (_tl177297177366_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177295177361_))))
                                                  (let ((_body177369_
                                                         _hd177296177364_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177297177366_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177288_
                                                               _hd177359_
                                                               '#t
                                                               _body177369_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177291177347_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177291177347_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177291177347_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177291177347_))))))
                        (let () (declare (not safe)) (_E177290177371_))))))
                 (_generate-match176868_
                  (lambda (_where177032_
                           _target177033_
                           _hd177034_
                           _mvars177035_
                           _K177036_
                           _E177037_)
                    (letrec ((_BUG177039_
                              (lambda (_q177281_)
                                (error '"BUG: syntax-case; generate"
                                       _stx176860_
                                       _hd177034_
                                       _q177281_)))
                             (_recur177040_
                              (lambda (_e177131_
                                       _vars177132_
                                       _target177133_
                                       _E177134_
                                       _k177135_)
                                (let* ((_e177136177143_ _e177131_)
                                       (_E177138177147_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177136177143_)))
                                       (_K177139177269_
                                        (lambda (_body177150_ _tag177151_)
                                          (let ((_$e177153_ _tag177151_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177153_))
                                                (_k177135_ _vars177132_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177153_))
                                                    (let ((__tmp182785
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177133_)))
                                                          (__tmp182781
                                                           (let ((__tmp182783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182784
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e176863_
                                    _body177150_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?176861_
                             __tmp182784
                             _target177133_)))
                         (__tmp182782 (_k177135_ _vars177132_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp182783 __tmp182782 _E177134_))))
              (declare (not safe))
              (gx#core-list 'if __tmp182785 __tmp182781 _E177134_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177153_))
                                                        (_k177135_
                                                         (let ((__tmp182780
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177150_ _target177133_))))
                   (declare (not safe))
                   (cons __tmp182780 _vars177132_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177153_))
                    (let ((_$e177156_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177157_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177158_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp182779
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177133_)))
                            (__tmp182760
                             (let ((__tmp182774
                                    (let ((__tmp182775
                                           (let ((__tmp182778
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177156_ '())))
                                                 (__tmp182776
                                                  (let ((__tmp182777
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e176862_
                                                            _target177133_))))
                                                    (declare (not safe))
                                                    (cons __tmp182777 '()))))
                                             (declare (not safe))
                                             (cons __tmp182778 __tmp182776))))
                                      (declare (not safe))
                                      (cons __tmp182775 '())))
                                   (__tmp182761
                                    (let ((__tmp182764
                                           (let ((__tmp182770
                                                  (let ((__tmp182773
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp182771
                 (let ((__tmp182772
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177156_))))
                   (declare (not safe))
                   (cons __tmp182772 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182773
                                                          __tmp182771)))
                                                 (__tmp182765
                                                  (let ((__tmp182766
                                                         (let ((__tmp182769
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177158_ '())))
                       (__tmp182767
                        (let ((__tmp182768
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177156_))))
                          (declare (not safe))
                          (cons __tmp182768 '()))))
                   (declare (not safe))
                   (cons __tmp182769 __tmp182767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182766 '()))))
                                             (declare (not safe))
                                             (cons __tmp182770 __tmp182765)))
                                          (__tmp182762
                                           (let* ((_body177159177166_
                                                   _body177150_)
                                                  (_E177161177170_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177159177166_)))
                                                  (_K177162177178_
                                                   (lambda (_tl177173_
                                                            _hd177174_)
                                                     (let ((__tmp182763
                                                            (lambda (_vars177176_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177040_
                         _tl177173_
                         _vars177176_
                         _$tl177158_
                         _E177134_
                         _k177135_)))))
               (declare (not safe))
               (_recur177040_
                _hd177174_
                _vars177132_
                _$hd177157_
                _E177134_
                __tmp182763)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177159177166_))
                                                 (let ((_hd177163177181_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177159177166_)))
                                                       (_tl177164177183_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177159177166_))))
                                                   (let* ((_hd177186_
                                                           _hd177163177181_)
                                                          (_tl177188_
                                                           _tl177164177183_))
                                                     (declare (not safe))
                                                     (_K177162177178_
                                                      _tl177188_
                                                      _hd177186_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177161177170_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp182764
                                       __tmp182762))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp182774
                                __tmp182761))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp182779 __tmp182760 _E177134_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177153_))
                        (let* ((_body177189177196_ _body177150_)
                               (_E177191177200_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177189177196_)))
                               (_K177192177251_
                                (lambda (_tl177203_ _hd177204_)
                                  (let* ((_rlen177206_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177041_ _tl177203_)))
                                         (_$target177208_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177210_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177212_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177214_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177216_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177218_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177220_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177222_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177042_ _hd177204_)))
                                         (_lvars177224_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177222_)))
                                         (_tlvars177226_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177222_)))
                                         (_linit177230_
                                          (map (lambda (_var177228_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177224_)))
                                    (letrec ((_make-loop177233_
                                              (lambda (_vars177237_)
                                                (let ((__tmp182711
                                                       (let ((__tmp182712
                                                              (let ((__tmp182748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177214_ '())))
                            (__tmp182713
                             (let ((__tmp182714
                                    (let ((__tmp182747
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177210_ _lvars177224_)))
                                          (__tmp182715
                                           (let ((__tmp182746
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177210_)))
                                                 (__tmp182724
                                                  (let ((__tmp182741
                                                         (let ((__tmp182742
                                                                (let ((__tmp182745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177216_ '())))
                              (__tmp182743
                               (let ((__tmp182744
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e176862_
                                         _$hd177210_))))
                                 (declare (not safe))
                                 (cons __tmp182744 '()))))
                          (declare (not safe))
                          (cons __tmp182745 __tmp182743))))
                   (declare (not safe))
                   (cons __tmp182742 '())))
                (__tmp182725
                 (let ((__tmp182731
                        (let ((__tmp182737
                               (let ((__tmp182740
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177218_ '())))
                                     (__tmp182738
                                      (let ((__tmp182739
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177216_))))
                                        (declare (not safe))
                                        (cons __tmp182739 '()))))
                                 (declare (not safe))
                                 (cons __tmp182740 __tmp182738)))
                              (__tmp182732
                               (let ((__tmp182733
                                      (let ((__tmp182736
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177220_ '())))
                                            (__tmp182734
                                             (let ((__tmp182735
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177216_))))
                                               (declare (not safe))
                                               (cons __tmp182735 '()))))
                                        (declare (not safe))
                                        (cons __tmp182736 __tmp182734))))
                                 (declare (not safe))
                                 (cons __tmp182733 '()))))
                          (declare (not safe))
                          (cons __tmp182737 __tmp182732)))
                       (__tmp182726
                        (let ((__tmp182727
                               (lambda (_hdvars177239_)
                                 (let ((__tmp182728
                                        (let ((__tmp182729
                                               (map (lambda (_svar177241_
                                                             _lvar177242_)
                                                      (let ((__tmp182730
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177241_ _hdvars177239_ _BUG177039_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp182730 _lvar177242_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177222_
                                                    _lvars177224_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177220_ __tmp182729))))
                                   (declare (not safe))
                                   (cons _$lp177214_ __tmp182728)))))
                          (declare (not safe))
                          (_recur177040_
                           _hd177204_
                           '()
                           _$lp-hd177218_
                           _E177134_
                           __tmp182727))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp182731 __tmp182726))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182741
                                                     __tmp182725)))
                                                 (__tmp182716
                                                  (let ((__tmp182720
                                                         (map (lambda (_lvar177244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177245_)
                        (let ((__tmp182723
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177245_ '())))
                              (__tmp182721
                               (let ((__tmp182722
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177244_))))
                                 (declare (not safe))
                                 (cons __tmp182722 '()))))
                          (declare (not safe))
                          (cons __tmp182723 __tmp182721)))
                      _lvars177224_
                      _tlvars177226_))
                (__tmp182717
                 (_k177135_
                  (let ((__tmp182718
                         (lambda (_svar177247_ _tlvar177248_ _r177249_)
                           (let ((__tmp182719
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177247_ _tlvar177248_))))
                             (declare (not safe))
                             (cons __tmp182719 _r177249_)))))
                    (declare (not safe))
                    (foldl2 __tmp182718
                            _vars177237_
                            _svars177222_
                            _tlvars177226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182720
                                                     __tmp182717))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp182746
                                              __tmp182724
                                              __tmp182716))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp182747
                                       __tmp182715))))
                               (declare (not safe))
                               (cons __tmp182714 '()))))
                        (declare (not safe))
                        (cons __tmp182748 __tmp182713))))
                 (declare (not safe))
                 (cons __tmp182712 '())))
              (__tmp182709
               (let ((__tmp182710
                      (let ()
                        (declare (not safe))
                        (cons _$target177208_ _linit177230_))))
                 (declare (not safe))
                 (cons _$lp177214_ __tmp182710))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp182711
                                                   __tmp182709)))))
                                      (let ((_body177235_
                                             (let ((__tmp182750
                                                    (let ((__tmp182751
                                                           (let ((__tmp182754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182755
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177212_ '()))))
                            (declare (not safe))
                            (cons _$target177208_ __tmp182755)))
                         (__tmp182752
                          (let ((__tmp182753
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177133_
                                    _rlen177206_))))
                            (declare (not safe))
                            (cons __tmp182753 '()))))
                     (declare (not safe))
                     (cons __tmp182754 __tmp182752))))
              (declare (not safe))
              (cons __tmp182751 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182749
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177040_
                                                       _tl177203_
                                                       _vars177132_
                                                       _$tl177212_
                                                       _E177134_
                                                       _make-loop177233_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182750
                                                __tmp182749))))
                                        (let ((__tmp182759
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177133_)))
                                              (__tmp182756
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177206_))
                                                   _body177235_
                                                   (let ((__tmp182757
                                                          (let ((__tmp182758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177133_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp182758 _rlen177206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp182757
                                                      _body177235_
                                                      _E177134_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp182759
                                           __tmp182756
                                           _E177134_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177189177196_))
                              (let ((_hd177193177254_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177189177196_)))
                                    (_tl177194177256_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177189177196_))))
                                (let* ((_hd177259_ _hd177193177254_)
                                       (_tl177261_ _tl177194177256_))
                                  (declare (not safe))
                                  (_K177192177251_ _tl177261_ _hd177259_)))
                              (let () (declare (not safe)) (_E177191177200_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177153_))
                            (let ((__tmp182708
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177133_)))
                                  (__tmp182707 (_k177135_ _vars177132_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp182708
                               __tmp182707
                               _E177134_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177153_))
                                (let ((_$e177263_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp182706
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177133_)))
                                        (__tmp182698
                                         (let ((__tmp182700
                                                (let ((__tmp182701
                                                       (let ((__tmp182705
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177263_ '())))
                     (__tmp182702
                      (let ((__tmp182703
                             (let ((__tmp182704
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e176862_
                                       _target177133_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp182704))))
                        (declare (not safe))
                        (cons __tmp182703 '()))))
                 (declare (not safe))
                 (cons __tmp182705 __tmp182702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp182701 '())))
                                               (__tmp182699
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177040_
                                                   _body177150_
                                                   _vars177132_
                                                   _$e177263_
                                                   _E177134_
                                                   _k177135_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp182700
                                            __tmp182699))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp182706
                                     __tmp182698
                                     _E177134_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177153_))
                                    (let ((_$e177265_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp182697
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177133_)))
                                            (__tmp182689
                                             (let ((__tmp182691
                                                    (let ((__tmp182692
                                                           (let ((__tmp182696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177265_ '())))
                         (__tmp182693
                          (let ((__tmp182694
                                 (let ((__tmp182695
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e176862_
                                           _target177133_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp182695))))
                            (declare (not safe))
                            (cons __tmp182694 '()))))
                     (declare (not safe))
                     (cons __tmp182696 __tmp182693))))
              (declare (not safe))
              (cons __tmp182692 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182690
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177040_
                                                       _body177150_
                                                       _vars177132_
                                                       _$e177265_
                                                       _E177134_
                                                       _k177135_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182691
                                                __tmp182690))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp182697
                                         __tmp182689
                                         _E177134_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177153_))
                                        (let ((_$e177267_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp182688
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177133_)))
                                                (__tmp182679
                                                 (let ((__tmp182683
                                                        (let ((__tmp182684
                                                               (let ((__tmp182687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177267_ '())))
                             (__tmp182685
                              (let ((__tmp182686
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177133_))))
                                (declare (not safe))
                                (cons __tmp182686 '()))))
                         (declare (not safe))
                         (cons __tmp182687 __tmp182685))))
                  (declare (not safe))
                  (cons __tmp182684 '())))
               (__tmp182680
                (let ((__tmp182682
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177267_ _body177150_)))
                      (__tmp182681 (_k177135_ _vars177132_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp182682 __tmp182681 _E177134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp182683
                                                    __tmp182680))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp182688
                                             __tmp182679
                                             _E177134_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177039_ _e177131_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177136177143_))
                                      (let ((_hd177140177272_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177136177143_)))
                                            (_tl177141177274_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177136177143_))))
                                        (let* ((_tag177277_ _hd177140177272_)
                                               (_body177279_ _tl177141177274_))
                                          (declare (not safe))
                                          (_K177139177269_
                                           _body177279_
                                           _tag177277_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177138177147_))))))
                             (_splice-rlen177041_
                              (lambda (_e177093_)
                                (let _lp177095_ ((_e177097_ _e177093_)
                                                 (_n177098_ '0))
                                  (let* ((_e177099177106_ _e177097_)
                                         (_E177101177110_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177099177106_)))
                                         (_K177102177119_
                                          (lambda (_body177113_ _tag177114_)
                                            (let ((_$e177116_ _tag177114_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177116_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx176860_
                                                     _where177032_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177116_))
                                                      (let ((__tmp182787
                                                             (cdr _body177113_))
                                                            (__tmp182786
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177098_ '1))))
                (declare (not safe))
                (_lp177095_ __tmp182787 __tmp182786))
              _n177098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177099177106_))
                                        (let ((_hd177103177122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177099177106_)))
                                              (_tl177104177124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177099177106_))))
                                          (let* ((_tag177127_ _hd177103177122_)
                                                 (_body177129_
                                                  _tl177104177124_))
                                            (declare (not safe))
                                            (_K177102177119_
                                             _body177129_
                                             _tag177127_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177101177110_)))))))
                             (_splice-vars177042_
                              (lambda (_e177049_)
                                (let _recur177051_ ((_e177053_ _e177049_)
                                                    (_vars177054_ '()))
                                  (let* ((_e177055177062_ _e177053_)
                                         (_E177057177066_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177055177062_)))
                                         (_K177058177081_
                                          (lambda (_body177069_ _tag177070_)
                                            (let ((_$e177072_ _tag177070_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177072_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177069_
                                                          _vars177054_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177072_))
                  (let () (declare (not safe)) (eq? 'splice _$e177072_)))
              (let ((__tmp182790 (cdr _body177069_))
                    (__tmp182788
                     (let ((__tmp182789 (car _body177069_)))
                       (declare (not safe))
                       (_recur177051_ __tmp182789 _vars177054_))))
                (declare (not safe))
                (_recur177051_ __tmp182790 __tmp182788))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177072_))
                      (let () (declare (not safe)) (eq? 'box _$e177072_)))
                  (let ()
                    (declare (not safe))
                    (_recur177051_ _body177069_ _vars177054_))
                  _vars177054_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177055177062_))
                                        (let ((_hd177059177084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177055177062_)))
                                              (_tl177060177086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177055177062_))))
                                          (let* ((_tag177089_ _hd177059177084_)
                                                 (_body177091_
                                                  _tl177060177086_))
                                            (declare (not safe))
                                            (_K177058177081_
                                             _body177091_
                                             _tag177089_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177057177066_)))))))
                             (_make-body177043_
                              (lambda (_vars177045_)
                                (let ((__tmp182791
                                       (map (lambda (_mvar177047_)
                                              (let ((__tmp182792
                                                     (car _mvar177047_)))
                                                (declare (not safe))
                                                (assgetq __tmp182792
                                                         _vars177045_
                                                         _BUG177039_)))
                                            _mvars177035_)))
                                  (declare (not safe))
                                  (cons _K177036_ __tmp182791)))))
                      (let ()
                        (declare (not safe))
                        (_recur177040_
                         _hd177034_
                         '()
                         _target177033_
                         _E177037_
                         _make-body177043_)))))
                 (_parse-clause176869_
                  (lambda (_hd176938_ _ids176939_)
                    (let _recur176941_ ((_e176943_ _hd176938_)
                                        (_vars176944_ '())
                                        (_depth176945_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e176943_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e176943_))
                              (values '(any) _vars176944_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e176943_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx176860_
                                     _hd176938_))
                                  (if (let ((__tmp182808
                                             (lambda (_id176947_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e176943_
                                                  _id176947_)))))
                                        (declare (not safe))
                                        (find __tmp182808 _ids176939_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e176943_))
                                              _vars176944_)
                                      (if (let ((__tmp182806
                                                 (lambda (_var176949_)
                                                   (let ((__tmp182807
                                                          (car _var176949_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e176943_
                                                      __tmp182807)))))
                                            (declare (not safe))
                                            (find __tmp182806 _vars176944_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx176860_
                                             _e176943_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e176943_))
                                                  (let ((__tmp182805
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e176943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth176945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182805
                                                          _vars176944_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e176943_))
                              (let* ((_e176950176957_ _e176943_)
                                     (_E176952176961_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e176950176957_))))
                                     (_E176951177022_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e176950176957_))
                                            (let ((_e176953176965_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e176950176957_))))
                                              (let ((_hd176954176968_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e176953176965_)))
                                                    (_tl176955176970_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e176953176965_))))
                                                (let* ((_hd176973_
                                                        _hd176954176968_)
                                                       (_rest176975_
                                                        _tl176955176970_))
                                                  (if '#t
                                                      (let* ((_make-pair176990_
                                                              (lambda (_tag176977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd176978_
                               _tl176979_)
                        (let* ((_hd-depth176981_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag176977_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth176945_ '1))
                                    _depth176945_))
                               (_g182800_
                                (let ()
                                  (declare (not safe))
                                  (_recur176941_
                                   _hd176978_
                                   _vars176944_
                                   _hd-depth176981_))))
                          (begin
                            (let ((_g182801_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g182800_)
                                         (##vector-length _g182800_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g182801_ 2)))
                                  (error "Context expects 2 values"
                                         _g182801_)))
                            (let ((_hd176983_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182800_ 0)))
                                  (_vars176984_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182800_ 1))))
                              (let ((_g182802_
                                     (let ()
                                       (declare (not safe))
                                       (_recur176941_
                                        _tl176979_
                                        _vars176984_
                                        _depth176945_))))
                                (begin
                                  (let ((_g182803_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g182802_)
                                               (##vector-length _g182802_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g182803_ 2)))
                                        (error "Context expects 2 values"
                                               _g182803_)))
                                  (let ((_tl176986_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182802_ 0)))
                                        (_vars176987_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182802_ 1))))
                                    (let ()
                                      (values (let ((__tmp182804
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd176983_
                                                             _tl176986_))))
                                                (declare (not safe))
                                                (cons _tag176977_ __tmp182804))
                                              _vars176987_))))))))))
                     (_e176991176998_ _rest176975_)
                     (_E176993177002_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair176990_ 'cons _hd176973_ _rest176975_))))
                     (_E176992177018_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e176991176998_))
                            (let ((_e176994177006_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e176991176998_))))
                              (let ((_hd176995177009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e176994177006_)))
                                    (_tl176996177011_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e176994177006_))))
                                (let* ((_rest-hd177014_ _hd176995177009_)
                                       (_rest-tl177016_ _tl176996177011_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177014_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair176990_
                                             'splice
                                             _hd176973_
                                             _rest-tl177016_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair176990_
                                             'cons
                                             _hd176973_
                                             _rest176975_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E176993177002_))))))
                            (let () (declare (not safe)) (_E176993177002_))))))
                (let () (declare (not safe)) (_E176992177018_)))
              (let () (declare (not safe)) (_E176952176961_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E176952176961_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176951177022_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e176943_))
                                  (values '(null) _vars176944_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e176943_))
                                      (let ((_g182797_
                                             (let ((__tmp182799
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e176943_)))))
                                               (declare (not safe))
                                               (_recur176941_
                                                __tmp182799
                                                _vars176944_
                                                _depth176945_))))
                                        (begin
                                          (let ((_g182798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g182797_)
                                                       (##vector-length
                                                        _g182797_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g182798_ 2)))
                                                (error "Context expects 2 values"
                                                       _g182798_)))
                                          (let ((_e177026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g182797_ 0)))
                                                (_vars177027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g182797_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177026_))
                                                    _vars177027_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e176943_))
                                          (let ((_g182794_
                                                 (let ((__tmp182796
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e176943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur176941_
                                                    __tmp182796
                                                    _vars176944_
                                                    _depth176945_))))
                                            (begin
                                              (let ((_g182795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g182794_)
                                                           (##vector-length
                                                            _g182794_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g182795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g182795_)))
                                              (let ((_e177029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182794_
                                                        0)))
                                                    (_vars177030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182794_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177029_))
                                                        _vars177030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e176943_))
                                              (values (let ((__tmp182793
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e176943_))))
                (declare (not safe))
                (cons 'datum __tmp182793))
              _vars176944_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx176860_
                                                 _e176943_))))))))))))
          (let* ((_e176870176883_ _stx176860_)
                 (_E176872176887_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e176870176883_))))
                 (_E176871176934_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176870176883_))
                        (let ((_e176873176891_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176870176883_))))
                          (let ((_hd176874176894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176873176891_)))
                                (_tl176875176896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176873176891_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176875176896_))
                                (let ((_e176876176899_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176875176896_))))
                                  (let ((_hd176877176902_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176876176899_)))
                                        (_tl176878176904_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176876176899_))))
                                    (let ((_expr176907_ _hd176877176902_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl176878176904_))
                                          (let ((_e176879176909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl176878176904_))))
                                            (let ((_hd176880176912_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e176879176909_)))
                                                  (_tl176881176914_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e176879176909_))))
                                              (let* ((_ids176917_
                                                      _hd176880176912_)
                                                     (_clauses176919_
                                                      _tl176881176914_))
                                                (if '#t
                                                    (if (let ((__tmp182826
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids176917_))))
                  (declare (not safe))
                  (not __tmp182826))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx176860_
                   _ids176917_))
                (if (let ((__tmp182825
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses176919_))))
                      (declare (not safe))
                      (not __tmp182825))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx176860_))
                    (let* ((_ids176921_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids176917_)))
                           (_clauses176923_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses176919_)))
                           (_clause-ids176925_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses176923_)))
                           (_E176927_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target176929_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first176931_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses176923_))
                                _E176927_
                                (car _clause-ids176925_))))
                      (let ((__tmp182810
                             (let ((__tmp182811
                                    (let ((__tmp182813
                                           (let ((__tmp182818
                                                  (let ((__tmp182819
                                                         (let ((__tmp182824
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E176927_ '())))
                       (__tmp182820
                        (let ((__tmp182821
                               (let ((__tmp182823
                                      (let ()
                                        (declare (not safe))
                                        (cons _target176929_ '())))
                                     (__tmp182822
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target176929_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp182823
                                  __tmp182822))))
                          (declare (not safe))
                          (cons __tmp182821 '()))))
                   (declare (not safe))
                   (cons __tmp182824 __tmp182820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182819 '())))
                                                 (__tmp182814
                                                  (let ((__tmp182817
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings176865_
                                                            _target176929_
                                                            _ids176921_
                                                            _clauses176923_
                                                            _clause-ids176925_
                                                            _E176927_)))
                                                        (__tmp182815
                                                         (let ((__tmp182816
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr176907_ '()))))
                   (declare (not safe))
                   (cons _first176931_ __tmp182816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body176866_
                                                     __tmp182817
                                                     __tmp182815))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp182818
                                              __tmp182814)))
                                          (__tmp182812
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx176860_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp182813
                                       __tmp182812))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp182811)))
                            (__tmp182809
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx176860_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp182810 __tmp182809)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176872176887_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176872176887_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176872176887_)))))
                        (let () (declare (not safe)) (_E176872176887_))))))
            (let () (declare (not safe)) (_E176871176934_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177570_)
        (let* ((_identifier=?177572_ 'free-identifier=?)
               (_unwrap-e177574_ 'syntax-e)
               (_wrap-e177576_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177570_
           _identifier=?177572_
           _unwrap-e177574_
           _wrap-e177576_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177578_ _identifier=?177579_)
        (let* ((_unwrap-e177581_ 'syntax-e) (_wrap-e177583_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177578_
           _identifier=?177579_
           _unwrap-e177581_
           _wrap-e177583_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177585_ _identifier=?177586_ _unwrap-e177587_)
        (let ((_wrap-e177589_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177585_
           _identifier=?177586_
           _unwrap-e177587_
           _wrap-e177589_))))
    (define gx#macro-expand-syntax-case
      (lambda _g182828_
        (let ((_g182827_ (let () (declare (not safe)) (##length _g182828_))))
          (cond ((let () (declare (not safe)) (##fx= _g182827_ 1))
                 (apply (lambda (_stx177570_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177570_)))
                        _g182828_))
                ((let () (declare (not safe)) (##fx= _g182827_ 2))
                 (apply (lambda (_stx177578_ _identifier=?177579_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177578_
                             _identifier=?177579_)))
                        _g182828_))
                ((let () (declare (not safe)) (##fx= _g182827_ 3))
                 (apply (lambda (_stx177585_
                                 _identifier=?177586_
                                 _unwrap-e177587_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177585_
                             _identifier=?177586_
                             _unwrap-e177587_)))
                        _g182828_))
                ((let () (declare (not safe)) (##fx= _g182827_ 4))
                 (apply (lambda (_stx177591_
                                 _identifier=?177592_
                                 _unwrap-e177593_
                                 _wrap-e177594_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177591_
                             _identifier=?177592_
                             _unwrap-e177593_
                             _wrap-e177594_)))
                        _g182828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g182828_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx176857_)
        (if (let () (declare (not safe)) (gx#identifier? _stx176857_))
            (let ((__tmp182829
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx176857_ false))))
              (declare (not safe))
              (class-instance? gx#syntax-pattern::t __tmp182829))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd176815_ . _rest176816_)
        (let ((_len176818_ (length _hd176815_)))
          (let _lp176820_ ((_rest176822_ _rest176816_))
            (let* ((_rest176823176831_ _rest176822_)
                   (_else176825176839_ (lambda () '#!void))
                   (_K176827176845_
                    (lambda (_rest176842_ _hd176843_)
                      (if (fx= _len176818_ (length _hd176843_))
                          (let ()
                            (declare (not safe))
                            (_lp176820_ _rest176842_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd176843_))))))
              (if (let () (declare (not safe)) (##pair? _rest176823176831_))
                  (let ((_hd176828176848_
                         (let ()
                           (declare (not safe))
                           (##car _rest176823176831_)))
                        (_tl176829176850_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest176823176831_))))
                    (let* ((_hd176853_ _hd176828176848_)
                           (_rest176855_ _tl176829176850_))
                      (declare (not safe))
                      (_K176827176845_ _rest176855_ _hd176853_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx176773_ _n176774_)
        (let _lp176776_ ((_rest176778_ _stx176773_) (_r176779_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest176778_))
              (let* ((_g176780176787_
                      (let () (declare (not safe)) (gx#syntax-e _rest176778_)))
                     (_E176782176791_
                      (lambda ()
                        (error '"No clause matching" _g176780176787_)))
                     (_K176783176797_
                      (lambda (_rest176794_ _hd176795_)
                        (let ((__tmp182834
                               (let ()
                                 (declare (not safe))
                                 (cons _hd176795_ _r176779_))))
                          (declare (not safe))
                          (_lp176776_ _rest176794_ __tmp182834)))))
                (if (let () (declare (not safe)) (##pair? _g176780176787_))
                    (let ((_hd176784176800_
                           (let ()
                             (declare (not safe))
                             (##car _g176780176787_)))
                          (_tl176785176802_
                           (let ()
                             (declare (not safe))
                             (##cdr _g176780176787_))))
                      (let* ((_hd176805_ _hd176784176800_)
                             (_rest176807_ _tl176785176802_))
                        (declare (not safe))
                        (_K176783176797_ _rest176807_ _hd176805_)))
                    (let () (declare (not safe)) (_E176782176791_))))
              (let _lp176809_ ((_n176811_ _n176774_)
                               (_l176812_ _r176779_)
                               (_r176813_ _rest176778_))
                (if (let () (declare (not safe)) (null? _l176812_))
                    (values _l176812_ _r176813_)
                    (if (fxpositive? _n176811_)
                        (let ((__tmp182833
                               (let ()
                                 (declare (not safe))
                                 (fx- _n176811_ '1)))
                              (__tmp182832 (cdr _l176812_))
                              (__tmp182830
                               (let ((__tmp182831 (car _l176812_)))
                                 (declare (not safe))
                                 (cons __tmp182831 _r176813_))))
                          (declare (not safe))
                          (_lp176809_ __tmp182833 __tmp182832 __tmp182830))
                        (values (reverse _l176812_) _r176813_))))))))))
