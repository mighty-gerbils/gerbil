(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[:0:]#:|
    (lambda (_$stx46103_)
      (let ((_g4610646113_
             (lambda (_g4610746109_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4610746109_))))
        (_g4610646113_ _$stx46103_))))
  (define |gerbil/core/more-sugar[:0:]#:~|
    (lambda (_$stx46117_)
      (let ((_g4612046127_
             (lambda (_g4612146123_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4612146123_))))
        (_g4612046127_ _$stx46117_))))
  (define |gerbil/core/more-sugar[:0:]#:-|
    (lambda (_$stx46131_)
      (let ((_g4613446141_
             (lambda (_g4613546137_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4613546137_))))
        (_g4613446141_ _$stx46131_))))
  (define |gerbil/core/more-sugar[:0:]#:~-|
    (lambda (_$stx46145_)
      (let ((_g4614846155_
             (lambda (_g4614946151_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4614946151_))))
        (_g4614846155_ _$stx46145_))))
  (define |gerbil/core/more-sugar[:0:]#:=|
    (lambda (_$stx46159_)
      (let ((_g4616246169_
             (lambda (_g4616346165_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4616346165_))))
        (_g4616246169_ _$stx46159_))))
  (define |gerbil/core/more-sugar[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     'setq-macro
     (list gerbil/core/macro-object#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core/more-sugar[1]#setq-macro?|
    (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
  (define |gerbil/core/more-sugar[1]#make-setq-macro|
    (lambda _$args46183_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _$args46183_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     'setf-macro
     (list gerbil/core/macro-object#macro-object::t)
     '()
     '()
     '#f))
  (define |gerbil/core/more-sugar[1]#setf-macro?|
    (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
  (define |gerbil/core/more-sugar[1]#make-setf-macro|
    (lambda _$args46179_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _$args46179_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_stx46176_)
      (if (gx#identifier? _stx46176_)
          (let ((__tmp47747 (gx#syntax-local-value _stx46176_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp47747))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_stx46173_)
      (if (gx#identifier? _stx46173_)
          (let ((__tmp47748 (gx#syntax-local-value _stx46173_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp47748))
          '#f)))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_stx46187_)
      (let* ((___stx4759447595_ _stx46187_)
             (_g4619346252_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4759447595_))))
        (let ((___kont4759747598_
               (lambda (_L46525_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L46525_)
                  _stx46187_)))
              (___kont4759947600_
               (lambda (_L46424_ _L46426_ _L46427_)
                 (let* ((_g4644946457_
                         (lambda (_g4645046453_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4645046453_)))
                        (_g4644846484_
                         (lambda (_g4645046461_)
                           ((lambda (_L46464_)
                              (let ()
                                (let ((__tmp47749
                                       (foldr (lambda (_g4647546478_
                                                       _g4647646481_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g4647546478_
                                                        _g4647646481_)))
                                              (let ()
                                                (declare (not safe))
                                                (cons _L46424_ '()))
                                              _L46426_)))
                                  (declare (not safe))
                                  (cons _L46464_ __tmp47749))))
                            _g4645046461_))))
                   (_g4644846484_
                    (gx#stx-identifier _L46427_ _L46427_ '"-set!")))))
              (___kont4760347604_
               (lambda (_L46334_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L46334_)
                  _stx46187_)))
              (___kont4760547606_
               (lambda (_L46289_ _L46291_)
                 (let ((__tmp47752 (gx#datum->syntax '#f '%#set!))
                       (__tmp47750
                        (let ((__tmp47751
                               (let ()
                                 (declare (not safe))
                                 (cons _L46289_ '()))))
                          (declare (not safe))
                          (cons _L46291_ __tmp47751))))
                   (declare (not safe))
                   (cons __tmp47752 __tmp47750)))))
          (let* ((___match4768547686_
                  (lambda (_e4624046259_
                           _hd4623946263_
                           _tl4623846266_
                           _e4624346269_
                           _hd4624246273_
                           _tl4624146276_
                           _e4624646279_
                           _hd4624546283_
                           _tl4624446286_)
                    (let ((_L46289_ _hd4624546283_) (_L46291_ _hd4624246273_))
                      (if (gx#identifier? _L46291_)
                          (___kont4760547606_ _L46289_ _L46291_)
                          (let () (declare (not safe)) (_g4619346252_))))))
                 (___match4766547666_
                  (lambda (_e4623246314_
                           _hd4623146318_
                           _tl4623046321_
                           _e4623546324_
                           _hd4623446328_
                           _tl4623346331_)
                    (let ((_L46334_ _hd4623446328_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _L46334_))
                          (___kont4760347604_ _L46334_)
                          (if (gx#stx-pair? _tl4623346331_)
                              (let ((_e4624646279_
                                     (gx#syntax-e _tl4623346331_)))
                                (let ((_tl4624446286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4624646279_)))
                                      (_hd4624546283_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4624646279_))))
                                  (if (gx#stx-null? _tl4624446286_)
                                      (___match4768547686_
                                       _e4623246314_
                                       _hd4623146318_
                                       _tl4623046321_
                                       _e4623546324_
                                       _hd4623446328_
                                       _tl4623346331_
                                       _e4624646279_
                                       _hd4624546283_
                                       _tl4624446286_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4619346252_)))))
                              (let ()
                                (declare (not safe))
                                (_g4619346252_)))))))
                 (___match4765347654_
                  (lambda (_e4621046354_
                           _hd4620946358_
                           _tl4620846361_
                           _e4621346364_
                           _hd4621246368_
                           _tl4621146371_
                           _e4621646374_
                           _hd4621546378_
                           _tl4621446381_
                           ___splice4760147602_
                           _target4621746384_
                           _tl4621946387_)
                    (letrec ((_loop4622046390_
                              (lambda (_hd4621846394_ _arg4622446397_)
                                (if (gx#stx-pair? _hd4621846394_)
                                    (let ((_e4622146400_
                                           (gx#syntax-e _hd4621846394_)))
                                      (let ((_lp-tl4622346407_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4622146400_)))
                                            (_lp-hd4622246404_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4622146400_))))
                                        (_loop4622046390_
                                         _lp-tl4622346407_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4622246404_
                                                 _arg4622446397_)))))
                                    (let ((_arg4622546410_
                                           (reverse _arg4622446397_)))
                                      (if (gx#stx-pair? _tl4621146371_)
                                          (let ((_e4622846414_
                                                 (gx#syntax-e _tl4621146371_)))
                                            (let ((_tl4622646421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4622846414_)))
                                                  (_hd4622746418_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4622846414_))))
                                              (if (gx#stx-null? _tl4622646421_)
                                                  (let ((_L46424_
                                                         _hd4622746418_)
                                                        (_L46426_
                                                         _arg4622546410_)
                                                        (_L46427_
                                                         _hd4621546378_))
                                                    (if (gx#identifier?
                                                         _L46427_)
                                                        (___kont4759947600_
                                                         _L46424_
                                                         _L46426_
                                                         _L46427_)
                                                        (___match4766547666_
                                                         _e4621046354_
                                                         _hd4620946358_
                                                         _tl4620846361_
                                                         _e4621346364_
                                                         _hd4621246368_
                                                         _tl4621146371_)))
                                                  (___match4766547666_
                                                   _e4621046354_
                                                   _hd4620946358_
                                                   _tl4620846361_
                                                   _e4621346364_
                                                   _hd4621246368_
                                                   _tl4621146371_))))
                                          (___match4766547666_
                                           _e4621046354_
                                           _hd4620946358_
                                           _tl4620846361_
                                           _e4621346364_
                                           _hd4621246368_
                                           _tl4621146371_)))))))
                      (_loop4622046390_ _target4621746384_ '())))))
            (if (gx#stx-pair? ___stx4759447595_)
                (let ((_e4619846495_ (gx#syntax-e ___stx4759447595_)))
                  (let ((_tl4619646502_
                         (let () (declare (not safe)) (##cdr _e4619846495_)))
                        (_hd4619746499_
                         (let () (declare (not safe)) (##car _e4619846495_))))
                    (if (gx#stx-pair? _tl4619646502_)
                        (let ((_e4620146505_ (gx#syntax-e _tl4619646502_)))
                          (let ((_tl4619946512_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4620146505_)))
                                (_hd4620046509_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4620146505_))))
                            (if (gx#stx-pair? _hd4620046509_)
                                (let ((_e4620446515_
                                       (gx#syntax-e _hd4620046509_)))
                                  (let ((_tl4620246522_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4620446515_)))
                                        (_hd4620346519_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4620446515_))))
                                    (if (let ((__tmp47753
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                           __tmp47753))
                                        (let ((_L46525_ _hd4620346519_))
                                          (___kont4759747598_ _L46525_))
                                        (if (gx#stx-pair/null? _tl4620246522_)
                                            (let ((___splice4760147602_
                                                   (gx#syntax-split-splice
                                                    _tl4620246522_
                                                    '0)))
                                              (let ((_tl4621946387_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4760147602_
                                                        '1)))
                                                    (_target4621746384_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4760147602_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4621946387_)
                                                    (___match4765347654_
                                                     _e4619846495_
                                                     _hd4619746499_
                                                     _tl4619646502_
                                                     _e4620146505_
                                                     _hd4620046509_
                                                     _tl4619946512_
                                                     _e4620446515_
                                                     _hd4620346519_
                                                     _tl4620246522_
                                                     ___splice4760147602_
                                                     _target4621746384_
                                                     _tl4621946387_)
                                                    (___match4766547666_
                                                     _e4619846495_
                                                     _hd4619746499_
                                                     _tl4619646502_
                                                     _e4620146505_
                                                     _hd4620046509_
                                                     _tl4619946512_))))
                                            (___match4766547666_
                                             _e4619846495_
                                             _hd4619746499_
                                             _tl4619646502_
                                             _e4620146505_
                                             _hd4620046509_
                                             _tl4619946512_)))))
                                (___match4766547666_
                                 _e4619846495_
                                 _hd4619746499_
                                 _tl4619646502_
                                 _e4620146505_
                                 _hd4620046509_
                                 _tl4619946512_))))
                        (let () (declare (not safe)) (_g4619346252_)))))
                (let () (declare (not safe)) (_g4619346252_))))))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_stx46545_)
      (let* ((_g4654846572_
              (lambda (_g4654946568_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4654946568_)))
             (_g4654746750_
              (lambda (_g4654946576_)
                (if (gx#stx-pair? _g4654946576_)
                    (let ((_e4655446579_ (gx#syntax-e _g4654946576_)))
                      (let ((_hd4655346583_
                             (let ()
                               (declare (not safe))
                               (##car _e4655446579_)))
                            (_tl4655246586_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4655446579_))))
                        (if (gx#stx-pair/null? _tl4655246586_)
                            (if (fx>= (gx#stx-length _tl4655246586_) '1)
                                (let ((_g47754_
                                       (gx#syntax-split-splice
                                        _tl4655246586_
                                        '1)))
                                  (begin
                                    (let ((_g47755_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g47754_)
                                                 (##vector-length _g47754_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g47755_ 2)))
                                          (error "Context expects 2 values"
                                                 _g47755_)))
                                    (let ((_target4655546589_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47754_ 0)))
                                          (_tl4655746592_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47754_ 1))))
                                      (if (gx#stx-pair? _tl4655746592_)
                                          (let ((_e4656646595_
                                                 (gx#syntax-e _tl4655746592_)))
                                            (let ((_hd4656546599_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4656646595_)))
                                                  (_tl4656446602_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4656646595_))))
                                              (if (gx#stx-null? _tl4656446602_)
                                                  (letrec ((_loop4655846605_
                                                            (lambda (_hd4655646609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt4656246612_)
                      (if (gx#stx-pair? _hd4655646609_)
                          (let ((_e4655946615_ (gx#syntax-e _hd4655646609_)))
                            (let ((_lp-hd4656046619_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4655946615_)))
                                  (_lp-tl4656146622_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4655946615_))))
                              (_loop4655846605_
                               _lp-tl4656146622_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4656046619_ _tgt4656246612_)))))
                          (let ((_tgt4656346625_ (reverse _tgt4656246612_)))
                            ((lambda (_L46629_ _L46631_)
                               (let* ((_g4664946666_
                                       (lambda (_g4665046662_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g4665046662_)))
                                      (_g4664846738_
                                       (lambda (_g4665046670_)
                                         (if (gx#stx-pair/null? _g4665046670_)
                                             (let ((_g47756_
                                                    (gx#syntax-split-splice
                                                     _g4665046670_
                                                     '0)))
                                               (begin
                                                 (let ((_g47757_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g47756_)
                                                              (##vector-length
                                                               _g47756_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g47757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g47757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target4665246673_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g47756_
                                                           0)))
                                                       (_tl4665446676_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g47756_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl4665446676_)
                                                       (letrec ((_loop4665546679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd4665346683_ _$e4665946686_)
                           (if (gx#stx-pair? _hd4665346683_)
                               (let ((_e4665646689_
                                      (gx#syntax-e _hd4665346683_)))
                                 (let ((_lp-hd4665746693_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4665646689_)))
                                       (_lp-tl4665846696_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4665646689_))))
                                   (_loop4665546679_
                                    _lp-tl4665846696_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd4665746693_
                                            _$e4665946686_)))))
                               (let ((_$e4666046699_ (reverse _$e4665946686_)))
                                 ((lambda (_L46703_)
                                    (let ()
                                      (let ((__tmp47768
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp47758
                                             (let ((__tmp47764
                                                    (let ((__tmp47765
                                                           (let ((__tmp47767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_g4672146724_ _g4672246727_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4672146724_ _g4672246727_)))
                                 '()
                                 _L46703_))
                         (__tmp47766
                          (let () (declare (not safe)) (cons _L46629_ '()))))
                     (declare (not safe))
                     (cons __tmp47767 __tmp47766))))
              (declare (not safe))
              (cons __tmp47765 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp47759
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L46703_
                                                       _L46631_)
                                                      (foldr (lambda (_g4671846730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4671946733_
                              _g4672046735_)
                       (let ((__tmp47760
                              (let ((__tmp47763 (gx#datum->syntax '#f 'set!))
                                    (__tmp47761
                                     (let ((__tmp47762
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4671846730_ '()))))
                                       (declare (not safe))
                                       (cons _g4671946733_ __tmp47762))))
                                (declare (not safe))
                                (cons __tmp47763 __tmp47761))))
                         (declare (not safe))
                         (cons __tmp47760 _g4672046735_)))
                     '()
                     _L46703_
                     _L46631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47764 __tmp47759))))
                                        (declare (not safe))
                                        (cons __tmp47768 __tmp47758))))
                                  _$e4666046699_))))))
                 (_loop4665546679_ _target4665246673_ '()))
               (_g4664946666_ _g4665046670_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4664946666_ _g4665046670_)))))
                                 (_g4664846738_
                                  (gx#gentemps
                                   (foldr (lambda (_g4674146744_ _g4674246747_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4674146744_
                                                    _g4674246747_)))
                                          '()
                                          _L46631_)))))
                             _hd4656546599_
                             _tgt4656346625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4655846605_
                                                     _target4655546589_
                                                     '()))
                                                  (_g4654846572_
                                                   _g4654946576_))))
                                          (_g4654846572_ _g4654946576_)))))
                                (_g4654846572_ _g4654946576_))
                            (_g4654846572_ _g4654946576_))))
                    (_g4654846572_ _g4654946576_)))))
        (_g4654746750_ _stx46545_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_stx46756_)
      (let* ((___stx4768847689_ _stx46756_)
             (_g4676046818_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4768847689_))))
        (let ((___kont4769147692_
               (lambda (_L47152_)
                 (let ((__tmp47771 (gx#datum->syntax '#f 'let))
                       (__tmp47769
                        (let ((__tmp47770
                               (foldr (lambda (_g4716847171_ _g4716947174_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g4716847171_ _g4716947174_)))
                                      '()
                                      _L47152_)))
                          (declare (not safe))
                          (cons '() __tmp47770))))
                   (declare (not safe))
                   (cons __tmp47771 __tmp47769))))
              (___kont4769547696_
               (lambda (_L46929_ _L46931_ _L46932_)
                 (let* ((_g4695546963_
                         (lambda (_g4695646959_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4695646959_)))
                        (_g4695447083_
                         (lambda (_g4695646967_)
                           ((lambda (_L46970_)
                              (let ()
                                (let* ((_g4698246999_
                                        (lambda (_g4698346995_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4698346995_)))
                                       (_g4698147063_
                                        (lambda (_g4698347003_)
                                          (if (gx#stx-pair/null? _g4698347003_)
                                              (let ((_g47772_
                                                     (gx#syntax-split-splice
                                                      _g4698347003_
                                                      '0)))
                                                (begin
                                                  (let ((_g47773_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47772_)
                                                               (##vector-length
                                                                _g47772_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47773_ 2)))
                (error "Context expects 2 values" _g47773_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target4698547006_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47772_
                                                            0)))
                                                        (_tl4698747009_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47772_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl4698747009_)
                                                        (letrec ((_loop4698847012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd4698647016_ _arg4699247019_)
                            (if (gx#stx-pair? _hd4698647016_)
                                (let ((_e4698947022_
                                       (gx#syntax-e _hd4698647016_)))
                                  (let ((_lp-hd4699047026_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4698947022_)))
                                        (_lp-tl4699147029_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4698947022_))))
                                    (_loop4698847012_
                                     _lp-tl4699147029_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd4699047026_
                                             _arg4699247019_)))))
                                (let ((_arg4699347032_
                                       (reverse _arg4699247019_)))
                                  ((lambda (_L47036_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp47776
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp47774
                                                (let ((__tmp47775
                                                       (foldr (lambda (_g4705447057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4705547060_)
                        (let ()
                          (declare (not safe))
                          (cons _g4705447057_ _g4705547060_)))
                      '()
                      _L47036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L46970_ __tmp47775))))
                                           (declare (not safe))
                                           (cons __tmp47776 __tmp47774)))))
                                   _arg4699347032_))))))
                  (_loop4698847012_ _target4698547006_ '()))
                (_g4698246999_ _g4698347003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4698246999_ _g4698347003_)))))
                                  (_g4698147063_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g4706647069_
                                                           _g4706747072_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4706647069_
                                                            _g4706747072_)))
                                                  '()
                                                  _L46932_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g4707447077_
                                                           _g4707547080_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4707447077_
                                                            _g4707547080_)))
                                                  '()
                                                  _L46931_)))))))
                            _g4695646967_))))
                   (_g4695447083_
                    (gx#stx-wrap-source
                     (let ((__tmp47779 (gx#datum->syntax '#f 'lambda))
                           (__tmp47777
                            (let ((__tmp47778
                                   (foldr (lambda (_g4708647089_ _g4708747092_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4708647089_
                                                    _g4708747092_)))
                                          '()
                                          _L46929_)))
                              (declare (not safe))
                              (cons '() __tmp47778))))
                       (declare (not safe))
                       (cons __tmp47779 __tmp47777))
                     (gx#stx-source _stx46756_)))))))
          (let* ((___match4774347744_
                  (lambda (_e4678346825_
                           _hd4678246829_
                           _tl4678146832_
                           _e4678646835_
                           _hd4678546839_
                           _tl4678446842_
                           ___splice4769747698_
                           _target4678746845_
                           _tl4678946848_)
                    (letrec ((_loop4679046851_
                              (lambda (_hd4678846855_
                                       _expr4679446858_
                                       _param4679546860_)
                                (if (gx#stx-pair? _hd4678846855_)
                                    (let ((_e4679146863_
                                           (gx#syntax-e _hd4678846855_)))
                                      (let ((_lp-tl4679346870_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4679146863_)))
                                            (_lp-hd4679246867_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4679146863_))))
                                        (if (gx#stx-pair? _lp-hd4679246867_)
                                            (let ((_e4680046873_
                                                   (gx#syntax-e
                                                    _lp-hd4679246867_)))
                                              (let ((_tl4679846880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4680046873_)))
                                                    (_hd4679946877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4680046873_))))
                                                (if (gx#stx-pair?
                                                     _tl4679846880_)
                                                    (let ((_e4680346883_
                                                           (gx#syntax-e
                                                            _tl4679846880_)))
                                                      (let ((_tl4680146890_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4680346883_)))
                    (_hd4680246887_
                     (let () (declare (not safe)) (##car _e4680346883_))))
                (if (gx#stx-null? _tl4680146890_)
                    (_loop4679046851_
                     _lp-tl4679346870_
                     (let ()
                       (declare (not safe))
                       (cons _hd4680246887_ _expr4679446858_))
                     (let ()
                       (declare (not safe))
                       (cons _hd4679946877_ _param4679546860_)))
                    (let () (declare (not safe)) (_g4676046818_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4676046818_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4676046818_)))))
                                    (let ((_param4679746896_
                                           (reverse _param4679546860_))
                                          (_expr4679646893_
                                           (reverse _expr4679446858_)))
                                      (if (gx#stx-pair/null? _tl4678446842_)
                                          (let ((___splice4769947700_
                                                 (gx#syntax-split-splice
                                                  _tl4678446842_
                                                  '0)))
                                            (let ((_tl4680646902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4769947700_
                                                      '1)))
                                                  (_target4680446899_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4769947700_
                                                      '0))))
                                              (if (gx#stx-null? _tl4680646902_)
                                                  (letrec ((_loop4680746905_
                                                            (lambda (_hd4680546909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body4681146912_)
                      (if (gx#stx-pair? _hd4680546909_)
                          (let ((_e4680846915_ (gx#syntax-e _hd4680546909_)))
                            (let ((_lp-tl4681046922_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4680846915_)))
                                  (_lp-hd4680946919_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4680846915_))))
                              (_loop4680746905_
                               _lp-tl4681046922_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4680946919_ _body4681146912_)))))
                          (let ((_body4681246925_ (reverse _body4681146912_)))
                            (___kont4769547696_
                             _body4681246925_
                             _expr4679646893_
                             _param4679746896_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4680746905_
                                                     _target4680446899_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4676046818_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4676046818_))))))))
                      (_loop4679046851_ _target4678746845_ '() '()))))
                 (___match4772347724_
                  (lambda (_e4676547102_
                           _hd4676447106_
                           _tl4676347109_
                           _e4676847112_
                           _hd4676747116_
                           _tl4676647119_
                           ___splice4769347694_
                           _target4676947122_
                           _tl4677147125_)
                    (letrec ((_loop4677247128_
                              (lambda (_hd4677047132_ _body4677647135_)
                                (if (gx#stx-pair? _hd4677047132_)
                                    (let ((_e4677347138_
                                           (gx#syntax-e _hd4677047132_)))
                                      (let ((_lp-tl4677547145_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4677347138_)))
                                            (_lp-hd4677447142_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4677347138_))))
                                        (_loop4677247128_
                                         _lp-tl4677547145_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4677447142_
                                                 _body4677647135_)))))
                                    (let ((_body4677747148_
                                           (reverse _body4677647135_)))
                                      (___kont4769147692_
                                       _body4677747148_))))))
                      (_loop4677247128_ _target4676947122_ '())))))
            (if (gx#stx-pair? ___stx4768847689_)
                (let ((_e4676547102_ (gx#syntax-e ___stx4768847689_)))
                  (let ((_tl4676347109_
                         (let () (declare (not safe)) (##cdr _e4676547102_)))
                        (_hd4676447106_
                         (let () (declare (not safe)) (##car _e4676547102_))))
                    (if (gx#stx-pair? _tl4676347109_)
                        (let ((_e4676847112_ (gx#syntax-e _tl4676347109_)))
                          (let ((_tl4676647119_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4676847112_)))
                                (_hd4676747116_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4676847112_))))
                            (if (gx#stx-null? _hd4676747116_)
                                (if (gx#stx-pair/null? _tl4676647119_)
                                    (let ((___splice4769347694_
                                           (gx#syntax-split-splice
                                            _tl4676647119_
                                            '0)))
                                      (let ((_tl4677147125_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4769347694_
                                                '1)))
                                            (_target4676947122_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4769347694_
                                                '0))))
                                        (if (gx#stx-null? _tl4677147125_)
                                            (___match4772347724_
                                             _e4676547102_
                                             _hd4676447106_
                                             _tl4676347109_
                                             _e4676847112_
                                             _hd4676747116_
                                             _tl4676647119_
                                             ___splice4769347694_
                                             _target4676947122_
                                             _tl4677147125_)
                                            (if (gx#stx-pair/null?
                                                 _hd4676747116_)
                                                (let ((___splice4769747698_
                                                       (gx#syntax-split-splice
                                                        _hd4676747116_
                                                        '0)))
                                                  (let ((_tl4678946848_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4769747698_
                                                            '1)))
                                                        (_target4678746845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4769747698_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4678946848_)
                                                        (___match4774347744_
                                                         _e4676547102_
                                                         _hd4676447106_
                                                         _tl4676347109_
                                                         _e4676847112_
                                                         _hd4676747116_
                                                         _tl4676647119_
                                                         ___splice4769747698_
                                                         _target4678746845_
                                                         _tl4678946848_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4676046818_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4676046818_))))))
                                    (if (gx#stx-pair/null? _hd4676747116_)
                                        (let ((___splice4769747698_
                                               (gx#syntax-split-splice
                                                _hd4676747116_
                                                '0)))
                                          (let ((_tl4678946848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4769747698_
                                                    '1)))
                                                (_target4678746845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4769747698_
                                                    '0))))
                                            (if (gx#stx-null? _tl4678946848_)
                                                (___match4774347744_
                                                 _e4676547102_
                                                 _hd4676447106_
                                                 _tl4676347109_
                                                 _e4676847112_
                                                 _hd4676747116_
                                                 _tl4676647119_
                                                 ___splice4769747698_
                                                 _target4678746845_
                                                 _tl4678946848_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4676046818_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4676046818_))))
                                (if (gx#stx-pair/null? _hd4676747116_)
                                    (let ((___splice4769747698_
                                           (gx#syntax-split-splice
                                            _hd4676747116_
                                            '0)))
                                      (let ((_tl4678946848_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4769747698_
                                                '1)))
                                            (_target4678746845_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4769747698_
                                                '0))))
                                        (if (gx#stx-null? _tl4678946848_)
                                            (___match4774347744_
                                             _e4676547102_
                                             _hd4676447106_
                                             _tl4676347109_
                                             _e4676847112_
                                             _hd4676747116_
                                             _tl4676647119_
                                             ___splice4769747698_
                                             _target4678746845_
                                             _tl4678946848_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4676046818_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4676046818_))))))
                        (let () (declare (not safe)) (_g4676046818_)))))
                (let () (declare (not safe)) (_g4676046818_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_$stx47185_)
      (let* ((_g4718947213_
              (lambda (_g4719047209_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4719047209_)))
             (_g4718847298_
              (lambda (_g4719047217_)
                (if (gx#stx-pair? _g4719047217_)
                    (let ((_e4719547220_ (gx#syntax-e _g4719047217_)))
                      (let ((_hd4719447224_
                             (let ()
                               (declare (not safe))
                               (##car _e4719547220_)))
                            (_tl4719347227_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4719547220_))))
                        (if (gx#stx-pair? _tl4719347227_)
                            (let ((_e4719847230_ (gx#syntax-e _tl4719347227_)))
                              (let ((_hd4719747234_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4719847230_)))
                                    (_tl4719647237_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4719847230_))))
                                (if (gx#stx-pair/null? _tl4719647237_)
                                    (let ((_g47780_
                                           (gx#syntax-split-splice
                                            _tl4719647237_
                                            '0)))
                                      (begin
                                        (let ((_g47781_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g47780_)
                                                     (##vector-length _g47780_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47781_ 2)))
                                              (error "Context expects 2 values"
                                                     _g47781_)))
                                        (let ((_target4719947240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47780_ 0)))
                                              (_tl4720147243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47780_ 1))))
                                          (if (gx#stx-null? _tl4720147243_)
                                              (letrec ((_loop4720247246_
                                                        (lambda (_hd4720047250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body4720647253_)
                  (if (gx#stx-pair? _hd4720047250_)
                      (let ((_e4720347256_ (gx#syntax-e _hd4720047250_)))
                        (let ((_lp-hd4720447260_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4720347256_)))
                              (_lp-tl4720547263_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4720347256_))))
                          (_loop4720247246_
                           _lp-tl4720547263_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd4720447260_ _body4720647253_)))))
                      (let ((_body4720747266_ (reverse _body4720647253_)))
                        ((lambda (_L47270_ _L47272_)
                           (if (gx#identifier? _L47272_)
                               (let ((__tmp47788
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp47782
                                      (let ((__tmp47783
                                             (let ((__tmp47787
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp47784
                                                    (let ((__tmp47786
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L47272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp47785
                   (foldr (lambda (_g4728947292_ _g4729047295_)
                            (let ()
                              (declare (not safe))
                              (cons _g4728947292_ _g4729047295_)))
                          '()
                          _L47270_)))
              (declare (not safe))
              (cons __tmp47786 __tmp47785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47787 __tmp47784))))
                                        (declare (not safe))
                                        (cons __tmp47783 '()))))
                                 (declare (not safe))
                                 (cons __tmp47788 __tmp47782))
                               (_g4718947213_ _g4719047217_)))
                         _body4720747266_
                         _hd4719747234_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4720247246_
                                                 _target4719947240_
                                                 '()))
                                              (_g4718947213_ _g4719047217_)))))
                                    (_g4718947213_ _g4719047217_))))
                            (_g4718947213_ _g4719047217_))))
                    (_g4718947213_ _g4719047217_)))))
        (_g4718847298_ _$stx47185_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_$stx47303_)
      (let* ((_g4730747335_
              (lambda (_g4730847331_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4730847331_)))
             (_g4730647434_
              (lambda (_g4730847339_)
                (if (gx#stx-pair? _g4730847339_)
                    (let ((_e4731447342_ (gx#syntax-e _g4730847339_)))
                      (let ((_hd4731347346_
                             (let ()
                               (declare (not safe))
                               (##car _e4731447342_)))
                            (_tl4731247349_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4731447342_))))
                        (if (gx#stx-pair? _tl4731247349_)
                            (let ((_e4731747352_ (gx#syntax-e _tl4731247349_)))
                              (let ((_hd4731647356_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4731747352_)))
                                    (_tl4731547359_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4731747352_))))
                                (if (gx#stx-pair? _tl4731547359_)
                                    (let ((_e4732047362_
                                           (gx#syntax-e _tl4731547359_)))
                                      (let ((_hd4731947366_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4732047362_)))
                                            (_tl4731847369_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4732047362_))))
                                        (if (gx#stx-pair/null? _tl4731847369_)
                                            (let ((_g47789_
                                                   (gx#syntax-split-splice
                                                    _tl4731847369_
                                                    '0)))
                                              (begin
                                                (let ((_g47790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g47789_)
                                                             (##vector-length
                                                              _g47789_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g47790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g47790_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target4732147372_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47789_
                                                          0)))
                                                      (_tl4732347375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47789_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl4732347375_)
                                                      (letrec ((_loop4732447378_
                                                                (lambda (_hd4732247382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest4732847385_)
                          (if (gx#stx-pair? _hd4732247382_)
                              (let ((_e4732547388_
                                     (gx#syntax-e _hd4732247382_)))
                                (let ((_lp-hd4732647392_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4732547388_)))
                                      (_lp-tl4732747395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4732547388_))))
                                  (_loop4732447378_
                                   _lp-tl4732747395_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4732647392_
                                           _rest4732847385_)))))
                              (let ((_rest4732947398_
                                     (reverse _rest4732847385_)))
                                ((lambda (_L47402_ _L47404_ _L47405_)
                                   (let ((__tmp47802
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp47791
                                          (let ((__tmp47798
                                                 (let ((__tmp47801
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp47799
                                                        (let ((__tmp47800
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L47405_ '()))))
                  (declare (not safe))
                  (cons '() __tmp47800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47801
                                                         __tmp47799)))
                                                (__tmp47792
                                                 (let ((__tmp47793
                                                        (let ((__tmp47797
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp47794
                                                               (let ((__tmp47795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47796
                                     (foldr (lambda (_g4742547428_
                                                     _g4742647431_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4742547428_
                                                      _g4742647431_)))
                                            '()
                                            _L47402_)))
                                (declare (not safe))
                                (cons _L47404_ __tmp47796))))
                         (declare (not safe))
                         (cons '() __tmp47795))))
                  (declare (not safe))
                  (cons __tmp47797 __tmp47794))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47793 '()))))
                                            (declare (not safe))
                                            (cons __tmp47798 __tmp47792))))
                                     (declare (not safe))
                                     (cons __tmp47802 __tmp47791)))
                                 _rest4732947398_
                                 _hd4731947366_
                                 _hd4731647356_))))))
                (_loop4732447378_ _target4732147372_ '()))
              (_g4730747335_ _g4730847339_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g4730747335_ _g4730847339_))))
                                    (_g4730747335_ _g4730847339_))))
                            (_g4730747335_ _g4730847339_))))
                    (_g4730747335_ _g4730847339_)))))
        (_g4730647434_ _$stx47303_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_stx47439_)
      (let* ((_g4744247456_
              (lambda (_g4744347452_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4744347452_)))
             (_g4744147528_
              (lambda (_g4744347460_)
                (if (gx#stx-pair? _g4744347460_)
                    (let ((_e4744747463_ (gx#syntax-e _g4744347460_)))
                      (let ((_hd4744647467_
                             (let ()
                               (declare (not safe))
                               (##car _e4744747463_)))
                            (_tl4744547470_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4744747463_))))
                        (if (gx#stx-pair? _tl4744547470_)
                            (let ((_e4745047473_ (gx#syntax-e _tl4744547470_)))
                              (let ((_hd4744947477_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4745047473_)))
                                    (_tl4744847480_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4745047473_))))
                                (if (gx#stx-null? _tl4744847480_)
                                    ((lambda (_L47483_)
                                       (if (gx#stx-string? _L47483_)
                                           (let* ((_g4749747505_
                                                   (lambda (_g4749847501_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g4749847501_)))
                                                  (_g4749647524_
                                                   (lambda (_g4749847509_)
                                                     ((lambda (_L47512_)
                                                        (let ()
                                                          (let ((__tmp47804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp47803
                         (let () (declare (not safe)) (cons _L47512_ '()))))
                    (declare (not safe))
                    (cons __tmp47804 __tmp47803))))
              _g4749847509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4749647524_
                                              (string->bytes
                                               (gx#stx-e _L47483_))))
                                           (_g4744247456_ _g4744347460_)))
                                     _hd4744947477_)
                                    (_g4744247456_ _g4744347460_))))
                            (_g4744247456_ _g4744347460_))))
                    (_g4744247456_ _g4744347460_)))))
        (_g4744147528_ _stx47439_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_stx47532_)
      (let* ((_g4753547549_
              (lambda (_g4753647545_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4753647545_)))
             (_g4753447590_
              (lambda (_g4753647553_)
                (if (gx#stx-pair? _g4753647553_)
                    (let ((_e4754047556_ (gx#syntax-e _g4753647553_)))
                      (let ((_hd4753947560_
                             (let ()
                               (declare (not safe))
                               (##car _e4754047556_)))
                            (_tl4753847563_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4754047556_))))
                        (if (gx#stx-pair? _tl4753847563_)
                            (let ((_e4754347566_ (gx#syntax-e _tl4753847563_)))
                              (let ((_hd4754247570_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4754347566_)))
                                    (_tl4754147573_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4754347566_))))
                                (if (gx#stx-null? _tl4754147573_)
                                    ((lambda (_L47576_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _L47576_)
                                           '#!void)
                                       (let ((__tmp47805
                                              (gx#datum->syntax '#f 'void)))
                                         (declare (not safe))
                                         (cons __tmp47805 '())))
                                     _hd4754247570_)
                                    (_g4753547549_ _g4753647553_))))
                            (_g4753547549_ _g4753647553_))))
                    (_g4753547549_ _g4753647553_)))))
        (_g4753447590_ _stx47532_)))))
