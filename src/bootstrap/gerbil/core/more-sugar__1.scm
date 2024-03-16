(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[:0:]#:|
    (lambda (_$stx46096_)
      (let ((_g4609946106_
             (lambda (_g4610046102_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4610046102_))))
        (_g4609946106_ _$stx46096_))))
  (define |gerbil/core/more-sugar[:0:]#:~|
    (lambda (_$stx46110_)
      (let ((_g4611346120_
             (lambda (_g4611446116_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4611446116_))))
        (_g4611346120_ _$stx46110_))))
  (define |gerbil/core/more-sugar[:0:]#:-|
    (lambda (_$stx46124_)
      (let ((_g4612746134_
             (lambda (_g4612846130_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4612846130_))))
        (_g4612746134_ _$stx46124_))))
  (define |gerbil/core/more-sugar[:0:]#:~-|
    (lambda (_$stx46138_)
      (let ((_g4614146148_
             (lambda (_g4614246144_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4614246144_))))
        (_g4614146148_ _$stx46138_))))
  (define |gerbil/core/more-sugar[:0:]#:=|
    (lambda (_$stx46152_)
      (let ((_g4615546162_
             (lambda (_g4615646158_)
               (gx#raise-syntax-error
                '#f
                '"Bad syntax; invalid match target"
                _g4615646158_))))
        (_g4615546162_ _$stx46152_))))
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
    (lambda _$args46176_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _$args46176_)))
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
    (lambda _$args46172_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _$args46172_)))
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
    (lambda (_stx46169_)
      (if (gx#identifier? _stx46169_)
          (let ((__tmp47740 (gx#syntax-local-value _stx46169_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp47740))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_stx46166_)
      (if (gx#identifier? _stx46166_)
          (let ((__tmp47741 (gx#syntax-local-value _stx46166_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp47741))
          '#f)))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_stx46180_)
      (let* ((___stx4758747588_ _stx46180_)
             (_g4618646245_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4758747588_))))
        (let ((___kont4759047591_
               (lambda (_L46518_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L46518_)
                  _stx46180_)))
              (___kont4759247593_
               (lambda (_L46417_ _L46419_ _L46420_)
                 (let* ((_g4644246450_
                         (lambda (_g4644346446_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4644346446_)))
                        (_g4644146477_
                         (lambda (_g4644346454_)
                           ((lambda (_L46457_)
                              (let ()
                                (let ((__tmp47742
                                       (foldr (lambda (_g4646846471_
                                                       _g4646946474_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g4646846471_
                                                        _g4646946474_)))
                                              (let ()
                                                (declare (not safe))
                                                (cons _L46417_ '()))
                                              _L46419_)))
                                  (declare (not safe))
                                  (cons _L46457_ __tmp47742))))
                            _g4644346454_))))
                   (_g4644146477_
                    (gx#stx-identifier _L46420_ _L46420_ '"-set!")))))
              (___kont4759647597_
               (lambda (_L46327_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L46327_)
                  _stx46180_)))
              (___kont4759847599_
               (lambda (_L46282_ _L46284_)
                 (let ((__tmp47745 (gx#datum->syntax '#f '%#set!))
                       (__tmp47743
                        (let ((__tmp47744
                               (let ()
                                 (declare (not safe))
                                 (cons _L46282_ '()))))
                          (declare (not safe))
                          (cons _L46284_ __tmp47744))))
                   (declare (not safe))
                   (cons __tmp47745 __tmp47743)))))
          (let* ((___match4767847679_
                  (lambda (_e4623346252_
                           _hd4623246256_
                           _tl4623146259_
                           _e4623646262_
                           _hd4623546266_
                           _tl4623446269_
                           _e4623946272_
                           _hd4623846276_
                           _tl4623746279_)
                    (let ((_L46282_ _hd4623846276_) (_L46284_ _hd4623546266_))
                      (if (gx#identifier? _L46284_)
                          (___kont4759847599_ _L46282_ _L46284_)
                          (let () (declare (not safe)) (_g4618646245_))))))
                 (___match4765847659_
                  (lambda (_e4622546307_
                           _hd4622446311_
                           _tl4622346314_
                           _e4622846317_
                           _hd4622746321_
                           _tl4622646324_)
                    (let ((_L46327_ _hd4622746321_))
                      (if (let ()
                            (declare (not safe))
                            (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _L46327_))
                          (___kont4759647597_ _L46327_)
                          (if (gx#stx-pair? _tl4622646324_)
                              (let ((_e4623946272_
                                     (gx#syntax-e _tl4622646324_)))
                                (let ((_tl4623746279_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4623946272_)))
                                      (_hd4623846276_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4623946272_))))
                                  (if (gx#stx-null? _tl4623746279_)
                                      (___match4767847679_
                                       _e4622546307_
                                       _hd4622446311_
                                       _tl4622346314_
                                       _e4622846317_
                                       _hd4622746321_
                                       _tl4622646324_
                                       _e4623946272_
                                       _hd4623846276_
                                       _tl4623746279_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4618646245_)))))
                              (let ()
                                (declare (not safe))
                                (_g4618646245_)))))))
                 (___match4764647647_
                  (lambda (_e4620346347_
                           _hd4620246351_
                           _tl4620146354_
                           _e4620646357_
                           _hd4620546361_
                           _tl4620446364_
                           _e4620946367_
                           _hd4620846371_
                           _tl4620746374_
                           ___splice4759447595_
                           _target4621046377_
                           _tl4621246380_)
                    (letrec ((_loop4621346383_
                              (lambda (_hd4621146387_ _arg4621746390_)
                                (if (gx#stx-pair? _hd4621146387_)
                                    (let ((_e4621446393_
                                           (gx#syntax-e _hd4621146387_)))
                                      (let ((_lp-tl4621646400_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4621446393_)))
                                            (_lp-hd4621546397_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4621446393_))))
                                        (_loop4621346383_
                                         _lp-tl4621646400_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4621546397_
                                                 _arg4621746390_)))))
                                    (let ((_arg4621846403_
                                           (reverse _arg4621746390_)))
                                      (if (gx#stx-pair? _tl4620446364_)
                                          (let ((_e4622146407_
                                                 (gx#syntax-e _tl4620446364_)))
                                            (let ((_tl4621946414_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4622146407_)))
                                                  (_hd4622046411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4622146407_))))
                                              (if (gx#stx-null? _tl4621946414_)
                                                  (let ((_L46417_
                                                         _hd4622046411_)
                                                        (_L46419_
                                                         _arg4621846403_)
                                                        (_L46420_
                                                         _hd4620846371_))
                                                    (if (gx#identifier?
                                                         _L46420_)
                                                        (___kont4759247593_
                                                         _L46417_
                                                         _L46419_
                                                         _L46420_)
                                                        (___match4765847659_
                                                         _e4620346347_
                                                         _hd4620246351_
                                                         _tl4620146354_
                                                         _e4620646357_
                                                         _hd4620546361_
                                                         _tl4620446364_)))
                                                  (___match4765847659_
                                                   _e4620346347_
                                                   _hd4620246351_
                                                   _tl4620146354_
                                                   _e4620646357_
                                                   _hd4620546361_
                                                   _tl4620446364_))))
                                          (___match4765847659_
                                           _e4620346347_
                                           _hd4620246351_
                                           _tl4620146354_
                                           _e4620646357_
                                           _hd4620546361_
                                           _tl4620446364_)))))))
                      (_loop4621346383_ _target4621046377_ '())))))
            (if (gx#stx-pair? ___stx4758747588_)
                (let ((_e4619146488_ (gx#syntax-e ___stx4758747588_)))
                  (let ((_tl4618946495_
                         (let () (declare (not safe)) (##cdr _e4619146488_)))
                        (_hd4619046492_
                         (let () (declare (not safe)) (##car _e4619146488_))))
                    (if (gx#stx-pair? _tl4618946495_)
                        (let ((_e4619446498_ (gx#syntax-e _tl4618946495_)))
                          (let ((_tl4619246505_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4619446498_)))
                                (_hd4619346502_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4619446498_))))
                            (if (gx#stx-pair? _hd4619346502_)
                                (let ((_e4619746508_
                                       (gx#syntax-e _hd4619346502_)))
                                  (let ((_tl4619546515_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4619746508_)))
                                        (_hd4619646512_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4619746508_))))
                                    (if (let ((__tmp47746
                                               (gx#datum->syntax '#f 'setfid)))
                                          (declare (not safe))
                                          (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                           __tmp47746))
                                        (let ((_L46518_ _hd4619646512_))
                                          (___kont4759047591_ _L46518_))
                                        (if (gx#stx-pair/null? _tl4619546515_)
                                            (let ((___splice4759447595_
                                                   (gx#syntax-split-splice
                                                    _tl4619546515_
                                                    '0)))
                                              (let ((_tl4621246380_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4759447595_
                                                        '1)))
                                                    (_target4621046377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4759447595_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4621246380_)
                                                    (___match4764647647_
                                                     _e4619146488_
                                                     _hd4619046492_
                                                     _tl4618946495_
                                                     _e4619446498_
                                                     _hd4619346502_
                                                     _tl4619246505_
                                                     _e4619746508_
                                                     _hd4619646512_
                                                     _tl4619546515_
                                                     ___splice4759447595_
                                                     _target4621046377_
                                                     _tl4621246380_)
                                                    (___match4765847659_
                                                     _e4619146488_
                                                     _hd4619046492_
                                                     _tl4618946495_
                                                     _e4619446498_
                                                     _hd4619346502_
                                                     _tl4619246505_))))
                                            (___match4765847659_
                                             _e4619146488_
                                             _hd4619046492_
                                             _tl4618946495_
                                             _e4619446498_
                                             _hd4619346502_
                                             _tl4619246505_)))))
                                (___match4765847659_
                                 _e4619146488_
                                 _hd4619046492_
                                 _tl4618946495_
                                 _e4619446498_
                                 _hd4619346502_
                                 _tl4619246505_))))
                        (let () (declare (not safe)) (_g4618646245_)))))
                (let () (declare (not safe)) (_g4618646245_))))))))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_stx46538_)
      (let* ((_g4654146565_
              (lambda (_g4654246561_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4654246561_)))
             (_g4654046743_
              (lambda (_g4654246569_)
                (if (gx#stx-pair? _g4654246569_)
                    (let ((_e4654746572_ (gx#syntax-e _g4654246569_)))
                      (let ((_hd4654646576_
                             (let ()
                               (declare (not safe))
                               (##car _e4654746572_)))
                            (_tl4654546579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4654746572_))))
                        (if (gx#stx-pair/null? _tl4654546579_)
                            (if (fx>= (gx#stx-length _tl4654546579_) '1)
                                (let ((_g47747_
                                       (gx#syntax-split-splice
                                        _tl4654546579_
                                        '1)))
                                  (begin
                                    (let ((_g47748_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g47747_)
                                                 (##vector-length _g47747_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g47748_ 2)))
                                          (error "Context expects 2 values"
                                                 _g47748_)))
                                    (let ((_target4654846582_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47747_ 0)))
                                          (_tl4655046585_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g47747_ 1))))
                                      (if (gx#stx-pair? _tl4655046585_)
                                          (let ((_e4655946588_
                                                 (gx#syntax-e _tl4655046585_)))
                                            (let ((_hd4655846592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4655946588_)))
                                                  (_tl4655746595_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4655946588_))))
                                              (if (gx#stx-null? _tl4655746595_)
                                                  (letrec ((_loop4655146598_
                                                            (lambda (_hd4654946602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt4655546605_)
                      (if (gx#stx-pair? _hd4654946602_)
                          (let ((_e4655246608_ (gx#syntax-e _hd4654946602_)))
                            (let ((_lp-hd4655346612_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4655246608_)))
                                  (_lp-tl4655446615_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4655246608_))))
                              (_loop4655146598_
                               _lp-tl4655446615_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4655346612_ _tgt4655546605_)))))
                          (let ((_tgt4655646618_ (reverse _tgt4655546605_)))
                            ((lambda (_L46622_ _L46624_)
                               (let* ((_g4664246659_
                                       (lambda (_g4664346655_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g4664346655_)))
                                      (_g4664146731_
                                       (lambda (_g4664346663_)
                                         (if (gx#stx-pair/null? _g4664346663_)
                                             (let ((_g47749_
                                                    (gx#syntax-split-splice
                                                     _g4664346663_
                                                     '0)))
                                               (begin
                                                 (let ((_g47750_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g47749_)
                                                              (##vector-length
                                                               _g47749_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g47750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g47750_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_target4664546666_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g47749_
                                                           0)))
                                                       (_tl4664746669_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _g47749_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _tl4664746669_)
                                                       (letrec ((_loop4664846672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd4664646676_ _$e4665246679_)
                           (if (gx#stx-pair? _hd4664646676_)
                               (let ((_e4664946682_
                                      (gx#syntax-e _hd4664646676_)))
                                 (let ((_lp-hd4665046686_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4664946682_)))
                                       (_lp-tl4665146689_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4664946682_))))
                                   (_loop4664846672_
                                    _lp-tl4665146689_
                                    (let ()
                                      (declare (not safe))
                                      (cons _lp-hd4665046686_
                                            _$e4665246679_)))))
                               (let ((_$e4665346692_ (reverse _$e4665246679_)))
                                 ((lambda (_L46696_)
                                    (let ()
                                      (let ((__tmp47761
                                             (gx#datum->syntax
                                              '#f
                                              'let-values))
                                            (__tmp47751
                                             (let ((__tmp47757
                                                    (let ((__tmp47758
                                                           (let ((__tmp47760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr (lambda (_g4671446717_ _g4671546720_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g4671446717_ _g4671546720_)))
                                 '()
                                 _L46696_))
                         (__tmp47759
                          (let () (declare (not safe)) (cons _L46622_ '()))))
                     (declare (not safe))
                     (cons __tmp47760 __tmp47759))))
              (declare (not safe))
              (cons __tmp47758 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp47752
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L46696_
                                                       _L46624_)
                                                      (foldr (lambda (_g4671146723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4671246726_
                              _g4671346728_)
                       (let ((__tmp47753
                              (let ((__tmp47756 (gx#datum->syntax '#f 'set!))
                                    (__tmp47754
                                     (let ((__tmp47755
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4671146723_ '()))))
                                       (declare (not safe))
                                       (cons _g4671246726_ __tmp47755))))
                                (declare (not safe))
                                (cons __tmp47756 __tmp47754))))
                         (declare (not safe))
                         (cons __tmp47753 _g4671346728_)))
                     '()
                     _L46696_
                     _L46624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47757 __tmp47752))))
                                        (declare (not safe))
                                        (cons __tmp47761 __tmp47751))))
                                  _$e4665346692_))))))
                 (_loop4664846672_ _target4664546666_ '()))
               (_g4664246659_ _g4664346663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4664246659_ _g4664346663_)))))
                                 (_g4664146731_
                                  (gx#gentemps
                                   (foldr (lambda (_g4673446737_ _g4673546740_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4673446737_
                                                    _g4673546740_)))
                                          '()
                                          _L46624_)))))
                             _hd4655846592_
                             _tgt4655646618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4655146598_
                                                     _target4654846582_
                                                     '()))
                                                  (_g4654146565_
                                                   _g4654246569_))))
                                          (_g4654146565_ _g4654246569_)))))
                                (_g4654146565_ _g4654246569_))
                            (_g4654146565_ _g4654246569_))))
                    (_g4654146565_ _g4654246569_)))))
        (_g4654046743_ _stx46538_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_stx46749_)
      (let* ((___stx4768147682_ _stx46749_)
             (_g4675346811_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 ___stx4768147682_))))
        (let ((___kont4768447685_
               (lambda (_L47145_)
                 (let ((__tmp47764 (gx#datum->syntax '#f 'let))
                       (__tmp47762
                        (let ((__tmp47763
                               (foldr (lambda (_g4716147164_ _g4716247167_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g4716147164_ _g4716247167_)))
                                      '()
                                      _L47145_)))
                          (declare (not safe))
                          (cons '() __tmp47763))))
                   (declare (not safe))
                   (cons __tmp47764 __tmp47762))))
              (___kont4768847689_
               (lambda (_L46922_ _L46924_ _L46925_)
                 (let* ((_g4694846956_
                         (lambda (_g4694946952_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g4694946952_)))
                        (_g4694747076_
                         (lambda (_g4694946960_)
                           ((lambda (_L46963_)
                              (let ()
                                (let* ((_g4697546992_
                                        (lambda (_g4697646988_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g4697646988_)))
                                       (_g4697447056_
                                        (lambda (_g4697646996_)
                                          (if (gx#stx-pair/null? _g4697646996_)
                                              (let ((_g47765_
                                                     (gx#syntax-split-splice
                                                      _g4697646996_
                                                      '0)))
                                                (begin
                                                  (let ((_g47766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g47765_)
                                                               (##vector-length
                                                                _g47765_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g47766_ 2)))
                (error "Context expects 2 values" _g47766_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target4697846999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47765_
                                                            0)))
                                                        (_tl4698047002_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g47765_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl4698047002_)
                                                        (letrec ((_loop4698147005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd4697947009_ _arg4698547012_)
                            (if (gx#stx-pair? _hd4697947009_)
                                (let ((_e4698247015_
                                       (gx#syntax-e _hd4697947009_)))
                                  (let ((_lp-hd4698347019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4698247015_)))
                                        (_lp-tl4698447022_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4698247015_))))
                                    (_loop4698147005_
                                     _lp-tl4698447022_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd4698347019_
                                             _arg4698547012_)))))
                                (let ((_arg4698647025_
                                       (reverse _arg4698547012_)))
                                  ((lambda (_L47029_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp47769
                                                (gx#datum->syntax
                                                 '#f
                                                 'call-with-parameters))
                                               (__tmp47767
                                                (let ((__tmp47768
                                                       (foldr (lambda (_g4704747050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g4704847053_)
                        (let ()
                          (declare (not safe))
                          (cons _g4704747050_ _g4704847053_)))
                      '()
                      _L47029_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L46963_ __tmp47768))))
                                           (declare (not safe))
                                           (cons __tmp47769 __tmp47767)))))
                                   _arg4698647025_))))))
                  (_loop4698147005_ _target4697846999_ '()))
                (_g4697546992_ _g4697646996_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g4697546992_ _g4697646996_)))))
                                  (_g4697447056_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g4705947062_
                                                           _g4706047065_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4705947062_
                                                            _g4706047065_)))
                                                  '()
                                                  _L46925_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g4706747070_
                                                           _g4706847073_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g4706747070_
                                                            _g4706847073_)))
                                                  '()
                                                  _L46924_)))))))
                            _g4694946960_))))
                   (_g4694747076_
                    (gx#stx-wrap-source
                     (let ((__tmp47772 (gx#datum->syntax '#f 'lambda))
                           (__tmp47770
                            (let ((__tmp47771
                                   (foldr (lambda (_g4707947082_ _g4708047085_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g4707947082_
                                                    _g4708047085_)))
                                          '()
                                          _L46922_)))
                              (declare (not safe))
                              (cons '() __tmp47771))))
                       (declare (not safe))
                       (cons __tmp47772 __tmp47770))
                     (gx#stx-source _stx46749_)))))))
          (let* ((___match4773647737_
                  (lambda (_e4677646818_
                           _hd4677546822_
                           _tl4677446825_
                           _e4677946828_
                           _hd4677846832_
                           _tl4677746835_
                           ___splice4769047691_
                           _target4678046838_
                           _tl4678246841_)
                    (letrec ((_loop4678346844_
                              (lambda (_hd4678146848_
                                       _expr4678746851_
                                       _param4678846853_)
                                (if (gx#stx-pair? _hd4678146848_)
                                    (let ((_e4678446856_
                                           (gx#syntax-e _hd4678146848_)))
                                      (let ((_lp-tl4678646863_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4678446856_)))
                                            (_lp-hd4678546860_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4678446856_))))
                                        (if (gx#stx-pair? _lp-hd4678546860_)
                                            (let ((_e4679346866_
                                                   (gx#syntax-e
                                                    _lp-hd4678546860_)))
                                              (let ((_tl4679146873_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4679346866_)))
                                                    (_hd4679246870_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4679346866_))))
                                                (if (gx#stx-pair?
                                                     _tl4679146873_)
                                                    (let ((_e4679646876_
                                                           (gx#syntax-e
                                                            _tl4679146873_)))
                                                      (let ((_tl4679446883_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4679646876_)))
                    (_hd4679546880_
                     (let () (declare (not safe)) (##car _e4679646876_))))
                (if (gx#stx-null? _tl4679446883_)
                    (_loop4678346844_
                     _lp-tl4678646863_
                     (let ()
                       (declare (not safe))
                       (cons _hd4679546880_ _expr4678746851_))
                     (let ()
                       (declare (not safe))
                       (cons _hd4679246870_ _param4678846853_)))
                    (let () (declare (not safe)) (_g4675346811_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4675346811_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4675346811_)))))
                                    (let ((_param4679046889_
                                           (reverse _param4678846853_))
                                          (_expr4678946886_
                                           (reverse _expr4678746851_)))
                                      (if (gx#stx-pair/null? _tl4677746835_)
                                          (let ((___splice4769247693_
                                                 (gx#syntax-split-splice
                                                  _tl4677746835_
                                                  '0)))
                                            (let ((_tl4679946895_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4769247693_
                                                      '1)))
                                                  (_target4679746892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4769247693_
                                                      '0))))
                                              (if (gx#stx-null? _tl4679946895_)
                                                  (letrec ((_loop4680046898_
                                                            (lambda (_hd4679846902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body4680446905_)
                      (if (gx#stx-pair? _hd4679846902_)
                          (let ((_e4680146908_ (gx#syntax-e _hd4679846902_)))
                            (let ((_lp-tl4680346915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4680146908_)))
                                  (_lp-hd4680246912_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4680146908_))))
                              (_loop4680046898_
                               _lp-tl4680346915_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd4680246912_ _body4680446905_)))))
                          (let ((_body4680546918_ (reverse _body4680446905_)))
                            (___kont4768847689_
                             _body4680546918_
                             _expr4678946886_
                             _param4679046889_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop4680046898_
                                                     _target4679746892_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4675346811_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4675346811_))))))))
                      (_loop4678346844_ _target4678046838_ '() '()))))
                 (___match4771647717_
                  (lambda (_e4675847095_
                           _hd4675747099_
                           _tl4675647102_
                           _e4676147105_
                           _hd4676047109_
                           _tl4675947112_
                           ___splice4768647687_
                           _target4676247115_
                           _tl4676447118_)
                    (letrec ((_loop4676547121_
                              (lambda (_hd4676347125_ _body4676947128_)
                                (if (gx#stx-pair? _hd4676347125_)
                                    (let ((_e4676647131_
                                           (gx#syntax-e _hd4676347125_)))
                                      (let ((_lp-tl4676847138_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4676647131_)))
                                            (_lp-hd4676747135_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4676647131_))))
                                        (_loop4676547121_
                                         _lp-tl4676847138_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd4676747135_
                                                 _body4676947128_)))))
                                    (let ((_body4677047141_
                                           (reverse _body4676947128_)))
                                      (___kont4768447685_
                                       _body4677047141_))))))
                      (_loop4676547121_ _target4676247115_ '())))))
            (if (gx#stx-pair? ___stx4768147682_)
                (let ((_e4675847095_ (gx#syntax-e ___stx4768147682_)))
                  (let ((_tl4675647102_
                         (let () (declare (not safe)) (##cdr _e4675847095_)))
                        (_hd4675747099_
                         (let () (declare (not safe)) (##car _e4675847095_))))
                    (if (gx#stx-pair? _tl4675647102_)
                        (let ((_e4676147105_ (gx#syntax-e _tl4675647102_)))
                          (let ((_tl4675947112_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4676147105_)))
                                (_hd4676047109_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4676147105_))))
                            (if (gx#stx-null? _hd4676047109_)
                                (if (gx#stx-pair/null? _tl4675947112_)
                                    (let ((___splice4768647687_
                                           (gx#syntax-split-splice
                                            _tl4675947112_
                                            '0)))
                                      (let ((_tl4676447118_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4768647687_
                                                '1)))
                                            (_target4676247115_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4768647687_
                                                '0))))
                                        (if (gx#stx-null? _tl4676447118_)
                                            (___match4771647717_
                                             _e4675847095_
                                             _hd4675747099_
                                             _tl4675647102_
                                             _e4676147105_
                                             _hd4676047109_
                                             _tl4675947112_
                                             ___splice4768647687_
                                             _target4676247115_
                                             _tl4676447118_)
                                            (if (gx#stx-pair/null?
                                                 _hd4676047109_)
                                                (let ((___splice4769047691_
                                                       (gx#syntax-split-splice
                                                        _hd4676047109_
                                                        '0)))
                                                  (let ((_tl4678246841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4769047691_
                                                            '1)))
                                                        (_target4678046838_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4769047691_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl4678246841_)
                                                        (___match4773647737_
                                                         _e4675847095_
                                                         _hd4675747099_
                                                         _tl4675647102_
                                                         _e4676147105_
                                                         _hd4676047109_
                                                         _tl4675947112_
                                                         ___splice4769047691_
                                                         _target4678046838_
                                                         _tl4678246841_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g4675346811_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4675346811_))))))
                                    (if (gx#stx-pair/null? _hd4676047109_)
                                        (let ((___splice4769047691_
                                               (gx#syntax-split-splice
                                                _hd4676047109_
                                                '0)))
                                          (let ((_tl4678246841_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4769047691_
                                                    '1)))
                                                (_target4678046838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4769047691_
                                                    '0))))
                                            (if (gx#stx-null? _tl4678246841_)
                                                (___match4773647737_
                                                 _e4675847095_
                                                 _hd4675747099_
                                                 _tl4675647102_
                                                 _e4676147105_
                                                 _hd4676047109_
                                                 _tl4675947112_
                                                 ___splice4769047691_
                                                 _target4678046838_
                                                 _tl4678246841_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4675346811_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4675346811_))))
                                (if (gx#stx-pair/null? _hd4676047109_)
                                    (let ((___splice4769047691_
                                           (gx#syntax-split-splice
                                            _hd4676047109_
                                            '0)))
                                      (let ((_tl4678246841_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4769047691_
                                                '1)))
                                            (_target4678046838_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4769047691_
                                                '0))))
                                        (if (gx#stx-null? _tl4678246841_)
                                            (___match4773647737_
                                             _e4675847095_
                                             _hd4675747099_
                                             _tl4675647102_
                                             _e4676147105_
                                             _hd4676047109_
                                             _tl4675947112_
                                             ___splice4769047691_
                                             _target4678046838_
                                             _tl4678246841_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4675346811_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4675346811_))))))
                        (let () (declare (not safe)) (_g4675346811_)))))
                (let () (declare (not safe)) (_g4675346811_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_$stx47178_)
      (let* ((_g4718247206_
              (lambda (_g4718347202_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4718347202_)))
             (_g4718147291_
              (lambda (_g4718347210_)
                (if (gx#stx-pair? _g4718347210_)
                    (let ((_e4718847213_ (gx#syntax-e _g4718347210_)))
                      (let ((_hd4718747217_
                             (let ()
                               (declare (not safe))
                               (##car _e4718847213_)))
                            (_tl4718647220_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4718847213_))))
                        (if (gx#stx-pair? _tl4718647220_)
                            (let ((_e4719147223_ (gx#syntax-e _tl4718647220_)))
                              (let ((_hd4719047227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4719147223_)))
                                    (_tl4718947230_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4719147223_))))
                                (if (gx#stx-pair/null? _tl4718947230_)
                                    (let ((_g47773_
                                           (gx#syntax-split-splice
                                            _tl4718947230_
                                            '0)))
                                      (begin
                                        (let ((_g47774_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g47773_)
                                                     (##vector-length _g47773_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g47774_ 2)))
                                              (error "Context expects 2 values"
                                                     _g47774_)))
                                        (let ((_target4719247233_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47773_ 0)))
                                              (_tl4719447236_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g47773_ 1))))
                                          (if (gx#stx-null? _tl4719447236_)
                                              (letrec ((_loop4719547239_
                                                        (lambda (_hd4719347243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body4719947246_)
                  (if (gx#stx-pair? _hd4719347243_)
                      (let ((_e4719647249_ (gx#syntax-e _hd4719347243_)))
                        (let ((_lp-hd4719747253_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4719647249_)))
                              (_lp-tl4719847256_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4719647249_))))
                          (_loop4719547239_
                           _lp-tl4719847256_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd4719747253_ _body4719947246_)))))
                      (let ((_body4720047259_ (reverse _body4719947246_)))
                        ((lambda (_L47263_ _L47265_)
                           (if (gx#identifier? _L47265_)
                               (let ((__tmp47781
                                      (gx#datum->syntax '#f 'call/cc))
                                     (__tmp47775
                                      (let ((__tmp47776
                                             (let ((__tmp47780
                                                    (gx#datum->syntax
                                                     '#f
                                                     'lambda))
                                                   (__tmp47777
                                                    (let ((__tmp47779
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L47265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                  (__tmp47778
                   (foldr (lambda (_g4728247285_ _g4728347288_)
                            (let ()
                              (declare (not safe))
                              (cons _g4728247285_ _g4728347288_)))
                          '()
                          _L47263_)))
              (declare (not safe))
              (cons __tmp47779 __tmp47778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp47780 __tmp47777))))
                                        (declare (not safe))
                                        (cons __tmp47776 '()))))
                                 (declare (not safe))
                                 (cons __tmp47781 __tmp47775))
                               (_g4718247206_ _g4718347210_)))
                         _body4720047259_
                         _hd4719047227_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop4719547239_
                                                 _target4719247233_
                                                 '()))
                                              (_g4718247206_ _g4718347210_)))))
                                    (_g4718247206_ _g4718347210_))))
                            (_g4718247206_ _g4718347210_))))
                    (_g4718247206_ _g4718347210_)))))
        (_g4718147291_ _$stx47178_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_$stx47296_)
      (let* ((_g4730047328_
              (lambda (_g4730147324_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4730147324_)))
             (_g4729947427_
              (lambda (_g4730147332_)
                (if (gx#stx-pair? _g4730147332_)
                    (let ((_e4730747335_ (gx#syntax-e _g4730147332_)))
                      (let ((_hd4730647339_
                             (let ()
                               (declare (not safe))
                               (##car _e4730747335_)))
                            (_tl4730547342_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4730747335_))))
                        (if (gx#stx-pair? _tl4730547342_)
                            (let ((_e4731047345_ (gx#syntax-e _tl4730547342_)))
                              (let ((_hd4730947349_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4731047345_)))
                                    (_tl4730847352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4731047345_))))
                                (if (gx#stx-pair? _tl4730847352_)
                                    (let ((_e4731347355_
                                           (gx#syntax-e _tl4730847352_)))
                                      (let ((_hd4731247359_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4731347355_)))
                                            (_tl4731147362_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4731347355_))))
                                        (if (gx#stx-pair/null? _tl4731147362_)
                                            (let ((_g47782_
                                                   (gx#syntax-split-splice
                                                    _tl4731147362_
                                                    '0)))
                                              (begin
                                                (let ((_g47783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g47782_)
                                                             (##vector-length
                                                              _g47782_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g47783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g47783_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_target4731447365_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47782_
                                                          0)))
                                                      (_tl4731647368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g47782_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _tl4731647368_)
                                                      (letrec ((_loop4731747371_
                                                                (lambda (_hd4731547375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest4732147378_)
                          (if (gx#stx-pair? _hd4731547375_)
                              (let ((_e4731847381_
                                     (gx#syntax-e _hd4731547375_)))
                                (let ((_lp-hd4731947385_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4731847381_)))
                                      (_lp-tl4732047388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4731847381_))))
                                  (_loop4731747371_
                                   _lp-tl4732047388_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4731947385_
                                           _rest4732147378_)))))
                              (let ((_rest4732247391_
                                     (reverse _rest4732147378_)))
                                ((lambda (_L47395_ _L47397_ _L47398_)
                                   (let ((__tmp47795
                                          (gx#datum->syntax
                                           '#f
                                           'with-unwind-protect))
                                         (__tmp47784
                                          (let ((__tmp47791
                                                 (let ((__tmp47794
                                                        (gx#datum->syntax
                                                         '#f
                                                         'lambda))
                                                       (__tmp47792
                                                        (let ((__tmp47793
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L47398_ '()))))
                  (declare (not safe))
                  (cons '() __tmp47793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47794
                                                         __tmp47792)))
                                                (__tmp47785
                                                 (let ((__tmp47786
                                                        (let ((__tmp47790
                                                               (gx#datum->syntax
                                                                '#f
                                                                'lambda))
                                                              (__tmp47787
                                                               (let ((__tmp47788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47789
                                     (foldr (lambda (_g4741847421_
                                                     _g4741947424_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4741847421_
                                                      _g4741947424_)))
                                            '()
                                            _L47395_)))
                                (declare (not safe))
                                (cons _L47397_ __tmp47789))))
                         (declare (not safe))
                         (cons '() __tmp47788))))
                  (declare (not safe))
                  (cons __tmp47790 __tmp47787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47786 '()))))
                                            (declare (not safe))
                                            (cons __tmp47791 __tmp47785))))
                                     (declare (not safe))
                                     (cons __tmp47795 __tmp47784)))
                                 _rest4732247391_
                                 _hd4731247359_
                                 _hd4730947349_))))))
                (_loop4731747371_ _target4731447365_ '()))
              (_g4730047328_ _g4730147332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g4730047328_ _g4730147332_))))
                                    (_g4730047328_ _g4730147332_))))
                            (_g4730047328_ _g4730147332_))))
                    (_g4730047328_ _g4730147332_)))))
        (_g4729947427_ _$stx47296_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_stx47432_)
      (let* ((_g4743547449_
              (lambda (_g4743647445_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4743647445_)))
             (_g4743447521_
              (lambda (_g4743647453_)
                (if (gx#stx-pair? _g4743647453_)
                    (let ((_e4744047456_ (gx#syntax-e _g4743647453_)))
                      (let ((_hd4743947460_
                             (let ()
                               (declare (not safe))
                               (##car _e4744047456_)))
                            (_tl4743847463_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4744047456_))))
                        (if (gx#stx-pair? _tl4743847463_)
                            (let ((_e4744347466_ (gx#syntax-e _tl4743847463_)))
                              (let ((_hd4744247470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4744347466_)))
                                    (_tl4744147473_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4744347466_))))
                                (if (gx#stx-null? _tl4744147473_)
                                    ((lambda (_L47476_)
                                       (if (gx#stx-string? _L47476_)
                                           (let* ((_g4749047498_
                                                   (lambda (_g4749147494_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g4749147494_)))
                                                  (_g4748947517_
                                                   (lambda (_g4749147502_)
                                                     ((lambda (_L47505_)
                                                        (let ()
                                                          (let ((__tmp47797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote))
                        (__tmp47796
                         (let () (declare (not safe)) (cons _L47505_ '()))))
                    (declare (not safe))
                    (cons __tmp47797 __tmp47796))))
              _g4749147502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g4748947517_
                                              (string->bytes
                                               (gx#stx-e _L47476_))))
                                           (_g4743547449_ _g4743647453_)))
                                     _hd4744247470_)
                                    (_g4743547449_ _g4743647453_))))
                            (_g4743547449_ _g4743647453_))))
                    (_g4743547449_ _g4743647453_)))))
        (_g4743447521_ _stx47432_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_stx47525_)
      (let* ((_g4752847542_
              (lambda (_g4752947538_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _g4752947538_)))
             (_g4752747583_
              (lambda (_g4752947546_)
                (if (gx#stx-pair? _g4752947546_)
                    (let ((_e4753347549_ (gx#syntax-e _g4752947546_)))
                      (let ((_hd4753247553_
                             (let ()
                               (declare (not safe))
                               (##car _e4753347549_)))
                            (_tl4753147556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4753347549_))))
                        (if (gx#stx-pair? _tl4753147556_)
                            (let ((_e4753647559_ (gx#syntax-e _tl4753147556_)))
                              (let ((_hd4753547563_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4753647559_)))
                                    (_tl4753447566_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4753647559_))))
                                (if (gx#stx-null? _tl4753447566_)
                                    ((lambda (_L47569_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _L47569_)
                                           '#!void)
                                       (let ((__tmp47798
                                              (gx#datum->syntax '#f 'void)))
                                         (declare (not safe))
                                         (cons __tmp47798 '())))
                                     _hd4753547563_)
                                    (_g4752847542_ _g4752947546_))))
                            (_g4752847542_ _g4752947546_))))
                    (_g4752847542_ _g4752947546_)))))
        (_g4752747583_ _stx47525_)))))
