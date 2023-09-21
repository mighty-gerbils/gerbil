(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g4783_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4792_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4794_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4798_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4800_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4802_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g4804_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_stx46_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__% _stx46_ 'stx-eq? 'stx-e 'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_stx49_)
        (let* ((_g5276_ (lambda (_g5372_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g5372_))))
               (_g51380_
                (lambda (_g5380_)
                  (if (let () (declare (not safe)) (gx#stx-pair? _g5380_))
                      (let ((_e5883_ (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _g5380_))))
                        (let ((_hd5787_
                               (let () (declare (not safe)) (##car _e5883_)))
                              (_tl5690_
                               (let () (declare (not safe)) (##cdr _e5883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl5690_))
                              (let ((_e6193_ (let ()
                                               (declare (not safe))
                                               (gx#syntax-e _tl5690_))))
                                (let ((_hd6097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6193_)))
                                      (_tl59100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl59100_))
                                      (let ((_g4755_ (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl59100_
                                                        '0))))
                                        (begin
                                          (let ((_g4756_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g4755_)
                                                               (##vector-length
                                                                _g4755_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g4756_ 2)))
                                                (error "Context expects 2 values"
                                                       _g4756_)))
                                          (let ((_target62103_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g4755_ 0)))
                                                (_tl64106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g4755_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null? _tl64106_))
                                                (letrec ((_loop65109_
                                                          (lambda (_hd63113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause69116_)
                    (if (let () (declare (not safe)) (gx#stx-pair? _hd63113_))
                        (let ((_e66119_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd63113_))))
                          (let ((_lp-hd67123_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e66119_)))
                                (_lp-tl68126_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e66119_))))
                            (_loop65109_
                             _lp-tl68126_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd67123_ _clause69116_)))))
                        (let ((_clause70129_
                               (let ()
                                 (declare (not safe))
                                 (reverse _clause69116_))))
                          ((lambda (_L133_ _L135_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier-list? _L135_))
                                 (let* ((_g155172_
                                         (lambda (_g156168_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g156168_))))
                                        (_g154233_
                                         (lambda (_g156176_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null? _g156176_))
                                               (let ((_g4757_ (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _g156176_ '0))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   (let ((_g4758_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g4757_)
                                (##vector-length _g4757_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g4758_ 2)))
                 (error "Context expects 2 values" _g4758_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target158179_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g4757_
                                                             0)))
                                                         (_tl160182_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g4757_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl160182_))
                                                         (letrec ((_loop161185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd159189_ _clause165192_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd159189_))
                                 (let ((_e162195_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd159189_))))
                                   (let ((_lp-hd163199_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e162195_)))
                                         (_lp-tl164202_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e162195_))))
                                     (_loop161185_
                                      _lp-tl164202_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd163199_ _clause165192_)))))
                                 (let ((_clause166205_
                                        (let ()
                                          (declare (not safe))
                                          (reverse _clause165192_))))
                                   ((lambda (_L209_)
                                      (let ()
                                        (let ((__tmp4770
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'lambda)))
                                              (__tmp4759
                                               (let ((__tmp4768
                                                      (let ((__tmp4769
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '$stx))))
                (declare (not safe))
                (cons __tmp4769 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp4760
                                                      (let ((__tmp4761
                                                             (let ((__tmp4767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'ast-case)))
                           (__tmp4762
                            (let ((__tmp4766
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '$stx)))
                                  (__tmp4763
                                   (let ((__tmp4764
                                          (let ((__tmp4765
                                                 (lambda (_g224227_ _g225230_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g224227_
                                                           _g225230_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp4765 '() _L209_))))
                                     (declare (not safe))
                                     (cons _L135_ __tmp4764))))
                              (declare (not safe))
                              (cons __tmp4766 __tmp4763))))
                       (declare (not safe))
                       (cons __tmp4767 __tmp4762))))
                (declare (not safe))
                (cons __tmp4761 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp4768 __tmp4760))))
                                          (declare (not safe))
                                          (cons __tmp4770 __tmp4759))))
                                    _clause166205_))))))
                   (_loop161185_ _target158179_ '()))
                 (_g155172_ _g156176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g155172_ _g156176_)))))
                                   (_g154233_
                                    (let ((__tmp4773
                                           (lambda (_clause237_)
                                             (let* ((___stx47084709_
                                                     _clause237_)
                                                    (_g241268_
                                                     (lambda ()
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          ___stx47084709_)))))
                                               (let ((___kont47114712_
                                                      (lambda (_L353_ _L355_)
                                                        (let ((__tmp4774
                                                               (let ((__tmp4775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp4777
                                     (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax)))
                                    (__tmp4776
                                     (let ()
                                       (declare (not safe))
                                       (cons _L353_ '()))))
                                (declare (not safe))
                                (cons __tmp4777 __tmp4776))))
                         (declare (not safe))
                         (cons __tmp4775 '()))))
                  (declare (not safe))
                  (cons _L355_ __tmp4774))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont47134714_
                                                      (lambda (_L305_
                                                               _L307_
                                                               _L308_)
                                                        (let ((__tmp4778
                                                               (let ((__tmp4779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp4780
                                     (let ((__tmp4782
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'syntax)))
                                           (__tmp4781
                                            (let ()
                                              (declare (not safe))
                                              (cons _L305_ '()))))
                                       (declare (not safe))
                                       (cons __tmp4782 __tmp4781))))
                                (declare (not safe))
                                (cons __tmp4780 '()))))
                         (declare (not safe))
                         (cons _L307_ __tmp4779))))
                  (declare (not safe))
                  (cons _L308_ __tmp4778)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        ___stx47084709_))
                                                     (let ((_e247333_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               ___stx47084709_))))
                                                       (let ((_tl245340_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e247333_)))
                     (_hd246337_
                      (let () (declare (not safe)) (##car _e247333_))))
                 (if (let () (declare (not safe)) (gx#stx-pair? _tl245340_))
                     (let ((_e250343_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _tl245340_))))
                       (let ((_tl248350_
                              (let () (declare (not safe)) (##cdr _e250343_)))
                             (_hd249347_
                              (let () (declare (not safe)) (##car _e250343_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl248350_))
                             (___kont47114712_ _hd249347_ _hd246337_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _tl248350_))
                                 (let ((_e262295_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _tl248350_))))
                                   (let ((_tl260302_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e262295_)))
                                         (_hd261299_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e262295_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _tl260302_))
                                         (___kont47134714_
                                          _hd261299_
                                          _hd249347_
                                          _hd246337_)
                                         (let ()
                                           (declare (not safe))
                                           (_g241268_)))))
                                 (let () (declare (not safe)) (_g241268_))))))
                     (let () (declare (not safe)) (_g241268_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g241268_)))))))
                                          (__tmp4771
                                           (let ((__tmp4772
                                                  (lambda (_g371374_ _g372377_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g371374_
                                                            _g372377_)))))
                                             (declare (not safe))
                                             (foldr1 __tmp4772 '() _L133_))))
                                      (declare (not safe))
                                      (gx#stx-map1 __tmp4773 __tmp4771))))
                                 (_g5276_ _g5380_)))
                           _clause70129_
                           _hd6097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop65109_
                                                   _target62103_
                                                   '()))
                                                (_g5276_ _g5380_)))))
                                      (_g5276_ _g5380_))))
                              (_g5276_ _g5380_))))
                      (_g5276_ _g5380_)))))
          (_g51380_ _stx49_))))
    (define |gxc[:0:]#symbol-table|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g4783_|
       'expander-identifiers:
       (let ((__tmp4784
              (let ((__tmp4805 |gxc[1]#_g4783_|)
                    (__tmp4785
                     (let ((__tmp4803 |gxc[1]#_g4804_|)
                           (__tmp4786
                            (let ((__tmp4801 |gxc[1]#_g4802_|)
                                  (__tmp4787
                                   (let ((__tmp4795
                                          (let ((__tmp4799 |gxc[1]#_g4800_|)
                                                (__tmp4796
                                                 (let ((__tmp4797
                                                        |gxc[1]#_g4798_|))
                                                   (declare (not safe))
                                                   (cons __tmp4797 '()))))
                                            (declare (not safe))
                                            (cons __tmp4799 __tmp4796)))
                                         (__tmp4788
                                          (let ((__tmp4789
                                                 (let ((__tmp4793
                                                        |gxc[1]#_g4794_|)
                                                       (__tmp4790
                                                        (let ((__tmp4791
                                                               |gxc[1]#_g4792_|))
                                                          (declare (not safe))
                                                          (cons __tmp4791
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp4793
                                                         __tmp4790))))
                                            (declare (not safe))
                                            (cons __tmp4789 '()))))
                                     (declare (not safe))
                                     (cons __tmp4795 __tmp4788))))
                              (declare (not safe))
                              (cons __tmp4801 __tmp4787))))
                       (declare (not safe))
                       (cons __tmp4803 __tmp4786))))
                (declare (not safe))
                (cons __tmp4805 __tmp4785))))
         (declare (not safe))
         (cons '#f __tmp4784))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#symbol-table::t
        '#f
        'symbol-table
        ':init!
        '()
        '(gensyms bindings))))))
