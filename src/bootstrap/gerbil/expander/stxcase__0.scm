(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707647934)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182711 (list gx#expander::t)))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp182711
         '(id depth)
         '()
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178238_
        (apply make-class-instance gx#syntax-pattern::t _$args178238_)))
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
      (lambda (_self178235_ _stx178236_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178236_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177717_)
        (letrec ((_generate177719_
                  (lambda (_e177946_)
                    (letrec ((_BUG177948_
                              (lambda (_q178110_)
                                (error '"BUG: syntax; generate"
                                       _stx177717_
                                       _e177946_
                                       _q178110_)))
                             (_local-pattern-e177949_
                              (lambda (_pat178108_)
                                (let ((__tmp182712
                                       (let ((__obj182709 _pat178108_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj182709
                                                'gx#syntax-pattern::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj182709
                                                '2
                                                gx#syntax-pattern::t
                                                '#f))
                                             (class-slot-ref
                                              gx#syntax-pattern::t
                                              __obj182709
                                              'id)))))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182712))))
                             (_getvar177950_
                              (lambda (_q178105_ _vars178106_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178105_
                                           _vars178106_
                                           _BUG177948_))))
                             (_getarg177951_
                              (lambda (_arg178071_ _vars178072_)
                                (let* ((_arg178073178080_ _arg178071_)
                                       (_E178075178084_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178073178080_)))
                                       (_K178076178093_
                                        (lambda (_e178087_ _tag178088_)
                                          (let ((_$e178090_ _tag178088_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178090_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar177950_
                                                   _e178087_
                                                   _vars178072_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178090_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e177949_
                                                       _e178087_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG177948_
                                                       _arg178071_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178073178080_))
                                      (let ((_hd178077178096_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178073178080_)))
                                            (_tl178078178098_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178073178080_))))
                                        (let* ((_tag178101_ _hd178077178096_)
                                               (_e178103_ _tl178078178098_))
                                          (declare (not safe))
                                          (_K178076178093_
                                           _e178103_
                                           _tag178101_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178075178084_)))))))
                      (let _recur177953_ ((_e177955_ _e177946_)
                                          (_vars177956_ '()))
                        (let* ((_e177957177964_ _e177955_)
                               (_E177959177968_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e177957177964_)))
                               (_K177960178059_
                                (lambda (_body177971_ _tag177972_)
                                  (let ((_$e177974_ _tag177972_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177974_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body177971_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e177974_))
                                            (let ((_id177977_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body177971_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id177977_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks177979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id177977_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks177979_))
                                                        (let ((__tmp182740
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body177971_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182740))
                (let ((__tmp182739
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body177971_)))
                      (__tmp182738
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body177971_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182739
                   __tmp182738
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id177977_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body177971_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG177948_
                                                         _e177955_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e177974_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e177949_
                                                   _body177971_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e177974_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar177950_
                                                       _body177971_
                                                       _vars177956_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e177974_))
                                                        (let ((__tmp182736
                                                               (let ((__tmp182737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body177971_)))
                         (declare (not safe))
                         (_recur177953_ __tmp182737 _vars177956_)))
                      (__tmp182734
                       (let ((__tmp182735 (cdr _body177971_)))
                         (declare (not safe))
                         (_recur177953_ __tmp182735 _vars177956_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182736 __tmp182734))
                (if (let () (declare (not safe)) (eq? 'vector _$e177974_))
                    (let ((__tmp182733
                           (let ()
                             (declare (not safe))
                             (_recur177953_ _body177971_ _vars177956_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182733))
                    (if (let () (declare (not safe)) (eq? 'box _$e177974_))
                        (let ((__tmp182732
                               (let ()
                                 (declare (not safe))
                                 (_recur177953_ _body177971_ _vars177956_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182732))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e177974_))
                            (let* ((_body177980177991_ _body177971_)
                                   (_E177982177995_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body177980177991_)))
                                   (_K177983178033_
                                    (lambda (_args177998_
                                             _iv177999_
                                             _hd178000_
                                             _depth178001_)
                                      (let* ((_targets178007_
                                              (map (lambda (_g178002178004_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg177951_
                                                        _g178002178004_
                                                        _vars177956_)))
                                                   _args177998_))
                                             (_fold-in178009_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args177998_)))
                                             (_fold-out178011_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178013_
                                              (let ((__tmp182713
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178011_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182713
                                                        _fold-in178009_)))
                                             (_lambda-body178030_
                                              (if (fx> _depth178001_ '1)
                                                  (let ((_r-args178021_
                                                         (map (lambda (_arg178015_)
                                                                (let ((__tmp182718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178015_)))
                          (declare (not safe))
                          (cons 'ref __tmp182718)))
                      _args177998_))
                (_r-vars178022_
                 (let ((__tmp182719
                        (lambda (_arg178017_ _var178018_ _r178019_)
                          (let ((__tmp182720
                                 (let ((__tmp182721 (cdr _arg178017_)))
                                   (declare (not safe))
                                   (cons __tmp182721 _var178018_))))
                            (declare (not safe))
                            (cons __tmp182720 _r178019_)))))
                   (declare (not safe))
                   (foldr2 __tmp182719
                           _vars177956_
                           _args177998_
                           _fold-in178009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182722
                                                           (let ((__tmp182723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182727
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178001_ '1)))
                                (__tmp182724
                                 (let ((__tmp182725
                                        (let ((__tmp182726
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178011_))))
                                          (declare (not safe))
                                          (cons __tmp182726 _r-args178021_))))
                                   (declare (not safe))
                                   (cons _hd178000_ __tmp182725))))
                            (declare (not safe))
                            (cons __tmp182727 __tmp182724))))
                     (declare (not safe))
                     (cons 'splice __tmp182723))))
              (declare (not safe))
              (_recur177953_ __tmp182722 _r-vars178022_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178028_
                                                          (let ((__tmp182714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178024_ _var178025_ _r178026_)
                           (let ((__tmp182715
                                  (let ((__tmp182716 (cdr _arg178024_)))
                                    (declare (not safe))
                                    (cons __tmp182716 _var178025_))))
                             (declare (not safe))
                             (cons __tmp182715 _r178026_)))))
                    (declare (not safe))
                    (foldr2 __tmp182714
                            _vars177956_
                            _args177998_
                            _fold-in178009_)))
                 (__tmp182717
                  (let ()
                    (declare (not safe))
                    (_recur177953_ _hd178000_ _hd-vars178028_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182717
                                                     _fold-out178011_)))))
                                        (let ((__tmp182731
                                               (if (fx> (length _targets178007_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178007_))
                                                   '#!void))
                                              (__tmp182728
                                               (let ((__tmp182730
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178013_
                                                         _lambda-body178030_)))
                                                     (__tmp182729
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur177953_
                                                         _iv177999_
                                                         _vars177956_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182730
                                                  __tmp182729
                                                  _targets178007_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182731
                                           __tmp182728))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body177980177991_))
                                  (let ((_hd177984178036_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body177980177991_)))
                                        (_tl177985178038_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body177980177991_))))
                                    (let ((_depth178041_ _hd177984178036_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl177985178038_))
                                          (let ((_hd177986178043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl177985178038_)))
                                                (_tl177987178045_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl177985178038_))))
                                            (let ((_hd178048_
                                                   _hd177986178043_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl177987178045_))
                                                  (let ((_hd177988178050_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl177987178045_)))
                                                        (_tl177989178052_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl177987178045_))))
                                                    (let* ((_iv178055_
                                                            _hd177988178050_)
                                                           (_args178057_
                                                            _tl177989178052_))
                                                      (declare (not safe))
                                                      (_K177983178033_
                                                       _args178057_
                                                       _iv178055_
                                                       _hd178048_
                                                       _depth178041_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177982177995_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177982177995_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E177982177995_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e177974_))
                                _body177971_
                                (let ()
                                  (declare (not safe))
                                  (_BUG177948_ _e177955_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e177957177964_))
                              (let ((_hd177961178062_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177957177964_)))
                                    (_tl177962178064_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177957177964_))))
                                (let* ((_tag178067_ _hd177961178062_)
                                       (_body178069_ _tl177962178064_))
                                  (declare (not safe))
                                  (_K177960178059_ _body178069_ _tag178067_)))
                              (let ()
                                (declare (not safe))
                                (_E177959177968_))))))))
                 (_parse177720_
                  (lambda (_e177761_)
                    (letrec ((_make-cons177763_
                              (lambda (_hd177938_ _tl177939_)
                                (let ((_g182741_ _hd177938_)
                                      (_g182743_ _tl177939_))
                                  (begin
                                    (let ((_g182742_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182741_)
                                                 (##vector-length _g182741_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182742_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182742_)))
                                    (let ((_g182744_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182743_)
                                                 (##vector-length _g182743_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182744_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182744_)))
                                    (let ((_hd-e177941_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182741_ 0)))
                                          (_hd-vars177942_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182741_ 1))))
                                      (let ((_tl-e177943_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182743_ 0)))
                                            (_tl-vars177944_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182743_ 1))))
                                        (values (let ((__tmp182745
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e177941_
                                                               _tl-e177943_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182745))
                                                (append _hd-vars177942_
                                                        _tl-vars177944_))))))))
                             (_make-splice177764_
                              (lambda (_where177877_
                                       _depth177878_
                                       _hd177879_
                                       _tl177880_)
                                (let ((_g182746_ _hd177879_)
                                      (_g182748_ _tl177880_))
                                  (begin
                                    (let ((_g182747_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182746_)
                                                 (##vector-length _g182746_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182747_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182747_)))
                                    (let ((_g182749_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182748_)
                                                 (##vector-length _g182748_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182749_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182749_)))
                                    (let ((_hd-e177882_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182746_ 0)))
                                          (_hd-vars177883_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182746_ 1))))
                                      (let ((_tl-e177884_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182748_ 0)))
                                            (_tl-vars177885_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182748_ 1))))
                                        (let _lp177887_ ((_rest177889_
                                                          _hd-vars177883_)
                                                         (_targets177890_ '())
                                                         (_vars177891_
                                                          _tl-vars177885_))
                                          (let* ((_rest177892177902_
                                                  _rest177889_)
                                                 (_else177894177910_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets177890_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177717_
                                                           _where177877_))
                                                        (values (let ((__tmp182750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182751
                                      (let ((__tmp182752
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e177884_
                                                     _targets177890_))))
                                        (declare (not safe))
                                        (cons _hd-e177882_ __tmp182752))))
                                 (declare (not safe))
                                 (cons _depth177878_ __tmp182751))))
                          (declare (not safe))
                          (cons 'splice __tmp182750))
                        _vars177891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K177896177919_
                                                  (lambda (_rest177913_
                                                           _hd-pat177914_
                                                           _hd-depth*177915_)
                                                    (let ((_hd-depth177917_
                                                           (fx- _hd-depth*177915_
                                                                _depth177878_)))
                                                      (if (fxpositive?
                                                           _hd-depth177917_)
                                                          (let ((__tmp182757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182758
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat177914_))))
                           (declare (not safe))
                           (cons __tmp182758 _targets177890_)))
                        (__tmp182755
                         (let ((__tmp182756
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth177917_ _hd-pat177914_))))
                           (declare (not safe))
                           (cons __tmp182756 _vars177891_))))
                    (declare (not safe))
                    (_lp177887_ _rest177913_ __tmp182757 __tmp182755))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth177917_))
                      (let ((__tmp182753
                             (let ((__tmp182754
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat177914_))))
                               (declare (not safe))
                               (cons __tmp182754 _targets177890_))))
                        (declare (not safe))
                        (_lp177887_ _rest177913_ __tmp182753 _vars177891_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177717_
                         _where177877_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest177892177902_))
                                                (let ((_hd177897177922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest177892177902_)))
                                                      (_tl177898177924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest177892177902_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd177897177922_))
                                                      (let ((_hd177899177927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd177897177922_)))
                    (_tl177900177929_
                     (let () (declare (not safe)) (##cdr _hd177897177922_))))
                (let* ((_hd-depth*177932_ _hd177899177927_)
                       (_hd-pat177934_ _tl177900177929_)
                       (_rest177936_ _tl177898177924_))
                  (declare (not safe))
                  (_K177896177919_
                   _rest177936_
                   _hd-pat177934_
                   _hd-depth*177932_)))
              (let () (declare (not safe)) (_else177894177910_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else177894177910_)))))))))))
                             (_recur177765_
                              (lambda (_e177770_ _is-e?177771_)
                                (if (_is-e?177771_ _e177770_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177717_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e177770_))
                                        (let* ((_pat177773_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e177770_)))
                                               (_depth177775_
                                                (let ((__obj182710
                                                       _pat177773_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj182710
                                                         'gx#syntax-pattern::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj182710
                                                         '3
                                                         gx#syntax-pattern::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gx#syntax-pattern::t
                                                       __obj182710
                                                       'depth)))))
                                          (if (fxpositive? _depth177775_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat177773_))
                                                      (let ((__tmp182774
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth177775_ _pat177773_))))
                (declare (not safe))
                (cons __tmp182774 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat177773_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e177770_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e177770_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e177770_))
                                                (let* ((_e177777177784_
                                                        _e177770_)
                                                       (_E177779177788_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e177777177784_))))
                                                       (_E177778177867_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e177777177784_))
                      (let ((_e177780177792_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e177777177784_))))
                        (let ((_hd177781177795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e177780177792_)))
                              (_tl177782177797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e177780177792_))))
                          (let* ((_hd177800_ _hd177781177795_)
                                 (_rest177802_ _tl177782177797_))
                            (if '#t
                                (if (_is-e?177771_ _hd177800_)
                                    (let* ((_e177803177810_ _rest177802_)
                                           (_E177805177814_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177717_
                                                 _e177770_))))
                                           (_E177804177828_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e177803177810_))
                                                  (let ((_e177806177818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e177803177810_))))
                                                    (let ((_hd177807177821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e177806177818_)))
                                                          (_tl177808177823_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e177806177818_))))
                                                      (let ((_rest177826_
                                                             _hd177807177821_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl177808177823_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur177765_ _rest177826_ false))
                        (let () (declare (not safe)) (_E177805177814_)))
                    (let () (declare (not safe)) (_E177805177814_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177805177814_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E177804177828_)))
                                    (let _lp177832_ ((_rest177834_
                                                      _rest177802_)
                                                     (_depth177835_ '0))
                                      (let* ((_e177836177843_ _rest177834_)
                                             (_E177838177847_
                                              (lambda ()
                                                (if (fxpositive? _depth177835_)
                                                    (let ((__tmp182768
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177765_
                                                              _hd177800_
                                                              _is-e?177771_)))
                                                          (__tmp182767
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177765_
                                                              _rest177834_
                                                              _is-e?177771_))))
                                                      (declare (not safe))
                                                      (_make-splice177764_
                                                       _e177770_
                                                       _depth177835_
                                                       __tmp182768
                                                       __tmp182767))
                                                    (let ((__tmp182766
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177765_
                                                              _hd177800_
                                                              _is-e?177771_)))
                                                          (__tmp182765
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177765_
                                                              _rest177834_
                                                              _is-e?177771_))))
                                                      (declare (not safe))
                                                      (_make-cons177763_
                                                       __tmp182766
                                                       __tmp182765)))))
                                             (_E177837177863_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e177836177843_))
                                                    (let ((_e177839177851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e177836177843_))))
                                                      (let ((_hd177840177854_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e177839177851_)))
                    (_tl177841177856_
                     (let () (declare (not safe)) (##cdr _e177839177851_))))
                (let* ((_rest-hd177859_ _hd177840177854_)
                       (_rest-tl177861_ _tl177841177856_))
                  (if '#t
                      (if (_is-e?177771_ _rest-hd177859_)
                          (let ((__tmp182773
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth177835_ '1))))
                            (declare (not safe))
                            (_lp177832_ _rest-tl177861_ __tmp182773))
                          (if (fxpositive? _depth177835_)
                              (let ((__tmp182772
                                     (let ()
                                       (declare (not safe))
                                       (_recur177765_
                                        _hd177800_
                                        _is-e?177771_)))
                                    (__tmp182771
                                     (let ()
                                       (declare (not safe))
                                       (_recur177765_
                                        _rest177834_
                                        _is-e?177771_))))
                                (declare (not safe))
                                (_make-splice177764_
                                 _e177770_
                                 _depth177835_
                                 __tmp182772
                                 __tmp182771))
                              (let ((__tmp182770
                                     (let ()
                                       (declare (not safe))
                                       (_recur177765_
                                        _hd177800_
                                        _is-e?177771_)))
                                    (__tmp182769
                                     (let ()
                                       (declare (not safe))
                                       (_recur177765_
                                        _rest177834_
                                        _is-e?177771_))))
                                (declare (not safe))
                                (_make-cons177763_ __tmp182770 __tmp182769))))
                      (let () (declare (not safe)) (_E177838177847_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177838177847_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E177837177863_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E177779177788_))))))
                      (let () (declare (not safe)) (_E177779177788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177778177867_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e177770_))
                                                    (let ((_g182762_
                                                           (let ((__tmp182764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e177770_)))))
                     (declare (not safe))
                     (_recur177765_ __tmp182764 _is-e?177771_))))
              (begin
                (let ((_g182763_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g182762_)
                             (##vector-length _g182762_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g182763_ 2)))
                      (error "Context expects 2 values" _g182763_)))
                (let ((_e177871_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182762_ 0)))
                      (_vars177872_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182762_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e177871_))
                          _vars177872_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e177770_))
                                                        (let ((_g182759_
                                                               (let ((__tmp182761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e177770_)))))
                         (declare (not safe))
                         (_recur177765_ __tmp182761 _is-e?177771_))))
                  (begin
                    (let ((_g182760_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g182759_)
                                 (##vector-length _g182759_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g182760_ 2)))
                          (error "Context expects 2 values" _g182760_)))
                    (let ((_e177874_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182759_ 0)))
                          (_vars177875_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182759_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e177874_))
                              _vars177875_))))
                (values (let () (declare (not safe)) (cons 'datum _e177770_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g182775_
                             (let ()
                               (declare (not safe))
                               (_recur177765_ _e177761_ gx#ellipsis?))))
                        (begin
                          (let ((_g182776_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g182775_)
                                       (##vector-length _g182775_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g182776_ 2)))
                                (error "Context expects 2 values" _g182776_)))
                          (let ((_tree177767_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182775_ 0)))
                                (_vars177768_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182775_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars177768_))
                                _tree177767_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177717_
                                   _vars177768_))))))))))
          (let* ((_e177721177731_ _stx177717_)
                 (_E177723177735_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177717_))))
                 (_E177722177757_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177721177731_))
                        (let ((_e177724177739_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177721177731_))))
                          (let ((_hd177725177742_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177724177739_)))
                                (_tl177726177744_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177724177739_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177726177744_))
                                (let ((_e177727177747_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177726177744_))))
                                  (let ((_hd177728177750_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177727177747_)))
                                        (_tl177729177752_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177727177747_))))
                                    (let ((_form177755_ _hd177728177750_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177729177752_))
                                          (if '#t
                                              (let ((__tmp182778
                                                     (let ((__tmp182779
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177720_
                                                               _form177755_))))
                                                       (declare (not safe))
                                                       (_generate177719_
                                                        __tmp182779)))
                                                    (__tmp182777
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177717_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp182778
                                                 __tmp182777))
                                              (let ()
                                                (declare (not safe))
                                                (_E177723177735_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177723177735_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177723177735_)))))
                        (let () (declare (not safe)) (_E177723177735_))))))
            (let () (declare (not safe)) (_E177722177757_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx176981_
               _identifier=?176982_
               _unwrap-e176983_
               _wrap-e176984_)
        (letrec ((_generate-bindings176986_
                  (lambda (_target177581_
                           _ids177582_
                           _clauses177583_
                           _clause-ids177584_
                           _E177585_)
                    (letrec ((_generate1177587_
                              (lambda (_clause177684_
                                       _clause-id177685_
                                       _E177686_)
                                (let ((__tmp182784
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177685_ '())))
                                      (__tmp182780
                                       (let ((__tmp182781
                                              (let ((__tmp182783
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177581_
                                                             '())))
                                                    (__tmp182782
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause176988_
                                                        _target177581_
                                                        _ids177582_
                                                        _clause177684_
                                                        _E177686_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp182783
                                                 __tmp182782))))
                                         (declare (not safe))
                                         (cons __tmp182781 '()))))
                                  (declare (not safe))
                                  (cons __tmp182784 __tmp182780)))))
                      (let _lp177589_ ((_rest177591_ _clauses177583_)
                                       (_rest-ids177592_ _clause-ids177584_)
                                       (_bindings177593_ '()))
                        (let* ((_rest177594177602_ _rest177591_)
                               (_else177596177610_
                                (lambda () _bindings177593_))
                               (_K177598177672_
                                (lambda (_rest177613_ _clause177614_)
                                  (let* ((_rest-ids177615177622_
                                          _rest-ids177592_)
                                         (_E177617177626_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177615177622_)))
                                         (_K177618177660_
                                          (lambda (_rest-ids177629_
                                                   _clause-id177630_)
                                            (let* ((_rest-ids177631177639_
                                                    _rest-ids177629_)
                                                   (_else177633177647_
                                                    (lambda ()
                                                      (let ((__tmp182785
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177587_
                        _clause177614_
                        _clause-id177630_
                        _E177585_))))
                (declare (not safe))
                (cons __tmp182785 _bindings177593_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177635177652_
                                                    (lambda (_next-clause-id177650_)
                                                      (let ((__tmp182786
                                                             (let ((__tmp182787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177587_
                               _clause177614_
                               _clause-id177630_
                               _next-clause-id177650_))))
                       (declare (not safe))
                       (cons __tmp182787 _bindings177593_))))
                (declare (not safe))
                (_lp177589_ _rest177613_ _rest-ids177629_ __tmp182786)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177631177639_))
                                                  (let* ((_hd177636177655_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177631177639_)))
                                                         (_next-clause-id177658_
                                                          _hd177636177655_))
                                                    (declare (not safe))
                                                    (_K177635177652_
                                                     _next-clause-id177658_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177633177647_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177615177622_))
                                        (let ((_hd177619177663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177615177622_)))
                                              (_tl177620177665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177615177622_))))
                                          (let* ((_clause-id177668_
                                                  _hd177619177663_)
                                                 (_rest-ids177670_
                                                  _tl177620177665_))
                                            (declare (not safe))
                                            (_K177618177660_
                                             _rest-ids177670_
                                             _clause-id177668_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177617177626_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177594177602_))
                              (let ((_hd177599177675_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177594177602_)))
                                    (_tl177600177677_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177594177602_))))
                                (let* ((_clause177680_ _hd177599177675_)
                                       (_rest177682_ _tl177600177677_))
                                  (declare (not safe))
                                  (_K177598177672_
                                   _rest177682_
                                   _clause177680_)))
                              (let ()
                                (declare (not safe))
                                (_else177596177610_))))))))
                 (_generate-body176987_
                  (lambda (_bindings177541_ _body177542_)
                    (let _recur177544_ ((_rest177546_ _bindings177541_))
                      (let* ((_rest177547177555_ _rest177546_)
                             (_else177549177563_ (lambda () _body177542_))
                             (_K177551177569_
                              (lambda (_rest177566_ _hd177567_)
                                (let ((__tmp182789
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177567_ '())))
                                      (__tmp182788
                                       (let ()
                                         (declare (not safe))
                                         (_recur177544_ _rest177566_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp182789
                                   __tmp182788)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177547177555_))
                            (let ((_hd177552177572_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177547177555_)))
                                  (_tl177553177574_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177547177555_))))
                              (let* ((_hd177577_ _hd177552177572_)
                                     (_rest177579_ _tl177553177574_))
                                (declare (not safe))
                                (_K177551177569_ _rest177579_ _hd177577_)))
                            (let ()
                              (declare (not safe))
                              (_else177549177563_)))))))
                 (_generate-clause176988_
                  (lambda (_target177404_ _ids177405_ _clause177406_ _E177407_)
                    (letrec ((_generate1177409_
                              (lambda (_hd177496_ _fender177497_ _body177498_)
                                (let ((_g182790_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause176990_
                                          _hd177496_
                                          _ids177405_))))
                                  (begin
                                    (let ((_g182791_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182790_)
                                                 (##vector-length _g182790_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182791_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182791_)))
                                    (let ((_e177500_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182790_ 0)))
                                          (_mvars177501_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182790_ 1))))
                                      (let* ((_pvars177503_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177501_))))
                                             (_E177505_
                                              (let ((__tmp182792
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177404_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177407_ __tmp182792)))
                                             (_K177538_
                                              (let ((__tmp182793
                                                     (let ((__tmp182795
                                                            (map (lambda (_mvar177507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177508_)
                           (let* ((_mvar177509177516_ _mvar177507_)
                                  (_E177511177520_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177509177516_)))
                                  (_K177512177526_
                                   (lambda (_depth177523_ _id177524_)
                                     (let ((__tmp182796
                                            (let ((__tmp182797
                                                   (let ((__tmp182799
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177524_)))
                                                         (__tmp182798
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177508_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp182799
                                                      __tmp182798
                                                      _depth177523_))))
                                              (declare (not safe))
                                              (cons __tmp182797 '()))))
                                       (declare (not safe))
                                       (cons _id177524_ __tmp182796)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177509177516_))
                                 (let ((_hd177513177529_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177509177516_)))
                                       (_tl177514177531_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177509177516_))))
                                   (let* ((_id177534_ _hd177513177529_)
                                          (_depth177536_ _tl177514177531_))
                                     (declare (not safe))
                                     (_K177512177526_
                                      _depth177536_
                                      _id177534_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177511177520_)))))
                         _mvars177501_
                         _pvars177503_))
                   (__tmp182794
                    (if (let () (declare (not safe)) (eq? _fender177497_ '#t))
                        _body177498_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177497_
                           _body177498_
                           _E177505_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp182795 __tmp182794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177503_
                                                 __tmp182793))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match176989_
                                           _hd177496_
                                           _target177404_
                                           _e177500_
                                           _mvars177501_
                                           _K177538_
                                           _E177505_)))))))))
                      (let* ((_e177410177430_ _clause177406_)
                             (_E177419177434_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177410177430_))))
                             (_E177412177468_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177410177430_))
                                    (let ((_e177420177438_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177410177430_))))
                                      (let ((_hd177421177441_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177420177438_)))
                                            (_tl177422177443_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177420177438_))))
                                        (let ((_hd177446_ _hd177421177441_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177422177443_))
                                              (let ((_e177423177448_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177422177443_))))
                                                (let ((_hd177424177451_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177423177448_)))
                                                      (_tl177425177453_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177423177448_))))
                                                  (let ((_fender177456_
                                                         _hd177424177451_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177425177453_))
                                                        (let ((_e177426177458_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177425177453_))))
                  (let ((_hd177427177461_
                         (let () (declare (not safe)) (##car _e177426177458_)))
                        (_tl177428177463_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177426177458_))))
                    (let ((_body177466_ _hd177427177461_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177428177463_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177409_
                                 _hd177446_
                                 _fender177456_
                                 _body177466_))
                              (let () (declare (not safe)) (_E177419177434_)))
                          (let () (declare (not safe)) (_E177419177434_))))))
                (let () (declare (not safe)) (_E177419177434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177419177434_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177419177434_)))))
                             (_E177411177492_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177410177430_))
                                    (let ((_e177413177472_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177410177430_))))
                                      (let ((_hd177414177475_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177413177472_)))
                                            (_tl177415177477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177413177472_))))
                                        (let ((_hd177480_ _hd177414177475_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177415177477_))
                                              (let ((_e177416177482_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177415177477_))))
                                                (let ((_hd177417177485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177416177482_)))
                                                      (_tl177418177487_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177416177482_))))
                                                  (let ((_body177490_
                                                         _hd177417177485_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177418177487_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177409_
                                                               _hd177480_
                                                               '#t
                                                               _body177490_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177412177468_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177412177468_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177412177468_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177412177468_))))))
                        (let () (declare (not safe)) (_E177411177492_))))))
                 (_generate-match176989_
                  (lambda (_where177153_
                           _target177154_
                           _hd177155_
                           _mvars177156_
                           _K177157_
                           _E177158_)
                    (letrec ((_BUG177160_
                              (lambda (_q177402_)
                                (error '"BUG: syntax-case; generate"
                                       _stx176981_
                                       _hd177155_
                                       _q177402_)))
                             (_recur177161_
                              (lambda (_e177252_
                                       _vars177253_
                                       _target177254_
                                       _E177255_
                                       _k177256_)
                                (let* ((_e177257177264_ _e177252_)
                                       (_E177259177268_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177257177264_)))
                                       (_K177260177390_
                                        (lambda (_body177271_ _tag177272_)
                                          (let ((_$e177274_ _tag177272_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177274_))
                                                (_k177256_ _vars177253_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177274_))
                                                    (let ((__tmp182906
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177254_)))
                                                          (__tmp182902
                                                           (let ((__tmp182904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182905
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e176984_
                                    _body177271_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?176982_
                             __tmp182905
                             _target177254_)))
                         (__tmp182903 (_k177256_ _vars177253_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp182904 __tmp182903 _E177255_))))
              (declare (not safe))
              (gx#core-list 'if __tmp182906 __tmp182902 _E177255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177274_))
                                                        (_k177256_
                                                         (let ((__tmp182901
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177271_ _target177254_))))
                   (declare (not safe))
                   (cons __tmp182901 _vars177253_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177274_))
                    (let ((_$e177277_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177278_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177279_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp182900
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177254_)))
                            (__tmp182881
                             (let ((__tmp182895
                                    (let ((__tmp182896
                                           (let ((__tmp182899
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177277_ '())))
                                                 (__tmp182897
                                                  (let ((__tmp182898
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e176983_
                                                            _target177254_))))
                                                    (declare (not safe))
                                                    (cons __tmp182898 '()))))
                                             (declare (not safe))
                                             (cons __tmp182899 __tmp182897))))
                                      (declare (not safe))
                                      (cons __tmp182896 '())))
                                   (__tmp182882
                                    (let ((__tmp182885
                                           (let ((__tmp182891
                                                  (let ((__tmp182894
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp182892
                 (let ((__tmp182893
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177277_))))
                   (declare (not safe))
                   (cons __tmp182893 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182894
                                                          __tmp182892)))
                                                 (__tmp182886
                                                  (let ((__tmp182887
                                                         (let ((__tmp182890
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177279_ '())))
                       (__tmp182888
                        (let ((__tmp182889
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177277_))))
                          (declare (not safe))
                          (cons __tmp182889 '()))))
                   (declare (not safe))
                   (cons __tmp182890 __tmp182888))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182887 '()))))
                                             (declare (not safe))
                                             (cons __tmp182891 __tmp182886)))
                                          (__tmp182883
                                           (let* ((_body177280177287_
                                                   _body177271_)
                                                  (_E177282177291_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177280177287_)))
                                                  (_K177283177299_
                                                   (lambda (_tl177294_
                                                            _hd177295_)
                                                     (let ((__tmp182884
                                                            (lambda (_vars177297_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177161_
                         _tl177294_
                         _vars177297_
                         _$tl177279_
                         _E177255_
                         _k177256_)))))
               (declare (not safe))
               (_recur177161_
                _hd177295_
                _vars177253_
                _$hd177278_
                _E177255_
                __tmp182884)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177280177287_))
                                                 (let ((_hd177284177302_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177280177287_)))
                                                       (_tl177285177304_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177280177287_))))
                                                   (let* ((_hd177307_
                                                           _hd177284177302_)
                                                          (_tl177309_
                                                           _tl177285177304_))
                                                     (declare (not safe))
                                                     (_K177283177299_
                                                      _tl177309_
                                                      _hd177307_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177282177291_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp182885
                                       __tmp182883))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp182895
                                __tmp182882))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp182900 __tmp182881 _E177255_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177274_))
                        (let* ((_body177310177317_ _body177271_)
                               (_E177312177321_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177310177317_)))
                               (_K177313177372_
                                (lambda (_tl177324_ _hd177325_)
                                  (let* ((_rlen177327_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177162_ _tl177324_)))
                                         (_$target177329_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177331_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177333_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177335_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177337_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177339_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177341_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177343_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177163_ _hd177325_)))
                                         (_lvars177345_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177343_)))
                                         (_tlvars177347_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177343_)))
                                         (_linit177351_
                                          (map (lambda (_var177349_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177345_)))
                                    (letrec ((_make-loop177354_
                                              (lambda (_vars177358_)
                                                (let ((__tmp182832
                                                       (let ((__tmp182833
                                                              (let ((__tmp182869
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177335_ '())))
                            (__tmp182834
                             (let ((__tmp182835
                                    (let ((__tmp182868
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177331_ _lvars177345_)))
                                          (__tmp182836
                                           (let ((__tmp182867
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177331_)))
                                                 (__tmp182845
                                                  (let ((__tmp182862
                                                         (let ((__tmp182863
                                                                (let ((__tmp182866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177337_ '())))
                              (__tmp182864
                               (let ((__tmp182865
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e176983_
                                         _$hd177331_))))
                                 (declare (not safe))
                                 (cons __tmp182865 '()))))
                          (declare (not safe))
                          (cons __tmp182866 __tmp182864))))
                   (declare (not safe))
                   (cons __tmp182863 '())))
                (__tmp182846
                 (let ((__tmp182852
                        (let ((__tmp182858
                               (let ((__tmp182861
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177339_ '())))
                                     (__tmp182859
                                      (let ((__tmp182860
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177337_))))
                                        (declare (not safe))
                                        (cons __tmp182860 '()))))
                                 (declare (not safe))
                                 (cons __tmp182861 __tmp182859)))
                              (__tmp182853
                               (let ((__tmp182854
                                      (let ((__tmp182857
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177341_ '())))
                                            (__tmp182855
                                             (let ((__tmp182856
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177337_))))
                                               (declare (not safe))
                                               (cons __tmp182856 '()))))
                                        (declare (not safe))
                                        (cons __tmp182857 __tmp182855))))
                                 (declare (not safe))
                                 (cons __tmp182854 '()))))
                          (declare (not safe))
                          (cons __tmp182858 __tmp182853)))
                       (__tmp182847
                        (let ((__tmp182848
                               (lambda (_hdvars177360_)
                                 (let ((__tmp182849
                                        (let ((__tmp182850
                                               (map (lambda (_svar177362_
                                                             _lvar177363_)
                                                      (let ((__tmp182851
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177362_ _hdvars177360_ _BUG177160_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp182851 _lvar177363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177343_
                                                    _lvars177345_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177341_ __tmp182850))))
                                   (declare (not safe))
                                   (cons _$lp177335_ __tmp182849)))))
                          (declare (not safe))
                          (_recur177161_
                           _hd177325_
                           '()
                           _$lp-hd177339_
                           _E177255_
                           __tmp182848))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp182852 __tmp182847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182862
                                                     __tmp182846)))
                                                 (__tmp182837
                                                  (let ((__tmp182841
                                                         (map (lambda (_lvar177365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177366_)
                        (let ((__tmp182844
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177366_ '())))
                              (__tmp182842
                               (let ((__tmp182843
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177365_))))
                                 (declare (not safe))
                                 (cons __tmp182843 '()))))
                          (declare (not safe))
                          (cons __tmp182844 __tmp182842)))
                      _lvars177345_
                      _tlvars177347_))
                (__tmp182838
                 (_k177256_
                  (let ((__tmp182839
                         (lambda (_svar177368_ _tlvar177369_ _r177370_)
                           (let ((__tmp182840
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177368_ _tlvar177369_))))
                             (declare (not safe))
                             (cons __tmp182840 _r177370_)))))
                    (declare (not safe))
                    (foldl2 __tmp182839
                            _vars177358_
                            _svars177343_
                            _tlvars177347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182841
                                                     __tmp182838))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp182867
                                              __tmp182845
                                              __tmp182837))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp182868
                                       __tmp182836))))
                               (declare (not safe))
                               (cons __tmp182835 '()))))
                        (declare (not safe))
                        (cons __tmp182869 __tmp182834))))
                 (declare (not safe))
                 (cons __tmp182833 '())))
              (__tmp182830
               (let ((__tmp182831
                      (let ()
                        (declare (not safe))
                        (cons _$target177329_ _linit177351_))))
                 (declare (not safe))
                 (cons _$lp177335_ __tmp182831))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp182832
                                                   __tmp182830)))))
                                      (let ((_body177356_
                                             (let ((__tmp182871
                                                    (let ((__tmp182872
                                                           (let ((__tmp182875
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182876
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177333_ '()))))
                            (declare (not safe))
                            (cons _$target177329_ __tmp182876)))
                         (__tmp182873
                          (let ((__tmp182874
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177254_
                                    _rlen177327_))))
                            (declare (not safe))
                            (cons __tmp182874 '()))))
                     (declare (not safe))
                     (cons __tmp182875 __tmp182873))))
              (declare (not safe))
              (cons __tmp182872 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182870
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177161_
                                                       _tl177324_
                                                       _vars177253_
                                                       _$tl177333_
                                                       _E177255_
                                                       _make-loop177354_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182871
                                                __tmp182870))))
                                        (let ((__tmp182880
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177254_)))
                                              (__tmp182877
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177327_))
                                                   _body177356_
                                                   (let ((__tmp182878
                                                          (let ((__tmp182879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177254_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp182879 _rlen177327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp182878
                                                      _body177356_
                                                      _E177255_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp182880
                                           __tmp182877
                                           _E177255_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177310177317_))
                              (let ((_hd177314177375_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177310177317_)))
                                    (_tl177315177377_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177310177317_))))
                                (let* ((_hd177380_ _hd177314177375_)
                                       (_tl177382_ _tl177315177377_))
                                  (declare (not safe))
                                  (_K177313177372_ _tl177382_ _hd177380_)))
                              (let () (declare (not safe)) (_E177312177321_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177274_))
                            (let ((__tmp182829
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177254_)))
                                  (__tmp182828 (_k177256_ _vars177253_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp182829
                               __tmp182828
                               _E177255_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177274_))
                                (let ((_$e177384_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp182827
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177254_)))
                                        (__tmp182819
                                         (let ((__tmp182821
                                                (let ((__tmp182822
                                                       (let ((__tmp182826
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177384_ '())))
                     (__tmp182823
                      (let ((__tmp182824
                             (let ((__tmp182825
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e176983_
                                       _target177254_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp182825))))
                        (declare (not safe))
                        (cons __tmp182824 '()))))
                 (declare (not safe))
                 (cons __tmp182826 __tmp182823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp182822 '())))
                                               (__tmp182820
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177161_
                                                   _body177271_
                                                   _vars177253_
                                                   _$e177384_
                                                   _E177255_
                                                   _k177256_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp182821
                                            __tmp182820))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp182827
                                     __tmp182819
                                     _E177255_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177274_))
                                    (let ((_$e177386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp182818
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177254_)))
                                            (__tmp182810
                                             (let ((__tmp182812
                                                    (let ((__tmp182813
                                                           (let ((__tmp182817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177386_ '())))
                         (__tmp182814
                          (let ((__tmp182815
                                 (let ((__tmp182816
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e176983_
                                           _target177254_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp182816))))
                            (declare (not safe))
                            (cons __tmp182815 '()))))
                     (declare (not safe))
                     (cons __tmp182817 __tmp182814))))
              (declare (not safe))
              (cons __tmp182813 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182811
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177161_
                                                       _body177271_
                                                       _vars177253_
                                                       _$e177386_
                                                       _E177255_
                                                       _k177256_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182812
                                                __tmp182811))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp182818
                                         __tmp182810
                                         _E177255_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177274_))
                                        (let ((_$e177388_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp182809
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177254_)))
                                                (__tmp182800
                                                 (let ((__tmp182804
                                                        (let ((__tmp182805
                                                               (let ((__tmp182808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177388_ '())))
                             (__tmp182806
                              (let ((__tmp182807
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177254_))))
                                (declare (not safe))
                                (cons __tmp182807 '()))))
                         (declare (not safe))
                         (cons __tmp182808 __tmp182806))))
                  (declare (not safe))
                  (cons __tmp182805 '())))
               (__tmp182801
                (let ((__tmp182803
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177388_ _body177271_)))
                      (__tmp182802 (_k177256_ _vars177253_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp182803 __tmp182802 _E177255_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp182804
                                                    __tmp182801))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp182809
                                             __tmp182800
                                             _E177255_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177160_ _e177252_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177257177264_))
                                      (let ((_hd177261177393_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177257177264_)))
                                            (_tl177262177395_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177257177264_))))
                                        (let* ((_tag177398_ _hd177261177393_)
                                               (_body177400_ _tl177262177395_))
                                          (declare (not safe))
                                          (_K177260177390_
                                           _body177400_
                                           _tag177398_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177259177268_))))))
                             (_splice-rlen177162_
                              (lambda (_e177214_)
                                (let _lp177216_ ((_e177218_ _e177214_)
                                                 (_n177219_ '0))
                                  (let* ((_e177220177227_ _e177218_)
                                         (_E177222177231_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177220177227_)))
                                         (_K177223177240_
                                          (lambda (_body177234_ _tag177235_)
                                            (let ((_$e177237_ _tag177235_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177237_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx176981_
                                                     _where177153_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177237_))
                                                      (let ((__tmp182908
                                                             (cdr _body177234_))
                                                            (__tmp182907
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177219_ '1))))
                (declare (not safe))
                (_lp177216_ __tmp182908 __tmp182907))
              _n177219_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177220177227_))
                                        (let ((_hd177224177243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177220177227_)))
                                              (_tl177225177245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177220177227_))))
                                          (let* ((_tag177248_ _hd177224177243_)
                                                 (_body177250_
                                                  _tl177225177245_))
                                            (declare (not safe))
                                            (_K177223177240_
                                             _body177250_
                                             _tag177248_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177222177231_)))))))
                             (_splice-vars177163_
                              (lambda (_e177170_)
                                (let _recur177172_ ((_e177174_ _e177170_)
                                                    (_vars177175_ '()))
                                  (let* ((_e177176177183_ _e177174_)
                                         (_E177178177187_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177176177183_)))
                                         (_K177179177202_
                                          (lambda (_body177190_ _tag177191_)
                                            (let ((_$e177193_ _tag177191_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177193_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177190_
                                                          _vars177175_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177193_))
                  (let () (declare (not safe)) (eq? 'splice _$e177193_)))
              (let ((__tmp182911 (cdr _body177190_))
                    (__tmp182909
                     (let ((__tmp182910 (car _body177190_)))
                       (declare (not safe))
                       (_recur177172_ __tmp182910 _vars177175_))))
                (declare (not safe))
                (_recur177172_ __tmp182911 __tmp182909))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177193_))
                      (let () (declare (not safe)) (eq? 'box _$e177193_)))
                  (let ()
                    (declare (not safe))
                    (_recur177172_ _body177190_ _vars177175_))
                  _vars177175_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177176177183_))
                                        (let ((_hd177180177205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177176177183_)))
                                              (_tl177181177207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177176177183_))))
                                          (let* ((_tag177210_ _hd177180177205_)
                                                 (_body177212_
                                                  _tl177181177207_))
                                            (declare (not safe))
                                            (_K177179177202_
                                             _body177212_
                                             _tag177210_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177178177187_)))))))
                             (_make-body177164_
                              (lambda (_vars177166_)
                                (let ((__tmp182912
                                       (map (lambda (_mvar177168_)
                                              (let ((__tmp182913
                                                     (car _mvar177168_)))
                                                (declare (not safe))
                                                (assgetq __tmp182913
                                                         _vars177166_
                                                         _BUG177160_)))
                                            _mvars177156_)))
                                  (declare (not safe))
                                  (cons _K177157_ __tmp182912)))))
                      (let ()
                        (declare (not safe))
                        (_recur177161_
                         _hd177155_
                         '()
                         _target177154_
                         _E177158_
                         _make-body177164_)))))
                 (_parse-clause176990_
                  (lambda (_hd177059_ _ids177060_)
                    (let _recur177062_ ((_e177064_ _hd177059_)
                                        (_vars177065_ '())
                                        (_depth177066_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177064_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177064_))
                              (values '(any) _vars177065_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177064_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx176981_
                                     _hd177059_))
                                  (if (let ((__tmp182929
                                             (lambda (_id177068_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177064_
                                                  _id177068_)))))
                                        (declare (not safe))
                                        (find __tmp182929 _ids177060_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177064_))
                                              _vars177065_)
                                      (if (let ((__tmp182927
                                                 (lambda (_var177070_)
                                                   (let ((__tmp182928
                                                          (car _var177070_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177064_
                                                      __tmp182928)))))
                                            (declare (not safe))
                                            (find __tmp182927 _vars177065_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx176981_
                                             _e177064_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177064_))
                                                  (let ((__tmp182926
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182926
                                                          _vars177065_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177064_))
                              (let* ((_e177071177078_ _e177064_)
                                     (_E177073177082_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177071177078_))))
                                     (_E177072177143_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177071177078_))
                                            (let ((_e177074177086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177071177078_))))
                                              (let ((_hd177075177089_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177074177086_)))
                                                    (_tl177076177091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177074177086_))))
                                                (let* ((_hd177094_
                                                        _hd177075177089_)
                                                       (_rest177096_
                                                        _tl177076177091_))
                                                  (if '#t
                                                      (let* ((_make-pair177111_
                                                              (lambda (_tag177098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177099_
                               _tl177100_)
                        (let* ((_hd-depth177102_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177098_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177066_ '1))
                                    _depth177066_))
                               (_g182921_
                                (let ()
                                  (declare (not safe))
                                  (_recur177062_
                                   _hd177099_
                                   _vars177065_
                                   _hd-depth177102_))))
                          (begin
                            (let ((_g182922_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g182921_)
                                         (##vector-length _g182921_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g182922_ 2)))
                                  (error "Context expects 2 values"
                                         _g182922_)))
                            (let ((_hd177104_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182921_ 0)))
                                  (_vars177105_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182921_ 1))))
                              (let ((_g182923_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177062_
                                        _tl177100_
                                        _vars177105_
                                        _depth177066_))))
                                (begin
                                  (let ((_g182924_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g182923_)
                                               (##vector-length _g182923_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g182924_ 2)))
                                        (error "Context expects 2 values"
                                               _g182924_)))
                                  (let ((_tl177107_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182923_ 0)))
                                        (_vars177108_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182923_ 1))))
                                    (let ()
                                      (values (let ((__tmp182925
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177104_
                                                             _tl177107_))))
                                                (declare (not safe))
                                                (cons _tag177098_ __tmp182925))
                                              _vars177108_))))))))))
                     (_e177112177119_ _rest177096_)
                     (_E177114177123_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177111_ 'cons _hd177094_ _rest177096_))))
                     (_E177113177139_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177112177119_))
                            (let ((_e177115177127_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177112177119_))))
                              (let ((_hd177116177130_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177115177127_)))
                                    (_tl177117177132_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177115177127_))))
                                (let* ((_rest-hd177135_ _hd177116177130_)
                                       (_rest-tl177137_ _tl177117177132_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177135_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177111_
                                             'splice
                                             _hd177094_
                                             _rest-tl177137_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177111_
                                             'cons
                                             _hd177094_
                                             _rest177096_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177114177123_))))))
                            (let () (declare (not safe)) (_E177114177123_))))))
                (let () (declare (not safe)) (_E177113177139_)))
              (let () (declare (not safe)) (_E177073177082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177073177082_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177072177143_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177064_))
                                  (values '(null) _vars177065_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177064_))
                                      (let ((_g182918_
                                             (let ((__tmp182920
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177064_)))))
                                               (declare (not safe))
                                               (_recur177062_
                                                __tmp182920
                                                _vars177065_
                                                _depth177066_))))
                                        (begin
                                          (let ((_g182919_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g182918_)
                                                       (##vector-length
                                                        _g182918_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g182919_ 2)))
                                                (error "Context expects 2 values"
                                                       _g182919_)))
                                          (let ((_e177147_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g182918_ 0)))
                                                (_vars177148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g182918_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177147_))
                                                    _vars177148_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177064_))
                                          (let ((_g182915_
                                                 (let ((__tmp182917
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177062_
                                                    __tmp182917
                                                    _vars177065_
                                                    _depth177066_))))
                                            (begin
                                              (let ((_g182916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g182915_)
                                                           (##vector-length
                                                            _g182915_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g182916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g182916_)))
                                              (let ((_e177150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182915_
                                                        0)))
                                                    (_vars177151_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182915_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177150_))
                                                        _vars177151_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177064_))
                                              (values (let ((__tmp182914
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177064_))))
                (declare (not safe))
                (cons 'datum __tmp182914))
              _vars177065_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx176981_
                                                 _e177064_))))))))))))
          (let* ((_e176991177004_ _stx176981_)
                 (_E176993177008_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e176991177004_))))
                 (_E176992177055_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176991177004_))
                        (let ((_e176994177012_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176991177004_))))
                          (let ((_hd176995177015_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176994177012_)))
                                (_tl176996177017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176994177012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176996177017_))
                                (let ((_e176997177020_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176996177017_))))
                                  (let ((_hd176998177023_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176997177020_)))
                                        (_tl176999177025_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176997177020_))))
                                    (let ((_expr177028_ _hd176998177023_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl176999177025_))
                                          (let ((_e177000177030_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl176999177025_))))
                                            (let ((_hd177001177033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177000177030_)))
                                                  (_tl177002177035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177000177030_))))
                                              (let* ((_ids177038_
                                                      _hd177001177033_)
                                                     (_clauses177040_
                                                      _tl177002177035_))
                                                (if '#t
                                                    (if (let ((__tmp182947
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177038_))))
                  (declare (not safe))
                  (not __tmp182947))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx176981_
                   _ids177038_))
                (if (let ((__tmp182946
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177040_))))
                      (declare (not safe))
                      (not __tmp182946))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx176981_))
                    (let* ((_ids177042_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177038_)))
                           (_clauses177044_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177040_)))
                           (_clause-ids177046_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177044_)))
                           (_E177048_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177050_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177052_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177044_))
                                _E177048_
                                (car _clause-ids177046_))))
                      (let ((__tmp182931
                             (let ((__tmp182932
                                    (let ((__tmp182934
                                           (let ((__tmp182939
                                                  (let ((__tmp182940
                                                         (let ((__tmp182945
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177048_ '())))
                       (__tmp182941
                        (let ((__tmp182942
                               (let ((__tmp182944
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177050_ '())))
                                     (__tmp182943
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177050_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp182944
                                  __tmp182943))))
                          (declare (not safe))
                          (cons __tmp182942 '()))))
                   (declare (not safe))
                   (cons __tmp182945 __tmp182941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182940 '())))
                                                 (__tmp182935
                                                  (let ((__tmp182938
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings176986_
                                                            _target177050_
                                                            _ids177042_
                                                            _clauses177044_
                                                            _clause-ids177046_
                                                            _E177048_)))
                                                        (__tmp182936
                                                         (let ((__tmp182937
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177028_ '()))))
                   (declare (not safe))
                   (cons _first177052_ __tmp182937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body176987_
                                                     __tmp182938
                                                     __tmp182936))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp182939
                                              __tmp182935)))
                                          (__tmp182933
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx176981_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp182934
                                       __tmp182933))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp182932)))
                            (__tmp182930
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx176981_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp182931 __tmp182930)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176993177008_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176993177008_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176993177008_)))))
                        (let () (declare (not safe)) (_E176993177008_))))))
            (let () (declare (not safe)) (_E176992177055_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177691_)
        (let* ((_identifier=?177693_ 'free-identifier=?)
               (_unwrap-e177695_ 'syntax-e)
               (_wrap-e177697_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177691_
           _identifier=?177693_
           _unwrap-e177695_
           _wrap-e177697_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177699_ _identifier=?177700_)
        (let* ((_unwrap-e177702_ 'syntax-e) (_wrap-e177704_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177699_
           _identifier=?177700_
           _unwrap-e177702_
           _wrap-e177704_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177706_ _identifier=?177707_ _unwrap-e177708_)
        (let ((_wrap-e177710_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177706_
           _identifier=?177707_
           _unwrap-e177708_
           _wrap-e177710_))))
    (define gx#macro-expand-syntax-case
      (lambda _g182949_
        (let ((_g182948_ (let () (declare (not safe)) (##length _g182949_))))
          (cond ((let () (declare (not safe)) (##fx= _g182948_ 1))
                 (apply (lambda (_stx177691_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177691_)))
                        _g182949_))
                ((let () (declare (not safe)) (##fx= _g182948_ 2))
                 (apply (lambda (_stx177699_ _identifier=?177700_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177699_
                             _identifier=?177700_)))
                        _g182949_))
                ((let () (declare (not safe)) (##fx= _g182948_ 3))
                 (apply (lambda (_stx177706_
                                 _identifier=?177707_
                                 _unwrap-e177708_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177706_
                             _identifier=?177707_
                             _unwrap-e177708_)))
                        _g182949_))
                ((let () (declare (not safe)) (##fx= _g182948_ 4))
                 (apply (lambda (_stx177712_
                                 _identifier=?177713_
                                 _unwrap-e177714_
                                 _wrap-e177715_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177712_
                             _identifier=?177713_
                             _unwrap-e177714_
                             _wrap-e177715_)))
                        _g182949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g182949_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx176978_)
        (if (let () (declare (not safe)) (gx#identifier? _stx176978_))
            (let ((__tmp182950
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx176978_ false))))
              (declare (not safe))
              (class-instance? gx#syntax-pattern::t __tmp182950))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd176936_ . _rest176937_)
        (let ((_len176939_ (length _hd176936_)))
          (let _lp176941_ ((_rest176943_ _rest176937_))
            (let* ((_rest176944176952_ _rest176943_)
                   (_else176946176960_ (lambda () '#!void))
                   (_K176948176966_
                    (lambda (_rest176963_ _hd176964_)
                      (if (fx= _len176939_ (length _hd176964_))
                          (let ()
                            (declare (not safe))
                            (_lp176941_ _rest176963_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd176964_))))))
              (if (let () (declare (not safe)) (##pair? _rest176944176952_))
                  (let ((_hd176949176969_
                         (let ()
                           (declare (not safe))
                           (##car _rest176944176952_)))
                        (_tl176950176971_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest176944176952_))))
                    (let* ((_hd176974_ _hd176949176969_)
                           (_rest176976_ _tl176950176971_))
                      (declare (not safe))
                      (_K176948176966_ _rest176976_ _hd176974_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx176894_ _n176895_)
        (let _lp176897_ ((_rest176899_ _stx176894_) (_r176900_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest176899_))
              (let* ((_g176901176908_
                      (let () (declare (not safe)) (gx#syntax-e _rest176899_)))
                     (_E176903176912_
                      (lambda ()
                        (error '"No clause matching" _g176901176908_)))
                     (_K176904176918_
                      (lambda (_rest176915_ _hd176916_)
                        (let ((__tmp182955
                               (let ()
                                 (declare (not safe))
                                 (cons _hd176916_ _r176900_))))
                          (declare (not safe))
                          (_lp176897_ _rest176915_ __tmp182955)))))
                (if (let () (declare (not safe)) (##pair? _g176901176908_))
                    (let ((_hd176905176921_
                           (let ()
                             (declare (not safe))
                             (##car _g176901176908_)))
                          (_tl176906176923_
                           (let ()
                             (declare (not safe))
                             (##cdr _g176901176908_))))
                      (let* ((_hd176926_ _hd176905176921_)
                             (_rest176928_ _tl176906176923_))
                        (declare (not safe))
                        (_K176904176918_ _rest176928_ _hd176926_)))
                    (let () (declare (not safe)) (_E176903176912_))))
              (let _lp176930_ ((_n176932_ _n176895_)
                               (_l176933_ _r176900_)
                               (_r176934_ _rest176899_))
                (if (let () (declare (not safe)) (null? _l176933_))
                    (values _l176933_ _r176934_)
                    (if (fxpositive? _n176932_)
                        (let ((__tmp182954
                               (let ()
                                 (declare (not safe))
                                 (fx- _n176932_ '1)))
                              (__tmp182953 (cdr _l176933_))
                              (__tmp182951
                               (let ((__tmp182952 (car _l176933_)))
                                 (declare (not safe))
                                 (cons __tmp182952 _r176934_))))
                          (declare (not safe))
                          (_lp176930_ __tmp182954 __tmp182953 __tmp182951))
                        (values (reverse _l176933_) _r176934_))))))))))
