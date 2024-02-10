(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1707573213)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp182741
             (let ((__tmp182742
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp182742 '()))))
        (declare (not safe))
        (make-struct-type
         'gx#syntax-pattern::t
         'syntax-pattern
         gx#expander::t
         '(id depth)
         __tmp182741
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-struct-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args178270_
        (apply make-struct-instance gx#syntax-pattern::t _$args178270_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self178267_ _stx178268_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx178268_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx177749_)
        (letrec ((_generate177751_
                  (lambda (_e177978_)
                    (letrec ((_BUG177980_
                              (lambda (_q178142_)
                                (error '"BUG: syntax; generate"
                                       _stx177749_
                                       _e177978_
                                       _q178142_)))
                             (_local-pattern-e177981_
                              (lambda (_pat178140_)
                                (let ((__tmp182743
                                       (##structure-ref
                                        _pat178140_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp182743))))
                             (_getvar177982_
                              (lambda (_q178137_ _vars178138_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q178137_
                                           _vars178138_
                                           _BUG177980_))))
                             (_getarg177983_
                              (lambda (_arg178103_ _vars178104_)
                                (let* ((_arg178105178112_ _arg178103_)
                                       (_E178107178116_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg178105178112_)))
                                       (_K178108178125_
                                        (lambda (_e178119_ _tag178120_)
                                          (let ((_$e178122_ _tag178120_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e178122_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar177982_
                                                   _e178119_
                                                   _vars178104_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e178122_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e177981_
                                                       _e178119_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG177980_
                                                       _arg178103_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg178105178112_))
                                      (let ((_hd178109178128_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg178105178112_)))
                                            (_tl178110178130_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg178105178112_))))
                                        (let* ((_tag178133_ _hd178109178128_)
                                               (_e178135_ _tl178110178130_))
                                          (declare (not safe))
                                          (_K178108178125_
                                           _e178135_
                                           _tag178133_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E178107178116_)))))))
                      (let _recur177985_ ((_e177987_ _e177978_)
                                          (_vars177988_ '()))
                        (let* ((_e177989177996_ _e177987_)
                               (_E177991178000_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e177989177996_)))
                               (_K177992178091_
                                (lambda (_body178003_ _tag178004_)
                                  (let ((_$e178006_ _tag178004_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e178006_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body178003_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e178006_))
                                            (let ((_id178009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body178003_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id178009_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks178011_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id178009_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks178011_))
                                                        (let ((__tmp182771
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body178003_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp182771))
                (let ((__tmp182770
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body178003_)))
                      (__tmp182769
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body178003_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp182770
                   __tmp182769
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id178009_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body178003_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG177980_
                                                         _e177987_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e178006_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e177981_
                                                   _body178003_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e178006_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar177982_
                                                       _body178003_
                                                       _vars177988_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e178006_))
                                                        (let ((__tmp182767
                                                               (let ((__tmp182768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body178003_)))
                         (declare (not safe))
                         (_recur177985_ __tmp182768 _vars177988_)))
                      (__tmp182765
                       (let ((__tmp182766 (cdr _body178003_)))
                         (declare (not safe))
                         (_recur177985_ __tmp182766 _vars177988_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp182767 __tmp182765))
                (if (let () (declare (not safe)) (eq? 'vector _$e178006_))
                    (let ((__tmp182764
                           (let ()
                             (declare (not safe))
                             (_recur177985_ _body178003_ _vars177988_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp182764))
                    (if (let () (declare (not safe)) (eq? 'box _$e178006_))
                        (let ((__tmp182763
                               (let ()
                                 (declare (not safe))
                                 (_recur177985_ _body178003_ _vars177988_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp182763))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e178006_))
                            (let* ((_body178012178023_ _body178003_)
                                   (_E178014178027_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body178012178023_)))
                                   (_K178015178065_
                                    (lambda (_args178030_
                                             _iv178031_
                                             _hd178032_
                                             _depth178033_)
                                      (let* ((_targets178039_
                                              (map (lambda (_g178034178036_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg177983_
                                                        _g178034178036_
                                                        _vars177988_)))
                                                   _args178030_))
                                             (_fold-in178041_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args178030_)))
                                             (_fold-out178043_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args178045_
                                              (let ((__tmp182744
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out178043_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp182744
                                                        _fold-in178041_)))
                                             (_lambda-body178062_
                                              (if (fx> _depth178033_ '1)
                                                  (let ((_r-args178053_
                                                         (map (lambda (_arg178047_)
                                                                (let ((__tmp182749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg178047_)))
                          (declare (not safe))
                          (cons 'ref __tmp182749)))
                      _args178030_))
                (_r-vars178054_
                 (let ((__tmp182750
                        (lambda (_arg178049_ _var178050_ _r178051_)
                          (let ((__tmp182751
                                 (let ((__tmp182752 (cdr _arg178049_)))
                                   (declare (not safe))
                                   (cons __tmp182752 _var178050_))))
                            (declare (not safe))
                            (cons __tmp182751 _r178051_)))))
                   (declare (not safe))
                   (foldr2 __tmp182750
                           _vars177988_
                           _args178030_
                           _fold-in178041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp182753
                                                           (let ((__tmp182754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182758
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth178033_ '1)))
                                (__tmp182755
                                 (let ((__tmp182756
                                        (let ((__tmp182757
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out178043_))))
                                          (declare (not safe))
                                          (cons __tmp182757 _r-args178053_))))
                                   (declare (not safe))
                                   (cons _hd178032_ __tmp182756))))
                            (declare (not safe))
                            (cons __tmp182758 __tmp182755))))
                     (declare (not safe))
                     (cons 'splice __tmp182754))))
              (declare (not safe))
              (_recur177985_ __tmp182753 _r-vars178054_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars178060_
                                                          (let ((__tmp182745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg178056_ _var178057_ _r178058_)
                           (let ((__tmp182746
                                  (let ((__tmp182747 (cdr _arg178056_)))
                                    (declare (not safe))
                                    (cons __tmp182747 _var178057_))))
                             (declare (not safe))
                             (cons __tmp182746 _r178058_)))))
                    (declare (not safe))
                    (foldr2 __tmp182745
                            _vars177988_
                            _args178030_
                            _fold-in178041_)))
                 (__tmp182748
                  (let ()
                    (declare (not safe))
                    (_recur177985_ _hd178032_ _hd-vars178060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp182748
                                                     _fold-out178043_)))))
                                        (let ((__tmp182762
                                               (if (fx> (length _targets178039_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets178039_))
                                                   '#!void))
                                              (__tmp182759
                                               (let ((__tmp182761
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args178045_
                                                         _lambda-body178062_)))
                                                     (__tmp182760
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur177985_
                                                         _iv178031_
                                                         _vars177988_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp182761
                                                  __tmp182760
                                                  _targets178039_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp182762
                                           __tmp182759))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body178012178023_))
                                  (let ((_hd178016178068_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body178012178023_)))
                                        (_tl178017178070_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body178012178023_))))
                                    (let ((_depth178073_ _hd178016178068_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl178017178070_))
                                          (let ((_hd178018178075_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl178017178070_)))
                                                (_tl178019178077_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl178017178070_))))
                                            (let ((_hd178080_
                                                   _hd178018178075_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl178019178077_))
                                                  (let ((_hd178020178082_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl178019178077_)))
                                                        (_tl178021178084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl178019178077_))))
                                                    (let* ((_iv178087_
                                                            _hd178020178082_)
                                                           (_args178089_
                                                            _tl178021178084_))
                                                      (declare (not safe))
                                                      (_K178015178065_
                                                       _args178089_
                                                       _iv178087_
                                                       _hd178080_
                                                       _depth178073_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E178014178027_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E178014178027_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E178014178027_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e178006_))
                                _body178003_
                                (let ()
                                  (declare (not safe))
                                  (_BUG177980_ _e177987_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e177989177996_))
                              (let ((_hd177993178094_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177989177996_)))
                                    (_tl177994178096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177989177996_))))
                                (let* ((_tag178099_ _hd177993178094_)
                                       (_body178101_ _tl177994178096_))
                                  (declare (not safe))
                                  (_K177992178091_ _body178101_ _tag178099_)))
                              (let ()
                                (declare (not safe))
                                (_E177991178000_))))))))
                 (_parse177752_
                  (lambda (_e177793_)
                    (letrec ((_make-cons177795_
                              (lambda (_hd177970_ _tl177971_)
                                (let ((_g182772_ _hd177970_)
                                      (_g182774_ _tl177971_))
                                  (begin
                                    (let ((_g182773_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182772_)
                                                 (##vector-length _g182772_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182773_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182773_)))
                                    (let ((_g182775_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182774_)
                                                 (##vector-length _g182774_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182775_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182775_)))
                                    (let ((_hd-e177973_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182772_ 0)))
                                          (_hd-vars177974_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182772_ 1))))
                                      (let ((_tl-e177975_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182774_ 0)))
                                            (_tl-vars177976_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182774_ 1))))
                                        (values (let ((__tmp182776
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e177973_
                                                               _tl-e177975_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp182776))
                                                (append _hd-vars177974_
                                                        _tl-vars177976_))))))))
                             (_make-splice177796_
                              (lambda (_where177909_
                                       _depth177910_
                                       _hd177911_
                                       _tl177912_)
                                (let ((_g182777_ _hd177911_)
                                      (_g182779_ _tl177912_))
                                  (begin
                                    (let ((_g182778_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182777_)
                                                 (##vector-length _g182777_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182778_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182778_)))
                                    (let ((_g182780_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182779_)
                                                 (##vector-length _g182779_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182780_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182780_)))
                                    (let ((_hd-e177914_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182777_ 0)))
                                          (_hd-vars177915_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182777_ 1))))
                                      (let ((_tl-e177916_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182779_ 0)))
                                            (_tl-vars177917_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g182779_ 1))))
                                        (let _lp177919_ ((_rest177921_
                                                          _hd-vars177915_)
                                                         (_targets177922_ '())
                                                         (_vars177923_
                                                          _tl-vars177917_))
                                          (let* ((_rest177924177934_
                                                  _rest177921_)
                                                 (_else177926177942_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets177922_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx177749_
                                                           _where177909_))
                                                        (values (let ((__tmp182781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp182782
                                      (let ((__tmp182783
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e177916_
                                                     _targets177922_))))
                                        (declare (not safe))
                                        (cons _hd-e177914_ __tmp182783))))
                                 (declare (not safe))
                                 (cons _depth177910_ __tmp182782))))
                          (declare (not safe))
                          (cons 'splice __tmp182781))
                        _vars177923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K177928177951_
                                                  (lambda (_rest177945_
                                                           _hd-pat177946_
                                                           _hd-depth*177947_)
                                                    (let ((_hd-depth177949_
                                                           (fx- _hd-depth*177947_
                                                                _depth177910_)))
                                                      (if (fxpositive?
                                                           _hd-depth177949_)
                                                          (let ((__tmp182788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp182789
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat177946_))))
                           (declare (not safe))
                           (cons __tmp182789 _targets177922_)))
                        (__tmp182786
                         (let ((__tmp182787
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth177949_ _hd-pat177946_))))
                           (declare (not safe))
                           (cons __tmp182787 _vars177923_))))
                    (declare (not safe))
                    (_lp177919_ _rest177945_ __tmp182788 __tmp182786))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth177949_))
                      (let ((__tmp182784
                             (let ((__tmp182785
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat177946_))))
                               (declare (not safe))
                               (cons __tmp182785 _targets177922_))))
                        (declare (not safe))
                        (_lp177919_ _rest177945_ __tmp182784 _vars177923_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx177749_
                         _where177909_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest177924177934_))
                                                (let ((_hd177929177954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest177924177934_)))
                                                      (_tl177930177956_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest177924177934_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd177929177954_))
                                                      (let ((_hd177931177959_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd177929177954_)))
                    (_tl177932177961_
                     (let () (declare (not safe)) (##cdr _hd177929177954_))))
                (let* ((_hd-depth*177964_ _hd177931177959_)
                       (_hd-pat177966_ _tl177932177961_)
                       (_rest177968_ _tl177930177956_))
                  (declare (not safe))
                  (_K177928177951_
                   _rest177968_
                   _hd-pat177966_
                   _hd-depth*177964_)))
              (let () (declare (not safe)) (_else177926177942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else177926177942_)))))))))))
                             (_recur177797_
                              (lambda (_e177802_ _is-e?177803_)
                                (if (_is-e?177803_ _e177802_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx177749_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e177802_))
                                        (let* ((_pat177805_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e177802_)))
                                               (_depth177807_
                                                (##structure-ref
                                                 _pat177805_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth177807_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat177805_))
                                                      (let ((__tmp182805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth177807_ _pat177805_))))
                (declare (not safe))
                (cons __tmp182805 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat177805_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e177802_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e177802_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e177802_))
                                                (let* ((_e177809177816_
                                                        _e177802_)
                                                       (_E177811177820_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e177809177816_))))
                                                       (_E177810177899_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e177809177816_))
                      (let ((_e177812177824_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e177809177816_))))
                        (let ((_hd177813177827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e177812177824_)))
                              (_tl177814177829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e177812177824_))))
                          (let* ((_hd177832_ _hd177813177827_)
                                 (_rest177834_ _tl177814177829_))
                            (if '#t
                                (if (_is-e?177803_ _hd177832_)
                                    (let* ((_e177835177842_ _rest177834_)
                                           (_E177837177846_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx177749_
                                                 _e177802_))))
                                           (_E177836177860_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e177835177842_))
                                                  (let ((_e177838177850_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e177835177842_))))
                                                    (let ((_hd177839177853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e177838177850_)))
                                                          (_tl177840177855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e177838177850_))))
                                                      (let ((_rest177858_
                                                             _hd177839177853_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl177840177855_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur177797_ _rest177858_ false))
                        (let () (declare (not safe)) (_E177837177846_)))
                    (let () (declare (not safe)) (_E177837177846_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177837177846_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E177836177860_)))
                                    (let _lp177864_ ((_rest177866_
                                                      _rest177834_)
                                                     (_depth177867_ '0))
                                      (let* ((_e177868177875_ _rest177866_)
                                             (_E177870177879_
                                              (lambda ()
                                                (if (fxpositive? _depth177867_)
                                                    (let ((__tmp182799
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177797_
                                                              _hd177832_
                                                              _is-e?177803_)))
                                                          (__tmp182798
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177797_
                                                              _rest177866_
                                                              _is-e?177803_))))
                                                      (declare (not safe))
                                                      (_make-splice177796_
                                                       _e177802_
                                                       _depth177867_
                                                       __tmp182799
                                                       __tmp182798))
                                                    (let ((__tmp182797
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177797_
                                                              _hd177832_
                                                              _is-e?177803_)))
                                                          (__tmp182796
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur177797_
                                                              _rest177866_
                                                              _is-e?177803_))))
                                                      (declare (not safe))
                                                      (_make-cons177795_
                                                       __tmp182797
                                                       __tmp182796)))))
                                             (_E177869177895_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e177868177875_))
                                                    (let ((_e177871177883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e177868177875_))))
                                                      (let ((_hd177872177886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e177871177883_)))
                    (_tl177873177888_
                     (let () (declare (not safe)) (##cdr _e177871177883_))))
                (let* ((_rest-hd177891_ _hd177872177886_)
                       (_rest-tl177893_ _tl177873177888_))
                  (if '#t
                      (if (_is-e?177803_ _rest-hd177891_)
                          (let ((__tmp182804
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth177867_ '1))))
                            (declare (not safe))
                            (_lp177864_ _rest-tl177893_ __tmp182804))
                          (if (fxpositive? _depth177867_)
                              (let ((__tmp182803
                                     (let ()
                                       (declare (not safe))
                                       (_recur177797_
                                        _hd177832_
                                        _is-e?177803_)))
                                    (__tmp182802
                                     (let ()
                                       (declare (not safe))
                                       (_recur177797_
                                        _rest177866_
                                        _is-e?177803_))))
                                (declare (not safe))
                                (_make-splice177796_
                                 _e177802_
                                 _depth177867_
                                 __tmp182803
                                 __tmp182802))
                              (let ((__tmp182801
                                     (let ()
                                       (declare (not safe))
                                       (_recur177797_
                                        _hd177832_
                                        _is-e?177803_)))
                                    (__tmp182800
                                     (let ()
                                       (declare (not safe))
                                       (_recur177797_
                                        _rest177866_
                                        _is-e?177803_))))
                                (declare (not safe))
                                (_make-cons177795_ __tmp182801 __tmp182800))))
                      (let () (declare (not safe)) (_E177870177879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177870177879_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E177869177895_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E177811177820_))))))
                      (let () (declare (not safe)) (_E177811177820_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E177810177899_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e177802_))
                                                    (let ((_g182793_
                                                           (let ((__tmp182795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e177802_)))))
                     (declare (not safe))
                     (_recur177797_ __tmp182795 _is-e?177803_))))
              (begin
                (let ((_g182794_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g182793_)
                             (##vector-length _g182793_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g182794_ 2)))
                      (error "Context expects 2 values" _g182794_)))
                (let ((_e177903_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182793_ 0)))
                      (_vars177904_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g182793_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e177903_))
                          _vars177904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e177802_))
                                                        (let ((_g182790_
                                                               (let ((__tmp182792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e177802_)))))
                         (declare (not safe))
                         (_recur177797_ __tmp182792 _is-e?177803_))))
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
                          (error "Context expects 2 values" _g182791_)))
                    (let ((_e177906_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182790_ 0)))
                          (_vars177907_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g182790_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e177906_))
                              _vars177907_))))
                (values (let () (declare (not safe)) (cons 'datum _e177802_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g182806_
                             (let ()
                               (declare (not safe))
                               (_recur177797_ _e177793_ gx#ellipsis?))))
                        (begin
                          (let ((_g182807_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g182806_)
                                       (##vector-length _g182806_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g182807_ 2)))
                                (error "Context expects 2 values" _g182807_)))
                          (let ((_tree177799_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182806_ 0)))
                                (_vars177800_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g182806_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars177800_))
                                _tree177799_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx177749_
                                   _vars177800_))))))))))
          (let* ((_e177753177763_ _stx177749_)
                 (_E177755177767_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx177749_))))
                 (_E177754177789_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177753177763_))
                        (let ((_e177756177771_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177753177763_))))
                          (let ((_hd177757177774_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177756177771_)))
                                (_tl177758177776_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177756177771_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177758177776_))
                                (let ((_e177759177779_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177758177776_))))
                                  (let ((_hd177760177782_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177759177779_)))
                                        (_tl177761177784_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177759177779_))))
                                    (let ((_form177787_ _hd177760177782_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl177761177784_))
                                          (if '#t
                                              (let ((__tmp182809
                                                     (let ((__tmp182810
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse177752_
                                                               _form177787_))))
                                                       (declare (not safe))
                                                       (_generate177751_
                                                        __tmp182810)))
                                                    (__tmp182808
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx177749_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp182809
                                                 __tmp182808))
                                              (let ()
                                                (declare (not safe))
                                                (_E177755177767_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E177755177767_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177755177767_)))))
                        (let () (declare (not safe)) (_E177755177767_))))))
            (let () (declare (not safe)) (_E177754177789_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx177013_
               _identifier=?177014_
               _unwrap-e177015_
               _wrap-e177016_)
        (letrec ((_generate-bindings177018_
                  (lambda (_target177613_
                           _ids177614_
                           _clauses177615_
                           _clause-ids177616_
                           _E177617_)
                    (letrec ((_generate1177619_
                              (lambda (_clause177716_
                                       _clause-id177717_
                                       _E177718_)
                                (let ((__tmp182815
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id177717_ '())))
                                      (__tmp182811
                                       (let ((__tmp182812
                                              (let ((__tmp182814
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177613_
                                                             '())))
                                                    (__tmp182813
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause177020_
                                                        _target177613_
                                                        _ids177614_
                                                        _clause177716_
                                                        _E177718_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp182814
                                                 __tmp182813))))
                                         (declare (not safe))
                                         (cons __tmp182812 '()))))
                                  (declare (not safe))
                                  (cons __tmp182815 __tmp182811)))))
                      (let _lp177621_ ((_rest177623_ _clauses177615_)
                                       (_rest-ids177624_ _clause-ids177616_)
                                       (_bindings177625_ '()))
                        (let* ((_rest177626177634_ _rest177623_)
                               (_else177628177642_
                                (lambda () _bindings177625_))
                               (_K177630177704_
                                (lambda (_rest177645_ _clause177646_)
                                  (let* ((_rest-ids177647177654_
                                          _rest-ids177624_)
                                         (_E177649177658_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids177647177654_)))
                                         (_K177650177692_
                                          (lambda (_rest-ids177661_
                                                   _clause-id177662_)
                                            (let* ((_rest-ids177663177671_
                                                    _rest-ids177661_)
                                                   (_else177665177679_
                                                    (lambda ()
                                                      (let ((__tmp182816
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1177619_
                        _clause177646_
                        _clause-id177662_
                        _E177617_))))
                (declare (not safe))
                (cons __tmp182816 _bindings177625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K177667177684_
                                                    (lambda (_next-clause-id177682_)
                                                      (let ((__tmp182817
                                                             (let ((__tmp182818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1177619_
                               _clause177646_
                               _clause-id177662_
                               _next-clause-id177682_))))
                       (declare (not safe))
                       (cons __tmp182818 _bindings177625_))))
                (declare (not safe))
                (_lp177621_ _rest177645_ _rest-ids177661_ __tmp182817)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids177663177671_))
                                                  (let* ((_hd177668177687_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids177663177671_)))
                                                         (_next-clause-id177690_
                                                          _hd177668177687_))
                                                    (declare (not safe))
                                                    (_K177667177684_
                                                     _next-clause-id177690_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else177665177679_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids177647177654_))
                                        (let ((_hd177651177695_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids177647177654_)))
                                              (_tl177652177697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids177647177654_))))
                                          (let* ((_clause-id177700_
                                                  _hd177651177695_)
                                                 (_rest-ids177702_
                                                  _tl177652177697_))
                                            (declare (not safe))
                                            (_K177650177692_
                                             _rest-ids177702_
                                             _clause-id177700_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177649177658_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest177626177634_))
                              (let ((_hd177631177707_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest177626177634_)))
                                    (_tl177632177709_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest177626177634_))))
                                (let* ((_clause177712_ _hd177631177707_)
                                       (_rest177714_ _tl177632177709_))
                                  (declare (not safe))
                                  (_K177630177704_
                                   _rest177714_
                                   _clause177712_)))
                              (let ()
                                (declare (not safe))
                                (_else177628177642_))))))))
                 (_generate-body177019_
                  (lambda (_bindings177573_ _body177574_)
                    (let _recur177576_ ((_rest177578_ _bindings177573_))
                      (let* ((_rest177579177587_ _rest177578_)
                             (_else177581177595_ (lambda () _body177574_))
                             (_K177583177601_
                              (lambda (_rest177598_ _hd177599_)
                                (let ((__tmp182820
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd177599_ '())))
                                      (__tmp182819
                                       (let ()
                                         (declare (not safe))
                                         (_recur177576_ _rest177598_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp182820
                                   __tmp182819)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest177579177587_))
                            (let ((_hd177584177604_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest177579177587_)))
                                  (_tl177585177606_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest177579177587_))))
                              (let* ((_hd177609_ _hd177584177604_)
                                     (_rest177611_ _tl177585177606_))
                                (declare (not safe))
                                (_K177583177601_ _rest177611_ _hd177609_)))
                            (let ()
                              (declare (not safe))
                              (_else177581177595_)))))))
                 (_generate-clause177020_
                  (lambda (_target177436_ _ids177437_ _clause177438_ _E177439_)
                    (letrec ((_generate1177441_
                              (lambda (_hd177528_ _fender177529_ _body177530_)
                                (let ((_g182821_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause177022_
                                          _hd177528_
                                          _ids177437_))))
                                  (begin
                                    (let ((_g182822_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g182821_)
                                                 (##vector-length _g182821_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g182822_ 2)))
                                          (error "Context expects 2 values"
                                                 _g182822_)))
                                    (let ((_e177532_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182821_ 0)))
                                          (_mvars177533_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g182821_ 1))))
                                      (let* ((_pvars177535_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars177533_))))
                                             (_E177537_
                                              (let ((__tmp182823
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target177436_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E177439_ __tmp182823)))
                                             (_K177570_
                                              (let ((__tmp182824
                                                     (let ((__tmp182826
                                                            (map (lambda (_mvar177539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar177540_)
                           (let* ((_mvar177541177548_ _mvar177539_)
                                  (_E177543177552_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar177541177548_)))
                                  (_K177544177558_
                                   (lambda (_depth177555_ _id177556_)
                                     (let ((__tmp182827
                                            (let ((__tmp182828
                                                   (let ((__tmp182830
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id177556_)))
                                                         (__tmp182829
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar177540_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp182830
                                                      __tmp182829
                                                      _depth177555_))))
                                              (declare (not safe))
                                              (cons __tmp182828 '()))))
                                       (declare (not safe))
                                       (cons _id177556_ __tmp182827)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar177541177548_))
                                 (let ((_hd177545177561_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar177541177548_)))
                                       (_tl177546177563_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar177541177548_))))
                                   (let* ((_id177566_ _hd177545177561_)
                                          (_depth177568_ _tl177546177563_))
                                     (declare (not safe))
                                     (_K177544177558_
                                      _depth177568_
                                      _id177566_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E177543177552_)))))
                         _mvars177533_
                         _pvars177535_))
                   (__tmp182825
                    (if (let () (declare (not safe)) (eq? _fender177529_ '#t))
                        _body177530_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender177529_
                           _body177530_
                           _E177537_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp182826 __tmp182825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars177535_
                                                 __tmp182824))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match177021_
                                           _hd177528_
                                           _target177436_
                                           _e177532_
                                           _mvars177533_
                                           _K177570_
                                           _E177537_)))))))))
                      (let* ((_e177442177462_ _clause177438_)
                             (_E177451177466_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e177442177462_))))
                             (_E177444177500_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177442177462_))
                                    (let ((_e177452177470_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177442177462_))))
                                      (let ((_hd177453177473_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177452177470_)))
                                            (_tl177454177475_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177452177470_))))
                                        (let ((_hd177478_ _hd177453177473_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177454177475_))
                                              (let ((_e177455177480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177454177475_))))
                                                (let ((_hd177456177483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177455177480_)))
                                                      (_tl177457177485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177455177480_))))
                                                  (let ((_fender177488_
                                                         _hd177456177483_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl177457177485_))
                                                        (let ((_e177458177490_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl177457177485_))))
                  (let ((_hd177459177493_
                         (let () (declare (not safe)) (##car _e177458177490_)))
                        (_tl177460177495_
                         (let ()
                           (declare (not safe))
                           (##cdr _e177458177490_))))
                    (let ((_body177498_ _hd177459177493_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl177460177495_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1177441_
                                 _hd177478_
                                 _fender177488_
                                 _body177498_))
                              (let () (declare (not safe)) (_E177451177466_)))
                          (let () (declare (not safe)) (_E177451177466_))))))
                (let () (declare (not safe)) (_E177451177466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E177451177466_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177451177466_)))))
                             (_E177443177524_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e177442177462_))
                                    (let ((_e177445177504_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e177442177462_))))
                                      (let ((_hd177446177507_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177445177504_)))
                                            (_tl177447177509_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177445177504_))))
                                        (let ((_hd177512_ _hd177446177507_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl177447177509_))
                                              (let ((_e177448177514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl177447177509_))))
                                                (let ((_hd177449177517_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e177448177514_)))
                                                      (_tl177450177519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e177448177514_))))
                                                  (let ((_body177522_
                                                         _hd177449177517_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl177450177519_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1177441_
                                                               _hd177512_
                                                               '#t
                                                               _body177522_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E177444177500_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E177444177500_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E177444177500_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E177444177500_))))))
                        (let () (declare (not safe)) (_E177443177524_))))))
                 (_generate-match177021_
                  (lambda (_where177185_
                           _target177186_
                           _hd177187_
                           _mvars177188_
                           _K177189_
                           _E177190_)
                    (letrec ((_BUG177192_
                              (lambda (_q177434_)
                                (error '"BUG: syntax-case; generate"
                                       _stx177013_
                                       _hd177187_
                                       _q177434_)))
                             (_recur177193_
                              (lambda (_e177284_
                                       _vars177285_
                                       _target177286_
                                       _E177287_
                                       _k177288_)
                                (let* ((_e177289177296_ _e177284_)
                                       (_E177291177300_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e177289177296_)))
                                       (_K177292177422_
                                        (lambda (_body177303_ _tag177304_)
                                          (let ((_$e177306_ _tag177304_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e177306_))
                                                (_k177288_ _vars177285_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e177306_))
                                                    (let ((__tmp182937
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target177286_)))
                                                          (__tmp182933
                                                           (let ((__tmp182935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182936
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e177016_
                                    _body177303_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?177014_
                             __tmp182936
                             _target177286_)))
                         (__tmp182934 (_k177288_ _vars177285_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp182935 __tmp182934 _E177287_))))
              (declare (not safe))
              (gx#core-list 'if __tmp182937 __tmp182933 _E177287_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e177306_))
                                                        (_k177288_
                                                         (let ((__tmp182932
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body177303_ _target177286_))))
                   (declare (not safe))
                   (cons __tmp182932 _vars177285_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e177306_))
                    (let ((_$e177309_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd177310_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl177311_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp182931
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target177286_)))
                            (__tmp182912
                             (let ((__tmp182926
                                    (let ((__tmp182927
                                           (let ((__tmp182930
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e177309_ '())))
                                                 (__tmp182928
                                                  (let ((__tmp182929
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e177015_
                                                            _target177286_))))
                                                    (declare (not safe))
                                                    (cons __tmp182929 '()))))
                                             (declare (not safe))
                                             (cons __tmp182930 __tmp182928))))
                                      (declare (not safe))
                                      (cons __tmp182927 '())))
                                   (__tmp182913
                                    (let ((__tmp182916
                                           (let ((__tmp182922
                                                  (let ((__tmp182925
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd177310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp182923
                 (let ((__tmp182924
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e177309_))))
                   (declare (not safe))
                   (cons __tmp182924 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182925
                                                          __tmp182923)))
                                                 (__tmp182917
                                                  (let ((__tmp182918
                                                         (let ((__tmp182921
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl177311_ '())))
                       (__tmp182919
                        (let ((__tmp182920
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e177309_))))
                          (declare (not safe))
                          (cons __tmp182920 '()))))
                   (declare (not safe))
                   (cons __tmp182921 __tmp182919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182918 '()))))
                                             (declare (not safe))
                                             (cons __tmp182922 __tmp182917)))
                                          (__tmp182914
                                           (let* ((_body177312177319_
                                                   _body177303_)
                                                  (_E177314177323_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body177312177319_)))
                                                  (_K177315177331_
                                                   (lambda (_tl177326_
                                                            _hd177327_)
                                                     (let ((__tmp182915
                                                            (lambda (_vars177329_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur177193_
                         _tl177326_
                         _vars177329_
                         _$tl177311_
                         _E177287_
                         _k177288_)))))
               (declare (not safe))
               (_recur177193_
                _hd177327_
                _vars177285_
                _$hd177310_
                _E177287_
                __tmp182915)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body177312177319_))
                                                 (let ((_hd177316177334_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body177312177319_)))
                                                       (_tl177317177336_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body177312177319_))))
                                                   (let* ((_hd177339_
                                                           _hd177316177334_)
                                                          (_tl177341_
                                                           _tl177317177336_))
                                                     (declare (not safe))
                                                     (_K177315177331_
                                                      _tl177341_
                                                      _hd177339_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E177314177323_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp182916
                                       __tmp182914))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp182926
                                __tmp182913))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp182931 __tmp182912 _E177287_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e177306_))
                        (let* ((_body177342177349_ _body177303_)
                               (_E177344177353_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body177342177349_)))
                               (_K177345177404_
                                (lambda (_tl177356_ _hd177357_)
                                  (let* ((_rlen177359_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen177194_ _tl177356_)))
                                         (_$target177361_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd177363_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl177365_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp177367_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e177369_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd177371_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl177373_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars177375_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars177195_ _hd177357_)))
                                         (_lvars177377_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177375_)))
                                         (_tlvars177379_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars177375_)))
                                         (_linit177383_
                                          (map (lambda (_var177381_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars177377_)))
                                    (letrec ((_make-loop177386_
                                              (lambda (_vars177390_)
                                                (let ((__tmp182863
                                                       (let ((__tmp182864
                                                              (let ((__tmp182900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp177367_ '())))
                            (__tmp182865
                             (let ((__tmp182866
                                    (let ((__tmp182899
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd177363_ _lvars177377_)))
                                          (__tmp182867
                                           (let ((__tmp182898
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd177363_)))
                                                 (__tmp182876
                                                  (let ((__tmp182893
                                                         (let ((__tmp182894
                                                                (let ((__tmp182897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e177369_ '())))
                              (__tmp182895
                               (let ((__tmp182896
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e177015_
                                         _$hd177363_))))
                                 (declare (not safe))
                                 (cons __tmp182896 '()))))
                          (declare (not safe))
                          (cons __tmp182897 __tmp182895))))
                   (declare (not safe))
                   (cons __tmp182894 '())))
                (__tmp182877
                 (let ((__tmp182883
                        (let ((__tmp182889
                               (let ((__tmp182892
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd177371_ '())))
                                     (__tmp182890
                                      (let ((__tmp182891
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e177369_))))
                                        (declare (not safe))
                                        (cons __tmp182891 '()))))
                                 (declare (not safe))
                                 (cons __tmp182892 __tmp182890)))
                              (__tmp182884
                               (let ((__tmp182885
                                      (let ((__tmp182888
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl177373_ '())))
                                            (__tmp182886
                                             (let ((__tmp182887
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e177369_))))
                                               (declare (not safe))
                                               (cons __tmp182887 '()))))
                                        (declare (not safe))
                                        (cons __tmp182888 __tmp182886))))
                                 (declare (not safe))
                                 (cons __tmp182885 '()))))
                          (declare (not safe))
                          (cons __tmp182889 __tmp182884)))
                       (__tmp182878
                        (let ((__tmp182879
                               (lambda (_hdvars177392_)
                                 (let ((__tmp182880
                                        (let ((__tmp182881
                                               (map (lambda (_svar177394_
                                                             _lvar177395_)
                                                      (let ((__tmp182882
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar177394_ _hdvars177392_ _BUG177192_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp182882 _lvar177395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars177375_
                                                    _lvars177377_)))
                                          (declare (not safe))
                                          (cons _$lp-tl177373_ __tmp182881))))
                                   (declare (not safe))
                                   (cons _$lp177367_ __tmp182880)))))
                          (declare (not safe))
                          (_recur177193_
                           _hd177357_
                           '()
                           _$lp-hd177371_
                           _E177287_
                           __tmp182879))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp182883 __tmp182878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182893
                                                     __tmp182877)))
                                                 (__tmp182868
                                                  (let ((__tmp182872
                                                         (map (lambda (_lvar177397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar177398_)
                        (let ((__tmp182875
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar177398_ '())))
                              (__tmp182873
                               (let ((__tmp182874
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar177397_))))
                                 (declare (not safe))
                                 (cons __tmp182874 '()))))
                          (declare (not safe))
                          (cons __tmp182875 __tmp182873)))
                      _lvars177377_
                      _tlvars177379_))
                (__tmp182869
                 (_k177288_
                  (let ((__tmp182870
                         (lambda (_svar177400_ _tlvar177401_ _r177402_)
                           (let ((__tmp182871
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar177400_ _tlvar177401_))))
                             (declare (not safe))
                             (cons __tmp182871 _r177402_)))))
                    (declare (not safe))
                    (foldl2 __tmp182870
                            _vars177390_
                            _svars177375_
                            _tlvars177379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp182872
                                                     __tmp182869))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp182898
                                              __tmp182876
                                              __tmp182868))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp182899
                                       __tmp182867))))
                               (declare (not safe))
                               (cons __tmp182866 '()))))
                        (declare (not safe))
                        (cons __tmp182900 __tmp182865))))
                 (declare (not safe))
                 (cons __tmp182864 '())))
              (__tmp182861
               (let ((__tmp182862
                      (let ()
                        (declare (not safe))
                        (cons _$target177361_ _linit177383_))))
                 (declare (not safe))
                 (cons _$lp177367_ __tmp182862))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp182863
                                                   __tmp182861)))))
                                      (let ((_body177388_
                                             (let ((__tmp182902
                                                    (let ((__tmp182903
                                                           (let ((__tmp182906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp182907
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl177365_ '()))))
                            (declare (not safe))
                            (cons _$target177361_ __tmp182907)))
                         (__tmp182904
                          (let ((__tmp182905
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target177286_
                                    _rlen177359_))))
                            (declare (not safe))
                            (cons __tmp182905 '()))))
                     (declare (not safe))
                     (cons __tmp182906 __tmp182904))))
              (declare (not safe))
              (cons __tmp182903 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182901
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177193_
                                                       _tl177356_
                                                       _vars177285_
                                                       _$tl177365_
                                                       _E177287_
                                                       _make-loop177386_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182902
                                                __tmp182901))))
                                        (let ((__tmp182911
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target177286_)))
                                              (__tmp182908
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen177359_))
                                                   _body177388_
                                                   (let ((__tmp182909
                                                          (let ((__tmp182910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target177286_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp182910 _rlen177359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp182909
                                                      _body177388_
                                                      _E177287_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp182911
                                           __tmp182908
                                           _E177287_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body177342177349_))
                              (let ((_hd177346177407_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body177342177349_)))
                                    (_tl177347177409_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body177342177349_))))
                                (let* ((_hd177412_ _hd177346177407_)
                                       (_tl177414_ _tl177347177409_))
                                  (declare (not safe))
                                  (_K177345177404_ _tl177414_ _hd177412_)))
                              (let () (declare (not safe)) (_E177344177353_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e177306_))
                            (let ((__tmp182860
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target177286_)))
                                  (__tmp182859 (_k177288_ _vars177285_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp182860
                               __tmp182859
                               _E177287_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e177306_))
                                (let ((_$e177416_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp182858
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target177286_)))
                                        (__tmp182850
                                         (let ((__tmp182852
                                                (let ((__tmp182853
                                                       (let ((__tmp182857
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e177416_ '())))
                     (__tmp182854
                      (let ((__tmp182855
                             (let ((__tmp182856
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e177015_
                                       _target177286_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp182856))))
                        (declare (not safe))
                        (cons __tmp182855 '()))))
                 (declare (not safe))
                 (cons __tmp182857 __tmp182854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp182853 '())))
                                               (__tmp182851
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur177193_
                                                   _body177303_
                                                   _vars177285_
                                                   _$e177416_
                                                   _E177287_
                                                   _k177288_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp182852
                                            __tmp182851))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp182858
                                     __tmp182850
                                     _E177287_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e177306_))
                                    (let ((_$e177418_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp182849
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target177286_)))
                                            (__tmp182841
                                             (let ((__tmp182843
                                                    (let ((__tmp182844
                                                           (let ((__tmp182848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e177418_ '())))
                         (__tmp182845
                          (let ((__tmp182846
                                 (let ((__tmp182847
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e177015_
                                           _target177286_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp182847))))
                            (declare (not safe))
                            (cons __tmp182846 '()))))
                     (declare (not safe))
                     (cons __tmp182848 __tmp182845))))
              (declare (not safe))
              (cons __tmp182844 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp182842
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur177193_
                                                       _body177303_
                                                       _vars177285_
                                                       _$e177418_
                                                       _E177287_
                                                       _k177288_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp182843
                                                __tmp182842))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp182849
                                         __tmp182841
                                         _E177287_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e177306_))
                                        (let ((_$e177420_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp182840
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target177286_)))
                                                (__tmp182831
                                                 (let ((__tmp182835
                                                        (let ((__tmp182836
                                                               (let ((__tmp182839
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e177420_ '())))
                             (__tmp182837
                              (let ((__tmp182838
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target177286_))))
                                (declare (not safe))
                                (cons __tmp182838 '()))))
                         (declare (not safe))
                         (cons __tmp182839 __tmp182837))))
                  (declare (not safe))
                  (cons __tmp182836 '())))
               (__tmp182832
                (let ((__tmp182834
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e177420_ _body177303_)))
                      (__tmp182833 (_k177288_ _vars177285_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp182834 __tmp182833 _E177287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp182835
                                                    __tmp182832))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp182840
                                             __tmp182831
                                             _E177287_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG177192_ _e177284_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e177289177296_))
                                      (let ((_hd177293177425_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e177289177296_)))
                                            (_tl177294177427_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e177289177296_))))
                                        (let* ((_tag177430_ _hd177293177425_)
                                               (_body177432_ _tl177294177427_))
                                          (declare (not safe))
                                          (_K177292177422_
                                           _body177432_
                                           _tag177430_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177291177300_))))))
                             (_splice-rlen177194_
                              (lambda (_e177246_)
                                (let _lp177248_ ((_e177250_ _e177246_)
                                                 (_n177251_ '0))
                                  (let* ((_e177252177259_ _e177250_)
                                         (_E177254177263_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177252177259_)))
                                         (_K177255177272_
                                          (lambda (_body177266_ _tag177267_)
                                            (let ((_$e177269_ _tag177267_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e177269_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx177013_
                                                     _where177185_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e177269_))
                                                      (let ((__tmp182939
                                                             (cdr _body177266_))
                                                            (__tmp182938
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n177251_ '1))))
                (declare (not safe))
                (_lp177248_ __tmp182939 __tmp182938))
              _n177251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177252177259_))
                                        (let ((_hd177256177275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177252177259_)))
                                              (_tl177257177277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177252177259_))))
                                          (let* ((_tag177280_ _hd177256177275_)
                                                 (_body177282_
                                                  _tl177257177277_))
                                            (declare (not safe))
                                            (_K177255177272_
                                             _body177282_
                                             _tag177280_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177254177263_)))))))
                             (_splice-vars177195_
                              (lambda (_e177202_)
                                (let _recur177204_ ((_e177206_ _e177202_)
                                                    (_vars177207_ '()))
                                  (let* ((_e177208177215_ _e177206_)
                                         (_E177210177219_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e177208177215_)))
                                         (_K177211177234_
                                          (lambda (_body177222_ _tag177223_)
                                            (let ((_$e177225_ _tag177223_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e177225_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body177222_
                                                          _vars177207_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e177225_))
                  (let () (declare (not safe)) (eq? 'splice _$e177225_)))
              (let ((__tmp182942 (cdr _body177222_))
                    (__tmp182940
                     (let ((__tmp182941 (car _body177222_)))
                       (declare (not safe))
                       (_recur177204_ __tmp182941 _vars177207_))))
                (declare (not safe))
                (_recur177204_ __tmp182942 __tmp182940))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e177225_))
                      (let () (declare (not safe)) (eq? 'box _$e177225_)))
                  (let ()
                    (declare (not safe))
                    (_recur177204_ _body177222_ _vars177207_))
                  _vars177207_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e177208177215_))
                                        (let ((_hd177212177237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e177208177215_)))
                                              (_tl177213177239_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e177208177215_))))
                                          (let* ((_tag177242_ _hd177212177237_)
                                                 (_body177244_
                                                  _tl177213177239_))
                                            (declare (not safe))
                                            (_K177211177234_
                                             _body177244_
                                             _tag177242_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E177210177219_)))))))
                             (_make-body177196_
                              (lambda (_vars177198_)
                                (let ((__tmp182943
                                       (map (lambda (_mvar177200_)
                                              (let ((__tmp182944
                                                     (car _mvar177200_)))
                                                (declare (not safe))
                                                (assgetq __tmp182944
                                                         _vars177198_
                                                         _BUG177192_)))
                                            _mvars177188_)))
                                  (declare (not safe))
                                  (cons _K177189_ __tmp182943)))))
                      (let ()
                        (declare (not safe))
                        (_recur177193_
                         _hd177187_
                         '()
                         _target177186_
                         _E177190_
                         _make-body177196_)))))
                 (_parse-clause177022_
                  (lambda (_hd177091_ _ids177092_)
                    (let _recur177094_ ((_e177096_ _hd177091_)
                                        (_vars177097_ '())
                                        (_depth177098_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e177096_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e177096_))
                              (values '(any) _vars177097_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e177096_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx177013_
                                     _hd177091_))
                                  (if (let ((__tmp182960
                                             (lambda (_id177100_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e177096_
                                                  _id177100_)))))
                                        (declare (not safe))
                                        (find __tmp182960 _ids177092_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e177096_))
                                              _vars177097_)
                                      (if (let ((__tmp182958
                                                 (lambda (_var177102_)
                                                   (let ((__tmp182959
                                                          (car _var177102_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e177096_
                                                      __tmp182959)))))
                                            (declare (not safe))
                                            (find __tmp182958 _vars177097_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx177013_
                                             _e177096_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e177096_))
                                                  (let ((__tmp182957
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e177096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth177098_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182957
                                                          _vars177097_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e177096_))
                              (let* ((_e177103177110_ _e177096_)
                                     (_E177105177114_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e177103177110_))))
                                     (_E177104177175_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e177103177110_))
                                            (let ((_e177106177118_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e177103177110_))))
                                              (let ((_hd177107177121_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e177106177118_)))
                                                    (_tl177108177123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e177106177118_))))
                                                (let* ((_hd177126_
                                                        _hd177107177121_)
                                                       (_rest177128_
                                                        _tl177108177123_))
                                                  (if '#t
                                                      (let* ((_make-pair177143_
                                                              (lambda (_tag177130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd177131_
                               _tl177132_)
                        (let* ((_hd-depth177134_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag177130_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth177098_ '1))
                                    _depth177098_))
                               (_g182952_
                                (let ()
                                  (declare (not safe))
                                  (_recur177094_
                                   _hd177131_
                                   _vars177097_
                                   _hd-depth177134_))))
                          (begin
                            (let ((_g182953_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g182952_)
                                         (##vector-length _g182952_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g182953_ 2)))
                                  (error "Context expects 2 values"
                                         _g182953_)))
                            (let ((_hd177136_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182952_ 0)))
                                  (_vars177137_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g182952_ 1))))
                              (let ((_g182954_
                                     (let ()
                                       (declare (not safe))
                                       (_recur177094_
                                        _tl177132_
                                        _vars177137_
                                        _depth177098_))))
                                (begin
                                  (let ((_g182955_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g182954_)
                                               (##vector-length _g182954_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g182955_ 2)))
                                        (error "Context expects 2 values"
                                               _g182955_)))
                                  (let ((_tl177139_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182954_ 0)))
                                        (_vars177140_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g182954_ 1))))
                                    (let ()
                                      (values (let ((__tmp182956
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd177136_
                                                             _tl177139_))))
                                                (declare (not safe))
                                                (cons _tag177130_ __tmp182956))
                                              _vars177140_))))))))))
                     (_e177144177151_ _rest177128_)
                     (_E177146177155_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair177143_ 'cons _hd177126_ _rest177128_))))
                     (_E177145177171_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e177144177151_))
                            (let ((_e177147177159_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e177144177151_))))
                              (let ((_hd177148177162_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e177147177159_)))
                                    (_tl177149177164_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e177147177159_))))
                                (let* ((_rest-hd177167_ _hd177148177162_)
                                       (_rest-tl177169_ _tl177149177164_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd177167_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177143_
                                             'splice
                                             _hd177126_
                                             _rest-tl177169_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair177143_
                                             'cons
                                             _hd177126_
                                             _rest177128_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E177146177155_))))))
                            (let () (declare (not safe)) (_E177146177155_))))))
                (let () (declare (not safe)) (_E177145177171_)))
              (let () (declare (not safe)) (_E177105177114_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E177105177114_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177104177175_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e177096_))
                                  (values '(null) _vars177097_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e177096_))
                                      (let ((_g182949_
                                             (let ((__tmp182951
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e177096_)))))
                                               (declare (not safe))
                                               (_recur177094_
                                                __tmp182951
                                                _vars177097_
                                                _depth177098_))))
                                        (begin
                                          (let ((_g182950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g182949_)
                                                       (##vector-length
                                                        _g182949_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g182950_ 2)))
                                                (error "Context expects 2 values"
                                                       _g182950_)))
                                          (let ((_e177179_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g182949_ 0)))
                                                (_vars177180_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g182949_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e177179_))
                                                    _vars177180_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e177096_))
                                          (let ((_g182946_
                                                 (let ((__tmp182948
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e177096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur177094_
                                                    __tmp182948
                                                    _vars177097_
                                                    _depth177098_))))
                                            (begin
                                              (let ((_g182947_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g182946_)
                                                           (##vector-length
                                                            _g182946_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g182947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g182947_)))
                                              (let ((_e177182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182946_
                                                        0)))
                                                    (_vars177183_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g182946_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e177182_))
                                                        _vars177183_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e177096_))
                                              (values (let ((__tmp182945
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e177096_))))
                (declare (not safe))
                (cons 'datum __tmp182945))
              _vars177097_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx177013_
                                                 _e177096_))))))))))))
          (let* ((_e177023177036_ _stx177013_)
                 (_E177025177040_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e177023177036_))))
                 (_E177024177087_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e177023177036_))
                        (let ((_e177026177044_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e177023177036_))))
                          (let ((_hd177027177047_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e177026177044_)))
                                (_tl177028177049_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e177026177044_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl177028177049_))
                                (let ((_e177029177052_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl177028177049_))))
                                  (let ((_hd177030177055_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e177029177052_)))
                                        (_tl177031177057_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e177029177052_))))
                                    (let ((_expr177060_ _hd177030177055_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl177031177057_))
                                          (let ((_e177032177062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl177031177057_))))
                                            (let ((_hd177033177065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e177032177062_)))
                                                  (_tl177034177067_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e177032177062_))))
                                              (let* ((_ids177070_
                                                      _hd177033177065_)
                                                     (_clauses177072_
                                                      _tl177034177067_))
                                                (if '#t
                                                    (if (let ((__tmp182978
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids177070_))))
                  (declare (not safe))
                  (not __tmp182978))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx177013_
                   _ids177070_))
                (if (let ((__tmp182977
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses177072_))))
                      (declare (not safe))
                      (not __tmp182977))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx177013_))
                    (let* ((_ids177074_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids177070_)))
                           (_clauses177076_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses177072_)))
                           (_clause-ids177078_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses177076_)))
                           (_E177080_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target177082_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first177084_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses177076_))
                                _E177080_
                                (car _clause-ids177078_))))
                      (let ((__tmp182962
                             (let ((__tmp182963
                                    (let ((__tmp182965
                                           (let ((__tmp182970
                                                  (let ((__tmp182971
                                                         (let ((__tmp182976
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E177080_ '())))
                       (__tmp182972
                        (let ((__tmp182973
                               (let ((__tmp182975
                                      (let ()
                                        (declare (not safe))
                                        (cons _target177082_ '())))
                                     (__tmp182974
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target177082_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp182975
                                  __tmp182974))))
                          (declare (not safe))
                          (cons __tmp182973 '()))))
                   (declare (not safe))
                   (cons __tmp182976 __tmp182972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp182971 '())))
                                                 (__tmp182966
                                                  (let ((__tmp182969
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings177018_
                                                            _target177082_
                                                            _ids177074_
                                                            _clauses177076_
                                                            _clause-ids177078_
                                                            _E177080_)))
                                                        (__tmp182967
                                                         (let ((__tmp182968
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr177060_ '()))))
                   (declare (not safe))
                   (cons _first177084_ __tmp182968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body177019_
                                                     __tmp182969
                                                     __tmp182967))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp182970
                                              __tmp182966)))
                                          (__tmp182964
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx177013_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp182965
                                       __tmp182964))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp182963)))
                            (__tmp182961
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx177013_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp182962 __tmp182961)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E177025177040_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E177025177040_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E177025177040_)))))
                        (let () (declare (not safe)) (_E177025177040_))))))
            (let () (declare (not safe)) (_E177024177087_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx177723_)
        (let* ((_identifier=?177725_ 'free-identifier=?)
               (_unwrap-e177727_ 'syntax-e)
               (_wrap-e177729_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177723_
           _identifier=?177725_
           _unwrap-e177727_
           _wrap-e177729_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx177731_ _identifier=?177732_)
        (let* ((_unwrap-e177734_ 'syntax-e) (_wrap-e177736_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177731_
           _identifier=?177732_
           _unwrap-e177734_
           _wrap-e177736_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx177738_ _identifier=?177739_ _unwrap-e177740_)
        (let ((_wrap-e177742_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx177738_
           _identifier=?177739_
           _unwrap-e177740_
           _wrap-e177742_))))
    (define gx#macro-expand-syntax-case
      (lambda _g182980_
        (let ((_g182979_ (let () (declare (not safe)) (##length _g182980_))))
          (cond ((let () (declare (not safe)) (##fx= _g182979_ 1))
                 (apply (lambda (_stx177723_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx177723_)))
                        _g182980_))
                ((let () (declare (not safe)) (##fx= _g182979_ 2))
                 (apply (lambda (_stx177731_ _identifier=?177732_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx177731_
                             _identifier=?177732_)))
                        _g182980_))
                ((let () (declare (not safe)) (##fx= _g182979_ 3))
                 (apply (lambda (_stx177738_
                                 _identifier=?177739_
                                 _unwrap-e177740_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx177738_
                             _identifier=?177739_
                             _unwrap-e177740_)))
                        _g182980_))
                ((let () (declare (not safe)) (##fx= _g182979_ 4))
                 (apply (lambda (_stx177744_
                                 _identifier=?177745_
                                 _unwrap-e177746_
                                 _wrap-e177747_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx177744_
                             _identifier=?177745_
                             _unwrap-e177746_
                             _wrap-e177747_)))
                        _g182980_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g182980_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx177010_)
        (if (let () (declare (not safe)) (gx#identifier? _stx177010_))
            (let ((__tmp182981
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx177010_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp182981 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd176968_ . _rest176969_)
        (let ((_len176971_ (length _hd176968_)))
          (let _lp176973_ ((_rest176975_ _rest176969_))
            (let* ((_rest176976176984_ _rest176975_)
                   (_else176978176992_ (lambda () '#!void))
                   (_K176980176998_
                    (lambda (_rest176995_ _hd176996_)
                      (if (fx= _len176971_ (length _hd176996_))
                          (let ()
                            (declare (not safe))
                            (_lp176973_ _rest176995_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd176996_))))))
              (if (let () (declare (not safe)) (##pair? _rest176976176984_))
                  (let ((_hd176981177001_
                         (let ()
                           (declare (not safe))
                           (##car _rest176976176984_)))
                        (_tl176982177003_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest176976176984_))))
                    (let* ((_hd177006_ _hd176981177001_)
                           (_rest177008_ _tl176982177003_))
                      (declare (not safe))
                      (_K176980176998_ _rest177008_ _hd177006_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx176926_ _n176927_)
        (let _lp176929_ ((_rest176931_ _stx176926_) (_r176932_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest176931_))
              (let* ((_g176933176940_
                      (let () (declare (not safe)) (gx#syntax-e _rest176931_)))
                     (_E176935176944_
                      (lambda ()
                        (error '"No clause matching" _g176933176940_)))
                     (_K176936176950_
                      (lambda (_rest176947_ _hd176948_)
                        (let ((__tmp182986
                               (let ()
                                 (declare (not safe))
                                 (cons _hd176948_ _r176932_))))
                          (declare (not safe))
                          (_lp176929_ _rest176947_ __tmp182986)))))
                (if (let () (declare (not safe)) (##pair? _g176933176940_))
                    (let ((_hd176937176953_
                           (let ()
                             (declare (not safe))
                             (##car _g176933176940_)))
                          (_tl176938176955_
                           (let ()
                             (declare (not safe))
                             (##cdr _g176933176940_))))
                      (let* ((_hd176958_ _hd176937176953_)
                             (_rest176960_ _tl176938176955_))
                        (declare (not safe))
                        (_K176936176950_ _rest176960_ _hd176958_)))
                    (let () (declare (not safe)) (_E176935176944_))))
              (let _lp176962_ ((_n176964_ _n176927_)
                               (_l176965_ _r176932_)
                               (_r176966_ _rest176931_))
                (if (let () (declare (not safe)) (null? _l176965_))
                    (values _l176965_ _r176966_)
                    (if (fxpositive? _n176964_)
                        (let ((__tmp182985
                               (let ()
                                 (declare (not safe))
                                 (fx- _n176964_ '1)))
                              (__tmp182984 (cdr _l176965_))
                              (__tmp182982
                               (let ((__tmp182983 (car _l176965_)))
                                 (declare (not safe))
                                 (cons __tmp182983 _r176966_))))
                          (declare (not safe))
                          (_lp176962_ __tmp182985 __tmp182984 __tmp182982))
                        (values (reverse _l176965_) _r176966_))))))))))
